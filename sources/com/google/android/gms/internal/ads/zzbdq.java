package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.NativeAd;
import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbdq extends NativeAd.AdChoicesInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzbdp f10655a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f10656b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f10657c;

    public zzbdq(zzbdp zzbdpVar) {
        IBinder iBinder;
        this.f10655a = zzbdpVar;
        try {
            this.f10657c = zzbdpVar.e();
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
            this.f10657c = BuildConfig.FLAVOR;
        }
        try {
            for (Object obj : zzbdpVar.f()) {
                zzbdx zzbdvVar = null;
                if ((obj instanceof IBinder) && (iBinder = (IBinder) obj) != null) {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                    zzbdvVar = iInterfaceQueryLocalInterface instanceof zzbdx ? (zzbdx) iInterfaceQueryLocalInterface : new zzbdv(iBinder);
                }
                if (zzbdvVar != null) {
                    this.f10656b.add(new zzbdy(zzbdvVar));
                }
            }
        } catch (RemoteException e11) {
            zzbza.e(BuildConfig.FLAVOR, e11);
        }
    }
}
