package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzjk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f19919a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public zzkh f19920b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f19921c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f19922d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f19923e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f19924f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f19925g;

    public zzjk(zzkh zzkhVar) {
        this.f19920b = zzkhVar;
    }

    public final void a(int i10) {
        this.f19919a = 1 == ((this.f19919a ? 1 : 0) | i10);
        this.f19921c += i10;
    }

    public final void b(int i10) {
        this.f19919a = true;
        this.f19924f = true;
        this.f19925g = i10;
    }

    public final void c(zzkh zzkhVar) {
        this.f19919a |= this.f19920b != zzkhVar;
        this.f19920b = zzkhVar;
    }

    public final void d(int i10) {
        if (this.f19922d && this.f19923e != 5) {
            zzdl.d(i10 == 5);
            return;
        }
        this.f19919a = true;
        this.f19922d = true;
        this.f19923e = i10;
    }
}
