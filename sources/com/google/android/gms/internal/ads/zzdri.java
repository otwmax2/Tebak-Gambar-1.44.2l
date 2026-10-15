package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzdri implements zzfuf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzdrk f15449a;

    zzdri(zzdrk zzdrkVar) {
        this.f15449a = zzdrkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final void a(Throwable th) {
        synchronized (this) {
            this.f15449a.f15458c = true;
            this.f15449a.v("com.google.android.gms.ads.MobileAds", false, "Internal Error.", (int) (com.google.android.gms.ads.internal.zzt.b().b() - this.f15449a.f15459d));
            this.f15449a.f15460e.d(new Exception());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final /* bridge */ /* synthetic */ void c(@Nullable Object obj) {
        final String str = (String) obj;
        synchronized (this) {
            this.f15449a.f15458c = true;
            this.f15449a.v("com.google.android.gms.ads.MobileAds", true, BuildConfig.FLAVOR, (int) (com.google.android.gms.ads.internal.zzt.b().b() - this.f15449a.f15459d));
            this.f15449a.f15464i.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdrh
                @Override // java.lang.Runnable
                public final void run() {
                    zzdri zzdriVar = this.f15447o;
                    zzdrk.j(zzdriVar.f15449a, str);
                }
            });
        }
    }
}
