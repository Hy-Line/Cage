using System;
using System.Collections.Generic;
using System.Windows.Input;
using System.Linq;
using System.Text;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Util;
using Android.Views;
using Android.Widget;
using Android.Media;
using Cage.Database;
using Com.Datalogic.Device.Input;
using Com.Datalogic.Device;
using Com.Datalogic.Decode;
using Com.Datalogic.Device.Configuration;
using Com.Datalogic.Decode.Configuration;

namespace Cage.Fragments
{
    public class EggCount : Android.Support.V4.App.Fragment , IReadListener
    {
        //GridView gridView1 = null;
        //List<Cage.Database.CURRENT_COUNT> HseCnts = null;
        CURRENT_COUNT count;
        Database.Context context = new Database.Context();
        //CurrentCountAdapter adapter = null;
        //List<Cage.Database.CURRENT_COUNT> counts = null;
        BarcodeManager decoder = null;
        ToneGenerator toneG = new ToneGenerator(Stream.Alarm, 100);
        EditText txtCage;
        Database.Device device = Database.Context.Device ?? new Database.Device();
        Button btnSaveCount;
        EditText txtEggMarket;
        EditText txtEggHat;
        EditText txtEggEQ;
        EditText txtEggAcc;
        TextView txtDate;
        TextView txtGen;
        TextView lblGen;
        TextView txtLine;
        TextView txtHat;
        TextView txtSysCount;
        TextView lblMsg;
        TextView lblCage;
        TextView lblMarket;
        TextView lblHatchery;
        TextView lblEQ;
        TextView lblDate;
        TextView lblAcc;
        TextView txtHandCount;
        string hse = "";

        public override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            if (decoder == null)
            { decoder = new BarcodeManager(); }
            try
            { decoder.AddReadListener(this); }
            catch (DecodeException e)
            {
            }
        }

        public override void OnStop()
        {
            base.OnStop();
            //decoder.Release();
        }
        public override void OnStart()
        {
            base.OnStart();

            if (context != null && Database.Context.LastScanValue != null) // || Cage.Database.Context.LastScanValue.Equals(DBNull.Value))
            {
                txtCage.Text = Database.Context.LastScanValue;
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

            View view = inflater.Inflate(Resource.Layout.EggCount, container, false);
            var builder = new Android.Support.V7.App.AlertDialog.Builder(Activity);
            txtCage = view.FindViewById<EditText>(Resource.Id.txtCage);
            txtDate = view.FindViewById<TextView>(Resource.Id.txtDate);
            txtGen = view.FindViewById<TextView>(Resource.Id.txtGen);
            lblGen = view.FindViewById<TextView>(Resource.Id.lblGen);
            txtLine = view.FindViewById<TextView>(Resource.Id.txtLine);
            txtHat = view.FindViewById<TextView>(Resource.Id.txtHatch);
            txtSysCount = view.FindViewById<TextView>(Resource.Id.txtSysCnt);
            lblMsg = view.FindViewById<TextView>(Resource.Id.lblMsg);
            txtHandCount = view.FindViewById<TextView>(Resource.Id.txtHandCnt);
            txtEggMarket = view.FindViewById<EditText>(Resource.Id.txtMarket);
            txtEggHat = view.FindViewById<EditText>(Resource.Id.txtHatEggs); 
            txtEggEQ = view.FindViewById<EditText>(Resource.Id.txtEQEggs);
            txtEggAcc = view.FindViewById<EditText>(Resource.Id.txtAccEggs);
            btnSaveCount = view.FindViewById<Button>(Resource.Id.btnSaveCount);
            lblCage = view.FindViewById<TextView>(Resource.Id.lblCage);
            lblMarket = view.FindViewById<TextView>(Resource.Id.lblMarket);
            lblHatchery = view.FindViewById<TextView>(Resource.Id.lblHatchery);
            lblEQ = view.FindViewById<TextView>(Resource.Id.lblEQ);
            lblDate = view.FindViewById<TextView>(Resource.Id.lblDate);
            lblAcc = view.FindViewById<TextView>(Resource.Id.lblAcc);
            
            txtCage.Text = Database.Context.LastScanValue;
            lblCage.Text = device.Trans(lblCage.Text, "Y");
            lblDate.Text = device.Trans(lblDate.Text, "Y");
            lblMarket.Text = device.Trans(lblMarket.Text);
            lblHatchery.Text = device.Trans(lblHatchery.Text);
            lblEQ.Text = device.Trans(lblEQ.Text);
            lblAcc.Text = device.Trans(lblAcc.Text);
            btnSaveCount.Text = device.Trans(btnSaveCount.Text);
            //txtCage.Enabled = false;

            // = Database.Context.LastScanValue.Substring(0, 1).ToString(); ;
            //gridView1 = view.FindViewById<GridView>(Resource.Id.gridView1);
            KeyboardManager km = new KeyboardManager();
            foreach (ITrigger tr in km.AvailableTriggers)
            {
                tr.SetEnabled(true);
            }

            if (Database.Context.LastScanValue != null) // && Database.Context.LastScanValue.Length==0)
            {
                hse = Database.Context.LastScanValue.Substring(0, 1).ToString();
            }

            SetupScreen();


            btnSaveCount.Click += BtnSaveCount_Click;

            txtCage.KeyPress += (Sender, e) =>
            {
                if (e.KeyCode == Keycode.Enter || e.KeyCode == Keycode.Tab)
                {
                    SetupScreen();
                }
            };

            return view;
        }

        private void BtnSaveCount_Click(object sender, EventArgs e)
        {
            count.ACC_EGGS = txtEggAcc.Text;
            count.EQ_Eggs = txtEggEQ.Text;
            count.Hatchery_Eggs = txtEggHat.Text;
            count.Market_Eggs = txtEggMarket.Text;
            count.Count_Date = DateTime.Today.ToString();
            count.USERNAME = device.UserName;
            count.Initials = Database.Context.CurrentUserInitial;
            //Database.Context context = new Database.Context();
            string rv = count.Save();
            lblMsg.Text = rv.Length == 0 ? device.Trans("Saved!") : rv;
        }
        void IReadListener.OnRead(IDecodeResult scanValue)
        {
            try
            {
                string scannerValue = scanValue.Text.Replace("\n", "").ToUpper();
                if (device.ExternalData == false && scannerValue.Length != 5)
                {
                    // With the Code39 options currently set, this should never happen.
                    //barCodeValue.Text = device.Trans("Bad Scan!!!");
                    toneG.StartTone(Tone.SupError, 1000);
                    scannerValue = string.Empty;
                    return;
                }
                Database.Context.LastScanValue = scannerValue;

            }
            catch
            {
                //barCodeValue.Text += "ERR";
                toneG.StartTone(Tone.SupError, 1000);
            }
        }
        void SetupScreen()
        {
            txtGen.Text = string.Empty;
            txtLine.Text = string.Empty;
            txtDate.Text = string.Empty;
            txtHat.Text = string.Empty;
            txtSysCount.Text = string.Empty;
            txtHandCount.Text = string.Empty;
            txtEggAcc.Text = string.Empty;
            txtEggEQ.Text = string.Empty;
            txtEggHat.Text = string.Empty;
            txtEggMarket.Text = string.Empty;
            lblMsg.Text = string.Empty;

            if (txtCage.Text.Length > 0)
            {
                Database.Context.LastScanValue = txtCage.Text.ToUpper();
                hse = Database.Context.LastScanValue.Substring(0, 1).ToString();
                
                count = (from cnt in Database.Context.Counts
                         where string.Compare( Database.Context.LastScanValue,  cnt.FirstLoc, false) >= 0
                         && string.Compare(Database.Context.LastScanValue, cnt.LastLoc, false) <= 0
                         select cnt).FirstOrDefault();
                if (count == null)
                {
                    lblMsg.Text = device.Trans("ERROR: No data found for") + $" {txtCage.Text}!";
                    txtEggMarket.Visibility = ViewStates.Invisible;
                    txtEggHat.Visibility = ViewStates.Invisible;
                    txtEggEQ.Visibility = ViewStates.Invisible;
                    txtEggAcc.Visibility = ViewStates.Invisible;
                    btnSaveCount.Visibility = ViewStates.Invisible;
                }
                else
                {
                    txtEggMarket.Visibility = ViewStates.Visible;
                    txtEggHat.Visibility = ViewStates.Visible;
                    txtEggEQ.Visibility = ViewStates.Visible;
                    txtEggAcc.Visibility = ViewStates.Visible;
                    btnSaveCount.Visibility = ViewStates.Visible;
                    txtGen.Text = count.GEN;
                    txtLine.Text = count.LINE;
                    txtDate.Text = count.PROD_DATE;
                    txtHat.Text = count.HATCH;
                    txtSysCount.Text = count.SYSTEMCOUNT;
                    txtHandCount.Text = count.HANDCOUNT;
                    txtEggAcc.Text = count.ACC_EGGS;
                    txtEggEQ.Text = count.EQ_Eggs;
                    txtEggHat.Text = count.Hatchery_Eggs;
                    txtEggMarket.Text = count.Market_Eggs;
                    txtEggMarket.RequestFocus();
                    if (count.SYSTEMCOUNT.Length > 0 && count.HANDCOUNT.Length > 0)
                    {
                        try
                        {
                            int sc = int.Parse(count.SYSTEMCOUNT);
                            int hc = int.Parse(count.HANDCOUNT);
                            double dop = sc * .01;
                            txtHandCount.SetTextColor(hc <= (sc + dop) && hc > (sc - dop) ? Android.Graphics.Color.DarkOliveGreen : Android.Graphics.Color.Red);
                        }
                        catch
                        {
                            lblMsg.Text = device.Trans("Error Parsing number!");
                        }
                    }
                }
            }
            else
            {
                lblMsg.Text = device.Trans("Please enter a cage!");
                txtCage.RequestFocus();
            }
        }

        //counts.Select(c => { where Database.Context.LastScanValue >= c.FirstLoc and c.LastLoc; return c;}).ToList();
        //HseCnts = counts.Where(x => x.HOUSE==hse).ToList();
        //HseCnts = counts.ToList();
        //adapter = new CurrentCountAdapter(this.Context, Resource.Layout.CurrentCountList, counts);
        //gridView1.Adapter = adapter;
        //txtEggMarket.KeyPress += ValidateKeys;
        //txtEggHat.KeyPress += ValidateKeys;
        //txtEggEQ.KeyPress += ValidateKeys;
        //txtEggAcc.KeyPress += ValidateKeys;
        //void ValidateKeys(Object sender, View.KeyEventArgs e)
        //{
        //    if (e.KeyCode == Keycode.Enter || e.KeyCode == Keycode.Tab)
        //    {
        //        string tb = ((EditText)sender).Tag.ToString();
        //        switch (tb)
        //        {
        //            case "MARKET":
        //                txtEggHat.RequestFocus();
        //                break;
        //            case "HATCHERY":
        //                txtEggEQ.RequestFocus();
        //                break;
        //            case "EQ":
        //                txtEggAcc.RequestFocus();
        //                break;
        //            case "ACC":
        //                txtEggMarket.RequestFocus();
        //                break;
        //        }
        //    }
        //    else
        //    {
        //        e.Handled = false;
        //    }
        //    return;
        //}

    }
}