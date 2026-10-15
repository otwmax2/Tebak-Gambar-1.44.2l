package com.facebook;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.NativeProtocol;

/* JADX INFO: compiled from: FacebookBroadcastReceiver.kt */
/* JADX INFO: loaded from: classes.dex */
public class FacebookBroadcastReceiver extends BroadcastReceiver {
    protected void onFailedAppCall(String str, String str2, Bundle bundle) {
        t9.m.e(str, "appCallId");
        t9.m.e(str2, "action");
        t9.m.e(bundle, "extras");
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        t9.m.e(context, "context");
        t9.m.e(intent, SDKConstants.PARAM_INTENT);
        String stringExtra = intent.getStringExtra(NativeProtocol.EXTRA_PROTOCOL_CALL_ID);
        String stringExtra2 = intent.getStringExtra(NativeProtocol.EXTRA_PROTOCOL_ACTION);
        Bundle extras = intent.getExtras();
        if (stringExtra == null || stringExtra2 == null || extras == null) {
            return;
        }
        NativeProtocol nativeProtocol = NativeProtocol.INSTANCE;
        if (NativeProtocol.isErrorResult(intent)) {
            onFailedAppCall(stringExtra, stringExtra2, extras);
        } else {
            onSuccessfulAppCall(stringExtra, stringExtra2, extras);
        }
    }

    protected void onSuccessfulAppCall(String str, String str2, Bundle bundle) {
        t9.m.e(str, "appCallId");
        t9.m.e(str2, "action");
        t9.m.e(bundle, "extras");
    }
}
