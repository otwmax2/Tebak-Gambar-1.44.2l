package com.google.android.gms.internal.drive;

import com.google.android.gms.internal.drive.zzkk;

/* JADX INFO: loaded from: classes2.dex */
final class zzme implements zzlo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzlq f22273a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f22274b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object[] f22275c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f22276d;

    zzme(zzlq zzlqVar, String str, Object[] objArr) {
        this.f22273a = zzlqVar;
        this.f22274b = str;
        this.f22275c = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.f22276d = cCharAt;
            return;
        }
        int i10 = cCharAt & 8191;
        int i11 = 13;
        int i12 = 1;
        while (true) {
            int i13 = i12 + 1;
            char cCharAt2 = str.charAt(i12);
            if (cCharAt2 < 55296) {
                this.f22276d = i10 | (cCharAt2 << i11);
                return;
            } else {
                i10 |= (cCharAt2 & 8191) << i11;
                i11 += 13;
                i12 = i13;
            }
        }
    }

    @Override // com.google.android.gms.internal.drive.zzlo
    public final int a() {
        return (this.f22276d & 1) == 1 ? zzkk.zze.f22184i : zzkk.zze.f22185j;
    }

    @Override // com.google.android.gms.internal.drive.zzlo
    public final boolean b() {
        return (this.f22276d & 2) == 2;
    }

    @Override // com.google.android.gms.internal.drive.zzlo
    public final zzlq c() {
        return this.f22273a;
    }

    final String d() {
        return this.f22274b;
    }

    final Object[] e() {
        return this.f22275c;
    }
}
