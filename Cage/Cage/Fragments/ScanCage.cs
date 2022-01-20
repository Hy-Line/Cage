using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Views;
using Android.Widget;
using Android.Util;
using Android.Text.Style;
using Android.Media;
using Com.Datalogic.Device.Input;
using Com.Datalogic.Device;
using Com.Datalogic.Decode;
using Com.Datalogic.Device.Configuration;
using Com.Datalogic.Decode.Configuration;
using Cage.Database;
using Java.Nio.FileNio.Attributes;
//using Java.Lang;

namespace Cage.Fragments
{
    public class ScanCage : Android.Support.V4.App.Fragment, IReadListener
    {
        int maxCageLen;
        string _initials = string.Empty;
        Database.Context context = new Database.Context();
        BarcodeManager decoder = null;
        string scannerValue = string.Empty;
        int recorCount = 0;
        TextView barCodeValue = null;
        EditText txtScanText = null;
        CheckBox isNonLayer = null;
        TextView layerCount = null;
        CheckBox chkInputEnable = null;
        ToneGenerator toneG = new ToneGenerator(Stream.Alarm, 100);
        string layerNon = string.Empty;
        Button btnDefect;
        Button btn2ndEgg;
        Database.Device device;

        public override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            if (decoder == null)
            {decoder = new BarcodeManager();}
            try
            {decoder.AddReadListener(this);}
            catch (DecodeException e)
            {                
            }
        }
        public override void OnStop()
        {
            base.OnStop();
            decoder.Release();
        }
        public override void OnStart()
        {
            base.OnStart();

            if (context!=null && Database.Context.LastScanValue != null) // || Cage.Database.Context.LastScanValue.Equals(DBNull.Value))
            {
                barCodeValue.Text = Database.Context.LastScanValue;
            }
            
            if (decoder == null)
            {
                decoder = new BarcodeManager();
            }
            try
            {
                decoder.AddReadListener(this);
                toneG.StartTone(Tone.PropAck, 1000);
            }
            catch (DecodeException e)
            {
            }
        }
        public override View OnCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
        {
            View view = inflater.Inflate(Resource.Layout.ScanCage, container, false);
            List<String> codes = new List<string>() { "EN", "2E" };
            var builder = new Android.Support.V7.App.AlertDialog.Builder(Activity);
            device = Database.Context.Device ?? new Database.Device();
            btnDefect = view.FindViewById<Button>(Resource.Id.btnDefect); 
            btn2ndEgg = view.FindViewById<Button>(Resource.Id.btnSecondEgg);
            isNonLayer = view.FindViewById<CheckBox>(Resource.Id.isNonLayer);

            _initials = Cage.Database.Context.CurrentUserInitial;
            Database.Context.DefaultNonLayer = Database.Context.Device.DefaultNonLayer;
            Database.Context.IsNonLayer = Database.Context.DefaultNonLayer;

            if (string.IsNullOrEmpty(_initials))
            {
                builder.SetMessage(device.Trans("You must enter your initials. Navigate Home and enter initials."));
                builder.Create().Show();
                return view;
            }

            string initials;
            if (device.ExternalData)
            {
                maxCageLen = 7;
                initials = _initials;
                btn2ndEgg.Visibility = ViewStates.Invisible;
                btnDefect.Visibility = ViewStates.Invisible;
                isNonLayer.Visibility = ViewStates.Invisible; 
            }
            else
            {
                maxCageLen = 5;
                try
                {
                    initials = (from i in Database.Context.Initials where i.InitValue == _initials select i).FirstOrDefault().ToString();
                }
                catch
                {initials = null;}
                
            }
            
            if (initials == null)
            {
                builder.SetMessage(device.Trans("Your initials were not recognized!"));
                builder.Create().Show();
                return view;
            }

            if (string.IsNullOrEmpty(Database.Context.Device.UserName))
            {
                builder.SetMessage(device.Trans("You must enter the Device ID!\n\nPlease navigate Setup screen and enter the Device ID."));
                builder.Create().Show();
                return view;
            }

            KeyboardManager km = new KeyboardManager();
            foreach (ITrigger tr in km.AvailableTriggers)
            {
                tr.SetEnabled(true);
            }

            
            recorCount = (from count in Database.Context.CageEggs
                          where count.IsNonLayer == Database.Context.IsNonLayer &&
                          codes.Contains(count.ResultCode)
                          select count).Count();

            barCodeValue = view.FindViewById<TextView>(Resource.Id.barCodeValue);
            txtScanText = view.FindViewById<EditText>(Resource.Id.txtScanText);
            layerCount = view.FindViewById<TextView>(Resource.Id.layerCount);
            TextView lblcage = view.FindViewById<TextView>(Resource.Id.lblCage);
            lblcage.Text = device.Trans("Cage");
            layerNon = Database.Context.IsNonLayer == true ? device.Trans("Non Layer","Y") : device.Trans("Layer", "Y");
            chkInputEnable = view.FindViewById<CheckBox>(Resource.Id.chkInputEnable);
            chkInputEnable.Text = device.Trans("Hand-enter Cage");
            isNonLayer.Text = device.Trans("Non Layer");
            btn2ndEgg.Text = device.Trans("2nd Good Egg");
            btnDefect.Text = device.Trans("Defect");
            chkInputEnable.Checked = false;
            txtScanText.Enabled = false;

            chkInputEnable.CheckedChange += (sender, e) =>
            {
                foreach (ITrigger tr in km.AvailableTriggers)
                {
                    tr.SetEnabled(!chkInputEnable.Checked); //false
                }

                txtScanText.Enabled = chkInputEnable.Checked; 
                if (chkInputEnable.Checked)
                {txtScanText.RequestFocus();}
                else
                {txtScanText.ClearFocus();}

                //}
                //else
                //{
                //    foreach (ITrigger tr in km.AvailableTriggers)
                //    {
                //        tr.SetEnabled(true);
                //    }
                //    //txtScanText.Enabled = false;
                //}
            };

            layerCount.Text = layerNon + recorCount + " " + _initials;

            txtScanText.SetFilters(new Android.Text.IInputFilter[] {new Android.Text.InputFilterAllCaps(), new Android.Text.InputFilterLengthFilter(maxCageLen)});

            btn2ndEgg.Click += DefButtHandle;
            btnDefect.Click += DefButtHandle;

            isNonLayer.Checked = Database.Context.IsNonLayer;

            if (device.ExternalData == false)
            {view.SetBackgroundColor(Android.Graphics.Color.Yellow);
            }

            if (isNonLayer.Checked == true)
            {view.SetBackgroundColor(Android.Graphics.Color.LightBlue);
            }
            scannerValue = string.Empty;
            isNonLayer.CheckedChange += (sender, e) =>
            {
                Database.Context.IsNonLayer = isNonLayer.Checked;
                if (device.ExternalData == false)
                { view.SetBackgroundColor(Android.Graphics.Color.Yellow); 
                }

                if (isNonLayer.Checked == true)
                {
                    view.SetBackgroundColor(Android.Graphics.Color.LightBlue);
                }
                recorCount = (from count in Database.Context.CageEggs
                              where count.IsNonLayer == Database.Context.IsNonLayer &&
                               codes.Contains(count.ResultCode)
                              select count).Count();
                PaintScreen(0);
            };
            
            txtScanText.KeyPress += (sender, e) =>
            {

                e.Handled = false;
                if ((e.KeyCode == Keycode.Enter || e.KeyCode == Keycode.Tab) && txtScanText.Text.Length>0)
                {
                    e.Handled = true;
                    scannerValue = txtScanText.Text.Replace("\n", "").ToUpper();
                    if (device.ExternalData==false && scannerValue.Length != 5)
                    {
                        toneG.StartTone(Tone.SupError, 1000);
                        barCodeValue.Text = device.Trans("Invalid Cage") + $" – {scannerValue}";
                        txtScanText.Text = string.Empty;
                        //txtScanText.RequestFocus();
                    }
                    else
                    {
                        chkInputEnable.Checked = false;
                        OnScanComplete();
                    }
                }
                return;
            };
            return view;
        }

        void DefButtHandle(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Database.Context.LastScanValue)) return;
            string butxt = ((Button)sender).Tag.ToString();
            scannerValue = Database.Context.LastScanValue;
            WriteRec(butxt);
        }

        void OnScanComplete()
        {
            scannerValue = txtScanText.Text.ToUpper();
            Database.Context.LastScanValue = scannerValue;
            WriteRec("EN");
        }

        void IReadListener.OnRead(IDecodeResult scanValue)
        {   
            //if (string.IsNullOrEmpty(scannerValue) == false) return; // already read by old method.
            try
            {
                scannerValue = scanValue.Text.Replace("\n", "").ToUpper();
                if (device.ExternalData == false && scannerValue.Length != 5 )
                {
                    // With the Code39 options currently set, this should never happen.
                    barCodeValue.Text = device.Trans("Bad Scan!!!");
                    toneG.StartTone(Tone.SupError, 1000);
                    scannerValue = string.Empty; 
                    return;
                }
                Database.Context.LastScanValue = scannerValue;
                WriteRec("EN");
            }
            catch 
            {
                barCodeValue.Text += "ERR";
                toneG.StartTone(Tone.SupError, 1000);
            }
        }
        void WriteRec(string rectype)
        {
            string result = "ERROR";
            barCodeValue.Text = scannerValue + "-" + rectype;
            Cage.Database.CageEgg ce = new Database.CageEgg()
            {
                ResultCode = rectype,
                Foreign = device.ExternalData ? "YES" : "",
                ScanCode = scannerValue,
                ScanDate = DateTime.Now.ToShortDateString(),
                InstanceDate = DateTime.Now,
                IsNonLayer = isNonLayer.Checked,
                Username = Database.Context.Device.UserName,
                UserId = _initials
            };
            result = ce.Add();
            if (string.IsNullOrEmpty(result))
            {
                Task.Run(() => this.context.Save());
                PaintScreen(1);
            }
            else
            {
                toneG.StartTone(Tone.SupError, 1000);
                Android.Content.Context AndContxt = Application.Context;
                var toast = Toast.MakeText(AndContxt, device.Trans(result), ToastLength.Short);
                toast.SetGravity(GravityFlags.Top, 0, 150);
                toast.Show();
                barCodeValue.Text += " DUP";
                result = string.Empty;
            }
        }
        void PaintScreen(int i)
        {
            recorCount += i;
            layerNon = Database.Context.IsNonLayer == true ? device.Trans("Non Layer", "Y")  : device.Trans("Layer", "Y");
            layerCount.Text = layerNon + recorCount + " " + _initials;
            txtScanText.Text = string.Empty;
        }
    }
}