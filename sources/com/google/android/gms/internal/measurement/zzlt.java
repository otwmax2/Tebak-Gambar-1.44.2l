package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzlt implements zzlg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzlj f23730a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f23731b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object[] f23732c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f23733d;

    zzlt(zzlj zzljVar, String str, Object[] objArr) {
        this.f23730a = zzljVar;
        this.f23731b = str;
        this.f23732c = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.f23733d = cCharAt;
            return;
        }
        int i10 = cCharAt & 8191;
        int i11 = 13;
        int i12 = 1;
        while (true) {
            int i13 = i12 + 1;
            char cCharAt2 = str.charAt(i12);
            if (cCharAt2 < 55296) {
                this.f23733d = i10 | (cCharAt2 << i11);
                return;
            } else {
                i10 |= (cCharAt2 & 8191) << i11;
                i11 += 13;
                i12 = i13;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlg
    public final int a() {
        return (this.f23733d & 1) == 1 ? 1 : 2;
    }

    final String b() {
        return this.f23731b;
    }

    final Object[] c() {
        return this.f23732c;
    }

    @Override // com.google.android.gms.internal.measurement.zzlg
    public final zzlj zza() {
        return this.f23730a;
    }

    @Override // com.google.android.gms.internal.measurement.zzlg
    public final boolean zzb() {
        return (this.f23733d & 2) == 2;
    }
}
