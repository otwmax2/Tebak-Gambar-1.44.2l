package com.google.android.gms.internal.firebase_auth;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzhd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzhm f22653a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f22654b;

    private zzhd(int i10) {
        byte[] bArr = new byte[i10];
        this.f22654b = bArr;
        this.f22653a = zzhm.f(bArr);
    }

    public final zzgv a() {
        this.f22653a.N();
        return new zzhf(this.f22654b);
    }

    public final zzhm b() {
        return this.f22653a;
    }

    /* synthetic */ zzhd(int i10, zzgu zzguVar) {
        this(i10);
    }
}
