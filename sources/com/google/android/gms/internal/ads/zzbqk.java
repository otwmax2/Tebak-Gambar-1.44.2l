package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.nativead.NativeAd;
import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbqk extends NativeAd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzbfu f11172a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzbqj f11174c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final NativeAd.AdChoicesInfo f11175d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f11173b = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List f11176e = new ArrayList();

    public zzbqk(zzbfu zzbfuVar) {
        zzbdx zzbdxVarI;
        this.f11172a = zzbfuVar;
        zzbqh zzbqhVar = null;
        try {
            List listV = zzbfuVar.v();
            if (listV != null) {
                for (Object obj : listV) {
                    zzbdx zzbdxVarSa = obj instanceof IBinder ? zzbdw.Sa((IBinder) obj) : null;
                    if (zzbdxVarSa != null) {
                        this.f11173b.add(new zzbqj(zzbdxVarSa));
                    }
                }
            }
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
        }
        try {
            List listT = this.f11172a.t();
            if (listT != null) {
                for (Object obj2 : listT) {
                    com.google.android.gms.ads.internal.client.zzcw zzcwVarSa = obj2 instanceof IBinder ? com.google.android.gms.ads.internal.client.zzcv.Sa((IBinder) obj2) : null;
                    if (zzcwVarSa != null) {
                        this.f11176e.add(new com.google.android.gms.ads.internal.client.zzcx(zzcwVarSa));
                    }
                }
            }
        } catch (RemoteException e11) {
            zzbza.e(BuildConfig.FLAVOR, e11);
        }
        try {
            zzbdxVarI = this.f11172a.i();
        } catch (RemoteException e12) {
            zzbza.e(BuildConfig.FLAVOR, e12);
        }
        zzbqj zzbqjVar = zzbdxVarI != null ? new zzbqj(zzbdxVarI) : null;
        this.f11174c = zzbqjVar;
        try {
            if (this.f11172a.g() != null) {
                zzbqhVar = new zzbqh(this.f11172a.g());
            }
        } catch (RemoteException e13) {
            zzbza.e(BuildConfig.FLAVOR, e13);
        }
        this.f11175d = zzbqhVar;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String a() {
        try {
            return this.f11172a.m();
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String b() {
        try {
            return this.f11172a.n();
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String c() {
        try {
            return this.f11172a.r();
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final ResponseInfo d() {
        com.google.android.gms.ads.internal.client.zzdn zzdnVarE;
        try {
            zzdnVarE = this.f11172a.e();
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
            zzdnVarE = null;
        }
        return ResponseInfo.d(zzdnVarE);
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    protected final /* bridge */ /* synthetic */ Object e() {
        try {
            return this.f11172a.l();
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
            return null;
        }
    }
}
