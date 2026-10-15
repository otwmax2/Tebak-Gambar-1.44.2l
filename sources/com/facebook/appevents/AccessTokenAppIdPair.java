package com.facebook.appevents;

import com.facebook.AccessToken;
import com.facebook.FacebookSdk;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.Utility;
import java.io.ObjectStreamException;
import java.io.Serializable;

/* JADX INFO: compiled from: AccessTokenAppIdPair.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AccessTokenAppIdPair implements Serializable {
    public static final Companion Companion = new Companion(null);
    private static final long serialVersionUID = 1;
    private final String accessTokenString;
    private final String applicationId;

    /* JADX INFO: compiled from: AccessTokenAppIdPair.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: AccessTokenAppIdPair.kt */
    public static final class SerializationProxyV1 implements Serializable {
        public static final Companion Companion = new Companion(null);
        private static final long serialVersionUID = -2488473066578201069L;
        private final String accessTokenString;
        private final String appId;

        /* JADX INFO: compiled from: AccessTokenAppIdPair.kt */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(t9.g gVar) {
                this();
            }
        }

        public SerializationProxyV1(String str, String str2) {
            t9.m.e(str2, "appId");
            this.accessTokenString = str;
            this.appId = str2;
        }

        private final Object readResolve() throws ObjectStreamException {
            return new AccessTokenAppIdPair(this.accessTokenString, this.appId);
        }
    }

    public AccessTokenAppIdPair(String str, String str2) {
        t9.m.e(str2, "applicationId");
        this.applicationId = str2;
        Utility utility = Utility.INSTANCE;
        this.accessTokenString = Utility.isNullOrEmpty(str) ? null : str;
    }

    private final Object writeReplace() throws ObjectStreamException {
        return new SerializationProxyV1(this.accessTokenString, this.applicationId);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AccessTokenAppIdPair)) {
            return false;
        }
        Utility utility = Utility.INSTANCE;
        AccessTokenAppIdPair accessTokenAppIdPair = (AccessTokenAppIdPair) obj;
        return Utility.areObjectsEqual(accessTokenAppIdPair.accessTokenString, this.accessTokenString) && Utility.areObjectsEqual(accessTokenAppIdPair.applicationId, this.applicationId);
    }

    public final String getAccessTokenString() {
        return this.accessTokenString;
    }

    public final String getApplicationId() {
        return this.applicationId;
    }

    public int hashCode() {
        String str = this.accessTokenString;
        return (str == null ? 0 : str.hashCode()) ^ this.applicationId.hashCode();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public AccessTokenAppIdPair(AccessToken accessToken) {
        t9.m.e(accessToken, SDKConstants.PARAM_ACCESS_TOKEN);
        String token = accessToken.getToken();
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        this(token, FacebookSdk.getApplicationId());
    }
}
