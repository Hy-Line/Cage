package crc6453ccb77bbbda87df;


public class ScanCage
	extends android.support.v4.app.Fragment
	implements
		mono.android.IGCUserPeer,
		com.datalogic.decode.ReadListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onCreate:(Landroid/os/Bundle;)V:GetOnCreate_Landroid_os_Bundle_Handler\n" +
			"n_onStop:()V:GetOnStopHandler\n" +
			"n_onStart:()V:GetOnStartHandler\n" +
			"n_onCreateView:(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;:GetOnCreateView_Landroid_view_LayoutInflater_Landroid_view_ViewGroup_Landroid_os_Bundle_Handler\n" +
			"n_onRead:(Lcom/datalogic/decode/DecodeResult;)V:GetOnRead_Lcom_datalogic_decode_DecodeResult_Handler:Com.Datalogic.Decode.IReadListenerInvoker, datalogic-xamarin-sdk\n" +
			"";
		mono.android.Runtime.register ("Cage.Fragments.ScanCage, Cage", ScanCage.class, __md_methods);
	}


	public ScanCage ()
	{
		super ();
		if (getClass () == ScanCage.class)
			mono.android.TypeManager.Activate ("Cage.Fragments.ScanCage, Cage", "", this, new java.lang.Object[] {  });
	}


	public void onCreate (android.os.Bundle p0)
	{
		n_onCreate (p0);
	}

	private native void n_onCreate (android.os.Bundle p0);


	public void onStop ()
	{
		n_onStop ();
	}

	private native void n_onStop ();


	public void onStart ()
	{
		n_onStart ();
	}

	private native void n_onStart ();


	public android.view.View onCreateView (android.view.LayoutInflater p0, android.view.ViewGroup p1, android.os.Bundle p2)
	{
		return n_onCreateView (p0, p1, p2);
	}

	private native android.view.View n_onCreateView (android.view.LayoutInflater p0, android.view.ViewGroup p1, android.os.Bundle p2);


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
