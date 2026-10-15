package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.IBinder;
import android.text.TextUtils;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfee implements zzfec {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f17993a;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f18007o;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f17994b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f17995c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f17996d = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f18008p = 2;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f18009q = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f17997e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f17998f = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f17999g = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f18000h = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f18001i = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f18002j = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f18003k = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f18004l = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f18005m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f18006n = false;

    zzfee(Context context, int i10) {
        this.f17993a = context;
        this.f18007o = i10;
    }

    public final synchronized zzfee A(String str) {
        this.f18000h = str;
        return this;
    }

    public final synchronized zzfee B(String str) {
        this.f18001i = str;
        return this;
    }

    public final synchronized zzfee C(boolean z10) {
        this.f17996d = z10;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfec
    public final /* bridge */ /* synthetic */ zzfec D(String str) {
        z(str);
        return this;
    }

    public final synchronized zzfee E(Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10178b8)).booleanValue()) {
            this.f18003k = zzbsf.f(th);
            this.f18002j = (String) zzfoh.c(zzfng.c('\n')).d(zzbsf.e(th)).iterator().next();
        }
        return this;
    }

    public final synchronized zzfee F() {
        Configuration configuration;
        this.f17997e = com.google.android.gms.ads.internal.zzt.s().k(this.f17993a);
        Resources resources = this.f17993a.getResources();
        int i10 = 2;
        if (resources != null && (configuration = resources.getConfiguration()) != null) {
            i10 = configuration.orientation == 2 ? 4 : 3;
        }
        this.f18009q = i10;
        this.f17994b = com.google.android.gms.ads.internal.zzt.b().b();
        this.f18006n = true;
        return this;
    }

    public final synchronized zzfee G() {
        this.f17995c = com.google.android.gms.ads.internal.zzt.b().b();
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfec
    public final /* bridge */ /* synthetic */ zzfec O(String str) {
        A(str);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfec
    public final /* bridge */ /* synthetic */ zzfec a(zzeyn zzeynVar) {
        y(zzeynVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfec
    public final /* bridge */ /* synthetic */ zzfec b(Throwable th) {
        E(th);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfec
    public final /* bridge */ /* synthetic */ zzfec f() {
        F();
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfec
    public final /* bridge */ /* synthetic */ zzfec g() {
        G();
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfec
    public final synchronized boolean h() {
        return this.f18006n;
    }

    @Override // com.google.android.gms.internal.ads.zzfec
    public final boolean i() {
        return !TextUtils.isEmpty(this.f18000h);
    }

    @Override // com.google.android.gms.internal.ads.zzfec
    public final synchronized zzfeg j() {
        zzfef zzfefVar = null;
        if (this.f18005m) {
            return null;
        }
        this.f18005m = true;
        if (!this.f18006n) {
            F();
        }
        if (this.f17995c < 0) {
            G();
        }
        return new zzfeg(this, zzfefVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfec
    public final /* bridge */ /* synthetic */ zzfec l0(int i10) {
        o(i10);
        return this;
    }

    public final synchronized zzfee o(int i10) {
        this.f18008p = i10;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfec
    public final /* bridge */ /* synthetic */ zzfec s(String str) {
        B(str);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfec
    public final /* bridge */ /* synthetic */ zzfec v(com.google.android.gms.ads.internal.client.zze zzeVar) {
        x(zzeVar);
        return this;
    }

    public final synchronized zzfee x(com.google.android.gms.ads.internal.client.zze zzeVar) {
        IBinder iBinder = zzeVar.f5845s;
        if (iBinder == null) {
            return this;
        }
        zzcuh zzcuhVar = (zzcuh) iBinder;
        String strI = zzcuhVar.i();
        if (!TextUtils.isEmpty(strI)) {
            this.f17998f = strI;
        }
        String strG = zzcuhVar.g();
        if (!TextUtils.isEmpty(strG)) {
            this.f17999g = strG;
        }
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002b, code lost:
    
        r2.f17999g = r0.f17637c0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized com.google.android.gms.internal.ads.zzfee y(com.google.android.gms.internal.ads.zzeyn r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            com.google.android.gms.internal.ads.zzeyf r0 = r3.f17700b     // Catch: java.lang.Throwable -> L31
            java.lang.String r0 = r0.f17679b     // Catch: java.lang.Throwable -> L31
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L31
            if (r0 != 0) goto L11
            com.google.android.gms.internal.ads.zzeyf r0 = r3.f17700b     // Catch: java.lang.Throwable -> L31
            java.lang.String r0 = r0.f17679b     // Catch: java.lang.Throwable -> L31
            r2.f17998f = r0     // Catch: java.lang.Throwable -> L31
        L11:
            java.util.List r3 = r3.f17699a     // Catch: java.lang.Throwable -> L31
            java.util.Iterator r3 = r3.iterator()     // Catch: java.lang.Throwable -> L31
        L17:
            boolean r0 = r3.hasNext()     // Catch: java.lang.Throwable -> L31
            if (r0 == 0) goto L2f
            java.lang.Object r0 = r3.next()     // Catch: java.lang.Throwable -> L31
            com.google.android.gms.internal.ads.zzeyc r0 = (com.google.android.gms.internal.ads.zzeyc) r0     // Catch: java.lang.Throwable -> L31
            java.lang.String r1 = r0.f17637c0     // Catch: java.lang.Throwable -> L31
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> L31
            if (r1 != 0) goto L17
            java.lang.String r3 = r0.f17637c0     // Catch: java.lang.Throwable -> L31
            r2.f17999g = r3     // Catch: java.lang.Throwable -> L31
        L2f:
            monitor-exit(r2)
            return r2
        L31:
            r3 = move-exception
            monitor-exit(r2)
            goto L35
        L34:
            throw r3
        L35:
            goto L34
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfee.y(com.google.android.gms.internal.ads.zzeyn):com.google.android.gms.internal.ads.zzfee");
    }

    @Override // com.google.android.gms.internal.ads.zzfec
    public final /* bridge */ /* synthetic */ zzfec y0(boolean z10) {
        C(z10);
        return this;
    }

    public final synchronized zzfee z(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10178b8)).booleanValue()) {
            this.f18004l = str;
        }
        return this;
    }
}
