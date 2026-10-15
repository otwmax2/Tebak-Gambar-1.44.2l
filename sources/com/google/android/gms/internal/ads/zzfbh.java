package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfbh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f17860a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f17862c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfbg f17861b = new zzfbg();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f17863d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f17864e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f17865f = 0;

    public zzfbh() {
        long jA = com.google.android.gms.ads.internal.zzt.b().a();
        this.f17860a = jA;
        this.f17862c = jA;
    }

    public final int a() {
        return this.f17863d;
    }

    public final long b() {
        return this.f17860a;
    }

    public final long c() {
        return this.f17862c;
    }

    public final zzfbg d() {
        zzfbg zzfbgVarClone = this.f17861b.clone();
        zzfbg zzfbgVar = this.f17861b;
        zzfbgVar.f17858o = false;
        zzfbgVar.f17859p = 0;
        return zzfbgVarClone;
    }

    public final String e() {
        return "Created: " + this.f17860a + " Last accessed: " + this.f17862c + " Accesses: " + this.f17863d + "\nEntries retrieved: Valid: " + this.f17864e + " Stale: " + this.f17865f;
    }

    public final void f() {
        this.f17862c = com.google.android.gms.ads.internal.zzt.b().a();
        this.f17863d++;
    }

    public final void g() {
        this.f17865f++;
        this.f17861b.f17859p++;
    }

    public final void h() {
        this.f17864e++;
        this.f17861b.f17858o = true;
    }
}
