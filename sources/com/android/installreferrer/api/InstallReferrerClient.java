package com.android.installreferrer.api;

import android.content.Context;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public abstract class InstallReferrerClient {

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f5018a;

        public InstallReferrerClient a() {
            Context context = this.f5018a;
            if (context != null) {
                return new com.android.installreferrer.api.a(context);
            }
            throw new IllegalArgumentException("Please provide a valid Context.");
        }

        private b(Context context) {
            this.f5018a = context;
        }
    }

    public static b b(Context context) {
        return new b(context);
    }

    public abstract ReferrerDetails a() throws RemoteException;

    public abstract void c(InstallReferrerStateListener installReferrerStateListener);
}
