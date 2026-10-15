package com.google.firebase.auth.internal;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import androidx.fragment.app.e;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.util.DefaultClock;
import j5.d;
import j5.j;
import j5.o;
import j5.v;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@KeepName
public class FederatedSignInActivity extends e {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static long f26273p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final j f26274q = j.a();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static Handler f26275r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static Runnable f26276s;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f26277o = false;

    static /* synthetic */ Runnable C(Runnable runnable) {
        f26276s = null;
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void D() {
        f26273p = 0L;
        this.f26277o = false;
        Intent intent = new Intent();
        intent.putExtra("com.google.firebase.auth.internal.EXTRA_CANCELED", true);
        intent.setAction("com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT");
        if (u0.a.b(this).d(intent)) {
            f26274q.b(this);
        } else {
            o.c(this, d.a("WEB_CONTEXT_CANCELED"));
        }
        finish();
    }

    private final void E(Status status) {
        f26273p = 0L;
        this.f26277o = false;
        Intent intent = new Intent();
        v.a(intent, status);
        intent.setAction("com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT");
        if (u0.a.b(this).d(intent)) {
            f26274q.b(this);
        } else {
            o.c(getApplicationContext(), status);
        }
        finish();
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, androidx.core.app.g, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String action = getIntent().getAction();
        if (!"com.google.firebase.auth.internal.SIGN_IN".equals(action) && !"com.google.firebase.auth.internal.LINK".equals(action) && !"com.google.firebase.auth.internal.REAUTHENTICATE".equals(action)) {
            String strValueOf = String.valueOf(action);
            Log.e("IdpSignInActivity", strValueOf.length() != 0 ? "Could not do operation - unknown action: ".concat(strValueOf) : new String("Could not do operation - unknown action: "));
            D();
            return;
        }
        long jA = DefaultClock.d().a();
        if (jA - f26273p < 30000) {
            Log.e("IdpSignInActivity", "Could not start operation - already in progress");
            return;
        }
        f26273p = jA;
        if (bundle != null) {
            this.f26277o = bundle.getBoolean("com.google.firebase.auth.internal.KEY_STARTED_SIGN_IN");
        }
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        Runnable runnable;
        super.onNewIntent(intent);
        Handler handler = f26275r;
        if (handler != null && (runnable = f26276s) != null) {
            handler.removeCallbacks(runnable);
            f26276s = null;
        }
        setIntent(intent);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x009f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a0  */
    @Override // androidx.fragment.app.e, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onResume() {
        /*
            Method dump skipped, instruction units count: 251
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.auth.internal.FederatedSignInActivity.onResume():void");
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.g, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("com.google.firebase.auth.internal.KEY_STARTED_SIGN_IN", this.f26277o);
    }
}
