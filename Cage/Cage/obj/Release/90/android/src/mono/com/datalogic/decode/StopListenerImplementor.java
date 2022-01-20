package mono.com.datalogic.decode;


public class StopListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.datalogic.decode.StopListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onScanStopped:()V:GetOnScanStoppedHandler:Com.Datalogic.Decode.IStopListenerInvoker, datalogic-xamarin-sdk\n" +
			"";
		mono.android.Runtime.register ("Com.Datalogic.Decode.IStopListenerImplementor, datalogic-xamarin-sdk", StopListenerImplementor.class, __md_methods);
	}


	public StopListenerImplementor ()
	{
		super ();
		if (getClass () == StopListenerImplementor.class)
			mono.android.TypeManager.Activate ("Com.Datalogic.Decode.IStopListenerImplementor, datalogic-xamarin-sdk", "", this, new java.lang.Object[] {  });
	}


	public void onScanStopped ()
	{
		n_onScanStopped ();
	}

	private native void n_onScanStopped ();

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
