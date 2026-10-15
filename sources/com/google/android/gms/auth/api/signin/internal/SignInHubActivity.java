package com.google.android.gms.auth.api.signin.internal;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.SignInAccount;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.Status;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepName
public class SignInHubActivity extends androidx.fragment.app.e {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static boolean f6767t = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f6768o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private SignInConfiguration f6769p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f6770q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f6771r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Intent f6772s;

    private final void E() {
        getSupportLoaderManager().c(0, null, new h(this, null));
        f6767t = false;
    }

    private final void F(int i10) {
        Status status = new Status(i10);
        Intent intent = new Intent();
        intent.putExtra("googleSignInStatus", status);
        setResult(0, intent);
        finish();
        f6767t = false;
    }

    private final void G(String str) {
        Intent intent = new Intent(str);
        if (str.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN")) {
            intent.setPackage("com.google.android.gms");
        } else {
            intent.setPackage(getPackageName());
        }
        intent.putExtra("config", this.f6769p);
        try {
            startActivityForResult(intent, 40962);
        } catch (ActivityNotFoundException unused) {
            this.f6768o = true;
            Log.w("AuthSignInClient", "Could not launch sign in Intent. Google Play Service is probably being updated...");
            F(17);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return true;
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, android.app.Activity
    protected final void onActivityResult(int i10, int i11, Intent intent) {
        if (this.f6768o) {
            return;
        }
        setResult(0);
        if (i10 != 40962) {
            return;
        }
        if (intent != null) {
            SignInAccount signInAccount = (SignInAccount) intent.getParcelableExtra("signInAccount");
            if (signInAccount != null && signInAccount.V3() != null) {
                GoogleSignInAccount googleSignInAccountV3 = signInAccount.V3();
                zbn zbnVarC = zbn.c(this);
                GoogleSignInOptions googleSignInOptionsV3 = this.f6769p.V3();
                Objects.requireNonNull(googleSignInAccountV3);
                zbnVarC.e(googleSignInOptionsV3, googleSignInAccountV3);
                intent.removeExtra("signInAccount");
                intent.putExtra("googleSignInAccount", googleSignInAccountV3);
                this.f6770q = true;
                this.f6771r = i11;
                this.f6772s = intent;
                E();
                return;
            }
            if (intent.hasExtra("errorCode")) {
                int intExtra = intent.getIntExtra("errorCode", 8);
                if (intExtra == 13) {
                    intExtra = 12501;
                }
                F(intExtra);
                return;
            }
        }
        F(8);
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, androidx.core.app.g, android.app.Activity
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        String action = intent.getAction();
        Objects.requireNonNull(action);
        if ("com.google.android.gms.auth.NO_IMPL".equals(action)) {
            F(12500);
            return;
        }
        if (!action.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN") && !action.equals("com.google.android.gms.auth.APPAUTH_SIGN_IN")) {
            Log.e("AuthSignInClient", "Unknown action: ".concat(String.valueOf(intent.getAction())));
            finish();
            return;
        }
        Bundle bundleExtra = intent.getBundleExtra("config");
        Objects.requireNonNull(bundleExtra);
        SignInConfiguration signInConfiguration = (SignInConfiguration) bundleExtra.getParcelable("config");
        if (signInConfiguration == null) {
            Log.e("AuthSignInClient", "Activity started with invalid configuration.");
            setResult(0);
            finish();
            return;
        }
        this.f6769p = signInConfiguration;
        if (bundle == null) {
            if (f6767t) {
                setResult(0);
                F(12502);
                return;
            } else {
                f6767t = true;
                G(action);
                return;
            }
        }
        boolean z10 = bundle.getBoolean("signingInGoogleApiClients");
        this.f6770q = z10;
        if (z10) {
            this.f6771r = bundle.getInt("signInResultCode");
            Intent intent2 = (Intent) bundle.getParcelable("signInResultData");
            Objects.requireNonNull(intent2);
            this.f6772s = intent2;
            E();
        }
    }

    @Override // androidx.fragment.app.e, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        f6767t = false;
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.g, android.app.Activity
    protected final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("signingInGoogleApiClients", this.f6770q);
        if (this.f6770q) {
            bundle.putInt("signInResultCode", this.f6771r);
            bundle.putParcelable("signInResultData", this.f6772s);
        }
    }
}
