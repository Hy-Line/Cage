using Android.App;
using Android.OS;
using Android.Runtime;
using Android.Support.Design.Widget;
using Android.Support.V7.App;
using Android.Views;
using Android.Widget;
using System.Linq;
namespace Cage
{
    [Activity(Label = "@string/app_name", Icon = "@mipmap/cage", Theme = "@style/AppTheme", MainLauncher = true)]
    //"@style/Theme.MaterialComponents"; "@style/Theme.MaterialComponents.Light"
    // "@style/AppTheme"
    public class MainActivity : AppCompatActivity, BottomNavigationView.IOnNavigationItemSelectedListener
    {
        //Android.Support.V7.Widget.Toolbar tb;
        TextView textMessage;
        Database.Device device;
        Database.Context context = new Database.Context();
        Database.Lang lang = new Database.Lang();
        BottomNavigationView navigation;
        protected override void OnCreate(Bundle savedInstanceState)
        {

            device = Database.Context.Device ?? new Database.Device();
            
            base.OnCreate(savedInstanceState);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            SetContentView(Resource.Layout.activity_main);
            
            navigation = FindViewById<BottomNavigationView>(Resource.Id.navigation);
            textMessage = FindViewById<TextView>(Resource.Id.message);
            
            //Hide Egg Count icon if External site!
            navigation.Menu.FindItem(Resource.Id.navigation_eggcount).SetVisible(!device.ExternalData);
            navigation.SetOnNavigationItemSelectedListener(this);
            

            var trans = SupportFragmentManager.BeginTransaction();
            trans.Replace(Resource.Id.container, new Cage.Fragments.MainHomeScreen(), device.Trans("Home"));
            trans.Commit();
        }
        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }
        public bool OnNavigationItemSelected(IMenuItem item)
        {
            device = Database.Context.Device ?? new Database.Device();
            navigation.Menu.FindItem(Resource.Id.navigation_eggcount).SetVisible(!device.ExternalData);
            this.Title = device.Trans("Production"); 
            var trans = SupportFragmentManager.BeginTransaction();
            
            switch (item.ItemId)
            {
                case Resource.Id.navigation_setup:
                    
                    item.SetTitle(device.Trans("Setup"));
                    trans.Replace(Resource.Id.container, new Cage.Fragments.Setup(), device.Trans("Setup"));
                    trans.Commit();
                    return true;
                case Resource.Id.navigation_home:
                    
                    item.SetTitle(device.Trans("Home"));
                    trans.Replace(Resource.Id.container, new Cage.Fragments.MainHomeScreen(), device.Trans("Home"));
                    trans.Commit();
                    return true;
                case Resource.Id.navigation_dashboard:
                    
                    item.SetTitle(device.Trans("Cage"));
                    trans.Replace(Resource.Id.container, new Cage.Fragments.ScanCage(), device.Trans("Cage"));
                    trans.Commit();
                    return true;
                case Resource.Id.navigation_notifications:
                    
                    item.SetTitle(device.Trans("List Scans"));
                    trans.Replace(Resource.Id.container, new Cage.Fragments.ListCages(), device.Trans("List Scans"));
                    trans.Commit();
                    return true;
                case Resource.Id.navigation_eggcount:
                    
                    //if (device.ExternalData==false) // Eggcounts only for local sites (online)
                    //{
                    item.SetTitle(device.Trans("Egg Count"));
                    trans.Replace(Resource.Id.container, new Cage.Fragments.EggCount(), device.Trans("Egg Count"));
                    trans.Commit();
                    return true;
                    //}
                    //return false;
            }
            return false;
        }
    }
}

