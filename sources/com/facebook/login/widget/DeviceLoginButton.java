package com.facebook.login.widget;

import android.content.Context;
import android.net.Uri;
import android.util.AttributeSet;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.login.DeviceLoginManager;
import com.facebook.login.LoginBehavior;
import com.facebook.login.LoginManager;
import com.facebook.login.widget.LoginButton;
import t9.m;

/* JADX INFO: compiled from: DeviceLoginButton.kt */
/* JADX INFO: loaded from: classes.dex */
public final class DeviceLoginButton extends LoginButton {
    private Uri deviceRedirectUri;

    /* JADX INFO: compiled from: DeviceLoginButton.kt */
    private final class DeviceLoginClickListener extends LoginButton.LoginClickListener {
        final /* synthetic */ DeviceLoginButton this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DeviceLoginClickListener(DeviceLoginButton deviceLoginButton) {
            super(deviceLoginButton);
            m.e(deviceLoginButton, "this$0");
            this.this$0 = deviceLoginButton;
        }

        @Override // com.facebook.login.widget.LoginButton.LoginClickListener
        protected LoginManager getLoginManager() {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return null;
            }
            try {
                DeviceLoginManager companion = DeviceLoginManager.Companion.getInstance();
                companion.setDefaultAudience(this.this$0.getDefaultAudience());
                companion.setLoginBehavior(LoginBehavior.DEVICE_AUTH);
                companion.setDeviceRedirectUri(this.this$0.getDeviceRedirectUri());
                return companion;
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, this);
                return null;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceLoginButton(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        m.e(context, "context");
        m.e(attributeSet, "attrs");
    }

    public final Uri getDeviceRedirectUri() {
        return this.deviceRedirectUri;
    }

    @Override // com.facebook.login.widget.LoginButton
    protected LoginButton.LoginClickListener getNewLoginClickListener() {
        return new DeviceLoginClickListener(this);
    }

    public final void setDeviceRedirectUri(Uri uri) {
        this.deviceRedirectUri = uri;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceLoginButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m.e(context, "context");
        m.e(attributeSet, "attrs");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceLoginButton(Context context) {
        super(context);
        m.e(context, "context");
    }
}
