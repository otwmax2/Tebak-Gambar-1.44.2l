package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.ads.internal.client.zzay;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.ads.internal.client.zzbn;
import com.google.android.gms.ads.internal.client.zzbq;
import com.google.android.gms.ads.internal.client.zzdx;
import com.google.android.gms.ads.internal.client.zzeu;
import com.google.android.gms.ads.internal.client.zzfl;
import com.google.android.gms.ads.internal.client.zzp;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbci;
import com.google.android.gms.internal.ads.zzbdl;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzbgf;
import com.google.android.gms.internal.ads.zzbnc;
import com.google.android.gms.internal.ads.zzbqr;
import com.google.android.gms.internal.ads.zzbyp;
import com.google.android.gms.internal.ads.zzbza;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class AdLoader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzp f5571a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f5572b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzbn f5573c;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f5574a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final zzbq f5575b;

        public Builder(Context context, String str) {
            Context context2 = (Context) Preconditions.l(context, "context cannot be null");
            zzbq zzbqVarC = zzay.a().c(context, str, new zzbnc());
            this.f5574a = context2;
            this.f5575b = zzbqVarC;
        }

        public AdLoader a() {
            try {
                return new AdLoader(this.f5574a, this.f5575b.b(), zzp.f5930a);
            } catch (RemoteException e10) {
                zzbza.e("Failed to build AdLoader.", e10);
                return new AdLoader(this.f5574a, new zzeu().Ta(), zzp.f5930a);
            }
        }

        @Deprecated
        public Builder b(String str, NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener, NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener) {
            zzbgc zzbgcVar = new zzbgc(onCustomTemplateAdLoadedListener, onCustomClickListener);
            try {
                this.f5575b.X5(str, zzbgcVar.e(), zzbgcVar.d());
            } catch (RemoteException e10) {
                zzbza.h("Failed to add custom template ad listener", e10);
            }
            return this;
        }

        public Builder c(NativeAd.OnNativeAdLoadedListener onNativeAdLoadedListener) {
            try {
                this.f5575b.F1(new zzbqr(onNativeAdLoadedListener));
            } catch (RemoteException e10) {
                zzbza.h("Failed to add google native ad listener", e10);
            }
            return this;
        }

        @Deprecated
        public Builder d(UnifiedNativeAd.OnUnifiedNativeAdLoadedListener onUnifiedNativeAdLoadedListener) {
            try {
                this.f5575b.F1(new zzbgf(onUnifiedNativeAdLoadedListener));
            } catch (RemoteException e10) {
                zzbza.h("Failed to add google native ad listener", e10);
            }
            return this;
        }

        public Builder e(AdListener adListener) {
            try {
                this.f5575b.Y8(new com.google.android.gms.ads.internal.client.zzg(adListener));
            } catch (RemoteException e10) {
                zzbza.h("Failed to set AdListener.", e10);
            }
            return this;
        }

        @Deprecated
        public Builder f(NativeAdOptions nativeAdOptions) {
            try {
                this.f5575b.wa(new zzbdl(nativeAdOptions));
            } catch (RemoteException e10) {
                zzbza.h("Failed to specify native ad options", e10);
            }
            return this;
        }

        public Builder g(com.google.android.gms.ads.nativead.NativeAdOptions nativeAdOptions) {
            try {
                this.f5575b.wa(new zzbdl(4, nativeAdOptions.e(), -1, nativeAdOptions.d(), nativeAdOptions.a(), nativeAdOptions.c() != null ? new zzfl(nativeAdOptions.c()) : null, nativeAdOptions.h(), nativeAdOptions.b(), nativeAdOptions.f(), nativeAdOptions.g()));
            } catch (RemoteException e10) {
                zzbza.h("Failed to specify native ad options", e10);
            }
            return this;
        }
    }

    AdLoader(Context context, zzbn zzbnVar, zzp zzpVar) {
        this.f5572b = context;
        this.f5573c = zzbnVar;
        this.f5571a = zzpVar;
    }

    private final void e(final zzdx zzdxVar) {
        zzbar.c(this.f5572b);
        if (((Boolean) zzbci.f10548c.e()).booleanValue()) {
            if (((Boolean) zzba.c().b(zzbar.f10410w9)).booleanValue()) {
                zzbyp.f11576b.execute(new Runnable() { // from class: com.google.android.gms.ads.zza
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f6492o.d(zzdxVar);
                    }
                });
                return;
            }
        }
        try {
            this.f5573c.i5(this.f5571a.a(this.f5572b, zzdxVar));
        } catch (RemoteException e10) {
            zzbza.e("Failed to load ad.", e10);
        }
    }

    public boolean a() {
        try {
            return this.f5573c.g();
        } catch (RemoteException e10) {
            zzbza.h("Failed to check if ad is loading.", e10);
            return false;
        }
    }

    public void b(AdRequest adRequest) {
        e(adRequest.f5576a);
    }

    public void c(AdRequest adRequest, int i10) {
        try {
            this.f5573c.ra(this.f5571a.a(this.f5572b, adRequest.f5576a), i10);
        } catch (RemoteException e10) {
            zzbza.e("Failed to load ads.", e10);
        }
    }

    final /* synthetic */ void d(zzdx zzdxVar) {
        try {
            this.f5573c.i5(this.f5571a.a(this.f5572b, zzdxVar));
        } catch (RemoteException e10) {
            zzbza.e("Failed to load ad.", e10);
        }
    }
}
