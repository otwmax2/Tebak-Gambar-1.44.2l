package com.facebook.login.widget;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import androidx.fragment.app.Fragment;
import com.facebook.AccessToken;
import com.facebook.AccessTokenTracker;
import com.facebook.CallbackManager;
import com.facebook.FacebookButtonBase;
import com.facebook.FacebookCallback;
import com.facebook.FacebookSdk;
import com.facebook.Profile;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.login.DefaultAudience;
import com.facebook.login.LoginBehavior;
import com.facebook.login.LoginManager;
import com.facebook.login.LoginResult;
import com.facebook.login.LoginTargetApp;
import com.facebook.login.R;
import com.facebook.login.widget.LoginButton;
import com.facebook.login.widget.ToolTipPopup;
import h9.j;
import i9.l;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
import t9.b0;
import t9.m;

/* JADX INFO: compiled from: LoginButton.kt */
/* JADX INFO: loaded from: classes.dex */
public class LoginButton extends FacebookButtonBase {
    private static final int MAX_BUTTON_TRANSPARENCY = 255;
    private static final int MIN_BUTTON_TRANSPARENCY = 0;
    private AccessTokenTracker accessTokenTracker;
    private androidx.activity.result.c<Collection<String>> androidXLoginCaller;
    private CallbackManager callbackManager;
    private boolean confirmLogout;
    private Float customButtonRadius;
    private int customButtonTransparency;
    private final String loggerID;
    private h9.h<? extends LoginManager> loginManagerLazy;
    private String loginText;
    private String logoutText;
    private final LoginButtonProperties properties;
    private boolean toolTipChecked;
    private long toolTipDisplayTime;
    private ToolTipMode toolTipMode;
    private ToolTipPopup toolTipPopup;
    private ToolTipPopup.Style toolTipStyle;
    public static final Companion Companion = new Companion(null);
    private static final String TAG = LoginButton.class.getName();

    /* JADX INFO: compiled from: LoginButton.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: LoginButton.kt */
    public static class LoginButtonProperties {
        private String messengerPageId;
        private boolean resetMessengerState;
        private boolean shouldSkipAccountDeduplication;
        private DefaultAudience defaultAudience = DefaultAudience.FRIENDS;
        private List<String> permissions = l.e();
        private LoginBehavior loginBehavior = LoginBehavior.NATIVE_WITH_FALLBACK;
        private String authType = ServerProtocol.DIALOG_REREQUEST_AUTH_TYPE;
        private LoginTargetApp loginTargetApp = LoginTargetApp.FACEBOOK;

        public final void clearPermissions() {
            this.permissions = l.e();
        }

        public final String getAuthType() {
            return this.authType;
        }

        public final DefaultAudience getDefaultAudience() {
            return this.defaultAudience;
        }

        public final LoginBehavior getLoginBehavior() {
            return this.loginBehavior;
        }

        public final LoginTargetApp getLoginTargetApp() {
            return this.loginTargetApp;
        }

        public final String getMessengerPageId() {
            return this.messengerPageId;
        }

        public final List<String> getPermissions() {
            return this.permissions;
        }

        public final boolean getResetMessengerState() {
            return this.resetMessengerState;
        }

        public final boolean getShouldSkipAccountDeduplication() {
            return this.shouldSkipAccountDeduplication;
        }

        public final void setAuthType(String str) {
            m.e(str, "<set-?>");
            this.authType = str;
        }

        public final void setDefaultAudience(DefaultAudience defaultAudience) {
            m.e(defaultAudience, "<set-?>");
            this.defaultAudience = defaultAudience;
        }

        public final void setLoginBehavior(LoginBehavior loginBehavior) {
            m.e(loginBehavior, "<set-?>");
            this.loginBehavior = loginBehavior;
        }

        public final void setLoginTargetApp(LoginTargetApp loginTargetApp) {
            m.e(loginTargetApp, "<set-?>");
            this.loginTargetApp = loginTargetApp;
        }

        public final void setMessengerPageId(String str) {
            this.messengerPageId = str;
        }

        public final void setPermissions(List<String> list) {
            m.e(list, "<set-?>");
            this.permissions = list;
        }

        public final void setResetMessengerState(boolean z10) {
            this.resetMessengerState = z10;
        }

        protected final void setShouldSkipAccountDeduplication(boolean z10) {
            this.shouldSkipAccountDeduplication = z10;
        }
    }

    /* JADX INFO: compiled from: LoginButton.kt */
    protected class LoginClickListener implements View.OnClickListener {
        final /* synthetic */ LoginButton this$0;

        public LoginClickListener(LoginButton loginButton) {
            m.e(loginButton, "this$0");
            this.this$0 = loginButton;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: performLogout$lambda-2, reason: not valid java name */
        public static final void m162performLogout$lambda2(LoginManager loginManager, DialogInterface dialogInterface, int i10) {
            if (CrashShieldHandler.isObjectCrashing(LoginClickListener.class)) {
                return;
            }
            try {
                m.e(loginManager, "$loginManager");
                loginManager.logOut();
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, LoginClickListener.class);
            }
        }

        protected LoginManager getLoginManager() {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return null;
            }
            try {
                LoginManager companion = LoginManager.Companion.getInstance();
                companion.setDefaultAudience(this.this$0.getDefaultAudience());
                companion.setLoginBehavior(this.this$0.getLoginBehavior());
                companion.setLoginTargetApp(getLoginTargetApp());
                companion.setAuthType(this.this$0.getAuthType());
                companion.setFamilyLogin(isFamilyLogin());
                companion.setShouldSkipAccountDeduplication(this.this$0.getShouldSkipAccountDeduplication());
                companion.setMessengerPageId(this.this$0.getMessengerPageId());
                companion.setResetMessengerState(this.this$0.getResetMessengerState());
                return companion;
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, this);
                return null;
            }
        }

        protected final LoginTargetApp getLoginTargetApp() {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return null;
            }
            try {
                return LoginTargetApp.FACEBOOK;
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, this);
                return null;
            }
        }

        protected final boolean isFamilyLogin() {
            CrashShieldHandler.isObjectCrashing(this);
            return false;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                if (CrashShieldHandler.isObjectCrashing(this)) {
                    return;
                }
                try {
                    m.e(view, "v");
                    this.this$0.callExternalOnClickListener(view);
                    AccessToken.Companion companion = AccessToken.Companion;
                    AccessToken currentAccessToken = companion.getCurrentAccessToken();
                    boolean zIsCurrentAccessTokenActive = companion.isCurrentAccessTokenActive();
                    if (zIsCurrentAccessTokenActive) {
                        Context context = this.this$0.getContext();
                        m.d(context, "context");
                        performLogout(context);
                    } else {
                        performLogin();
                    }
                    InternalAppEventsLogger internalAppEventsLogger = new InternalAppEventsLogger(this.this$0.getContext());
                    Bundle bundle = new Bundle();
                    bundle.putInt("logging_in", currentAccessToken != null ? 0 : 1);
                    bundle.putInt("access_token_expired", zIsCurrentAccessTokenActive ? 1 : 0);
                    internalAppEventsLogger.logEventImplicitly(AnalyticsEvents.EVENT_LOGIN_VIEW_USAGE, bundle);
                } catch (Throwable th) {
                    CrashShieldHandler.handleThrowable(th, this);
                }
            } catch (Throwable th2) {
                CrashShieldHandler.handleThrowable(th2, this);
            }
        }

        protected final void performLogin() {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                LoginManager loginManager = getLoginManager();
                androidx.activity.result.c cVar = this.this$0.androidXLoginCaller;
                if (cVar != null) {
                    LoginManager.FacebookLoginActivityResultContract facebookLoginActivityResultContract = (LoginManager.FacebookLoginActivityResultContract) cVar.a();
                    CallbackManager callbackManager = this.this$0.getCallbackManager();
                    if (callbackManager == null) {
                        callbackManager = new CallbackManagerImpl();
                    }
                    facebookLoginActivityResultContract.setCallbackManager(callbackManager);
                    cVar.b(this.this$0.getProperties().getPermissions());
                    return;
                }
                if (this.this$0.getFragment() != null) {
                    Fragment fragment = this.this$0.getFragment();
                    if (fragment == null) {
                        return;
                    }
                    LoginButton loginButton = this.this$0;
                    loginManager.logIn(fragment, loginButton.getProperties().getPermissions(), loginButton.getLoggerID());
                    return;
                }
                if (this.this$0.getNativeFragment() == null) {
                    loginManager.logIn(this.this$0.getActivity(), this.this$0.getProperties().getPermissions(), this.this$0.getLoggerID());
                    return;
                }
                android.app.Fragment nativeFragment = this.this$0.getNativeFragment();
                if (nativeFragment == null) {
                    return;
                }
                LoginButton loginButton2 = this.this$0;
                loginManager.logIn(nativeFragment, loginButton2.getProperties().getPermissions(), loginButton2.getLoggerID());
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, this);
            }
        }

        protected final void performLogout(Context context) {
            String string;
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                m.e(context, "context");
                final LoginManager loginManager = getLoginManager();
                if (!this.this$0.confirmLogout) {
                    loginManager.logOut();
                    return;
                }
                String string2 = this.this$0.getResources().getString(R.string.com_facebook_loginview_log_out_action);
                m.d(string2, "resources.getString(R.string.com_facebook_loginview_log_out_action)");
                String string3 = this.this$0.getResources().getString(R.string.com_facebook_loginview_cancel_action);
                m.d(string3, "resources.getString(R.string.com_facebook_loginview_cancel_action)");
                Profile currentProfile = Profile.Companion.getCurrentProfile();
                if ((currentProfile == null ? null : currentProfile.getName()) != null) {
                    b0 b0Var = b0.f35528a;
                    String string4 = this.this$0.getResources().getString(R.string.com_facebook_loginview_logged_in_as);
                    m.d(string4, "resources.getString(R.string.com_facebook_loginview_logged_in_as)");
                    string = String.format(string4, Arrays.copyOf(new Object[]{currentProfile.getName()}, 1));
                    m.d(string, "java.lang.String.format(format, *args)");
                } else {
                    string = this.this$0.getResources().getString(R.string.com_facebook_loginview_logged_in_using_facebook);
                    m.d(string, "{\n          resources.getString(R.string.com_facebook_loginview_logged_in_using_facebook)\n        }");
                }
                AlertDialog.Builder builder = new AlertDialog.Builder(context);
                builder.setMessage(string).setCancelable(true).setPositiveButton(string2, new DialogInterface.OnClickListener() { // from class: com.facebook.login.widget.d
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i10) {
                        LoginButton.LoginClickListener.m162performLogout$lambda2(loginManager, dialogInterface, i10);
                    }
                }).setNegativeButton(string3, (DialogInterface.OnClickListener) null);
                builder.create().show();
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, this);
            }
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v0 com.facebook.login.widget.LoginButton$ToolTipMode, still in use, count: 1, list:
      (r0v0 com.facebook.login.widget.LoginButton$ToolTipMode) from 0x0032: SPUT (r0v0 com.facebook.login.widget.LoginButton$ToolTipMode) (LINE:4) com.facebook.login.widget.LoginButton.ToolTipMode.DEFAULT com.facebook.login.widget.LoginButton$ToolTipMode
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:99)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:98)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:252)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:180)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX INFO: compiled from: LoginButton.kt */
    public static final class ToolTipMode {
        AUTOMATIC(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_AUTOMATIC, 0),
        DISPLAY_ALWAYS("display_always", 1),
        NEVER_DISPLAY("never_display", 2);

        private static final ToolTipMode DEFAULT = new ToolTipMode(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_AUTOMATIC, 0);
        private final int intValue;
        private final String stringValue;
        public static final Companion Companion = new Companion(null);

        /* JADX INFO: compiled from: LoginButton.kt */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(t9.g gVar) {
                this();
            }

            public final ToolTipMode fromInt(int i10) {
                for (ToolTipMode toolTipMode : ToolTipMode.values()) {
                    if (toolTipMode.getIntValue() == i10) {
                        return toolTipMode;
                    }
                }
                return null;
            }

            public final ToolTipMode getDEFAULT() {
                return ToolTipMode.DEFAULT;
            }
        }

        static {
        }

        private ToolTipMode(String str, int i10) {
            this.stringValue = str;
            this.intValue = i10;
        }

        public static ToolTipMode valueOf(String str) {
            m.e(str, SDKConstants.PARAM_VALUE);
            return (ToolTipMode) Enum.valueOf(ToolTipMode.class, str);
        }

        public static ToolTipMode[] values() {
            ToolTipMode[] toolTipModeArr = $VALUES;
            return (ToolTipMode[]) Arrays.copyOf(toolTipModeArr, toolTipModeArr.length);
        }

        public final int getIntValue() {
            return this.intValue;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.stringValue;
        }
    }

    /* JADX INFO: compiled from: LoginButton.kt */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ToolTipMode.values().length];
            iArr[ToolTipMode.AUTOMATIC.ordinal()] = 1;
            iArr[ToolTipMode.DISPLAY_ALWAYS.ordinal()] = 2;
            iArr[ToolTipMode.NEVER_DISPLAY.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected LoginButton(Context context, AttributeSet attributeSet, int i10, int i11, String str, String str2) {
        super(context, attributeSet, i10, i11, str, str2);
        m.e(context, "context");
        m.e(str, "analyticsButtonCreatedEventName");
        m.e(str2, "analyticsButtonTappedEventName");
        this.properties = new LoginButtonProperties();
        this.toolTipStyle = ToolTipPopup.Style.BLUE;
        this.toolTipMode = ToolTipMode.Companion.getDEFAULT();
        this.toolTipDisplayTime = ToolTipPopup.DEFAULT_POPUP_DISPLAY_TIME;
        this.loginManagerLazy = j.a(LoginButton$loginManagerLazy$1.INSTANCE);
        this.customButtonTransparency = MAX_BUTTON_TRANSPARENCY;
        String string = UUID.randomUUID().toString();
        m.d(string, "randomUUID().toString()");
        this.loggerID = string;
    }

    private final void checkToolTipSettings() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            int i10 = WhenMappings.$EnumSwitchMapping$0[this.toolTipMode.ordinal()];
            if (i10 == 1) {
                Utility utility = Utility.INSTANCE;
                final String metadataApplicationId = Utility.getMetadataApplicationId(getContext());
                FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                FacebookSdk.getExecutor().execute(new Runnable() { // from class: com.facebook.login.widget.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        LoginButton.m159checkToolTipSettings$lambda3(metadataApplicationId, this);
                    }
                });
                return;
            }
            if (i10 != 2) {
                return;
            }
            String string = getResources().getString(R.string.com_facebook_tooltip_default);
            m.d(string, "resources.getString(R.string.com_facebook_tooltip_default)");
            displayToolTip(string);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: checkToolTipSettings$lambda-3, reason: not valid java name */
    public static final void m159checkToolTipSettings$lambda3(String str, final LoginButton loginButton) {
        m.e(str, "$appId");
        m.e(loginButton, "this$0");
        FetchedAppSettingsManager fetchedAppSettingsManager = FetchedAppSettingsManager.INSTANCE;
        final FetchedAppSettings fetchedAppSettingsQueryAppSettings = FetchedAppSettingsManager.queryAppSettings(str, false);
        loginButton.getActivity().runOnUiThread(new Runnable() { // from class: com.facebook.login.widget.b
            @Override // java.lang.Runnable
            public final void run() {
                LoginButton.m160checkToolTipSettings$lambda3$lambda2(this.f5460o, fetchedAppSettingsQueryAppSettings);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: checkToolTipSettings$lambda-3$lambda-2, reason: not valid java name */
    public static final void m160checkToolTipSettings$lambda3$lambda2(LoginButton loginButton, FetchedAppSettings fetchedAppSettings) {
        m.e(loginButton, "this$0");
        loginButton.showToolTipPerSettings(fetchedAppSettings);
    }

    private final void displayToolTip(String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            ToolTipPopup toolTipPopup = new ToolTipPopup(str, this);
            toolTipPopup.setStyle(this.toolTipStyle);
            toolTipPopup.setNuxDisplayTime(this.toolTipDisplayTime);
            toolTipPopup.show();
            this.toolTipPopup = toolTipPopup;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    private final int measureButtonWidth(String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return 0;
        }
        try {
            return getCompoundPaddingLeft() + getCompoundDrawablePadding() + measureTextWidth(str) + getCompoundPaddingRight();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onAttachedToWindow$lambda-0, reason: not valid java name */
    public static final void m161onAttachedToWindow$lambda0(CallbackManager.ActivityResultParameters activityResultParameters) {
    }

    private final void showToolTipPerSettings(FetchedAppSettings fetchedAppSettings) {
        if (CrashShieldHandler.isObjectCrashing(this) || fetchedAppSettings == null) {
            return;
        }
        try {
            if (fetchedAppSettings.getNuxEnabled() && getVisibility() == 0) {
                displayToolTip(fetchedAppSettings.getNuxContent());
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public final void clearPermissions() {
        this.properties.clearPermissions();
    }

    @Override // com.facebook.FacebookButtonBase
    protected void configureButton(Context context, AttributeSet attributeSet, int i10, int i11) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            m.e(context, "context");
            super.configureButton(context, attributeSet, i10, i11);
            setInternalOnClickListener(getNewLoginClickListener());
            parseLoginButtonAttributes(context, attributeSet, i10, i11);
            if (isInEditMode()) {
                setBackgroundColor(getResources().getColor(com.facebook.common.R.color.com_facebook_blue));
                setLoginText("Continue with Facebook");
            } else {
                this.accessTokenTracker = new AccessTokenTracker() { // from class: com.facebook.login.widget.LoginButton.configureButton.1
                    @Override // com.facebook.AccessTokenTracker
                    protected void onCurrentAccessTokenChanged(AccessToken accessToken, AccessToken accessToken2) {
                        LoginButton.this.setButtonText();
                        LoginButton.this.setButtonIcon();
                    }
                };
            }
            setButtonText();
            setButtonRadius();
            setButtonTransparency();
            setButtonIcon();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public final void dismissToolTip() {
        ToolTipPopup toolTipPopup = this.toolTipPopup;
        if (toolTipPopup != null) {
            toolTipPopup.dismiss();
        }
        this.toolTipPopup = null;
    }

    public final String getAuthType() {
        return this.properties.getAuthType();
    }

    public final CallbackManager getCallbackManager() {
        return this.callbackManager;
    }

    public final DefaultAudience getDefaultAudience() {
        return this.properties.getDefaultAudience();
    }

    @Override // com.facebook.FacebookButtonBase
    protected int getDefaultRequestCode() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return 0;
        }
        try {
            return CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return 0;
        }
    }

    @Override // com.facebook.FacebookButtonBase
    protected int getDefaultStyleResource() {
        return R.style.com_facebook_loginview_default_style;
    }

    public final String getLoggerID() {
        return this.loggerID;
    }

    public final LoginBehavior getLoginBehavior() {
        return this.properties.getLoginBehavior();
    }

    protected final int getLoginButtonContinueLabel() {
        return R.string.com_facebook_loginview_log_in_button_continue;
    }

    protected final int getLoginButtonWidth(int i10) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return 0;
        }
        try {
            Resources resources = getResources();
            String string = this.loginText;
            if (string == null) {
                string = resources.getString(R.string.com_facebook_loginview_log_in_button_continue);
                int iMeasureButtonWidth = measureButtonWidth(string);
                if (Button.resolveSize(iMeasureButtonWidth, i10) < iMeasureButtonWidth) {
                    string = resources.getString(R.string.com_facebook_loginview_log_in_button);
                }
            }
            return measureButtonWidth(string);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return 0;
        }
    }

    protected final h9.h<LoginManager> getLoginManagerLazy() {
        return this.loginManagerLazy;
    }

    public final LoginTargetApp getLoginTargetApp() {
        return this.properties.getLoginTargetApp();
    }

    public final String getLoginText() {
        return this.loginText;
    }

    public final String getLogoutText() {
        return this.logoutText;
    }

    public final String getMessengerPageId() {
        return this.properties.getMessengerPageId();
    }

    protected LoginClickListener getNewLoginClickListener() {
        return new LoginClickListener(this);
    }

    public final List<String> getPermissions() {
        return this.properties.getPermissions();
    }

    protected final LoginButtonProperties getProperties() {
        return this.properties;
    }

    public final boolean getResetMessengerState() {
        return this.properties.getResetMessengerState();
    }

    public final boolean getShouldSkipAccountDeduplication() {
        return this.properties.getShouldSkipAccountDeduplication();
    }

    public final long getToolTipDisplayTime() {
        return this.toolTipDisplayTime;
    }

    public final ToolTipMode getToolTipMode() {
        return this.toolTipMode;
    }

    public final ToolTipPopup.Style getToolTipStyle() {
        return this.toolTipStyle;
    }

    @Override // com.facebook.FacebookButtonBase, android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            super.onAttachedToWindow();
            if (getContext() instanceof androidx.activity.result.d) {
                Object context = getContext();
                if (context == null) {
                    throw new NullPointerException("null cannot be cast to non-null type androidx.activity.result.ActivityResultRegistryOwner");
                }
                this.androidXLoginCaller = ((androidx.activity.result.d) context).getActivityResultRegistry().j("facebook-login", this.loginManagerLazy.getValue().createLogInActivityResultContract(this.callbackManager, this.loggerID), new androidx.activity.result.b() { // from class: com.facebook.login.widget.a
                    @Override // androidx.activity.result.b
                    public final void a(Object obj) {
                        LoginButton.m161onAttachedToWindow$lambda0((CallbackManager.ActivityResultParameters) obj);
                    }
                });
            }
            AccessTokenTracker accessTokenTracker = this.accessTokenTracker;
            if (accessTokenTracker != null && accessTokenTracker.isTracking()) {
                accessTokenTracker.startTracking();
                setButtonText();
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            super.onDetachedFromWindow();
            androidx.activity.result.c<Collection<String>> cVar = this.androidXLoginCaller;
            if (cVar != null) {
                cVar.d();
            }
            AccessTokenTracker accessTokenTracker = this.accessTokenTracker;
            if (accessTokenTracker != null) {
                accessTokenTracker.stopTracking();
            }
            dismissToolTip();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    @Override // com.facebook.FacebookButtonBase, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            m.e(canvas, "canvas");
            super.onDraw(canvas);
            if (this.toolTipChecked || isInEditMode()) {
                return;
            }
            this.toolTipChecked = true;
            checkToolTipSettings();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            super.onLayout(z10, i10, i11, i12, i13);
            setButtonText();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i10, int i11) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            Paint.FontMetrics fontMetrics = getPaint().getFontMetrics();
            int compoundPaddingTop = getCompoundPaddingTop() + ((int) Math.ceil(Math.abs(fontMetrics.top) + Math.abs(fontMetrics.bottom))) + getCompoundPaddingBottom();
            Resources resources = getResources();
            int loginButtonWidth = getLoginButtonWidth(i10);
            String string = this.logoutText;
            if (string == null) {
                string = resources.getString(R.string.com_facebook_loginview_log_out_button);
                m.d(string, "resources.getString(R.string.com_facebook_loginview_log_out_button)");
            }
            setMeasuredDimension(Button.resolveSize(Math.max(loginButtonWidth, measureButtonWidth(string)), i10), compoundPaddingTop);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onVisibilityChanged(View view, int i10) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            m.e(view, "changedView");
            super.onVisibilityChanged(view, i10);
            if (i10 != 0) {
                dismissToolTip();
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    protected final void parseLoginButtonAttributes(Context context, AttributeSet attributeSet, int i10, int i11) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            m.e(context, "context");
            ToolTipMode.Companion companion = ToolTipMode.Companion;
            this.toolTipMode = companion.getDEFAULT();
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.com_facebook_login_view, i10, i11);
            m.d(typedArrayObtainStyledAttributes, "context\n            .theme\n            .obtainStyledAttributes(\n                attrs, R.styleable.com_facebook_login_view, defStyleAttr, defStyleRes)");
            try {
                this.confirmLogout = typedArrayObtainStyledAttributes.getBoolean(R.styleable.com_facebook_login_view_com_facebook_confirm_logout, true);
                setLoginText(typedArrayObtainStyledAttributes.getString(R.styleable.com_facebook_login_view_com_facebook_login_text));
                setLogoutText(typedArrayObtainStyledAttributes.getString(R.styleable.com_facebook_login_view_com_facebook_logout_text));
                ToolTipMode toolTipModeFromInt = companion.fromInt(typedArrayObtainStyledAttributes.getInt(R.styleable.com_facebook_login_view_com_facebook_tooltip_mode, companion.getDEFAULT().getIntValue()));
                if (toolTipModeFromInt == null) {
                    toolTipModeFromInt = companion.getDEFAULT();
                }
                this.toolTipMode = toolTipModeFromInt;
                int i12 = R.styleable.com_facebook_login_view_com_facebook_login_button_radius;
                if (typedArrayObtainStyledAttributes.hasValue(i12)) {
                    this.customButtonRadius = Float.valueOf(typedArrayObtainStyledAttributes.getDimension(i12, 0.0f));
                }
                int integer = typedArrayObtainStyledAttributes.getInteger(R.styleable.com_facebook_login_view_com_facebook_login_button_transparency, MAX_BUTTON_TRANSPARENCY);
                this.customButtonTransparency = integer;
                int iMax = Math.max(0, integer);
                this.customButtonTransparency = iMax;
                this.customButtonTransparency = Math.min(MAX_BUTTON_TRANSPARENCY, iMax);
            } finally {
                typedArrayObtainStyledAttributes.recycle();
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public final void registerCallback(CallbackManager callbackManager, FacebookCallback<LoginResult> facebookCallback) {
        m.e(callbackManager, "callbackManager");
        m.e(facebookCallback, "callback");
        this.loginManagerLazy.getValue().registerCallback(callbackManager, facebookCallback);
        CallbackManager callbackManager2 = this.callbackManager;
        if (callbackManager2 == null) {
            this.callbackManager = callbackManager;
        } else if (callbackManager2 != callbackManager) {
            Log.w(TAG, "You're registering a callback on the one Facebook login button with two different callback managers. It's almost wrong and may cause unexpected results. Only the first callback manager will be used for handling activity result with androidx.");
        }
    }

    public final void setAuthType(String str) {
        m.e(str, SDKConstants.PARAM_VALUE);
        this.properties.setAuthType(str);
    }

    protected final void setButtonIcon() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            setCompoundDrawablesWithIntrinsicBounds(g.a.b(getContext(), com.facebook.common.R.drawable.com_facebook_button_icon), (Drawable) null, (Drawable) null, (Drawable) null);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    @TargetApi(29)
    protected final void setButtonRadius() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            Float f10 = this.customButtonRadius;
            if (f10 == null) {
                return;
            }
            float fFloatValue = f10.floatValue();
            Drawable background = getBackground();
            if (Build.VERSION.SDK_INT >= 29 && (background instanceof StateListDrawable)) {
                int i10 = 0;
                int stateCount = ((StateListDrawable) background).getStateCount();
                if (stateCount > 0) {
                    while (true) {
                        int i11 = i10 + 1;
                        Drawable stateDrawable = ((StateListDrawable) background).getStateDrawable(i10);
                        GradientDrawable gradientDrawable = stateDrawable instanceof GradientDrawable ? (GradientDrawable) stateDrawable : null;
                        if (gradientDrawable != null) {
                            gradientDrawable.setCornerRadius(fFloatValue);
                        }
                        if (i11 >= stateCount) {
                            break;
                        } else {
                            i10 = i11;
                        }
                    }
                }
            }
            if (background instanceof GradientDrawable) {
                ((GradientDrawable) background).setCornerRadius(fFloatValue);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    protected final void setButtonText() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            Resources resources = getResources();
            if (!isInEditMode() && AccessToken.Companion.isCurrentAccessTokenActive()) {
                String string = this.logoutText;
                if (string == null) {
                    string = resources.getString(R.string.com_facebook_loginview_log_out_button);
                }
                setText(string);
                return;
            }
            String str = this.loginText;
            if (str != null) {
                setText(str);
                return;
            }
            String string2 = resources.getString(getLoginButtonContinueLabel());
            m.d(string2, "resources.getString(loginButtonContinueLabel)");
            int width = getWidth();
            if (width != 0 && measureButtonWidth(string2) > width) {
                string2 = resources.getString(R.string.com_facebook_loginview_log_in_button);
                m.d(string2, "resources.getString(R.string.com_facebook_loginview_log_in_button)");
            }
            setText(string2);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    protected final void setButtonTransparency() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            getBackground().setAlpha(this.customButtonTransparency);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public final void setDefaultAudience(DefaultAudience defaultAudience) {
        m.e(defaultAudience, SDKConstants.PARAM_VALUE);
        this.properties.setDefaultAudience(defaultAudience);
    }

    public final void setLoginBehavior(LoginBehavior loginBehavior) {
        m.e(loginBehavior, SDKConstants.PARAM_VALUE);
        this.properties.setLoginBehavior(loginBehavior);
    }

    protected final void setLoginManagerLazy(h9.h<? extends LoginManager> hVar) {
        m.e(hVar, "<set-?>");
        this.loginManagerLazy = hVar;
    }

    public final void setLoginTargetApp(LoginTargetApp loginTargetApp) {
        m.e(loginTargetApp, SDKConstants.PARAM_VALUE);
        this.properties.setLoginTargetApp(loginTargetApp);
    }

    public final void setLoginText(String str) {
        this.loginText = str;
        setButtonText();
    }

    public final void setLogoutText(String str) {
        this.logoutText = str;
        setButtonText();
    }

    public final void setMessengerPageId(String str) {
        this.properties.setMessengerPageId(str);
    }

    public final void setPermissions(String... strArr) {
        m.e(strArr, "permissions");
        this.properties.setPermissions(l.h(Arrays.copyOf(strArr, strArr.length)));
    }

    public final void setPublishPermissions(List<String> list) {
        m.e(list, "permissions");
        this.properties.setPermissions(list);
    }

    public final void setReadPermissions(List<String> list) {
        m.e(list, "permissions");
        this.properties.setPermissions(list);
    }

    public final void setResetMessengerState(boolean z10) {
        this.properties.setResetMessengerState(z10);
    }

    public final void setToolTipDisplayTime(long j10) {
        this.toolTipDisplayTime = j10;
    }

    public final void setToolTipMode(ToolTipMode toolTipMode) {
        m.e(toolTipMode, "<set-?>");
        this.toolTipMode = toolTipMode;
    }

    public final void setToolTipStyle(ToolTipPopup.Style style) {
        m.e(style, "<set-?>");
        this.toolTipStyle = style;
    }

    public final void unregisterCallback(CallbackManager callbackManager) {
        m.e(callbackManager, "callbackManager");
        this.loginManagerLazy.getValue().unregisterCallback(callbackManager);
    }

    public final void setPermissions(List<String> list) {
        m.e(list, SDKConstants.PARAM_VALUE);
        this.properties.setPermissions(list);
    }

    public final void setPublishPermissions(String... strArr) {
        m.e(strArr, "permissions");
        this.properties.setPermissions(l.h(Arrays.copyOf(strArr, strArr.length)));
    }

    public final void setReadPermissions(String... strArr) {
        m.e(strArr, "permissions");
        this.properties.setPermissions(l.h(Arrays.copyOf(strArr, strArr.length)));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LoginButton(Context context) {
        this(context, null, 0, 0, AnalyticsEvents.EVENT_LOGIN_BUTTON_CREATE, AnalyticsEvents.EVENT_LOGIN_BUTTON_DID_TAP);
        m.e(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LoginButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, AnalyticsEvents.EVENT_LOGIN_BUTTON_CREATE, AnalyticsEvents.EVENT_LOGIN_BUTTON_DID_TAP);
        m.e(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LoginButton(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0, AnalyticsEvents.EVENT_LOGIN_BUTTON_CREATE, AnalyticsEvents.EVENT_LOGIN_BUTTON_DID_TAP);
        m.e(context, "context");
    }
}
