package mono.com.datalogic.device.input;


public class AdvancedKeyboard_MultitapEventListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.datalogic.device.input.AdvancedKeyboard.MultitapEventListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onMultitapSelected:(I[C)V:GetOnMultitapSelected_IarrayCHandler:Com.Datalogic.Device.Input.AdvancedKeyboard/IMultitapEventListenerInvoker, datalogic-xamarin-sdk\n" +
			"n_onMultitapSelecting:(I[C)V:GetOnMultitapSelecting_IarrayCHandler:Com.Datalogic.Device.Input.AdvancedKeyboard/IMultitapEventListenerInvoker, datalogic-xamarin-sdk\n" +
			"";
		mono.android.Runtime.register ("Com.Datalogic.Device.Input.AdvancedKeyboard+IMultitapEventListenerImplementor, datalogic-xamarin-sdk", AdvancedKeyboard_MultitapEventListenerImplementor.class, __md_methods);
	}


	public AdvancedKeyboard_MultitapEventListenerImplementor ()
	{
		super ();
		if (getClass () == AdvancedKeyboard_MultitapEventListenerImplementor.class)
			mono.android.TypeManager.Activate ("Com.Datalogic.Device.Input.AdvancedKeyboard+IMultitapEventListenerImplementor, datalogic-xamarin-sdk", "", this, new java.lang.Object[] {  });
	}


	public void onMultitapSelected (int p0, char[] p1)
	{
		n_onMultitapSelected (p0, p1);
	}

	private native void n_onMultitapSelected (int p0, char[] p1);


	public void onMultitapSelecting (int p0, char[] p1)
	{
		n_onMultitapSelecting (p0, p1);
	}

	private native void n_onMultitapSelecting (int p0, char[] p1);

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
