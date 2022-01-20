using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Acr.UserDialogs;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Util;
using Android.Views;
using Android.Widget;
using Android.Views.InputMethods;
using Com.Datalogic.Decode;
using Com.Datalogic.Decode.Configuration;
using Com.Datalogic.Device.Input;
using Android.Hardware.Display;

namespace Cage.Fragments
{
    public class MainHomeScreen : Android.Support.V4.App.Fragment
    {
//        List<Database.Lang> langlst;
        TextView lblinit;
        Button uploadButton;
        Button ExitApp;
        int recorCount;
        Database.Device device = Database.Context.Device ?? new Database.Device();
        public override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            // Create your fragment here
        }

        public override View OnCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
        {
           
            int recorCount = (from count in Database.Context.CageEggs select count).Count();

            BarcodeManager BCmgr = new BarcodeManager();
            ScannerProperties DLconfig = ScannerProperties.Edit(BCmgr);
            DLconfig.Code39.Enable.Set(true);
            if (device.ExternalData)
            {
                BCmgr.EnableAllSymbologies(true);
                DLconfig.Datamatrix.Enable.Set(true);
                DLconfig.Code39.LengthMode.Set(LengthControlMode.None);
            }
            else
            {
                DLconfig.Code39.Length1.Set(6);
                DLconfig.Code39.LengthMode.Set(LengthControlMode.OneFixed);
                DLconfig.Code39.EnableChecksum.Set(true);
                DLconfig.Code39.SendChecksum.Set(false);
                DLconfig.Datamatrix.Enable.Set(false);
            }
            DLconfig.Store(BCmgr, true);

            KeyboardManager km = new KeyboardManager();
            foreach (ITrigger tr in km.AvailableTriggers)
            {
                tr.SetEnabled(false); //true to enable
            }

            View view = inflater.Inflate(Resource.Layout.MainHomeScreen, container, false);
            lblinit = view.FindViewById<TextView>(Resource.Id.TTInit);
            ProgressBar mProgressBar = (ProgressBar)view.FindViewById(Resource.Id.progress_bar);
            var builder = new Android.Support.V7.App.AlertDialog.Builder(Activity);

            EditText txtInitials = view.FindViewById<EditText>(Resource.Id.txtInitials);
            uploadButton = view.FindViewById<Button>(Resource.Id.uploadButton);
            ExitApp = view.FindViewById<Button>(Resource.Id.ExitCageApp);
            Button butGetCount = view.FindViewById<Button>(Resource.Id.GetCountButton);

            if (device.Lang != "ENGLISH")
            {
                lblinit.Text = device.Trans("Initials");
                uploadButton.Text = device.Trans("Upload Data");
                ExitApp.Text = device.Trans("Exit Application");
                butGetCount.Text = device.Trans("Get Daily Count Info");
            }

            if (!string.IsNullOrEmpty(Database.Context.CurrentUserInitial))
            {
                txtInitials.Text = Database.Context.CurrentUserInitial;
            }
            txtInitials.RequestFocus();
            txtInitials.AfterTextChanged += (sender, e) =>
            {
                Database.Context.CurrentUserInitial = txtInitials.Text;
            };


            
            butGetCount.Visibility = device.ExternalData ? ViewStates.Gone : ViewStates.Visible;
            butGetCount.Click += async (sender, e) =>
            {
                mProgressBar.Visibility = ViewStates.Visible;
                string result = "";
                string result2 = "";

                result2 = await UploadHandCounts();

                result = await GetCountData();
                mProgressBar.Visibility = ViewStates.Gone;

                if (String.IsNullOrEmpty(result) == false)
                {
                    builder.SetMessage(device.Trans(result));
                    builder.Create().Show();
                    return;
                }
                else
                {
                    string msg = device.Trans("Daily count information has been refreshed!");
                    builder.SetMessage(msg);
                    builder.Create().Show();
                }

                //Database.Context context = new Database.Context();
                //string result = context.Save();
                //if (String.IsNullOrEmpty(result) == false)
                //{
                //    builder.SetMessage(result);
                //    builder.Create().Show();
                //    return;
                //}

            };

            uploadButton.Text = device.Trans("Upload Data") + $"({recorCount})";
            uploadButton.Click += async (sender, e) =>
            {
                mProgressBar.Visibility = ViewStates.Visible;
                Database.Context context = new Database.Context();
                string result = context.Save();
                if(String.IsNullOrEmpty(result) == false)
                {
                    builder.SetMessage(result);
                    builder.Create().Show();
                }
                else
                {
                    result = await Upload();
//                    if (result.Contains("Success") == false)
  //                  {
                        builder.SetMessage(result);
                        builder.Create().Show();
                        //mProgressBar.Visibility = ViewStates.Gone;
                        //return;
    //                }
    //                builder.SetMessage(device.Trans("Data Uploaded"));
    //                builder.Create().Show();
                }
                recorCount = (from count in Database.Context.CageEggs select count).Count();
                mProgressBar.Visibility = ViewStates.Gone;
                uploadButton.Text = device.Trans("Upload Data") + $"({recorCount})";
            };

            
            ExitApp.Click += (sender, e) =>
            {
                new Database.Context().Save();
                foreach (ITrigger tr in km.AvailableTriggers)
                {
                    tr.SetEnabled(true); //true to enable
                }

                DLconfig.Datamatrix.Enable.Set(true);
                DLconfig.Store(BCmgr, true);

                var activity = (Activity)this.Context;
                activity.FinishAffinity();
            };

            return view;
        }

        private async Task<string> Upload()
        {
            string fullresult = string.Empty;
            string result = string.Empty;
            string result2 = string.Empty;
            Database.Context context = new Database.Context();
            recorCount = (from count in Database.Context.CageEggs select count).Count();
            
            await Task.Run(() => {
                do
                {
                    result = context.Upload() +"\n";
                    fullresult += result;
                    recorCount = (from count in Database.Context.CageEggs select count).Count();
                } while (recorCount > 0 & result.Contains("Success", StringComparison.OrdinalIgnoreCase));
                
            });
            if (!device.ExternalData)
            {
                result2 = await UploadHandCounts();
                result2 = $"Count data:{result2}";
            }
            return $"Production data:{fullresult} \n {result2}";
            
        }

        private async Task<string> UploadHandCounts()
        {
            string result2 = string.Empty;
            await Task.Run(() =>
            {
                Database.Context context = new Database.Context();
                //count_date cant be null!!!!
                List<Database.CURRENT_COUNT> hc = (from x in Database.Context.Counts
                                                   where (x.Market_Eggs !="" ||
                                                    x.Hatchery_Eggs != "" || x.EQ_Eggs != "" ||
                                                    x.ACC_EGGS != "") &&
                                                    (x.Count_Date != null && x.Count_Date.Length > 0)
                                                   select x).ToList();
                if (hc.Count() > 0)
                {
                        result2 = context.SaveHandCount(hc);
                  }

            });
            return result2;
        }

        private async Task<string> GetCountData()
        {
            string result = null;
            await Task.Run(() => {
                Database.Context context = new Database.Context();
                result = context.GetCountData();
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