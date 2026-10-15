package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzatt;
import com.google.android.gms.internal.ads.zzbnc;
import com.google.android.gms.internal.ads.zzbyt;
import com.google.android.gms.internal.ads.zzbza;
import java.util.concurrent.atomic.AtomicBoolean;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzea {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzbnc f5846a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzp f5847b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicBoolean f5848c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final VideoController f5849d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    final zzaz f5850e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private zza f5851f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private AdListener f5852g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private AdSize[] f5853h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private AppEventListener f5854i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private zzbu f5855j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private VideoOptions f5856k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f5857l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NotOnlyInitialized
    private final ViewGroup f5858m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f5859n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f5860o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private OnPaidEventListener f5861p;

    public zzea(ViewGroup viewGroup, int i10) {
        this(viewGroup, null, false, zzp.f5930a, null, i10);
    }

    private static zzq b(Context context, AdSize[] adSizeArr, int i10) {
        for (AdSize adSize : adSizeArr) {
            if (adSize.equals(AdSize.f5586q)) {
                return zzq.Z3();
            }
        }
        zzq zzqVar = new zzq(context, adSizeArr);
        zzqVar.f5940x = c(i10);
        return zzqVar;
    }

    private static boolean c(int i10) {
        return i10 == 1;
    }

    public final void A(VideoOptions videoOptions) {
        this.f5856k = videoOptions;
        try {
            zzbu zzbuVar = this.f5855j;
            if (zzbuVar != null) {
                zzbuVar.t6(videoOptions == null ? null : new zzfl(videoOptions));
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    public final boolean B(zzbu zzbuVar) {
        try {
            IObjectWrapper iObjectWrapperK = zzbuVar.k();
            if (iObjectWrapperK == null || ((View) ObjectWrapper.t1(iObjectWrapperK)).getParent() != null) {
                return false;
            }
            this.f5858m.addView((View) ObjectWrapper.t1(iObjectWrapperK));
            this.f5855j = zzbuVar;
            return true;
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
            return false;
        }
    }

    public final AdSize[] a() {
        return this.f5853h;
    }

    public final AdListener d() {
        return this.f5852g;
    }

    public final AdSize e() {
        zzq zzqVarE;
        try {
            zzbu zzbuVar = this.f5855j;
            if (zzbuVar != null && (zzqVarE = zzbuVar.e()) != null) {
                return com.google.android.gms.ads.zzb.c(zzqVarE.f5935s, zzqVarE.f5932p, zzqVarE.f5931o);
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
        AdSize[] adSizeArr = this.f5853h;
        if (adSizeArr != null) {
            return adSizeArr[0];
        }
        return null;
    }

    public final OnPaidEventListener f() {
        return this.f5861p;
    }

    public final ResponseInfo g() {
        zzdn zzdnVarI = null;
        try {
            zzbu zzbuVar = this.f5855j;
            if (zzbuVar != null) {
                zzdnVarI = zzbuVar.i();
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
        return ResponseInfo.d(zzdnVarI);
    }

    public final VideoController i() {
        return this.f5849d;
    }

    public final VideoOptions j() {
        return this.f5856k;
    }

    public final AppEventListener k() {
        return this.f5854i;
    }

    public final zzdq l() {
        zzbu zzbuVar = this.f5855j;
        if (zzbuVar != null) {
            try {
                return zzbuVar.j();
            } catch (RemoteException e10) {
                zzbza.i("#007 Could not call remote method.", e10);
            }
        }
        return null;
    }

    public final String m() {
        zzbu zzbuVar;
        if (this.f5857l == null && (zzbuVar = this.f5855j) != null) {
            try {
                this.f5857l = zzbuVar.p();
            } catch (RemoteException e10) {
                zzbza.i("#007 Could not call remote method.", e10);
            }
        }
        return this.f5857l;
    }

    public final void n() {
        try {
            zzbu zzbuVar = this.f5855j;
            if (zzbuVar != null) {
                zzbuVar.y();
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    final /* synthetic */ void o(IObjectWrapper iObjectWrapper) {
        this.f5858m.addView((View) ObjectWrapper.t1(iObjectWrapper));
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00cf A[Catch: RemoteException -> 0x00db, TRY_LEAVE, TryCatch #1 {RemoteException -> 0x00db, blocks: (B:25:0x009e, B:27:0x00a4, B:29:0x00b2, B:31:0x00c4, B:32:0x00cf), top: B:47:0x009e, outer: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void p(com.google.android.gms.ads.internal.client.zzdx r11) {
        /*
            Method dump skipped, instruction units count: 258
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.client.zzea.p(com.google.android.gms.ads.internal.client.zzdx):void");
    }

    public final void q() {
        try {
            zzbu zzbuVar = this.f5855j;
            if (zzbuVar != null) {
                zzbuVar.N();
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    public final void r() {
        try {
            zzbu zzbuVar = this.f5855j;
            if (zzbuVar != null) {
                zzbuVar.R();
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    public final void s(zza zzaVar) {
        try {
            this.f5851f = zzaVar;
            zzbu zzbuVar = this.f5855j;
            if (zzbuVar != null) {
                zzbuVar.M3(zzaVar != null ? new zzb(zzaVar) : null);
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    public final void t(AdListener adListener) {
        this.f5852g = adListener;
        this.f5850e.v(adListener);
    }

    public final void u(AdSize... adSizeArr) {
        if (this.f5853h != null) {
            throw new IllegalStateException("The ad size can only be set once on AdView.");
        }
        v(adSizeArr);
    }

    public final void v(AdSize... adSizeArr) {
        this.f5853h = adSizeArr;
        try {
            zzbu zzbuVar = this.f5855j;
            if (zzbuVar != null) {
                zzbuVar.e8(b(this.f5858m.getContext(), this.f5853h, this.f5859n));
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
        this.f5858m.requestLayout();
    }

    public final void w(String str) {
        if (this.f5857l != null) {
            throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
        }
        this.f5857l = str;
    }

    public final void x(AppEventListener appEventListener) {
        try {
            this.f5854i = appEventListener;
            zzbu zzbuVar = this.f5855j;
            if (zzbuVar != null) {
                zzbuVar.d6(appEventListener != null ? new zzatt(appEventListener) : null);
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    public final void y(boolean z10) {
        this.f5860o = z10;
        try {
            zzbu zzbuVar = this.f5855j;
            if (zzbuVar != null) {
                zzbuVar.Da(z10);
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    public final void z(OnPaidEventListener onPaidEventListener) {
        try {
            this.f5861p = onPaidEventListener;
            zzbu zzbuVar = this.f5855j;
            if (zzbuVar != null) {
                zzbuVar.s3(new zzfe(onPaidEventListener));
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @VisibleForTesting
    zzea(ViewGroup viewGroup, AttributeSet attributeSet, boolean z10, zzp zzpVar, zzbu zzbuVar, int i10) {
        zzq zzqVarZ3;
        this.f5846a = new zzbnc();
        this.f5849d = new VideoController();
        this.f5850e = new o(this);
        this.f5858m = viewGroup;
        this.f5847b = zzpVar;
        this.f5855j = null;
        this.f5848c = new AtomicBoolean(false);
        this.f5859n = i10;
        if (attributeSet != null) {
            Context context = viewGroup.getContext();
            try {
                zzy zzyVar = new zzy(context, attributeSet);
                this.f5853h = zzyVar.b(z10);
                this.f5857l = zzyVar.a();
                if (viewGroup.isInEditMode()) {
                    zzbyt zzbytVarB = zzay.b();
                    AdSize adSize = this.f5853h[0];
                    int i11 = this.f5859n;
                    if (adSize.equals(AdSize.f5586q)) {
                        zzqVarZ3 = zzq.Z3();
                    } else {
                        zzq zzqVar = new zzq(context, adSize);
                        zzqVar.f5940x = c(i11);
                        zzqVarZ3 = zzqVar;
                    }
                    zzbytVarB.s(viewGroup, zzqVarZ3, "Ads by Google");
                }
            } catch (IllegalArgumentException e10) {
                zzay.b().r(viewGroup, new zzq(context, AdSize.f5578i), e10.getMessage(), e10.getMessage());
            }
        }
    }
}
