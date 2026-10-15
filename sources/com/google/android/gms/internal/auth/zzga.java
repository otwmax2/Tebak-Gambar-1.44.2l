package com.google.android.gms.internal.auth;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzga implements zzfn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfq f21543a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f21544b = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object[] f21545c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f21546d;

    zzga(zzfq zzfqVar, String str, Object[] objArr) {
        this.f21543a = zzfqVar;
        this.f21545c = objArr;
        char cCharAt = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(0);
        if (cCharAt < 55296) {
            this.f21546d = cCharAt;
            return;
        }
        int i10 = cCharAt & 8191;
        int i11 = 13;
        int i12 = 1;
        while (true) {
            int i13 = i12 + 1;
            char cCharAt2 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i12);
            if (cCharAt2 < 55296) {
                this.f21546d = (cCharAt2 << i11) | i10;
                return;
            } else {
                i10 |= (cCharAt2 & 8191) << i11;
                i11 += 13;
                i12 = i13;
            }
        }
    }

    @Override // com.google.android.gms.internal.auth.zzfn
    public final int a() {
        return (this.f21546d & 1) == 1 ? 1 : 2;
    }

    final String b() {
        return this.f21544b;
    }

    final Object[] c() {
        return this.f21545c;
    }

    @Override // com.google.android.gms.internal.auth.zzfn
    public final zzfq zza() {
        return this.f21543a;
    }

    @Override // com.google.android.gms.internal.auth.zzfn
    public final boolean zzb() {
        return (this.f21546d & 2) == 2;
    }
}
