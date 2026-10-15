package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzblp implements zzbzw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzblq f10891a;

    zzblp(zzblq zzblqVar) {
        this.f10891a = zzblqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbzw
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        final zzbkm zzbkmVar = (zzbkm) obj;
        zzbzn.f11618e.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzblo
            @Override // java.lang.Runnable
            public final void run() {
                zzbkm zzbkmVar2 = zzbkmVar;
                zzbkmVar2.U0("/result", zzbho.f10727o);
                zzbkmVar2.a();
            }
        });
    }
}
