package com.facebook;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.Validate;

/* JADX INFO: compiled from: ProfileTracker.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class ProfileTracker {
    private final u0.a broadcastManager;
    private boolean isTracking;
    private final BroadcastReceiver receiver;

    /* JADX INFO: compiled from: ProfileTracker.kt */
    private final class ProfileBroadcastReceiver extends BroadcastReceiver {
        final /* synthetic */ ProfileTracker this$0;

        public ProfileBroadcastReceiver(ProfileTracker profileTracker) {
            t9.m.e(profileTracker, "this$0");
            this.this$0 = profileTracker;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            t9.m.e(context, "context");
            t9.m.e(intent, SDKConstants.PARAM_INTENT);
            if (t9.m.a(ProfileManager.ACTION_CURRENT_PROFILE_CHANGED, intent.getAction())) {
                this.this$0.onCurrentProfileChanged((Profile) intent.getParcelableExtra(ProfileManager.EXTRA_OLD_PROFILE), (Profile) intent.getParcelableExtra(ProfileManager.EXTRA_NEW_PROFILE));
            }
        }
    }

    public ProfileTracker() {
        Validate validate = Validate.INSTANCE;
        Validate.sdkInitialized();
        this.receiver = new ProfileBroadcastReceiver(this);
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        u0.a aVarB = u0.a.b(FacebookSdk.getApplicationContext());
        t9.m.d(aVarB, "getInstance(FacebookSdk.getApplicationContext())");
        this.broadcastManager = aVarB;
        startTracking();
    }

    private final void addBroadcastReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ProfileManager.ACTION_CURRENT_PROFILE_CHANGED);
        this.broadcastManager.c(this.receiver, intentFilter);
    }

    public final boolean isTracking() {
        return this.isTracking;
    }

    protected abstract void onCurrentProfileChanged(Profile profile, Profile profile2);

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
