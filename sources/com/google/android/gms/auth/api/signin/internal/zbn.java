package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zbn {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static zbn f6789d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    final Storage f6790a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    GoogleSignInAccount f6791b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @VisibleForTesting
    GoogleSignInOptions f6792c;

    private zbn(Context context) {
        Storage storageB = Storage.b(context);
        this.f6790a = storageB;
        this.f6791b = storageB.c();
        this.f6792c = storageB.d();
    }

    public static synchronized zbn c(Context context) {
        return f(context.getApplicationContext());
    }

    private static synchronized zbn f(Context context) {
        zbn zbnVar = f6789d;
        if (zbnVar != null) {
            return zbnVar;
        }
        zbn zbnVar2 = new zbn(context);
        f6789d = zbnVar2;
        return zbnVar2;
    }

    public final synchronized GoogleSignInAccount a() {
        return this.f6791b;
    }

    public final synchronized GoogleSignInOptions b() {
        return this.f6792c;
    }

    public final synchronized void d() {
        this.f6790a.a();
        this.f6791b = null;
        this.f6792c = null;
    }

    public final synchronized void e(GoogleSignInOptions googleSignInOptions, GoogleSignInAccount googleSignInAccount) {
        this.f6790a.f(googleSignInAccount, googleSignInOptions);
        this.f6791b = googleSignInAccount;
        this.f6792c = googleSignInOptions;
    }
}
