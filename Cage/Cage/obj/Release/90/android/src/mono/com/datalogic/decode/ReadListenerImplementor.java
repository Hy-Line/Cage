package mono.com.datalogic.decode;


public class ReadListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.datalogic.decode.ReadListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onRead:(Lcom/datalogic/decode/DecodeResult;)V:GetOnRead_Lcom_datalogic_decode_DecodeResult_Handler:Com.Datalogic.Decode.IReadListenerInvoker, datalogic-xamarin-sdk\n" +
			"";
		mono.android.Runtime.register ("Com.Datalogic.Decode.IReadListenerImplementor, datalogic-xamarin-sdk", ReadListenerImplementor.class, __md_methods);
	}


	public ReadListenerImplementor ()
	{
		super ();
		if (getClass () == ReadListenerImplementor.class)
			mono.android.TypeManager.Activate ("Com.Datalogic.Decode.IReadListenerImplementor, datalogic-xamarin-sdk", "", this, new java.lang.Object[] {  });
	}


	public void onRead (com.datalogic.decode.DecodeResult p0)
	{
		n_onRead (p0);
	}

	private native void n_onRead (com.datalogic.decode.DecodeResult p0);

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
