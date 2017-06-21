using System;

using Android.App;

using Android.OS;
using Android.Widget;

namespace HackMD.Droid
{
	[Activity (Label = "HackMD.Droid", MainLauncher = true, Icon = "@mipmap/icon")]
	public class MainActivity : Activity
	{
		int count;

		protected override void OnCreate (Bundle savedInstanceState)
		{
			base.OnCreate (savedInstanceState);

			Bootstrap.Run ();

			// Set our view from the "main" layout resource
			SetContentView (Resource.Layout.Main);

			// Get our button from the layout resource,
			// and attach an event to it
			Button button = FindViewById<Button> (Resource.Id.myButton);

			button.Click += delegate
			{
				button.Text = string.Format ("{0} clicks!", count++);
			};
		}
	}
}
