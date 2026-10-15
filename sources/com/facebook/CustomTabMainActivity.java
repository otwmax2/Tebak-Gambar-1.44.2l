package com.facebook;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.CustomTab;
import com.facebook.internal.InstagramCustomTab;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import com.facebook.login.LoginTargetApp;

/* JADX INFO: compiled from: CustomTabMainActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class CustomTabMainActivity extends Activity {
    private BroadcastReceiver redirectReceiver;
    private boolean shouldCloseCustomTab = true;
    public static final Companion Companion = new Companion(null);
    public static final String EXTRA_ACTION = t9.m.k(CustomTabMainActivity.class.getSimpleName(), ".extra_action");
    public static final String EXTRA_PARAMS = t9.m.k(CustomTabMainActivity.class.getSimpleName(), ".extra_params");
    public static final String EXTRA_CHROME_PACKAGE = t9.m.k(CustomTabMainActivity.class.getSimpleName(), ".extra_chromePackage");
    public static final String EXTRA_URL = t9.m.k(CustomTabMainActivity.class.getSimpleName(), ".extra_url");
    public static final String EXTRA_TARGET_APP = t9.m.k(CustomTabMainActivity.class.getSimpleName(), ".extra_targetApp");
    public static final String REFRESH_ACTION = t9.m.k(CustomTabMainActivity.class.getSimpleName(), ".action_refresh");
    public static final String NO_ACTIVITY_EXCEPTION = t9.m.k(CustomTabMainActivity.class.getSimpleName(), ".no_activity_exception");

    /* JADX INFO: compiled from: CustomTabMainActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Bundle parseResponseUri(String str) {
            Uri uri = Uri.parse(str);
            Utility utility = Utility.INSTANCE;
            Bundle urlQueryString = Utility.parseUrlQueryString(uri.getQuery());
            urlQueryString.putAll(Utility.parseUrlQueryString(uri.getFragment()));
            return urlQueryString;
        }
    }

    /* JADX INFO: compiled from: CustomTabMainActivity.kt */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LoginTargetApp.valuesCustom().length];
            iArr[LoginTargetApp.INSTAGRAM.ordinal()] = 1;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private final void sendResult(int i10, Intent intent) {
        BroadcastReceiver broadcastReceiver = this.redirectReceiver;
        if (broadcastReceiver != null) {
            u0.a.b(this).e(broadcastReceiver);
        }
        if (intent != null) {
            String stringExtra = intent.getStringExtra(EXTRA_URL);
            Bundle responseUri = stringExtra != null ? Companion.parseResponseUri(stringExtra) : new Bundle();
            NativeProtocol nativeProtocol = NativeProtocol.INSTANCE;
            Intent intent2 = getIntent();
            t9.m.d(intent2, SDKConstants.PARAM_INTENT);
            Intent intentCreateProtocolResultIntent = NativeProtocol.createProtocolResultIntent(intent2, responseUri, null);
            if (intentCreateProtocolResultIntent != null) {
                intent = intentCreateProtocolResultIntent;
            }
            setResult(i10, intent);
        } else {
            NativeProtocol nativeProtocol2 = NativeProtocol.INSTANCE;
            Intent intent3 = getIntent();
            t9.m.d(intent3, SDKConstants.PARAM_INTENT);
            setResult(i10, NativeProtocol.createProtocolResultIntent(intent3, null, null));
        }
        finish();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        String stringExtra;
        super.onCreate(bundle);
        String str = CustomTabActivity.CUSTOM_TAB_REDIRECT_ACTION;
        if (t9.m.a(str, getIntent().getAction())) {
            setResult(0);
            finish();
            return;
        }
        if (bundle != null || (stringExtra = getIntent().getStringExtra(EXTRA_ACTION)) == null) {
            return;
        }
        Bundle bundleExtra = getIntent().getBundleExtra(EXTRA_PARAMS);
        boolean zOpenCustomTab = (WhenMappings.$EnumSwitchMapping$0[LoginTargetApp.Companion.fromString(getIntent().getStringExtra(EXTRA_TARGET_APP)).ordinal()] == 1 ? new InstagramCustomTab(stringExtra, bundleExtra) : new CustomTab(stringExtra, bundleExtra)).openCustomTab(this, getIntent().getStringExtra(EXTRA_CHROME_PACKAGE));
        this.shouldCloseCustomTab = false;
        if (!zOpenCustomTab) {
            setResult(0, getIntent().putExtra(NO_ACTIVITY_EXCEPTION, true));
            finish();
        } else {
            BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.facebook.CustomTabMainActivity$onCreate$redirectReceiver$1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    t9.m.e(context, "context");
                    t9.m.e(intent, SDKConstants.PARAM_INTENT);
                    Intent intent2 = new Intent(this.this$0, (Class<?>) CustomTabMainActivity.class);
                    intent2.setAction(CustomTabMainActivity.REFRESH_ACTION);
                    String str2 = CustomTabMainActivity.EXTRA_URL;
                    intent2.putExtra(str2, intent.getStringExtra(str2));
                    intent2.addFlags(603979776);
                    this.this$0.startActivity(intent2);
                }
            };
            this.redirectReceiver = broadcastReceiver;
            u0.a.b(this).c(broadcastReceiver, new IntentFilter(str));
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        t9.m.e(intent, SDKConstants.PARAM_INTENT);
        super.onNewIntent(intent);
        if (t9.m.a(REFRESH_ACTION, intent.getAction())) {
            u0.a.b(this).d(new Intent(CustomTabActivity.DESTROY_ACTION));
            sendResult(-1, intent);
        } else if (t9.m.a(CustomTabActivity.CUSTOM_TAB_REDIRECT_ACTION, intent.getAction())) {
            sendResult(-1, intent);
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.shouldCloseCustomTab) {
            sendResult(0, null);
        }
        this.shouldCloseCustomTab = true;
    }
}
