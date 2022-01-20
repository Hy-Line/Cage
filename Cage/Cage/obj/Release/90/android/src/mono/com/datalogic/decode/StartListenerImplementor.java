package mono.com.datalogic.decode;


public class StartListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.datalogic.decode.StartListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onScanStarted:()V:GetOnScanStartedHandler:Com.Datalogic.Decode.IStartListenerInvoker, datalogic-xamarin-sdk\n" +
			"";
		mono.android.Runtime.register ("Com.Datalogic.Decode.IStartListenerImplementor, datalogic-xamarin-sdk", StartListenerImplementor.class, __md_methods);
	}


	public StartListenerImplementor ()
	{
		super ();
		if (getClass () == StartListenerImplementor.class)
			mono.android.TypeManager.Activate ("Com.Datalogic.Decode.IStartListenerImplementor, datalogic-xamarin-sdk", "", this, new java.lang.Object[] {  });
	}


	public void onScanStarted ()
	{
		n_onScanStarted ();
	}

	private native void n_onScanStarted ();

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
