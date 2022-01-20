package mono.com.datalogic.device.input;


public class AdvancedKeyboard_LayoutChangeEventListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.datalogic.device.input.AdvancedKeyboard.LayoutChangeEventListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onLayoutChanged:(I)V:GetOnLayoutChanged_IHandler:Com.Datalogic.Device.Input.AdvancedKeyboard/ILayoutChangeEventListenerInvoker, datalogic-xamarin-sdk\n" +
			"";
		mono.android.Runtime.register ("Com.Datalogic.Device.Input.AdvancedKeyboard+ILayoutChangeEventListenerImplementor, datalogic-xamarin-sdk", AdvancedKeyboard_LayoutChangeEventListenerImplementor.class, __md_methods);
	}


	public AdvancedKeyboard_LayoutChangeEventListenerImplementor ()
	{
		super ();
		if (getClass () == AdvancedKeyboard_LayoutChangeEventListenerImplementor.class)
			mono.android.TypeManager.Activate ("Com.Datalogic.Device.Input.AdvancedKeyboard+ILayoutChangeEventListenerImplementor, datalogic-xamarin-sdk", "", this, new java.lang.Object[] {  });
	}


	public void onLayoutChanged (int p0)
	{
		n_onLayoutChanged (p0);
	}

	private native void n_onLayoutChanged (int p0);

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
