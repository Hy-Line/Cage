using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;

namespace Cage.Database
{
    public class Device
    {
        public string UserName { get; set; }
        public string Password { get; set; }
        public bool DefaultNonLayer { get; set; }
        public bool ExternalData { get; set; }
        public string Lang { get; set; }

        public string Trans(string engtxt, string addColon = "N")
        {
            string translation = engtxt.EndsWith(":") ? engtxt.Substring(0, engtxt.Length-1) : engtxt;
            Database.Device device = Database.Context.Device ?? new Database.Device();
            if (device.Lang != null && device.Lang != "ENGLISH")
            {
                try
                {
                    string found = (from i in Database.Context.Lang where i.Language == device.Lang && i.English == translation select i.Translation).FirstOrDefault().ToString();
                    if (found.Length > 0)
                    { translation = found; };
                }
                catch { }
            }
            translation += addColon.ToUpper() == "N" ? "" : ": ";

            return translation;
        }
    }
}