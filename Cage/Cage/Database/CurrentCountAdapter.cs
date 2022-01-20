using System;
using System.Collections;
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
    public class CurrentCountAdapter : ArrayAdapter<Database.CURRENT_COUNT>
    {
        public List<Database.CURRENT_COUNT> CurrentCounts { get; set; } = new List<CURRENT_COUNT>();
        int _layoutId;
        TextView genView = null;
        EditText todayCount = null;
        public CurrentCountAdapter(Android.Content.Context context, int textViewResourceId, List<CURRENT_COUNT> currentCounts) : base(context, textViewResourceId, currentCounts)
        {
            this.CurrentCounts = currentCounts;
            this._layoutId = textViewResourceId;
        }
        public int GetCount()
        {
            return CurrentCounts.Count;
        }
        
        public override View GetView(int position, View convertView, ViewGroup parent)
        {
            View v = convertView;
            if (v == null)
            {
                LayoutInflater li = LayoutInflater.From(Context);
                v = li.Inflate(Resource.Layout.CurrentCountList, null);
            }
            CURRENT_COUNT cc = this.CurrentCounts[position];
            genView = v.FindViewById<TextView>(Resource.Id.genView);
            //TextView houseView = v.FindViewById<TextView>(Resource.Id.houseView);
            TextView dateView = v.FindViewById<TextView>(Resource.Id.dateView);
            TextView lastCountView = v.FindViewById<TextView>(Resource.Id.lastCountView);
            todayCount = v.FindViewById<EditText>(Resource.Id.todayCount);
            genView.Text = cc.GLH;
            //houseView.Text = cc.HOUSE;
            
            dateView.Text = cc.PROD_DATE.Substring(0,5);
            lastCountView.Text = cc.SYSTEMCOUNT.ToString();
            todayCount.Text = cc.HANDCOUNT.ToString();
            todayCount.Tag = cc.GLH;
            todayCount.AfterTextChanged += TodayCount_AfterTextChanged;
            return v;
        }

        private void TodayCount_AfterTextChanged(object sender, Android.Text.AfterTextChangedEventArgs e)
        {
            EditText item = (EditText)sender;
            var count = CurrentCounts.Where(x => x.GLH == item.Tag.ToString()).FirstOrDefault();
            if (string.IsNullOrEmpty(item.Text) == true) return;
            count.HANDCOUNT = item.Text; //long.Parse(item.Text);
        }
    }
}