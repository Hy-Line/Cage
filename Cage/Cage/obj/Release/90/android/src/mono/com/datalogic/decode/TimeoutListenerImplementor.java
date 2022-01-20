package mono.com.datalogic.decode;


public class TimeoutListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.datalogic.decode.TimeoutListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onScanTimeout:()V:GetOnScanTimeoutHandler:Com.Datalogic.Decode.ITimeoutListenerInvoker, datalogic-xamarin-sdk\n" +
			"";
		mono.android.Runtime.register ("Com.Datalogic.Decode.ITimeoutListenerImplementor, datalogic-xamarin-sdk", TimeoutListenerImplementor.class, __md_methods);
	}


	public TimeoutListenerImplementor ()
	{
		super ();
		if (getClass () == TimeoutListenerImplementor.class)
			mono.android.TypeManager.Activate ("Com.Datalogic.Decode.ITimeoutListenerImplementor, datalogic-xamarin-sdk", "", this, new java.lang.Object[] {  });
	}


	public void onScanTimeout ()
	{
		n_onScanTimeout ();
	}

	private native void n_onScanTimeout ();

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
