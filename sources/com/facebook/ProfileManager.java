package com.facebook;

import android.content.Intent;
import com.facebook.internal.Utility;

/* JADX INFO: compiled from: ProfileManager.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ProfileManager {
    public static final String ACTION_CURRENT_PROFILE_CHANGED = "com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED";
    public static final Companion Companion = new Companion(null);
    public static final String EXTRA_NEW_PROFILE = "com.facebook.sdk.EXTRA_NEW_PROFILE";
    public static final String EXTRA_OLD_PROFILE = "com.facebook.sdk.EXTRA_OLD_PROFILE";
    private static volatile ProfileManager instance;
    private Profile currentProfileField;
    private final u0.a localBroadcastManager;
    private final ProfileCache profileCache;

    /* JADX INFO: compiled from: ProfileManager.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }

        public final synchronized ProfileManager getInstance() {
            ProfileManager profileManager;
            if (ProfileManager.instance == null) {
                FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                u0.a aVarB = u0.a.b(FacebookSdk.getApplicationContext());
                t9.m.d(aVarB, "getInstance(applicationContext)");
                ProfileManager.instance = new ProfileManager(aVarB, new ProfileCache());
            }
            profileManager = ProfileManager.instance;
            if (profileManager == null) {
                t9.m.p("instance");
                throw null;
            }
            return profileManager;
        }
    }

    public ProfileManager(u0.a aVar, ProfileCache profileCache) {
        t9.m.e(aVar, "localBroadcastManager");
        t9.m.e(profileCache, "profileCache");
        this.localBroadcastManager = aVar;
        this.profileCache = profileCache;
    }

    public static final synchronized ProfileManager getInstance() {
        return Companion.getInstance();
    }

    private final void sendCurrentProfileChangedBroadcast(Profile profile, Profile profile2) {
        Intent intent = new Intent(ACTION_CURRENT_PROFILE_CHANGED);
        intent.putExtra(EXTRA_OLD_PROFILE, profile);
        intent.putExtra(EXTRA_NEW_PROFILE, profile2);
        this.localBroadcastManager.d(intent);
    }

    public final Profile getCurrentProfile() {
        return this.currentProfileField;
    }

    public final boolean loadCurrentProfile() {
        Profile profileLoad = this.profileCache.load();
        if (profileLoad == null) {
            return false;
        }
        setCurrentProfile(profileLoad, false);
        return true;
    }

    public final void setCurrentProfile(Profile profile) {
        setCurrentProfile(profile, true);
    }

    private final void setCurrentProfile(Profile profile, boolean z10) {
        Profile profile2 = this.currentProfileField;
        this.currentProfileField = profile;
        if (z10) {
            if (profile != null) {
                this.profileCache.save(profile);
            } else {
                this.profileCache.clear();
            }
        }
        Utility utility = Utility.INSTANCE;
        if (Utility.areObjectsEqual(profile2, profile)) {
            return;
        }
        sendCurrentProfileChangedBroadcast(profile2, profile);
    }
}
