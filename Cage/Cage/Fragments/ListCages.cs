using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Com.Datalogic.Device.Input;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Support.Design.Widget;
using Android.Util;
using Android.Views;
using Android.Widget;
namespace Cage.Fragments
{
    public class ListCages : Android.Support.V4.App.Fragment
    {
        ArrayAdapter adapter;
        GridView grid;
        Database.Device device;

        public override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            // Create your fragment here
        }

        public override View OnCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
        {
            View view = inflater.Inflate(Resource.Layout.ListCages, container, false);
            grid = view.FindViewById<GridView>(Resource.Id.gridview);
            device = Database.Context.Device ?? new Database.Device();
            TextView lbldelmsg = view.FindViewById<TextView>(Resource.Id.lblDelMsg);
            lbldelmsg.Text = device.Trans("Click an item to DELETE");
            List<string> cages = (from e in Database.Context.CageEggs
                                  where e.IsNonLayer == Database.Context.IsNonLayer
                                  orderby e.InstanceDate descending
                                  select e.ScanCode + " " + e.ResultCode + " (" + e.InstanceDate.ToString("MM/dd") + ")").ToList();
            adapter = new ArrayAdapter<string>(this.Context, Resource.Layout.listitem, Resource.Id.textview, cages.ToArray());
            grid.Adapter = adapter;
           
            grid.ItemClick += Grid_ItemClick;

            KeyboardManager km = new KeyboardManager();
            foreach (ITrigger tr in km.AvailableTriggers)
            {
                tr.SetEnabled(false); //true to enable
            }
            return view;
        }

        private void Grid_ItemClick(object sender, AdapterView.ItemClickEventArgs args)
        {
            Android.App.AlertDialog.Builder dialog = new AlertDialog.Builder(this.Context);
            AlertDialog alert = dialog.Create();
            alert.SetTitle(device.Trans("Delete"));
            alert.SetMessage(device.Trans("Are you sure you want to delete this item?"));
            alert.SetIcon(Resource.Drawable.delete);
            alert.SetButton2(device.Trans("Cancel"), (c, ev) => { });
            alert.SetButton("OK", (c, ev) =>
            {
                int index = args.Position;
                List<Database.CageEgg> eggcages = (from e in Database.Context.CageEggs
                                                   where e.IsNonLayer == Database.Context.IsNonLayer
                                                   orderby e.InstanceDate descending
                                                   select e).ToList();
                Database.CageEgg cageEgg = eggcages[index];
                if (cageEgg == null) return;

                Database.Context.CageEggs.Remove(cageEgg);
                new Database.Context().Save();

                adapter.NotifyDataSetChanged();

                List<string> cages = (from e in Database.Context.CageEggs
                                      where e.IsNonLayer == Database.Context.IsNonLayer
                                      orderby e.InstanceDate descending
                                      select e.ScanCode + " " + e.ResultCode + " (" + e.InstanceDate.ToString("MM/dd") + ")").ToList();
                adapter = new ArrayAdapter<string>(this.Context, Resource.Layout.listitem, Resource.Id.textview, cages.ToArray()); //this, R.layout.ListView, R.id.textView, StringArray);

                grid.Adapter = adapter;
            });

            alert.Show();
        }
    }
}