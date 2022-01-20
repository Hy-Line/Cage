using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml.Serialization;
using System.IO;
using System.Threading;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Cage.Database;
namespace Cage.Database
{
    public class CURRENT_COUNT
    {
        public string GLH { get; set; }
        public string GEN { get; set; }
        public string LINE { get; set; }
        public string HATCH { get; set; }
        public string HOUSE { get; set; }
        public string PROD_DATE { get; set; }
        public string SYSTEMCOUNT { get; set; }
        public string EQ_Eggs { get; set; }
        public string Hatchery_Eggs { get; set; }
        public string Market_Eggs { get; set; }
        public string ACC_EGGS { get; set; }
        public string HANDCOUNT { get; set; }
        public string HAND_DATE { get; set; }
        public string Count_Date { get; set; }
        public string FirstLoc { get; set; }
        public string LastLoc { get; set; }
        public string USERNAME { get; set; }
        public string Initials { get; set; }

        private readonly object threadLock = new object();
        public string Save()
        {
            lock (threadLock)
            {
                List<CURRENT_COUNT> temp = Context.Counts; //System.IO.IOException: Sharing violation on path FIX... can't have two Streams with same file
                string status = string.Empty;
                XmlSerializer serializer = new XmlSerializer(typeof(List<CURRENT_COUNT>));
                string path = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "CountData.xml");
                try
                {
                    using (TextWriter TextWriter = new StreamWriter(path, false))
                    {
                        serializer.Serialize(TextWriter, temp);
                    }
                }
                catch (Exception e)
                {
                    status = e.Message;
                }
                return status;
            }
        }
    }
}