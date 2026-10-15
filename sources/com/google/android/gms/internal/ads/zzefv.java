package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzefv implements zzcvx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f16559a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzeaw f16560b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzbzs f16561c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ zzefw f16562d;

    zzefv(zzefw zzefwVar, zzeaw zzeawVar, zzbzs zzbzsVar) {
        this.f16562d = zzefwVar;
        this.f16560b = zzeawVar;
        this.f16561c = zzbzsVar;
    }

    private final synchronized void a(com.google.android.gms.ads.internal.client.zze zzeVar) {
        int i10 = 1;
        if (true == ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.Y4)).booleanValue()) {
            i10 = 3;
        }
        this.f16561c.d(new zzeax(i10, zzeVar));
    }

    @Override // com.google.android.gms.internal.ads.zzcvx
    public final synchronized void K0(int i10, String str) {
        if (this.f16559a) {
            return;
        }
        this.f16559a = true;
        if (str == null) {
            str = zzefw.e(this.f16560b.f16126a, i10);
        }
        a(new com.google.android.gms.ads.internal.client.zze(i10, str, "undefined", null, null));
    }

    @Override // com.google.android.gms.internal.ads.zzcvx
    public final synchronized void b1(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (this.f16559a) {
            return;
        }
        this.f16559a = true;
        a(zzeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcvx
    public final synchronized void d() {
        this.f16561c.c(null);
    }

    @Override // com.google.android.gms.internal.ads.zzcvx
    public final synchronized void h(int i10) {
        if (this.f16559a) {
            return;
        }
        this.f16559a = true;
        a(new com.google.android.gms.ads.internal.client.zze(i10, zzefw.e(this.f16560b.f16126a, i10), "undefined", null, null));
    }
}
