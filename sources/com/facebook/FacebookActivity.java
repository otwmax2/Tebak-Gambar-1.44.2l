package com.facebook;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.FacebookDialogFragment;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.internal.logging.dumpsys.EndToEndDumper;
import com.facebook.login.LoginFragment;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: compiled from: FacebookActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public class FacebookActivity extends androidx.fragment.app.e {
    private static final String FRAGMENT_TAG = "SingleFragment";
    public static final String PASS_THROUGH_CANCEL_ACTION = "PassThrough";
    private Fragment currentFragment;
    public static final Companion Companion = new Companion(null);
    private static final String TAG = FacebookActivity.class.getName();

    /* JADX INFO: compiled from: FacebookActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }
    }

    private final void handlePassThroughError() {
        Intent intent = getIntent();
        NativeProtocol nativeProtocol = NativeProtocol.INSTANCE;
        t9.m.d(intent, "requestIntent");
        FacebookException exceptionFromErrorData = NativeProtocol.getExceptionFromErrorData(NativeProtocol.getMethodArgumentsFromIntent(intent));
        Intent intent2 = getIntent();
        t9.m.d(intent2, SDKConstants.PARAM_INTENT);
        setResult(0, NativeProtocol.createProtocolResultIntent(intent2, null, exceptionFromErrorData));
        finish();
    }

    @Override // androidx.fragment.app.e, android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            t9.m.e(str, "prefix");
            t9.m.e(printWriter, "writer");
            EndToEndDumper companion = EndToEndDumper.Companion.getInstance();
            if (t9.m.a(companion == null ? null : Boolean.valueOf(companion.maybeDump(str, printWriter, strArr)), Boolean.TRUE)) {
                return;
            }
            super.dump(str, fileDescriptor, printWriter, strArr);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public final Fragment getCurrentFragment() {
        return this.currentFragment;
    }

    protected Fragment getFragment() {
        Fragment fragment;
        Intent intent = getIntent();
        androidx.fragment.app.n supportFragmentManager = getSupportFragmentManager();
        t9.m.d(supportFragmentManager, "supportFragmentManager");
        Fragment fragmentI0 = supportFragmentManager.i0(FRAGMENT_TAG);
        if (fragmentI0 != null) {
            return fragmentI0;
        }
        if (t9.m.a(FacebookDialogFragment.TAG, intent.getAction())) {
            FacebookDialogFragment facebookDialogFragment = new FacebookDialogFragment();
            facebookDialogFragment.setRetainInstance(true);
            facebookDialogFragment.show(supportFragmentManager, FRAGMENT_TAG);
            fragment = facebookDialogFragment;
        } else {
            LoginFragment loginFragment = new LoginFragment();
            loginFragment.setRetainInstance(true);
            supportFragmentManager.m().b(com.facebook.common.R.id.com_facebook_fragment_container, loginFragment, FRAGMENT_TAG).f();
            fragment = loginFragment;
        }
        return fragment;
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        t9.m.e(configuration, "newConfig");
        super.onConfigurationChanged(configuration);
        Fragment fragment = this.currentFragment;
        if (fragment == null) {
            return;
        }
        fragment.onConfigurationChanged(configuration);
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, androidx.core.app.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        if (!FacebookSdk.isInitialized()) {
            Utility utility = Utility.INSTANCE;
            Utility.logd(TAG, "Facebook SDK not initialized. Make sure you call sdkInitialize inside your Application's onCreate method.");
            Context applicationContext = getApplicationContext();
            t9.m.d(applicationContext, "applicationContext");
            FacebookSdk.sdkInitialize(applicationContext);
        }
        setContentView(com.facebook.common.R.layout.com_facebook_activity_layout);
        if (t9.m.a(PASS_THROUGH_CANCEL_ACTION, intent.getAction())) {
            handlePassThroughError();
        } else {
            this.currentFragment = getFragment();
        }
    }
}
