package com.google.android.gms.ads.internal.client;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.internal.ads.zzbdl;
import com.google.android.gms.internal.ads.zzbev;
import com.google.android.gms.internal.ads.zzbey;
import com.google.android.gms.internal.ads.zzbfb;
import com.google.android.gms.internal.ads.zzbfe;
import com.google.android.gms.internal.ads.zzbfi;
import com.google.android.gms.internal.ads.zzbfl;
import com.google.android.gms.internal.ads.zzbjx;
import com.google.android.gms.internal.ads.zzbkg;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public interface zzbq extends IInterface {
    void F1(zzbfl zzbflVar) throws RemoteException;

    void G7(zzbey zzbeyVar) throws RemoteException;

    void H8(zzbjx zzbjxVar) throws RemoteException;

    void X5(String str, zzbfe zzbfeVar, zzbfb zzbfbVar) throws RemoteException;

    void Y8(zzbh zzbhVar) throws RemoteException;

    zzbn b() throws RemoteException;

    void e9(zzbkg zzbkgVar) throws RemoteException;

    void n6(zzbfi zzbfiVar, zzq zzqVar) throws RemoteException;

    void pa(PublisherAdViewOptions publisherAdViewOptions) throws RemoteException;

    void wa(zzbdl zzbdlVar) throws RemoteException;

    void x3(zzbev zzbevVar) throws RemoteException;

    void x9(zzcf zzcfVar) throws RemoteException;

    void ya(AdManagerAdViewOptions adManagerAdViewOptions) throws RemoteException;
}
