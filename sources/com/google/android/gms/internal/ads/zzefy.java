package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzefy extends zzbnk {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzcum f16571o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzdca f16572p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzcvg f16573q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zzcvv f16574r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final zzcwa f16575s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final zzczi f16576t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final zzcwu f16577u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final zzdcs f16578v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final zzcze f16579w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final zzcvb f16580x;

    public zzefy(zzcum zzcumVar, zzdca zzdcaVar, zzcvg zzcvgVar, zzcvv zzcvvVar, zzcwa zzcwaVar, zzczi zzcziVar, zzcwu zzcwuVar, zzdcs zzdcsVar, zzcze zzczeVar, zzcvb zzcvbVar) {
        this.f16571o = zzcumVar;
        this.f16572p = zzdcaVar;
        this.f16573q = zzcvgVar;
        this.f16574r = zzcvvVar;
        this.f16575s = zzcwaVar;
        this.f16576t = zzcziVar;
        this.f16577u = zzcwuVar;
        this.f16578v = zzdcsVar;
        this.f16579w = zzczeVar;
        this.f16580x = zzcvbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void C() {
        this.f16578v.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void C2(int i10, String str) {
    }

    public void E() {
        this.f16578v.d();
    }

    public void V3(zzbup zzbupVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void W0(com.google.android.gms.ads.internal.client.zze zzeVar) {
        this.f16580x.v(zzezx.c(8, zzeVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void X7(zzber zzberVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void Y2(com.google.android.gms.ads.internal.client.zze zzeVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void b() {
        this.f16571o.w0();
        this.f16572p.p();
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void c() {
        this.f16577u.G(4);
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void k() {
        this.f16574r.zzb();
    }

    public void l() {
        this.f16573q.zza();
        this.f16579w.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void m() {
        this.f16575s.k();
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void m0(String str) {
        W0(new com.google.android.gms.ads.internal.client.zze(0, str, "undefined", null, null));
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void n() {
        this.f16577u.zzb();
        this.f16579w.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void o8(String str, String str2) {
        this.f16576t.m(str, str2);
    }

    public void t() {
        this.f16578v.zza();
    }

    public void u6(zzbut zzbutVar) throws RemoteException {
    }

    public void v() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void w(int i10) {
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    @Deprecated
    public final void w0(int i10) throws RemoteException {
        W0(new com.google.android.gms.ads.internal.client.zze(i10, BuildConfig.FLAVOR, "undefined", null, null));
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void y() throws RemoteException {
        this.f16578v.a();
    }
}
