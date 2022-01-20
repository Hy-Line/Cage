package mono.com.datalogic.device.input;


public class AdvancedKeyboard_ActionEventListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.datalogic.device.input.AdvancedKeyboard.ActionEventListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onAction:(IZ)V:GetOnAction_IZHandler:Com.Datalogic.Device.Input.AdvancedKeyboard/IActionEventListenerInvoker, datalogic-xamarin-sdk\n" +
			"";
		mono.android.Runtime.register ("Com.Datalogic.Device.Input.AdvancedKeyboard+IActionEventListenerImplementor, datalogic-xamarin-sdk", AdvancedKeyboard_ActionEventListenerImplementor.class, __md_methods);
	}


	public AdvancedKeyboard_ActionEventListenerImplementor ()
	{
		super ();
		if (getClass () == AdvancedKeyboard_ActionEventListenerImplementor.class)
			mono.android.TypeManager.Activate ("Com.Datalogic.Device.Input.AdvancedKeyboard+IActionEventListenerImplementor, datalogic-xamarin-sdk", "", this, new java.lang.Object[] {  });
	}


	public void onAction (int p0, boolean p1)
	{
		n_onAction (p0, p1);
	}

	private native void n_onAction (int p0, boolean p1);

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
