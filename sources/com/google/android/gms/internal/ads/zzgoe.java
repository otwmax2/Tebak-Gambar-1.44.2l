package com.google.android.gms.internal.ads;

import java.security.SecureRandom;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgoe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ThreadLocal f19349a = new zzgod();

    public static byte[] a(int i10) {
        byte[] bArr = new byte[i10];
        ((SecureRandom) f19349a.get()).nextBytes(bArr);
        return bArr;
    }
}
