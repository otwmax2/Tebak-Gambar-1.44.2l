package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbll extends zzbzz {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f10884c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzblq f10885d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f10886e;

    public zzbll(zzblq zzblqVar) {
        this.f10885d = zzblqVar;
    }

    public final void g() {
        synchronized (this.f10884c) {
            if (this.f10886e) {
                return;
            }
            this.f10886e = true;
            e(new zzbli(this), new zzbzv());
            e(new zzblj(this), new zzblk(this));
        }
    }
}
