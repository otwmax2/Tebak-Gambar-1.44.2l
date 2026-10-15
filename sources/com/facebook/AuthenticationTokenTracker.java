package com.facebook;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;

/* JADX INFO: compiled from: AuthenticationTokenTracker.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class AuthenticationTokenTracker {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = AuthenticationTokenTracker.class.getSimpleName();
    private final u0.a broadcastManager;
    private boolean isTracking;
    private final BroadcastReceiver receiver;

    /* JADX INFO: compiled from: AuthenticationTokenTracker.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: AuthenticationTokenTracker.kt */
    private final class CurrentAuthenticationTokenBroadcastReceiver extends BroadcastReceiver {
        final /* synthetic */ AuthenticationTokenTracker this$0;

        public CurrentAuthenticationTokenBroadcastReceiver(AuthenticationTokenTracker authenticationTokenTracker) {
            t9.m.e(authenticationTokenTracker, "this$0");
            this.this$0 = authenticationTokenTracker;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            t9.m.e(context, "context");
            t9.m.e(intent, SDKConstants.PARAM_INTENT);
            if (t9.m.a(AuthenticationTokenManager.ACTION_CURRENT_AUTHENTICATION_TOKEN_CHANGED, intent.getAction())) {
                Utility utility = Utility.INSTANCE;
                Utility.logd(AuthenticationTokenTracker.TAG, "AuthenticationTokenChanged");
                this.this$0.onCurrentAuthenticationTokenChanged((AuthenticationToken) intent.getParcelableExtra(AuthenticationTokenManager.EXTRA_OLD_AUTHENTICATION_TOKEN), (AuthenticationToken) intent.getParcelableExtra(AuthenticationTokenManager.EXTRA_NEW_AUTHENTICATION_TOKEN));
            }
        }
    }

    public AuthenticationTokenTracker() {
        Validate validate = Validate.INSTANCE;
        Validate.sdkInitialized();
        this.receiver = new CurrentAuthenticationTokenBroadcastReceiver(this);
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        u0.a aVarB = u0.a.b(FacebookSdk.getApplicationContext());
        t9.m.d(aVarB, "getInstance(FacebookSdk.getApplicationContext())");
        this.broadcastManager = aVarB;
        startTracking();
    }

    private final void addBroadcastReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(AuthenticationTokenManager.ACTION_CURRENT_AUTHENTICATION_TOKEN_CHANGED);
        this.broadcastManager.c(this.receiver, intentFilter);
    }

    public final boolean isTracking() {
        return this.isTracking;
    }

    protected abstract void onCurrentAuthenticationTokenChanged(AuthenticationToken authenticationToken, AuthenticationToken authenticationToken2);

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
