package com.google.android.gms.internal.drive;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzjo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f22090a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f22091b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f22092c;

    private zzjo() {
        this.f22090a = 100;
        this.f22091b = Integer.MAX_VALUE;
        this.f22092c = false;
    }

    static zzjo a(byte[] bArr, int i10, int i11, boolean z10) {
        zzjq zzjqVar = new zzjq(bArr, 0, i11, false);
        try {
            zzjqVar.c(i11);
            return zzjqVar;
        } catch (zzkq e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public abstract int b();

    public abstract int c(int i10) throws zzkq;
}
