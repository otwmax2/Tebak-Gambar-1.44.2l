package com.google.android.gms.common;

import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
abstract class j extends h {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final WeakReference f7534q = new WeakReference(null);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private WeakReference f7535p;

    j(byte[] bArr) {
        super(bArr);
        this.f7535p = f7534q;
    }

    protected abstract byte[] A9();

    @Override // com.google.android.gms.common.h
    final byte[] Q4() {
        byte[] bArrA9;
        synchronized (this) {
            bArrA9 = (byte[]) this.f7535p.get();
            if (bArrA9 == null) {
                bArrA9 = A9();
                this.f7535p = new WeakReference(bArrA9);
            }
        }
        return bArrA9;
    }
}
