package mono.com.datalogic.device.battery;


public class BatteryEventListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.datalogic.device.battery.BatteryEventListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onEvent:(Lcom/datalogic/device/battery/BatteryEvent;Ljava/lang/Object;)V:GetOnEvent_Lcom_datalogic_device_battery_BatteryEvent_Ljava_lang_Object_Handler:Com.Datalogic.Device.Battery.IBatteryEventListenerInvoker, datalogic-xamarin-sdk\n" +
			"";
		mono.android.Runtime.register ("Com.Datalogic.Device.Battery.IBatteryEventListenerImplementor, datalogic-xamarin-sdk", BatteryEventListenerImplementor.class, __md_methods);
	}


	public BatteryEventListenerImplementor ()
	{
		super ();
		if (getClass () == BatteryEventListenerImplementor.class)
			mono.android.TypeManager.Activate ("Com.Datalogic.Device.Battery.IBatteryEventListenerImplementor, datalogic-xamarin-sdk", "", this, new java.lang.Object[] {  });
	}


	public void onEvent (com.datalogic.device.battery.BatteryEvent p0, java.lang.Object p1)
	{
		n_onEvent (p0, p1);
	}

	private native void n_onEvent (com.datalogic.device.battery.BatteryEvent p0, java.lang.Object p1);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
