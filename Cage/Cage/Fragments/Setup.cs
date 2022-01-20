using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Util;
using Android.Views;
using Android.Widget;
using Android.Media;
using Com.Datalogic.Device.Input;

namespace Cage.Fragments
{
    public class Setup : Android.Support.V4.App.Fragment
    {
        Database.Device device;
        TextView lblDevID;
        TextView lblPwd;
        CheckBox chkDefaultNonLayer;
        CheckBox chkExternal;
        Button saveUsernamePassword;
        Button refreshInitials;

        public override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            // Create your fragment here
        }

        public override View OnCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
        {
            KeyboardManager km = new KeyboardManager();
            foreach (ITrigger tr in km.AvailableTriggers)
            {
                tr.SetEnabled(false); //true to enable
            }

            View view = inflater.Inflate(Resource.Layout.Setup, container, false);
            TextView appVersion = view.FindViewById<TextView>(Resource.Id.appVersion);
            appVersion.Text = "Version: " + System.Reflection.Assembly.GetExecutingAssembly().GetName().Version.ToString();

            ProgressBar mProgressBar = (ProgressBar)view.FindViewById(Resource.Id.progress_bar);
            var builder = new Android.Support.V7.App.AlertDialog.Builder(Activity);
            device = Database.Context.Device ?? new Database.Device();

            EditText txtUserName = view.FindViewById<EditText>(Resource.Id.txtUserName);
            txtUserName.Text = device.UserName;
            lblDevID = view.FindViewById<TextView>(Resource.Id.txtDevID);
            lblPwd = view.FindViewById<TextView>(Resource.Id.lblPwd);
            chkDefaultNonLayer = view.FindViewById<CheckBox>(Resource.Id.chkDefaultNonLayer);
            chkExternal = view.FindViewById<CheckBox>(Resource.Id.chkExternal);
            RadioButton radEng = view.FindViewById<RadioButton>(Resource.Id.RadEN);
            RadioButton radSpn = view.FindViewById<RadioButton>(Resource.Id.RadSP);

            saveUsernamePassword = view.FindViewById<Button>(Resource.Id.saveButtonUsernamePassword);
            refreshInitials = view.FindViewById<Button>(Resource.Id.refreshInitials);
            refreshInitials.Visibility = device.ExternalData ? ViewStates.Gone : ViewStates.Visible;
            
            chkDefaultNonLayer.Checked = device.DefaultNonLayer;
            chkDefaultNonLayer.Visibility = device.ExternalData ? ViewStates.Invisible : ViewStates.Visible;
            
            TranslateScreen();

            //refreshInitials.Text = device.Trans("Refresh Initials");
            //saveUsernamePassword.Text = device.Trans("Save");
            //chkExternal.Text = device.Trans("External Location");
            //chkDefaultNonLayer.Text = device.Trans("Default Non Layer");
            //lblDevID.Text = device.Trans("Device ID");
            //lblPwd.Text = device.Trans("Password");
            
            Cage.Database.Context.DefaultNonLayer = device.DefaultNonLayer;
            chkExternal.Checked = device.ExternalData;
            
            

            radSpn.Checked = (device.Lang == "SPANISH");
            if (radSpn.Checked==false)
                {
                radEng.Checked = true;
                }
            EditText txtAppPassword = view.FindViewById<EditText>(Resource.Id.txtAppPassword);
            txtAppPassword.RequestFocus();

            txtAppPassword.AfterTextChanged += (sender, e) =>
            {
                //Database.Context.CurrentUserInitial = txtAppPassword.Text;
                if (txtAppPassword.Text == "setup")
                {
                    txtUserName.Enabled = true;
                    chkDefaultNonLayer.Enabled = true;
                    chkExternal.Enabled = true;
                    radEng.Enabled = true;
                    radSpn.Enabled = true;
                    saveUsernamePassword.Enabled = true;
                    
                }
            };
 
            Database.Context.Device = device;
            Database.Context context = new Database.Context();

            chkExternal.CheckedChange += (sender, e) =>
            {
                if (chkExternal.Checked)
                {chkDefaultNonLayer.Checked = !chkExternal.Checked;}
                chkDefaultNonLayer.Visibility = chkExternal.Checked ? ViewStates.Invisible : ViewStates.Visible;
                refreshInitials.Visibility = chkExternal.Checked ? ViewStates.Invisible : ViewStates.Visible;
            };

            saveUsernamePassword.Click += (sender, e) =>
            {
                device = new Database.Device();
                txtUserName = view.FindViewById<EditText>(Resource.Id.txtUserName);
                device.UserName = txtUserName.Text;
                device.DefaultNonLayer = chkDefaultNonLayer.Checked;
                device.ExternalData=chkExternal.Checked;
                device.Lang = radSpn.Checked ?  "SPANISH" : "ENGLISH";
                chkDefaultNonLayer.Visibility = chkExternal.Checked ? ViewStates.Invisible : ViewStates.Visible;
                refreshInitials.Visibility = device.ExternalData ? ViewStates.Invisible : ViewStates.Visible;

                Database.Context.Device = device;
                string result = context.SaveUsernamePassword();
                if (String.IsNullOrEmpty(result) == false)
                {
                    builder.SetMessage(device.Trans(result));
                    builder.Create().Show();
                    return;
                }
                
                TranslateScreen();

                builder.SetMessage(device.Trans("Information Saved"));
                builder.Create().Show();
            };


            refreshInitials.Click += async (sender, e) =>
            {
                string msg = "";
                mProgressBar = (ProgressBar)view.FindViewById(Resource.Id.progress_bar);
                mProgressBar.Visibility = ViewStates.Visible;

                string result = await Initials();

                if (String.IsNullOrEmpty(result) == false)
                {
                    builder.SetMessage(device.Trans(result));
                    builder.Create().Show();
                    mProgressBar.Visibility = ViewStates.Gone;
                    return;
                }
                else
                {msg = device.Trans("Initials");}


                result = await GetTrans();
                mProgressBar.Visibility = ViewStates.Gone;

                if (String.IsNullOrEmpty(result) == false)
                {
                    builder.SetMessage(device.Trans(result));
                    builder.Create().Show();
                    return;
                }
                else
                {
                    msg += msg.Length > 0 ? " " + device.Trans("and") + " " : "";
                    msg += device.Trans("Translations") + " " + device.Trans("have been refreshed!");
                    builder.SetMessage(msg);
                    builder.Create().Show();
                }

            };

            return view;
        }

        private void TranslateScreen()
        {
            refreshInitials.Text = device.Trans("Refresh Initials");
            saveUsernamePassword.Text = device.Trans("Save");
            chkExternal.Text = device.Trans("External Location");
            chkDefaultNonLayer.Text = device.Trans("Default Non Layer");
            lblDevID.Text = device.Trans("Device ID");
            lblPwd.Text = device.Trans("Password");

        }
        private async Task<string> Initials()
        {
            string result = string.Empty;
            await Task.Run(() => {
                Database.Context context = new Database.Context();
                result = context.GetInitials();
            });
            return result;
        }

        private async Task<string> GetTrans()
        {
            string result = string.Empty;
            await Task.Run(() => {
                Database.Context lang = new Database.Context();
                result = lang.GetTranslation();
            });
            return result;
        }

    }
}