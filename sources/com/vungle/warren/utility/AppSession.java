package com.vungle.warren.utility;

import com.vungle.warren.SessionData;
import com.vungle.warren.utility.ActivityManager;

/* JADX INFO: loaded from: classes2.dex */
public class AppSession {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SessionData f28547a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SessionCallback f28548b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ActivityManager.LifeCycleCallback f28549c = new ActivityManager.LifeCycleCallback() { // from class: com.vungle.warren.utility.AppSession.1

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f28550a;

        @Override // com.vungle.warren.utility.ActivityManager.LifeCycleCallback
        public void onStart() {
            if (this.f28550a <= 0) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis() - this.f28550a;
            if (AppSession.this.f28547a == null || AppSession.this.f28547a.getTimeout() <= -1 || jCurrentTimeMillis < AppSession.this.f28547a.getTimeout() * 1000 || AppSession.this.f28548b == null) {
                return;
            }
            AppSession.this.f28548b.onSessionTimeout();
        }

        @Override // com.vungle.warren.utility.ActivityManager.LifeCycleCallback
        public void onStop() {
            this.f28550a = System.currentTimeMillis();
        }
    };

    public interface SessionCallback {
        void onSessionTimeout();
    }

    public void observe() {
        ActivityManager.getInstance().addListener(this.f28549c);
    }

    public AppSession setSessionCallback(SessionCallback sessionCallback) {
        this.f28548b = sessionCallback;
        return this;
    }

    public AppSession setSessionData(SessionData sessionData) {
        this.f28547a = sessionData;
        return this;
    }
}
