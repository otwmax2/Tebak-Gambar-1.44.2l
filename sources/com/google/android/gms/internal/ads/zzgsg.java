package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgsg implements zzgrt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgrw f19576a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f19577b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object[] f19578c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f19579d;

    zzgsg(zzgrw zzgrwVar, String str, Object[] objArr) {
        this.f19576a = zzgrwVar;
        this.f19577b = str;
        this.f19578c = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.f19579d = cCharAt;
            return;
        }
        int i10 = cCharAt & 8191;
        int i11 = 1;
        int i12 = 13;
        while (true) {
            int i13 = i11 + 1;
            char cCharAt2 = str.charAt(i11);
            if (cCharAt2 < 55296) {
                this.f19579d = i10 | (cCharAt2 << i12);
                return;
            } else {
                i10 |= (cCharAt2 & 8191) << i12;
                i12 += 13;
                i11 = i13;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgrt
    public final int a() {
        return (this.f19579d & 1) == 1 ? 1 : 2;
    }

    final String b() {
        return this.f19577b;
    }

    final Object[] c() {
        return this.f19578c;
    }

    @Override // com.google.android.gms.internal.ads.zzgrt
    public final zzgrw zza() {
        return this.f19576a;
    }

    @Override // com.google.android.gms.internal.ads.zzgrt
    public final boolean zzb() {
        return (this.f19579d & 2) == 2;
    }
}
