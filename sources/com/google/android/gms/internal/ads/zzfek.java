package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfek implements zzfuf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzfen f18026a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzfec f18027b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ boolean f18028c;

    zzfek(zzfen zzfenVar, zzfec zzfecVar, boolean z10) {
        this.f18026a = zzfenVar;
        this.f18027b = zzfecVar;
        this.f18028c = z10;
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final void a(Throwable th) {
        zzfec zzfecVar = this.f18027b;
        if (zzfecVar.h()) {
            zzfen zzfenVar = this.f18026a;
            zzfecVar.b(th);
            zzfecVar.y0(false);
            zzfenVar.a(zzfecVar);
            if (this.f18028c) {
                this.f18026a.g();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final void c(Object obj) {
        zzfen zzfenVar = this.f18026a;
        zzfec zzfecVar = this.f18027b;
        zzfecVar.y0(true);
        zzfenVar.a(zzfecVar);
        if (this.f18028c) {
            this.f18026a.g();
        }
    }
}
