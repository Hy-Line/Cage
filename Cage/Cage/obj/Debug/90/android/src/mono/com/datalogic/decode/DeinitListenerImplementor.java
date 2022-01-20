package mono.com.datalogic.decode;


public class DeinitListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.datalogic.decode.DeinitListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onScanDeinit:()V:GetOnScanDeinitHandler:Com.Datalogic.Decode.IDeinitListenerInvoker, datalogic-xamarin-sdk\n" +
			"";
		mono.android.Runtime.register ("Com.Datalogic.Decode.IDeinitListenerImplementor, datalogic-xamarin-sdk", DeinitListenerImplementor.class, __md_methods);
	}


	public DeinitListenerImplementor ()
	{
		super ();
		if (getClass () == DeinitListenerImplementor.class)
			mono.android.TypeManager.Activate ("Com.Datalogic.Decode.IDeinitListenerImplementor, datalogic-xamarin-sdk", "", this, new java.lang.Object[] {  });
	}


	public void onScanDeinit ()
	{
		n_onScanDeinit ();
	}

	private native void n_onScanDeinit ();

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
