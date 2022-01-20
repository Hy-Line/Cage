package mono.com.datalogic.decode;


public class FrameCaptureListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.datalogic.decode.FrameCaptureListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onFrameCapture:(Lcom/datalogic/decode/CapturedFrame;)V:GetOnFrameCapture_Lcom_datalogic_decode_CapturedFrame_Handler:Com.Datalogic.Decode.IFrameCaptureListenerInvoker, datalogic-xamarin-sdk\n" +
			"";
		mono.android.Runtime.register ("Com.Datalogic.Decode.IFrameCaptureListenerImplementor, datalogic-xamarin-sdk", FrameCaptureListenerImplementor.class, __md_methods);
	}


	public FrameCaptureListenerImplementor ()
	{
		super ();
		if (getClass () == FrameCaptureListenerImplementor.class)
			mono.android.TypeManager.Activate ("Com.Datalogic.Decode.IFrameCaptureListenerImplementor, datalogic-xamarin-sdk", "", this, new java.lang.Object[] {  });
	}


	public void onFrameCapture (com.datalogic.decode.CapturedFrame p0)
	{
		n_onFrameCapture (p0);
	}

	private native void n_onFrameCapture (com.datalogic.decode.CapturedFrame p0);

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
