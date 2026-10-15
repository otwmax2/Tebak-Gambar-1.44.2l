package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzew {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f24630a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f24631b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f24632c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ zzey f24633d;

    zzew(zzey zzeyVar, int i10, boolean z10, boolean z11) {
        this.f24633d = zzeyVar;
        this.f24630a = i10;
        this.f24631b = z10;
        this.f24632c = z11;
    }

    public final void a(String str) {
        this.f24633d.D(this.f24630a, this.f24631b, this.f24632c, str, null, null, null);
    }

    public final void b(String str, Object obj) {
        this.f24633d.D(this.f24630a, this.f24631b, this.f24632c, str, obj, null, null);
    }

    public final void c(String str, Object obj, Object obj2) {
        this.f24633d.D(this.f24630a, this.f24631b, this.f24632c, str, obj, obj2, null);
    }

    public final void d(String str, Object obj, Object obj2, Object obj3) {
        this.f24633d.D(this.f24630a, this.f24631b, this.f24632c, str, obj, obj2, obj3);
    }
}
