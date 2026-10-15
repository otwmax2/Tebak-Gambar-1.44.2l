package com.google.android.gms.common;

import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
final class i extends h {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final byte[] f7333p;

    i(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.f7333p = bArr;
    }

    @Override // com.google.android.gms.common.h
    final byte[] Q4() {
        return this.f7333p;
    }
}
