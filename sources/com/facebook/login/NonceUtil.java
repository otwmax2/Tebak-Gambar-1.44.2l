package com.facebook.login;

/* JADX INFO: compiled from: NonceUtil.kt */
/* JADX INFO: loaded from: classes.dex */
public final class NonceUtil {
    public static final NonceUtil INSTANCE = new NonceUtil();

    private NonceUtil() {
    }

    public static final boolean isValidNonce(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        return !(ba.q.F(str, ' ', 0, false, 6, null) >= 0);
    }
}
