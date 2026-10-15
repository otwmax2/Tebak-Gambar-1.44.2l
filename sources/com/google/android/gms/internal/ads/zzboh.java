package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzboh implements MediationBannerListener, MediationInterstitialListener, MediationNativeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzbnl f11061a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private UnifiedNativeAdMapper f11062b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private NativeCustomTemplateAd f11063c;

    public zzboh(zzbnl zzbnlVar) {
        this.f11061a = zzbnlVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void a(MediationBannerAdapter mediationBannerAdapter) {
        Preconditions.f("#008 Must be called on the main UI thread.");
        zzbza.b("Adapter called onAdClosed.");
        try {
            this.f11061a.c();
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void b(MediationNativeAdapter mediationNativeAdapter) {
        Preconditions.f("#008 Must be called on the main UI thread.");
        zzbza.b("Adapter called onAdOpened.");
        try {
            this.f11061a.n();
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void c(MediationNativeAdapter mediationNativeAdapter, AdError adError) {
        Preconditions.f("#008 Must be called on the main UI thread.");
        zzbza.b("Adapter called onAdFailedToLoad with error. ErrorCode: " + adError.a() + ". ErrorMessage: " + adError.c() + ". ErrorDomain: " + adError.b());
        try {
            this.f11061a.Y2(adError.d());
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void d(MediationInterstitialAdapter mediationInterstitialAdapter) {
        Preconditions.f("#008 Must be called on the main UI thread.");
        zzbza.b("Adapter called onAdLeftApplication.");
        try {
            this.f11061a.k();
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void e(MediationInterstitialAdapter mediationInterstitialAdapter, int i10) {
        Preconditions.f("#008 Must be called on the main UI thread.");
        zzbza.b("Adapter called onAdFailedToLoad with error " + i10 + ".");
        try {
            this.f11061a.w(i10);
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void f(MediationBannerAdapter mediationBannerAdapter, AdError adError) {
        Preconditions.f("#008 Must be called on the main UI thread.");
        zzbza.b("Adapter called onAdFailedToLoad with error. ErrorCode: " + adError.a() + ". ErrorMessage: " + adError.c() + ". ErrorDomain: " + adError.b());
        try {
            this.f11061a.Y2(adError.d());
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void g(MediationNativeAdapter mediationNativeAdapter, NativeCustomTemplateAd nativeCustomTemplateAd) {
        Preconditions.f("#008 Must be called on the main UI thread.");
        zzbza.b("Adapter called onAdLoaded with template id ".concat(String.valueOf(nativeCustomTemplateAd.a())));
        this.f11063c = nativeCustomTemplateAd;
        try {
            this.f11061a.m();
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void h(MediationBannerAdapter mediationBannerAdapter) {
        Preconditions.f("#008 Must be called on the main UI thread.");
        zzbza.b("Adapter called onAdClicked.");
        try {
            this.f11061a.b();
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void i(MediationNativeAdapter mediationNativeAdapter) {
        Preconditions.f("#008 Must be called on the main UI thread.");
        zzbza.b("Adapter called onAdClosed.");
        try {
            this.f11061a.c();
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void j(MediationBannerAdapter mediationBannerAdapter) {
        Preconditions.f("#008 Must be called on the main UI thread.");
        zzbza.b("Adapter called onAdLoaded.");
        try {
            this.f11061a.m();
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void k(MediationNativeAdapter mediationNativeAdapter) {
        Preconditions.f("#008 Must be called on the main UI thread.");
        UnifiedNativeAdMapper unifiedNativeAdMapper = this.f11062b;
        if (this.f11063c == null) {
            if (unifiedNativeAdMapper == null) {
                zzbza.i("#007 Could not call remote method.", null);
                return;
            } else if (!unifiedNativeAdMapper.l()) {
                zzbza.b("Could not call onAdClicked since setOverrideClickHandling is not set to true");
                return;
            }
        }
        zzbza.b("Adapter called onAdClicked.");
        try {
            this.f11061a.b();
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void l(MediationInterstitialAdapter mediationInterstitialAdapter) {
        Preconditions.f("#008 Must be called on the main UI thread.");
        zzbza.b("Adapter called onAdClicked.");
        try {
            this.f11061a.b();
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void m(MediationNativeAdapter mediationNativeAdapter, NativeCustomTemplateAd nativeCustomTemplateAd, String str) {
        if (!(nativeCustomTemplateAd instanceof zzbes)) {
            zzbza.g("Unexpected native custom template ad type.");
            return;
        }
        try {
            this.f11061a.X7(((zzbes) nativeCustomTemplateAd).b(), str);
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void n(MediationBannerAdapter mediationBannerAdapter) {
        Preconditions.f("#008 Must be called on the main UI thread.");
        zzbza.b("Adapter called onAdLeftApplication.");
        try {
            this.f11061a.k();
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void o(MediationInterstitialAdapter mediationInterstitialAdapter, AdError adError) {
        Preconditions.f("#008 Must be called on the main UI thread.");
        zzbza.b("Adapter called onAdFailedToLoad with error. ErrorCode: " + adError.a() + ". ErrorMessage: " + adError.c() + ". ErrorDomain: " + adError.b());
        try {
            this.f11061a.Y2(adError.d());
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void p(MediationInterstitialAdapter mediationInterstitialAdapter) {
        Preconditions.f("#008 Must be called on the main UI thread.");
        zzbza.b("Adapter called onAdLoaded.");
        try {
            this.f11061a.m();
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void q(MediationBannerAdapter mediationBannerAdapter) {
        Preconditions.f("#008 Must be called on the main UI thread.");
        zzbza.b("Adapter called onAdOpened.");
        try {
            this.f11061a.n();
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void r(MediationInterstitialAdapter mediationInterstitialAdapter) {
        Preconditions.f("#008 Must be called on the main UI thread.");
        zzbza.b("Adapter called onAdClosed.");
        try {
            this.f11061a.c();
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void s(MediationNativeAdapter mediationNativeAdapter, UnifiedNativeAdMapper unifiedNativeAdMapper) {
        Preconditions.f("#008 Must be called on the main UI thread.");
        zzbza.b("Adapter called onAdLoaded.");
        this.f11062b = unifiedNativeAdMapper;
        if (!(mediationNativeAdapter instanceof AdMobAdapter)) {
            VideoController videoController = new VideoController();
            videoController.c(new zzbnv());
            if (unifiedNativeAdMapper != null && unifiedNativeAdMapper.r()) {
                unifiedNativeAdMapper.K(videoController);
            }
        }
        try {
            this.f11061a.m();
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void t(MediationBannerAdapter mediationBannerAdapter, String str, String str2) {
        Preconditions.f("#008 Must be called on the main UI thread.");
        zzbza.b("Adapter called onAppEvent.");
        try {
            this.f11061a.o8(str, str2);
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void u(MediationNativeAdapter mediationNativeAdapter) {
        Preconditions.f("#008 Must be called on the main UI thread.");
        UnifiedNativeAdMapper unifiedNativeAdMapper = this.f11062b;
        if (this.f11063c == null) {
            if (unifiedNativeAdMapper == null) {
                zzbza.i("#007 Could not call remote method.", null);
                return;
            } else if (!unifiedNativeAdMapper.m()) {
                zzbza.b("Could not call onAdImpression since setOverrideImpressionRecording is not set to true");
                return;
            }
        }
        zzbza.b("Adapter called onAdImpression.");
        try {
            this.f11061a.l();
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void v(MediationInterstitialAdapter mediationInterstitialAdapter) {
        Preconditions.f("#008 Must be called on the main UI thread.");
        zzbza.b("Adapter called onAdOpened.");
        try {
            this.f11061a.n();
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    public final NativeCustomTemplateAd w() {
        return this.f11063c;
    }

    public final UnifiedNativeAdMapper x() {
        return this.f11062b;
    }
}
