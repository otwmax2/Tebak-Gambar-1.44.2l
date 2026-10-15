package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzciu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private zzcgg f12785a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private zzckh f12786b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private zzfde f12787c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzcku f12788d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private zzezy f12789e;

    private zzciu() {
    }

    /* synthetic */ zzciu(zzcit zzcitVar) {
    }

    public final zzcgd a() {
        zzgxg.c(this.f12785a, zzcgg.class);
        zzgxg.c(this.f12786b, zzckh.class);
        if (this.f12787c == null) {
            this.f12787c = new zzfde();
        }
        if (this.f12788d == null) {
            this.f12788d = new zzcku();
        }
        if (this.f12789e == null) {
            this.f12789e = new zzezy();
        }
        return new zzchy(this.f12785a, this.f12786b, this.f12787c, this.f12788d, this.f12789e, null);
    }

    public final zzciu b(zzcgg zzcggVar) {
        this.f12785a = zzcggVar;
        return this;
    }

    public final zzciu c(zzckh zzckhVar) {
        this.f12786b = zzckhVar;
        return this;
    }
}
