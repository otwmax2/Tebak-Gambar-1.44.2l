package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public abstract class zzaug {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static MessageDigest f9978b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Object f9979a = new Object();

    protected final MessageDigest a() {
        synchronized (this.f9979a) {
            MessageDigest messageDigest = f9978b;
            if (messageDigest != null) {
                return messageDigest;
            }
            for (int i10 = 0; i10 < 2; i10++) {
                try {
                    f9978b = MessageDigest.getInstance("MD5");
                } catch (NoSuchAlgorithmException unused) {
                }
            }
            return f9978b;
        }
    }

    abstract byte[] b(String str);
}
