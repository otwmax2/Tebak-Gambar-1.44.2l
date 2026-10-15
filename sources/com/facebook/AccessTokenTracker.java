package com.facebook;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;

/* JADX INFO: compiled from: AccessTokenTracker.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class AccessTokenTracker {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = AccessTokenTracker.class.getSimpleName();
    private final u0.a broadcastManager;
    private boolean isTracking;
    private final BroadcastReceiver receiver;

    /* JADX INFO: compiled from: AccessTokenTracker.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: AccessTokenTracker.kt */
    private final class CurrentAccessTokenBroadcastReceiver extends BroadcastReceiver {
        final /* synthetic */ AccessTokenTracker this$0;

        public CurrentAccessTokenBroadcastReceiver(AccessTokenTracker accessTokenTracker) {
            t9.m.e(accessTokenTracker, "this$0");
            this.this$0 = accessTokenTracker;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            t9.m.e(context, "context");
            t9.m.e(intent, SDKConstants.PARAM_INTENT);
            if (t9.m.a(AccessTokenManager.ACTION_CURRENT_ACCESS_TOKEN_CHANGED, intent.getAction())) {
                Utility utility = Utility.INSTANCE;
                Utility.logd(AccessTokenTracker.TAG, "AccessTokenChanged");
                this.this$0.onCurrentAccessTokenChanged((AccessToken) intent.getParcelableExtra(AccessTokenManager.EXTRA_OLD_ACCESS_TOKEN), (AccessToken) intent.getParcelableExtra(AccessTokenManager.EXTRA_NEW_ACCESS_TOKEN));
            }
        }
    }

    public AccessTokenTracker() {
        Validate validate = Validate.INSTANCE;
        Validate.sdkInitialized();
        this.receiver = new CurrentAccessTokenBroadcastReceiver(this);
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        u0.a aVarB = u0.a.b(FacebookSdk.getApplicationContext());
        t9.m.d(aVarB, "getInstance(FacebookSdk.getApplicationContext())");
        this.broadcastManager = aVarB;
        startTracking();
    }

    private final void addBroadcastReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(AccessTokenManager.ACTION_CURRENT_ACCESS_TOKEN_CHANGED);
        this.broadcastManager.c(this.receiver, intentFilter);
    }

    public final boolean isTracking() {
        return this.isTracking;
    }

    protected abstract void onCurrentAccessTokenChanged(AccessToken accessToken, AccessToken accessToken2);

    public final void startTracking() {
        if (this.isTracking) {
            return;
        }
        addBroadcastReceiver();
        this.isTracking = true;
    }

    public final void stopTracking() {
        if (this.isTracking) {
            this.broadcastManager.e(this.receiver);
            this.isTracking = false;
        }
    }
}
