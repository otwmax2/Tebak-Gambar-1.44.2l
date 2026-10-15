package com.google.android.gms.internal.firebase_auth;

import com.google.android.gms.internal.firebase_auth.zzif;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzkb implements zzjl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzjn f22836a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f22837b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object[] f22838c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f22839d;

    zzkb(zzjn zzjnVar, String str, Object[] objArr) {
        this.f22836a = zzjnVar;
        this.f22837b = str;
        this.f22838c = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.f22839d = cCharAt;
            return;
        }
        int i10 = cCharAt & 8191;
        int i11 = 13;
        int i12 = 1;
        while (true) {
            int i13 = i12 + 1;
            char cCharAt2 = str.charAt(i12);
            if (cCharAt2 < 55296) {
                this.f22839d = i10 | (cCharAt2 << i11);
                return;
            } else {
                i10 |= (cCharAt2 & 8191) << i11;
                i11 += 13;
                i12 = i13;
            }
        }
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzjl
    public final zzjn a() {
        return this.f22836a;
    }

    final String b() {
        return this.f22837b;
    }

    final Object[] c() {
        return this.f22838c;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzjl
    public final int zza() {
        return (this.f22839d & 1) == 1 ? zzif.zzf.f22755i : zzif.zzf.f22756j;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzjl
    public final boolean zzb() {
        return (this.f22839d & 2) == 2;
    }
}
