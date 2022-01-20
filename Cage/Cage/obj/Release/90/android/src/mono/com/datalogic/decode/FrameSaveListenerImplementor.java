package mono.com.datalogic.decode;


public class FrameSaveListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.datalogic.decode.FrameSaveListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onFrameSave:(Lcom/datalogic/decode/SavedFrame;)V:GetOnFrameSave_Lcom_datalogic_decode_SavedFrame_Handler:Com.Datalogic.Decode.IFrameSaveListenerInvoker, datalogic-xamarin-sdk\n" +
			"";
		mono.android.Runtime.register ("Com.Datalogic.Decode.IFrameSaveListenerImplementor, datalogic-xamarin-sdk", FrameSaveListenerImplementor.class, __md_methods);
	}


	public FrameSaveListenerImplementor ()
	{
		super ();
		if (getClass () == FrameSaveListenerImplementor.class)
			mono.android.TypeManager.Activate ("Com.Datalogic.Decode.IFrameSaveListenerImplementor, datalogic-xamarin-sdk", "", this, new java.lang.Object[] {  });
	}


	public void onFrameSave (com.datalogic.decode.SavedFrame p0)
	{
		n_onFrameSave (p0);
	}

	private native void n_onFrameSave (com.datalogic.decode.SavedFrame p0);

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
