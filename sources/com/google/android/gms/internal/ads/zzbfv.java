package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbfv extends UnifiedNativeAd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzbfu f10667a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzbdy f10669c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final NativeAd.AdChoicesInfo f10671e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f10668b = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final VideoController f10670d = new VideoController();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List f10672f = new ArrayList();

    public zzbfv(zzbfu zzbfuVar) {
        zzbdx zzbdxVarI;
        zzbdx zzbdvVar;
        IBinder iBinder;
        this.f10667a = zzbfuVar;
        zzbdq zzbdqVar = null;
        try {
            List listV = zzbfuVar.v();
            if (listV != null) {
                for (Object obj : listV) {
                    if (!(obj instanceof IBinder) || (iBinder = (IBinder) obj) == null) {
                        zzbdvVar = null;
                    } else {
                        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                        zzbdvVar = iInterfaceQueryLocalInterface instanceof zzbdx ? (zzbdx) iInterfaceQueryLocalInterface : new zzbdv(iBinder);
                    }
                    if (zzbdvVar != null) {
                        this.f10668b.add(new zzbdy(zzbdvVar));
                    }
                }
            }
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
        }
        try {
            List listT = this.f10667a.t();
            if (listT != null) {
                for (Object obj2 : listT) {
                    com.google.android.gms.ads.internal.client.zzcw zzcwVarSa = obj2 instanceof IBinder ? com.google.android.gms.ads.internal.client.zzcv.Sa((IBinder) obj2) : null;
                    if (zzcwVarSa != null) {
                        this.f10672f.add(new com.google.android.gms.ads.internal.client.zzcx(zzcwVarSa));
                    }
                }
            }
        } catch (RemoteException e11) {
            zzbza.e(BuildConfig.FLAVOR, e11);
        }
        try {
            zzbdxVarI = this.f10667a.i();
        } catch (RemoteException e12) {
            zzbza.e(BuildConfig.FLAVOR, e12);
        }
        zzbdy zzbdyVar = zzbdxVarI != null ? new zzbdy(zzbdxVarI) : null;
        this.f10669c = zzbdyVar;
        try {
            if (this.f10667a.g() != null) {
                zzbdqVar = new zzbdq(this.f10667a.g());
            }
        } catch (RemoteException e13) {
            zzbza.e(BuildConfig.FLAVOR, e13);
        }
        this.f10671e = zzbdqVar;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String a() {
        try {
            return this.f10667a.k();
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String b() {
        try {
            return this.f10667a.m();
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String c() {
        try {
            return this.f10667a.n();
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String d() {
        try {
            return this.f10667a.r();
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final NativeAd.Image e() {
        return this.f10669c;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final List<NativeAd.Image> f() {
        return this.f10668b;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String g() {
        try {
            return this.f10667a.q();
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final Double h() {
        try {
            double dB = this.f10667a.b();
            if (dB == -1.0d) {
                return null;
            }
            return Double.valueOf(dB);
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String i() {
        try {
            return this.f10667a.x();
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final VideoController j() {
        try {
            if (this.f10667a.f() != null) {
                this.f10670d.c(this.f10667a.f());
            }
        } catch (RemoteException e10) {
            zzbza.e("Exception occurred while getting video controller", e10);
        }
        return this.f10670d;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final Object k() {
        try {
            IObjectWrapper iObjectWrapperJ = this.f10667a.j();
            if (iObjectWrapperJ != null) {
                return ObjectWrapper.t1(iObjectWrapperJ);
            }
            return null;
        } catch (RemoteException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
            return null;
        }
    }
}
