package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfbb implements zzfuf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzfbe f17848a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzfbf f17849b;

    zzfbb(zzfbf zzfbfVar, zzfbe zzfbeVar) {
        this.f17849b = zzfbfVar;
        this.f17848a = zzfbeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final void a(Throwable th) {
        synchronized (this.f17849b) {
            this.f17849b.f17856e = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final /* bridge */ /* synthetic */ void c(Object obj) {
        synchronized (this.f17849b) {
            this.f17849b.f17856e = null;
            this.f17849b.f17855d.addFirst(this.f17848a);
            zzfbf zzfbfVar = this.f17849b;
            if (zzfbfVar.f17857f == 1) {
                zzfbfVar.h();
            }
        }
    }
}
