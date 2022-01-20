package mono.com.datalogic.decode;


public class InitListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.datalogic.decode.InitListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onScanInit:()V:GetOnScanInitHandler:Com.Datalogic.Decode.IInitListenerInvoker, datalogic-xamarin-sdk\n" +
			"";
		mono.android.Runtime.register ("Com.Datalogic.Decode.IInitListenerImplementor, datalogic-xamarin-sdk", InitListenerImplementor.class, __md_methods);
	}


	public InitListenerImplementor ()
	{
		super ();
		if (getClass () == InitListenerImplementor.class)
			mono.android.TypeManager.Activate ("Com.Datalogic.Decode.IInitListenerImplementor, datalogic-xamarin-sdk", "", this, new java.lang.Object[] {  });
	}


	public void onScanInit ()
	{
		n_onScanInit ();
	}

	private native void n_onScanInit ();

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
