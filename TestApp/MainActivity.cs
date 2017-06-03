using Android.App;
using Android.Widget;
using Android.OS;
using Com.Taptrack.Tcmptappy.Commlink.Ble;
using Android.Runtime;
using Com.Taptrack.Tcmptappy.Tappy.Ble.Scanner;
using Com.Taptrack.Tcmptappy.Tappy.Ble;

namespace TestApp
{
    [Activity(Label = "TestApp", MainLauncher = true, Icon = "@mipmap/icon")]
    public class MainActivity : Activity
    {
        int count = 1;
        private ITappyBleDeviceDefinition deviceDefinition;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            // Set our view from the "main" layout resource
            SetContentView(Resource.Layout.Main);

            // Get our button from the layout resource,
            // and attach an event to it
            Button button = FindViewById<Button>(Resource.Id.myButton);

            button.Click += Button_Click;
        }

        void Button_Click(object sender, System.EventArgs e)
        {
            TappyBleCommunicator communicator =
                new TappyBleCommunicator(this, deviceDefinition);
            //prepare to connect
            communicator.Initialize();
            //connect to the tappy
            communicator.Connect();
            // work with tappy
            // disconnect from the tappy
            communicator.Dispose();
            // close the connection
            // this cancels the connection and removes all listeners
            communicator.Close();
            var scanner = TappyBleScanner.Get();
        }
    }
}

