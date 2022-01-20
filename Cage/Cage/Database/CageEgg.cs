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
using System.Xml.Serialization;
using System.IO;
using System.Net.Http;
using Newtonsoft.Json;
using System.Net;
using System.Threading.Tasks;

namespace Cage.Database
{
    public class CageEgg
    {
        public string ScanCode { get; set; }
        public string ScanDate { get; set; }
        public string UserId { get; set; }
        public string ResultCode { get; set; }
        public DateTime InstanceDate { get; set; }
        public bool Delete { get; set; }
        public bool IsNonLayer { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public string Foreign { get; set; }

        public string Add()
        {
            if(this.ResultCode == "EN")
            {
                CageEgg cageEgg = (from ce in Context.CageEggs
                                   where ce.ScanCode == this.ScanCode
                                   && ce.ResultCode == "EN" //this.ResultCode 
                                   && ce.IsNonLayer == this.IsNonLayer
                                   && ce.ScanDate == this.ScanDate
                                   select ce).FirstOrDefault();
                if (cageEgg != null) return "Duplicate Egg Scan"; // found a duplicate so don't add it to the list
            }

            Context.CageEggs.Add(this);

            return string.Empty;
        }
    }

    class Context
    {
        public static string CurrentUserInitial { get; set; }
        public static bool DefaultNonLayer { get; set; }
        public static string LastScanValue { get; set; }
        public static bool IsNonLayer { get; set; }

        static Database.Device _device;
        public static Database.Device Device
        {
            get
            {
                if (_device != null) return _device;
                XmlSerializer serializer = new XmlSerializer(typeof(Database.Device));
                string path = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "Device.xml");
                try
                {
                    using (TextReader reader = new StreamReader(path))
                    {
                        _device = serializer.Deserialize(reader) as Database.Device;
                    }
                }catch(Exception e)
                {
                    _device = new Device();
                }
                return _device;
            }
            set
            {
                _device = value;
            }
        }

//        static List<CURRENT_COUNT> _currentCount;
        //public static List<CURRENT_COUNT> CurrentCount
        //{
        //    get
        //    {
        //        if (_currentCount != null) return _currentCount;
        //        _currentCount = new List<CURRENT_COUNT>();
        //        _currentCount.Add(new CURRENT_COUNT
        //        {
        //            GEN = "2222N",
        //            LINE="L",
        //            HATCH="C",
        //            HANDCOUNT = 300,
        //            HAND_DATE = "9/26",
        //            HOUSE = "H",
        //            SYSTEMCOUNT = 900,
        //        });        
        //        _currentCount.Add(new CURRENT_COUNT
        //        {
        //            GEN = "2222N",
        //            LINE="R",
        //            HATCH="O",
        //            HANDCOUNT = 400,
        //            HAND_DATE = "9/22",
        //            HOUSE = "X",
        //            SYSTEMCOUNT = 900,
        //        });
        //        return _currentCount;
        //    }
        //}
        static List<CageEgg> _cageEggs;
        public static List<CageEgg> CageEggs
        {
            get
            {
                if (_cageEggs != null) return _cageEggs;
                _cageEggs = new List<CageEgg>();
                XmlSerializer serializer = new XmlSerializer(typeof(List<CageEgg>));
                string path = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "CageEgg.xml");
                try
                {
                    using (TextReader reader = new StreamReader(path))
                    {
                        _cageEggs = serializer.Deserialize(reader) as List<CageEgg>;
                    }
                }
                catch(Exception e)
                {
                    _cageEggs = new List<CageEgg>();
                }
                return _cageEggs;
            }
            set
            {
                _cageEggs = value;
            }
        }

        static List<Initials> _initials;
        public static List<Initials> Initials
        {
            get
            {
                if (_initials != null && _initials.Count > 0) return _initials;
                _initials = new List<Initials>();
                XmlSerializer serializer = new XmlSerializer(typeof(List<Initials>));
                string path = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "Initials.xml");
                try
                {
                    using (TextReader reader = new StreamReader(path))
                    {
                        _initials = serializer.Deserialize(reader) as List<Initials>;
                    }
                }
                catch (Exception e)
                {
                    _initials = new List<Initials>();
                }
                return _initials;
            }
            set
            {
                _initials = value;
            }
        }

        //static CURRENT_COUNT _count;

        static List<CURRENT_COUNT> _counts;
        public static List<CURRENT_COUNT> Counts
        {
            get
            {
                if (_counts != null && _counts.Count > 0) return _counts;
                _counts = new List<CURRENT_COUNT>();
                XmlSerializer serializer = new XmlSerializer(typeof(List<CURRENT_COUNT>));
                string path = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "CountData.xml");
                try
                {
                    using (TextReader reader = new StreamReader(path))
                    {
                        _counts = serializer.Deserialize(reader) as List<CURRENT_COUNT>;
                    }
                }
                catch (Exception e)
                {
                    _counts = new List<CURRENT_COUNT>();
                }
                return _counts;
            }
            set
            {
                _counts = value;
            }
        }

        public static List<CURRENT_COUNT> LiveCounts
        {
            get
            {
                if (_counts != null && _counts.Count > 0) return _counts;
                _counts = new List<CURRENT_COUNT>();
                XmlSerializer serializer = new XmlSerializer(typeof(List<CURRENT_COUNT>));
                string path = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "CountData.xml");
                try
                {
                    using (TextReader reader = new StreamReader(path))
                    {
                        _counts = serializer.Deserialize(reader) as List<CURRENT_COUNT>;
                    }
                }
                catch (Exception e)
                {
                    _counts = new List<CURRENT_COUNT>();
                }

                foreach (CURRENT_COUNT c in _counts)
                {
                    if  (c.Market_Eggs.Length == 0 &&
                        c.Hatchery_Eggs.Length == 0 &&
                        c.EQ_Eggs.Length==0 &&
                        c.ACC_EGGS.Length==0 &&
                        c.Count_Date.Length==0)
                    {
                        _counts.Remove(c);
                    }
                        
                }

                return _counts;
            }
            set
            {
                _counts = value;
            }
        }


        static List<Lang> _Lang;
        public static List<Lang> Lang
        {
            get
            {
                if (_Lang != null && _Lang.Count > 0) return _Lang;
                _initials = new List<Initials>();
                XmlSerializer serializer = new XmlSerializer(typeof(List<Lang>));
                string path = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "Lang.xml");
                try
                {
                    using (TextReader reader = new StreamReader(path))
                    {
                        _Lang = serializer.Deserialize(reader) as List<Lang>;
                    }
                }
                catch (Exception e)
                {
                    _Lang = new List<Lang>();
                }
                return _Lang;
            }
            set
            {
                _Lang = value;
            }
        }

        public string SaveUsernamePassword()
        {
            string status = string.Empty;
            XmlSerializer serializer = new XmlSerializer(typeof(Database.Device));
            string path = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "Device.xml");
            try
            {
                using (TextWriter writer = new StreamWriter(path, false))
                {
                    serializer.Serialize(writer, Context.Device);
                }
            }catch(Exception e)
            {
                status = e.Message;
            }

            return status;
        }

        private readonly object threadLock = new object();
        public string Save()
        {
            lock(threadLock)
            {
                List<CageEgg> temp = CageEggs; //System.IO.IOException: Sharing violation on path FIX... can't have two Streams with same file
                string status = string.Empty;
                XmlSerializer serializer = new XmlSerializer(typeof(List<CageEgg>));
                string path = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "CageEgg.xml");
                try
                {
                    using (TextWriter TextWriter = new StreamWriter(path, false))
                    {
                        serializer.Serialize(TextWriter, temp); //, CageEggs); System.IO.IOException: Sharing violation on path ERROR CageEggs uses  StreamReader(path)
                    }
                }catch(Exception e)
                {
                    status = e.Message;
                }
                return status;
            }
        }

        public string GetCountData(string House = "")
        {
            List<Database.CURRENT_COUNT> counts = new List<CURRENT_COUNT>();
            string url = "http://192.168.90.43/WebService/Support/GetCounts/";
            if (House.Length > 0)
            {
                url = url.TrimEnd(url[url.Length - 1]) + "?House=" + House;
                //url +="?House=" + House;
            }
            string result = "";
            HttpWebRequest httpWebRequest = (HttpWebRequest)WebRequest.Create(url);
            httpWebRequest.ContentType = "application/json; charset=utf-8";
            httpWebRequest.Method = "GET";
            httpWebRequest.Timeout = 60000; // one minute

            try
            {

                using (var response = httpWebRequest.GetResponse() as HttpWebResponse)
                {
                    if (httpWebRequest.HaveResponse && response != null)
                    {
                        using (var reader = new StreamReader(response.GetResponseStream()))
                        {
                            result = reader.ReadToEnd();
                            List<CURRENT_COUNT> curcnt = JsonConvert.DeserializeObject<List<CURRENT_COUNT>>(result);
                            if (curcnt.Count() > 1)
                            {
                                Context.Counts = curcnt;

                                string status = string.Empty;
                                XmlSerializer serializer = new XmlSerializer(typeof(List<CURRENT_COUNT>));
                                string path = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "CountData.xml");
                                try
                                {
                                    using (TextWriter TextWriter = new StreamWriter(path, false))
                                    {
                                        serializer.Serialize(TextWriter, Context.Counts);
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
            }
            catch (WebException e)
            {
                result = e.ToString();
                if (e.Response != null)
                {
                    using (var errorResponse = (HttpWebResponse)e.Response)
                    {
                        using (var reader = new StreamReader(errorResponse.GetResponseStream()))
                        {
                            string error = reader.ReadToEnd();
                            result = error;
                        }
                    }
                }
                if (string.IsNullOrEmpty(result)) result = "Could not connect to web service";
            }

            return result;
        }

        //public List<Database.CURRENT_COUNT> GetCounts(string House = "")
        //{
        //    List<Database.CURRENT_COUNT> counts = new List<CURRENT_COUNT>();
        //    string url = "http://192.168.90.43/WebService/Support/GetCounts/";
        //    if (House.Length>0)
        //    {
        //        url = url.TrimEnd(url[url.Length - 1]) + "?House=" + House;
        //        //url +="?House=" + House;
        //    }
            
        //    HttpWebRequest httpWebRequest = (HttpWebRequest)WebRequest.Create(url);
        //    httpWebRequest.ContentType = "application/json; charset=utf-8";
        //    httpWebRequest.Method = "GET";
        //    httpWebRequest.Timeout = 60000; // one minute
        //    try
        //    {

        //        using (var response = httpWebRequest.GetResponse() as HttpWebResponse)
        //        {
        //            if (httpWebRequest.HaveResponse && response != null)
        //            {
        //                using (var reader = new StreamReader(response.GetResponseStream()))
        //                {
        //                    string result = reader.ReadToEnd();
        //                    counts = JsonConvert.DeserializeObject<List<Database.CURRENT_COUNT>>(result);

        //                }
        //            }
        //        }
        //    }
        //    catch (WebException e)
        //    {
        //        //result = e.ToString();
        //        //if (e.Response != null)
        //        //{
        //        //    using (var errorResponse = (HttpWebResponse)e.Response)
        //        //    {
        //        //        using (var reader = new StreamReader(errorResponse.GetResponseStream()))
        //        //        {
        //        //            string error = reader.ReadToEnd();
        //        //            result = error;
        //        //        }
        //        //    }
        //        //}
        //        //if (string.IsNullOrEmpty(result)) result = "Could not connect to web service";
        //    }
        //    foreach(var item in counts)
        //    {
        //        item.GLH = item.GEN.Substring(2, 3) + "_" + item.LINE + "_" + item.HATCH + "_" + item.HOUSE;
        //        item.USERNAME = Cage.Database.Context.CurrentUserInitial;
        //    }
        //    return counts;
        //}
        public string SaveHandCount(List<CURRENT_COUNT> HandCounts)
        {
            string result = "";

            string url = "http://192.168.90.43/WebService/Support/SaveCount";
            HttpWebRequest httpWebRequest = (HttpWebRequest)WebRequest.Create(url);
            httpWebRequest.ContentType = "application/json; charset=utf-8";
            httpWebRequest.Method = "POST";

            httpWebRequest.ReadWriteTimeout = -1; // Infinite
            httpWebRequest.Timeout = -1; // Infinite
            try
            {
                using (var streamWriter = new StreamWriter(httpWebRequest.GetRequestStream()))
                {
                    string json = JsonConvert.SerializeObject(HandCounts);
                    streamWriter.Write(json);
                    streamWriter.Flush();
                    streamWriter.Close();
                }
                using (var response = httpWebRequest.GetResponse() as HttpWebResponse)
                {
                    if (httpWebRequest.HaveResponse && response != null)
                    {
                        using (var reader = new StreamReader(response.GetResponseStream()))
                        {
                            if (reader != null)
                            {
                                result = reader.ReadToEnd().Replace("\"", "");
                                
                                //if (result.Contains("Success") == true)
                                //{
                                //    Context._counts = new List<CURRENT_COUNT>();
                                //    XmlSerializer serializer = new XmlSerializer(typeof(List<CURRENT_COUNT>));
                                //    string path = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "CountData.xml");
                                //    try
                                //    {
                                //        using (TextWriter TextWriter = new StreamWriter(path, false))
                                //        {
                                //            serializer.Serialize(TextWriter, Context._counts); 
                                //        }
                                //    }
                                //    catch (Exception e)
                                //    {
                                //        result = e.Message;
                                //    }
                                //}
                            }
                        }
                    }
                }
            }
            catch (WebException e)
            {
                result = e.ToString();
                if (e.Response != null)
                {
                    using (var errorResponse = (HttpWebResponse)e.Response)
                    {
                        using (var reader = new StreamReader(errorResponse.GetResponseStream()))
                        {
                            string error = reader.ReadToEnd();
                            result = error;
                        }
                    }
                }
                if (string.IsNullOrEmpty(result)) result = "Could not connect to web service";
            }
            return result;
        }
        public string Upload()
        {
            string result = "";
            string url = "http://192.168.90.43/WebService/Support/SaveCageEggs";
            HttpWebRequest httpWebRequest = (HttpWebRequest)WebRequest.Create(url);
            httpWebRequest.ContentType = "application/json; charset=utf-8";
            httpWebRequest.Method = "POST";

            httpWebRequest.ReadWriteTimeout = -1; // Infinite
            httpWebRequest.Timeout = -1; // Infinite
            try
            {
                using (var streamWriter = new StreamWriter(httpWebRequest.GetRequestStream()))
                {
                    string json = JsonConvert.SerializeObject(Context.CageEggs);
                    streamWriter.Write(json);
                    streamWriter.Flush();
                    streamWriter.Close();
                }
                using (var response = httpWebRequest.GetResponse() as HttpWebResponse)
                {
                    if (httpWebRequest.HaveResponse && response != null)
                    {
                        using (var reader = new StreamReader(response.GetResponseStream()))
                        {
                            if (reader != null)
                            {
                                result = reader.ReadToEnd().Replace("\"", "");
                                if (result.Contains("Success") == true)
                                {
                                    Context._cageEggs = new List<CageEgg>();
                                    //string status = string.Empty;
                                    XmlSerializer serializer = new XmlSerializer(typeof(List<CageEgg>));
                                    string path = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "CageEgg.xml");
                                    try
                                    {
                                        using (TextWriter TextWriter = new StreamWriter(path, false))
                                        {
                                            serializer.Serialize(TextWriter, Context._cageEggs); //, CageEggs); System.IO.IOException: Sharing violation on path ERROR CageEggs uses StreamReader(path)
                                        }
                                    }
                                    catch (Exception e)
                                    {
                                        //status = e.Message;  changed 2/8/21
                                        result = e.Message;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            catch (WebException e)
            {
                result = e.ToString();
                if (e.Response != null)
                {
                    using (var errorResponse = (HttpWebResponse)e.Response)
                    {
                        using (var reader = new StreamReader(errorResponse.GetResponseStream()))
                        {
                            string error = reader.ReadToEnd();
                            result = error;
                        }
                    }
                }
                if (string.IsNullOrEmpty(result)) result = "Could not connect to web service";
            }

            return result;
        }

        public string GetInitials()
        {
            string result = "";

            string url = "http://192.168.90.43/WebService/Support/GetInitials";
            HttpWebRequest httpWebRequest = (HttpWebRequest)WebRequest.Create(url);
            httpWebRequest.ContentType = "application/json; charset=utf-8";
            httpWebRequest.Method = "GET";
            httpWebRequest.Timeout = 60000; // one minute
            try
            {
                
                using (var response = httpWebRequest.GetResponse() as HttpWebResponse)
                {
                    if (httpWebRequest.HaveResponse && response != null)
                    {
                        using (var reader = new StreamReader(response.GetResponseStream()))
                        {
                            result = reader.ReadToEnd();
                            List<Initials> initials = JsonConvert.DeserializeObject<List<Initials>>(result);
                            if (initials.Count()>1)
                            {
                                Context.Initials = initials;

                                string status = string.Empty;
                                XmlSerializer serializer = new XmlSerializer(typeof(List<Initials>));
                                string path = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "Initials.xml");
                                try
                                {
                                    using (TextWriter TextWriter = new StreamWriter(path, false))
                                    {
                                        serializer.Serialize(TextWriter, Context.Initials);
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
            }
            catch (WebException e)
            {
                result = e.ToString();
                if (e.Response != null)
                {
                    using (var errorResponse = (HttpWebResponse)e.Response)
                    {
                        using (var reader = new StreamReader(errorResponse.GetResponseStream()))
                        {
                            string error = reader.ReadToEnd();
                            result = error;
                        }
                    }
                }
                if (string.IsNullOrEmpty(result)) result = "Could not connect to web service";
            }

            return result;
        }

        public string GetTranslation()
        {
            string result = "";

            string url = "http://192.168.90.43/WebService/Support/GetTranslation";
            HttpWebRequest httpWebRequest = (HttpWebRequest)WebRequest.Create(url);
            httpWebRequest.ContentType = "application/json; charset=utf-8";
            httpWebRequest.Method = "GET";
            httpWebRequest.Timeout = 60000; // one minute
            try
            {

                using (var response = httpWebRequest.GetResponse() as HttpWebResponse)
                {
                    if (httpWebRequest.HaveResponse && response != null)
                    {
                        using (var reader = new StreamReader(response.GetResponseStream()))
                        {
                            result = reader.ReadToEnd();
                            List<Lang> lang = JsonConvert.DeserializeObject<List<Lang>>(result);
                            if (lang.Count() > 1)
                            {
                                Context.Lang = lang;

                                string status = string.Empty;
                                XmlSerializer serializer = new XmlSerializer(typeof(List<Lang>));
                                string path = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "Lang.xml");
                                try
                                {
                                    using (TextWriter TextWriter = new StreamWriter(path, false))
                                    {
                                        serializer.Serialize(TextWriter, Context.Lang);
                                        
                                    }
                                }
                                catch (Exception e)
                                {
                                    status = e.Message + lang.Count();
                                }
                                return status;
                            }
                        }
                    }
                }
            }
            catch (WebException e)
            {
                result = e.ToString();
                if (e.Response != null)
                {
                    using (var errorResponse = (HttpWebResponse)e.Response)
                    {
                        using (var reader = new StreamReader(errorResponse.GetResponseStream()))
                        {
                            string error = reader.ReadToEnd();
                            result = error;
                        }
                    }
                }
                if (string.IsNullOrEmpty(result)) result = "Could not connect to web service";
            }

            return result;
        }

    }
}