package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdzd implements zzcwc, zzcur {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final Object f15995q = new Object();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static int f15996r;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.util.zzg f15997o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzdzn f15998p;

    public zzdzd(zzdzn zzdznVar, com.google.android.gms.ads.internal.util.zzg zzgVar) {
        this.f15998p = zzdznVar;
        this.f15997o = zzgVar;
    }

    private final void a(boolean z10) {
        int i10;
        int iIntValue;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.L5)).booleanValue() && !this.f15997o.g0()) {
            Object obj = f15995q;
            synchronized (obj) {
                i10 = f15996r;
                iIntValue = ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.M5)).intValue();
            }
            if (i10 >= iIntValue) {
                return;
            }
            this.f15998p.e(z10);
            synchronized (obj) {
                f15996r++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcwc
    public final void k() {
        a(true);
    }

    @Override // com.google.android.gms.internal.ads.zzcur
    public final void v(com.google.android.gms.ads.internal.client.zze zzeVar) {
        a(false);
    }
}
