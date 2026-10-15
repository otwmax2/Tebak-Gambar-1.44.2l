package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfam {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfal f17810a = new zzfal();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f17811b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f17812c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f17813d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f17814e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f17815f;

    zzfam() {
    }

    public final zzfal a() {
        zzfal zzfalVarClone = this.f17810a.clone();
        zzfal zzfalVar = this.f17810a;
        zzfalVar.f17808o = false;
        zzfalVar.f17809p = false;
        return zzfalVarClone;
    }

    public final String b() {
        return "\n\tPool does not exist: " + this.f17813d + "\n\tNew pools created: " + this.f17811b + "\n\tPools removed: " + this.f17812c + "\n\tEntries added: " + this.f17815f + "\n\tNo entries retrieved: " + this.f17814e + "\n";
    }

    public final void c() {
        this.f17815f++;
    }

    public final void d() {
        this.f17811b++;
        this.f17810a.f17808o = true;
    }

    public final void e() {
        this.f17814e++;
    }

    public final void f() {
        this.f17813d++;
    }

    public final void g() {
        this.f17812c++;
        this.f17810a.f17809p = true;
    }
}
