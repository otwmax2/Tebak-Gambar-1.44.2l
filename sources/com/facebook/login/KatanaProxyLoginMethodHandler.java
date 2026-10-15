package com.facebook.login;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.internal.ShareConstants;

/* JADX INFO: compiled from: KatanaProxyLoginMethodHandler.kt */
/* JADX INFO: loaded from: classes.dex */
public final class KatanaProxyLoginMethodHandler extends NativeAppLoginMethodHandler {
    private final String nameForLogging;
    public static final Companion Companion = new Companion(null);
    public static final Parcelable.Creator<KatanaProxyLoginMethodHandler> CREATOR = new Parcelable.Creator<KatanaProxyLoginMethodHandler>() { // from class: com.facebook.login.KatanaProxyLoginMethodHandler$Companion$CREATOR$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public KatanaProxyLoginMethodHandler createFromParcel(Parcel parcel) {
            t9.m.e(parcel, ShareConstants.FEED_SOURCE_PARAM);
            return new KatanaProxyLoginMethodHandler(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public KatanaProxyLoginMethodHandler[] newArray(int i10) {
            return new KatanaProxyLoginMethodHandler[i10];
        }
    };

    /* JADX INFO: compiled from: KatanaProxyLoginMethodHandler.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KatanaProxyLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
        t9.m.e(loginClient, "loginClient");
        this.nameForLogging = "katana_proxy_auth";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler
    public String getNameForLogging() {
        return this.nameForLogging;
    }

    @Override // com.facebook.login.LoginMethodHandler
    public boolean shouldKeepTrackOfMultipleIntents() {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    @Override // com.facebook.login.NativeAppLoginMethodHandler, com.facebook.login.LoginMethodHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int tryAuthorize(com.facebook.login.LoginClient.Request r24) {
        /*
            r23 = this;
            r0 = r23
            java.lang.String r1 = "request"
            r2 = r24
            t9.m.e(r2, r1)
            com.facebook.login.LoginBehavior r1 = r24.getLoginBehavior()
            boolean r3 = com.facebook.FacebookSdk.ignoreAppSwitchToLoggedOut
            r4 = 1
            r5 = 0
            if (r3 == 0) goto L23
            com.facebook.internal.CustomTabUtils r3 = com.facebook.internal.CustomTabUtils.INSTANCE
            java.lang.String r3 = com.facebook.internal.CustomTabUtils.getChromePackage()
            if (r3 == 0) goto L23
            boolean r1 = r1.allowsCustomTabAuth()
            if (r1 == 0) goto L23
            r15 = 1
            goto L24
        L23:
            r15 = 0
        L24:
            com.facebook.login.LoginClient$Companion r1 = com.facebook.login.LoginClient.Companion
            java.lang.String r1 = r1.getE2E()
            com.facebook.internal.NativeProtocol r3 = com.facebook.internal.NativeProtocol.INSTANCE
            com.facebook.login.LoginClient r3 = r23.getLoginClient()
            androidx.fragment.app.e r6 = r3.getActivity()
            java.lang.String r7 = r24.getApplicationId()
            java.util.Set r8 = r24.getPermissions()
            boolean r10 = r24.isRerequest()
            boolean r11 = r24.hasPublishPermission()
            com.facebook.login.DefaultAudience r3 = r24.getDefaultAudience()
            if (r3 != 0) goto L4c
            com.facebook.login.DefaultAudience r3 = com.facebook.login.DefaultAudience.NONE
        L4c:
            r12 = r3
            java.lang.String r3 = r24.getAuthId()
            java.lang.String r13 = r0.getClientState(r3)
            java.lang.String r14 = r24.getAuthType()
            java.lang.String r16 = r24.getMessengerPageId()
            boolean r17 = r24.getResetMessengerState()
            boolean r18 = r24.isFamilyLogin()
            boolean r19 = r24.shouldSkipAccountDeduplication()
            java.lang.String r20 = r24.getNonce()
            java.lang.String r21 = r24.getCodeChallenge()
            com.facebook.login.CodeChallengeMethod r2 = r24.getCodeChallengeMethod()
            if (r2 != 0) goto L79
            r2 = 0
            goto L7d
        L79:
            java.lang.String r2 = r2.name()
        L7d:
            r22 = r2
            r9 = r1
            java.util.List r2 = com.facebook.internal.NativeProtocol.createProxyAuthIntents(r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22)
            java.lang.String r3 = "e2e"
            r0.addLoggingExtra(r3, r1)
            java.util.Iterator r1 = r2.iterator()
            r2 = 0
        L8e:
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto La8
            int r2 = r2 + r4
            java.lang.Object r3 = r1.next()
            android.content.Intent r3 = (android.content.Intent) r3
            com.facebook.login.LoginClient$Companion r6 = com.facebook.login.LoginClient.Companion
            int r6 = r6.getLoginRequestCode()
            boolean r3 = r0.tryIntent(r3, r6)
            if (r3 == 0) goto L8e
            return r2
        La8:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.KatanaProxyLoginMethodHandler.tryAuthorize(com.facebook.login.LoginClient$Request):int");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KatanaProxyLoginMethodHandler(Parcel parcel) {
        super(parcel);
        t9.m.e(parcel, ShareConstants.FEED_SOURCE_PARAM);
        this.nameForLogging = "katana_proxy_auth";
    }
}
