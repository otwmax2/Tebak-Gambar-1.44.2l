package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Build;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfep implements Runnable {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static Boolean f18040x;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f18041o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzbzg f18042p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f18044r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f18045s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final zzdna f18046t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final zzdye f18048v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final zzbtz f18049w;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzfeu f18043q = zzfex.J();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f18047u = false;

    public zzfep(Context context, zzbzg zzbzgVar, zzdna zzdnaVar, zzdye zzdyeVar, zzbtz zzbtzVar, byte[] bArr) {
        this.f18041o = context;
        this.f18042p = zzbzgVar;
        this.f18046t = zzdnaVar;
        this.f18048v = zzdyeVar;
        this.f18049w = zzbtzVar;
    }

    public static synchronized boolean a() {
        if (f18040x == null) {
            if (((Boolean) zzbcd.f10513b.e()).booleanValue()) {
                f18040x = Boolean.valueOf(Math.random() < ((Double) zzbcd.f10512a.e()).doubleValue());
            } else {
                f18040x = Boolean.FALSE;
            }
        }
        return f18040x.booleanValue();
    }

    private final synchronized void c() {
        if (this.f18047u) {
            return;
        }
        this.f18047u = true;
        if (a()) {
            com.google.android.gms.ads.internal.zzt.r();
            this.f18044r = com.google.android.gms.ads.internal.util.zzs.M(this.f18041o);
            this.f18045s = GoogleApiAvailabilityLight.h().b(this.f18041o);
            long jIntValue = ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.X7)).intValue();
            zzbzn.f11617d.scheduleAtFixedRate(this, jIntValue, jIntValue, TimeUnit.MILLISECONDS);
        }
    }

    private final synchronized void d() {
        try {
            new zzdyd(this.f18041o, this.f18042p.f11605o, this.f18049w, Binder.getCallingUid(), null).a(new zzdyb((String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.W7), 60000, new HashMap(), ((zzfex) this.f18043q.k()).t(), "application/x-protobuf", false));
            this.f18043q.q();
        } catch (Exception e10) {
            if ((e10 instanceof zzdtf) && ((zzdtf) e10).a() == 3) {
                this.f18043q.q();
            } else {
                com.google.android.gms.ads.internal.zzt.q().t(e10, "CuiMonitor.sendCuiPing");
            }
        }
    }

    public final synchronized void b(zzfeg zzfegVar) {
        if (!this.f18047u) {
            c();
        }
        if (a()) {
            if (zzfegVar == null) {
                return;
            }
            if (this.f18043q.o() >= ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.Y7)).intValue()) {
                return;
            }
            zzfeu zzfeuVar = this.f18043q;
            zzfev zzfevVarI = zzfew.I();
            zzfer zzferVarI = zzfes.I();
            zzferVarI.G(zzfegVar.k());
            zzferVarI.C(zzfegVar.j());
            zzferVarI.u(zzfegVar.b());
            zzferVarI.I(3);
            zzferVarI.A(this.f18042p.f11605o);
            zzferVarI.o(this.f18044r);
            zzferVarI.y(Build.VERSION.RELEASE);
            zzferVarI.D(Build.VERSION.SDK_INT);
            zzferVarI.H(zzfegVar.m());
            zzferVarI.x(zzfegVar.a());
            zzferVarI.r(this.f18045s);
            zzferVarI.F(zzfegVar.l());
            zzferVarI.p(zzfegVar.c());
            zzferVarI.s(zzfegVar.e());
            zzferVarI.v(zzfegVar.f());
            zzferVarI.w(this.f18046t.c(zzfegVar.f()));
            zzferVarI.z(zzfegVar.g());
            zzferVarI.q(zzfegVar.d());
            zzferVarI.E(zzfegVar.i());
            zzferVarI.B(zzfegVar.h());
            zzfevVarI.o(zzferVarI);
            zzfeuVar.p(zzfevVarI);
        }
    }

    @Override // java.lang.Runnable
    public final synchronized void run() {
        if (a()) {
            if (this.f18043q.o() == 0) {
                return;
            }
            d();
        }
    }
}
