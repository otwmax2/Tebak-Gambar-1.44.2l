package com.google.android.gms.internal.drive;

/* JADX INFO: loaded from: classes2.dex */
final class zzjk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzjr f22087a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f22088b;

    private zzjk(int i10) {
        byte[] bArr = new byte[i10];
        this.f22088b = bArr;
        this.f22087a = zzjr.I(bArr);
    }

    public final zzjc a() {
        this.f22087a.Y();
        return new zzjm(this.f22088b);
    }

    public final zzjr b() {
        return this.f22087a;
    }

    /* synthetic */ zzjk(int i10, zzjd zzjdVar) {
        this(i10);
    }
}
