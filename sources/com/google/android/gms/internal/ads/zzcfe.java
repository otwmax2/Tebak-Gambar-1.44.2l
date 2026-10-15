package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.common.util.CollectionUtils;
import com.vungle.warren.analytics.AnalyticsEvent;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcfe extends com.google.android.gms.ads.internal.client.zzdp {

    @GuardedBy("lock")
    private boolean A;

    @GuardedBy("lock")
    private zzbff B;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzcbj f12103o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final boolean f12105q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final boolean f12106r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @GuardedBy("lock")
    private int f12107s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @GuardedBy("lock")
    private com.google.android.gms.ads.internal.client.zzdt f12108t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @GuardedBy("lock")
    private boolean f12109u;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @GuardedBy("lock")
    private float f12111w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @GuardedBy("lock")
    private float f12112x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @GuardedBy("lock")
    private float f12113y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @GuardedBy("lock")
    private boolean f12114z;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Object f12104p = new Object();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @GuardedBy("lock")
    private boolean f12110v = true;

    public zzcfe(zzcbj zzcbjVar, float f10, boolean z10, boolean z11) {
        this.f12103o = zzcbjVar;
        this.f12111w = f10;
        this.f12105q = z10;
        this.f12106r = z11;
    }

    private final void Za(final int i10, final int i11, final boolean z10, final boolean z11) {
        zzbzn.f11618e.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfd
            @Override // java.lang.Runnable
            public final void run() {
                this.f12098o.Ua(i10, i11, z10, z11);
            }
        });
    }

    private final void ab(String str, Map map) {
        final HashMap map2 = map == null ? new HashMap() : new HashMap(map);
        map2.put("action", str);
        zzbzn.f11618e.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfc
            @Override // java.lang.Runnable
            public final void run() {
                this.f12096o.Va(map2);
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final void H0(boolean z10) {
        ab(true != z10 ? AnalyticsEvent.Ad.unmute : AnalyticsEvent.Ad.mute, null);
    }

    public final void Ta(float f10, float f11, int i10, boolean z10, float f12) {
        boolean z11;
        boolean z12;
        int i11;
        synchronized (this.f12104p) {
            z11 = true;
            if (f11 == this.f12111w && f12 == this.f12113y) {
                z11 = false;
            }
            this.f12111w = f11;
            this.f12112x = f10;
            z12 = this.f12110v;
            this.f12110v = z10;
            i11 = this.f12107s;
            this.f12107s = i10;
            float f13 = this.f12113y;
            this.f12113y = f12;
            if (Math.abs(f12 - f13) > 1.0E-4f) {
                this.f12103o.L().invalidate();
            }
        }
        if (z11) {
            try {
                zzbff zzbffVar = this.B;
                if (zzbffVar != null) {
                    zzbffVar.b();
                }
            } catch (RemoteException e10) {
                zzbza.i("#007 Could not call remote method.", e10);
            }
        }
        Za(i11, i10, z12, z10);
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0055 A[Catch: RemoteException -> 0x003f, all -> 0x0072, TryCatch #1 {RemoteException -> 0x003f, blocks: (B:31:0x0037, B:33:0x003b, B:37:0x0043, B:39:0x0047, B:41:0x004c, B:43:0x0050, B:45:0x0055, B:47:0x0059, B:48:0x005c, B:50:0x0063, B:52:0x0067), top: B:62:0x0037, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0070 A[Catch: all -> 0x0072, DONT_GENERATE, TryCatch #0 {, blocks: (B:4:0x0003, B:29:0x0033, B:31:0x0037, B:33:0x003b, B:37:0x0043, B:39:0x0047, B:41:0x004c, B:43:0x0050, B:45:0x0055, B:47:0x0059, B:48:0x005c, B:50:0x0063, B:52:0x0067, B:55:0x0070, B:54:0x006b), top: B:60:0x0003, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final /* synthetic */ void Ua(int r8, int r9, boolean r10, boolean r11) {
        /*
            r7 = this;
            java.lang.Object r0 = r7.f12104p
            monitor-enter(r0)
            boolean r1 = r7.f12109u     // Catch: java.lang.Throwable -> L72
            r2 = 0
            r3 = 1
            if (r1 != 0) goto Lf
            if (r9 != r3) goto Lf
            r9 = 1
            r4 = 1
            r5 = 1
            goto L11
        Lf:
            r4 = r9
            r5 = 0
        L11:
            if (r8 == r9) goto L15
            r8 = 1
            goto L16
        L15:
            r8 = 0
        L16:
            if (r8 == 0) goto L1d
            if (r4 != r3) goto L1d
            r9 = 1
            r4 = 1
            goto L1e
        L1d:
            r9 = 0
        L1e:
            if (r8 == 0) goto L25
            r6 = 2
            if (r4 != r6) goto L25
            r6 = 1
            goto L26
        L25:
            r6 = 0
        L26:
            if (r8 == 0) goto L2d
            r8 = 3
            if (r4 != r8) goto L2d
            r8 = 1
            goto L2e
        L2d:
            r8 = 0
        L2e:
            if (r1 != 0) goto L32
            if (r5 == 0) goto L33
        L32:
            r2 = 1
        L33:
            r7.f12109u = r2     // Catch: java.lang.Throwable -> L72
            if (r5 == 0) goto L41
            com.google.android.gms.ads.internal.client.zzdt r1 = r7.f12108t     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L72
            if (r1 == 0) goto L41
            r1.g()     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L72
            goto L41
        L3f:
            r8 = move-exception
            goto L6b
        L41:
            if (r9 == 0) goto L4a
            com.google.android.gms.ads.internal.client.zzdt r9 = r7.f12108t     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L72
            if (r9 == 0) goto L4a
            r9.f()     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L72
        L4a:
            if (r6 == 0) goto L53
            com.google.android.gms.ads.internal.client.zzdt r9 = r7.f12108t     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L72
            if (r9 == 0) goto L53
            r9.e()     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L72
        L53:
            if (r8 == 0) goto L61
            com.google.android.gms.ads.internal.client.zzdt r8 = r7.f12108t     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L72
            if (r8 == 0) goto L5c
            r8.b()     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L72
        L5c:
            com.google.android.gms.internal.ads.zzcbj r8 = r7.f12103o     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L72
            r8.C()     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L72
        L61:
            if (r10 == r11) goto L70
            com.google.android.gms.ads.internal.client.zzdt r8 = r7.f12108t     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L72
            if (r8 == 0) goto L70
            r8.y0(r11)     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L72
            goto L70
        L6b:
            java.lang.String r9 = "#007 Could not call remote method."
            com.google.android.gms.internal.ads.zzbza.i(r9, r8)     // Catch: java.lang.Throwable -> L72
        L70:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L72
            return
        L72:
            r8 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L72
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcfe.Ua(int, int, boolean, boolean):void");
    }

    final /* synthetic */ void Va(Map map) {
        this.f12103o.v0("pubVideoCmd", map);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final void W1(com.google.android.gms.ads.internal.client.zzdt zzdtVar) {
        synchronized (this.f12104p) {
            this.f12108t = zzdtVar;
        }
    }

    public final void Wa(com.google.android.gms.ads.internal.client.zzfl zzflVar) {
        boolean z10 = zzflVar.f5898o;
        boolean z11 = zzflVar.f5899p;
        boolean z12 = zzflVar.f5900q;
        synchronized (this.f12104p) {
            this.f12114z = z11;
            this.A = z12;
        }
        ab("initialState", CollectionUtils.d("muteStart", true != z10 ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES, "customControlsRequested", true != z11 ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES, "clickToExpandRequested", true != z12 ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES));
    }

    public final void Xa(float f10) {
        synchronized (this.f12104p) {
            this.f12112x = f10;
        }
    }

    public final void Ya(zzbff zzbffVar) {
        synchronized (this.f12104p) {
            this.B = zzbffVar;
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final float b() {
        float f10;
        synchronized (this.f12104p) {
            f10 = this.f12113y;
        }
        return f10;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final float c() {
        float f10;
        synchronized (this.f12104p) {
            f10 = this.f12112x;
        }
        return f10;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final float e() {
        float f10;
        synchronized (this.f12104p) {
            f10 = this.f12111w;
        }
        return f10;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final int f() {
        int i10;
        synchronized (this.f12104p) {
            i10 = this.f12107s;
        }
        return i10;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final com.google.android.gms.ads.internal.client.zzdt g() throws RemoteException {
        com.google.android.gms.ads.internal.client.zzdt zzdtVar;
        synchronized (this.f12104p) {
            zzdtVar = this.f12108t;
        }
        return zzdtVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final void i() {
        ab("pause", null);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final void j() {
        ab("play", null);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final void k() {
        ab("stop", null);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final boolean m() {
        boolean z10;
        boolean zN = n();
        synchronized (this.f12104p) {
            z10 = false;
            if (!zN) {
                try {
                    if (this.A && this.f12106r) {
                        z10 = true;
                    }
                } finally {
                }
            }
        }
        return z10;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final boolean n() {
        boolean z10;
        synchronized (this.f12104p) {
            z10 = false;
            if (this.f12105q && this.f12114z) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final boolean r() {
        boolean z10;
        synchronized (this.f12104p) {
            z10 = this.f12110v;
        }
        return z10;
    }

    public final void v() {
        boolean z10;
        int i10;
        synchronized (this.f12104p) {
            z10 = this.f12110v;
            i10 = this.f12107s;
            this.f12107s = 3;
        }
        Za(i10, 3, z10, z10);
    }
}
