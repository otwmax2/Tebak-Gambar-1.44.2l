package com.facebook.login;

import java.util.Collection;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: compiled from: LoginConfiguration.kt */
/* JADX INFO: loaded from: classes.dex */
public final class LoginConfiguration {
    public static final Companion Companion = new Companion(null);
    public static final String OPENID = "openid";
    private final String codeVerifier;
    private final String nonce;
    private final Set<String> permissions;

    /* JADX INFO: compiled from: LoginConfiguration.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LoginConfiguration(Collection<String> collection) {
        this(collection, null, 2, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ LoginConfiguration(Collection collection, String str, int i10, t9.g gVar) {
        if ((i10 & 2) != 0) {
            str = UUID.randomUUID().toString();
            t9.m.d(str, "randomUUID().toString()");
        }
        this(collection, str);
    }

    public final String getCodeVerifier() {
        return this.codeVerifier;
    }

    public final String getNonce() {
        return this.nonce;
    }

    public final Set<String> getPermissions() {
        return this.permissions;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LoginConfiguration(Collection<String> collection, String str) {
        this(collection, str, PKCEUtil.generateCodeVerifier());
        t9.m.e(str, "nonce");
        PKCEUtil pKCEUtil = PKCEUtil.INSTANCE;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ LoginConfiguration(Collection collection, String str, String str2, int i10, t9.g gVar) {
        collection = (i10 & 1) != 0 ? null : collection;
        if ((i10 & 2) != 0) {
            str = UUID.randomUUID().toString();
            t9.m.d(str, "randomUUID().toString()");
        }
        this(collection, str, str2);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public LoginConfiguration(java.util.Collection<java.lang.String> r2, java.lang.String r3, java.lang.String r4) {
        /*
            r1 = this;
            java.lang.String r0 = "nonce"
            t9.m.e(r3, r0)
            java.lang.String r0 = "codeVerifier"
            t9.m.e(r4, r0)
            r1.<init>()
            com.facebook.login.NonceUtil r0 = com.facebook.login.NonceUtil.INSTANCE
            boolean r0 = com.facebook.login.NonceUtil.isValidNonce(r3)
            if (r0 == 0) goto L1f
            com.facebook.login.PKCEUtil r0 = com.facebook.login.PKCEUtil.INSTANCE
            boolean r0 = com.facebook.login.PKCEUtil.isValidCodeVerifier(r4)
            if (r0 == 0) goto L1f
            r0 = 1
            goto L20
        L1f:
            r0 = 0
        L20:
            if (r0 == 0) goto L42
            java.util.HashSet r0 = new java.util.HashSet
            if (r2 == 0) goto L2a
            r0.<init>(r2)
            goto L2d
        L2a:
            r0.<init>()
        L2d:
            java.lang.String r2 = "openid"
            r0.add(r2)
            java.util.Set r2 = java.util.Collections.unmodifiableSet(r0)
            java.lang.String r0 = "unmodifiableSet(permissions)"
            t9.m.d(r2, r0)
            r1.permissions = r2
            r1.nonce = r3
            r1.codeVerifier = r4
            return
        L42:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "Failed requirement."
            java.lang.String r3 = r3.toString()
            r2.<init>(r3)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.LoginConfiguration.<init>(java.util.Collection, java.lang.String, java.lang.String):void");
    }
}
