package com.facebook.login;

import android.content.Context;
import android.os.Bundle;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.PlatformServiceClient;

/* JADX INFO: compiled from: LoginStatusClient.kt */
/* JADX INFO: loaded from: classes.dex */
public final class LoginStatusClient extends PlatformServiceClient {
    public static final Companion Companion = new Companion(null);
    public static final long DEFAULT_TOAST_DURATION_MS = 5000;
    private final String graphApiVersion;
    private final String loggerRef;
    private final long toastDurationMs;

    /* JADX INFO: compiled from: LoginStatusClient.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }

        public final LoginStatusClient newInstance$facebook_common_release(Context context, String str, String str2, String str3, long j10, String str4) {
            t9.m.e(context, "context");
            t9.m.e(str, "applicationId");
            t9.m.e(str2, "loggerRef");
            t9.m.e(str3, "graphApiVersion");
            return new LoginStatusClient(context, str, str2, str3, j10, str4);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoginStatusClient(Context context, String str, String str2, String str3, long j10, String str4) {
        super(context, NativeProtocol.MESSAGE_GET_LOGIN_STATUS_REQUEST, NativeProtocol.MESSAGE_GET_LOGIN_STATUS_REPLY, NativeProtocol.PROTOCOL_VERSION_20170411, str, str4);
        t9.m.e(context, "context");
        t9.m.e(str, "applicationId");
        t9.m.e(str2, "loggerRef");
        t9.m.e(str3, "graphApiVersion");
        this.loggerRef = str2;
        this.graphApiVersion = str3;
        this.toastDurationMs = j10;
    }

    @Override // com.facebook.internal.PlatformServiceClient
    protected void populateRequestBundle(Bundle bundle) {
        t9.m.e(bundle, "data");
        bundle.putString(NativeProtocol.EXTRA_LOGGER_REF, this.loggerRef);
        bundle.putString(NativeProtocol.EXTRA_GRAPH_API_VERSION, this.graphApiVersion);
        bundle.putLong(NativeProtocol.EXTRA_TOAST_DURATION_MS, this.toastDurationMs);
    }
}
