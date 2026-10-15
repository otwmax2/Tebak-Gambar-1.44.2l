package com.google.android.gms.internal.p000authapi;

import android.util.Base64;
import java.util.Random;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zbbb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Random f21303a = new Random();

    public static String a() {
        byte[] bArr = new byte[16];
        f21303a.nextBytes(bArr);
        return Base64.encodeToString(bArr, 11);
    }
}
