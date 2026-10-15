package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzot {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private zznq f20357a = zznq.f20270c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final zzos f20358b = zzos.f20356a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private zzov f20359c;

    public final zzot b(zznq zznqVar) {
        this.f20357a = zznqVar;
        return this;
    }

    public final zzot c(zzde[] zzdeVarArr) {
        this.f20359c = new zzov(zzdeVarArr);
        return this;
    }

    public final zzpf d() {
        if (this.f20359c == null) {
            this.f20359c = new zzov(new zzde[0]);
        }
        return new zzpf(this, null);
    }
}
