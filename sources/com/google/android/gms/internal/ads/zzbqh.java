package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.nativead.NativeAd;
import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbqh extends NativeAd.AdChoicesInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f11166a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f11167b;

    public zzbqh(zzbdp zzbdpVar) {
        try {
            this.f11167b = zzbdpVar.e();
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
            this.f11167b = BuildConfig.FLAVOR;
        }
        try {
            for (Object obj : zzbdpVar.f()) {
                zzbdx zzbdxVarSa = obj instanceof IBinder ? zzbdw.Sa((IBinder) obj) : null;
                if (zzbdxVarSa != null) {
                    this.f11166a.add(new zzbqj(zzbdxVarSa));
                }
            }
        } catch (RemoteException e11) {
            zzbza.e(BuildConfig.FLAVOR, e11);
        }
    }
}
