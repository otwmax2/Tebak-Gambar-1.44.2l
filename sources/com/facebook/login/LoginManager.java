package com.facebook.login;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import android.util.Pair;
import androidx.fragment.app.Fragment;
import com.facebook.AccessToken;
import com.facebook.AuthenticationToken;
import com.facebook.CallbackManager;
import com.facebook.FacebookActivity;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.GraphResponse;
import com.facebook.LoginStatusCallback;
import com.facebook.Profile;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.CustomTabUtils;
import com.facebook.internal.FragmentWrapper;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.PlatformServiceClient;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.login.LoginClient;
import com.facebook.login.LoginManager;
import i9.i0;
import i9.t;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: compiled from: LoginManager.kt */
/* JADX INFO: loaded from: classes.dex */
public class LoginManager {
    public static final Companion Companion;
    private static final String EXPRESS_LOGIN_ALLOWED = "express_login_allowed";
    private static final String MANAGE_PERMISSION_PREFIX = "manage";
    private static final Set<String> OTHER_PUBLISH_PERMISSIONS;
    private static final String PREFERENCE_LOGIN_MANAGER = "com.facebook.loginManager";
    private static final String PUBLISH_PERMISSION_PREFIX = "publish";
    private static final String TAG;
    private static volatile LoginManager instance;
    private boolean isFamilyLogin;
    private String messengerPageId;
    private boolean resetMessengerState;
    private final SharedPreferences sharedPreferences;
    private boolean shouldSkipAccountDeduplication;
    private LoginBehavior loginBehavior = LoginBehavior.NATIVE_WITH_FALLBACK;
    private DefaultAudience defaultAudience = DefaultAudience.FRIENDS;
    private String authType = ServerProtocol.DIALOG_REREQUEST_AUTH_TYPE;
    private LoginTargetApp loginTargetApp = LoginTargetApp.FACEBOOK;

    /* JADX INFO: compiled from: LoginManager.kt */
    private static final class ActivityStartActivityDelegate implements StartActivityDelegate {
        private final Activity activityContext;

        public ActivityStartActivityDelegate(Activity activity) {
            t9.m.e(activity, "activity");
            this.activityContext = activity;
        }

        @Override // com.facebook.login.StartActivityDelegate
        public Activity getActivityContext() {
            return this.activityContext;
        }

        @Override // com.facebook.login.StartActivityDelegate
        public void startActivityForResult(Intent intent, int i10) {
            t9.m.e(intent, SDKConstants.PARAM_INTENT);
            getActivityContext().startActivityForResult(intent, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: LoginManager.kt */
    static final class AndroidxActivityResultRegistryOwnerStartActivityDelegate implements StartActivityDelegate {
        private final androidx.activity.result.d activityResultRegistryOwner;
        private final CallbackManager callbackManager;

        public AndroidxActivityResultRegistryOwnerStartActivityDelegate(androidx.activity.result.d dVar, CallbackManager callbackManager) {
            t9.m.e(dVar, "activityResultRegistryOwner");
            t9.m.e(callbackManager, "callbackManager");
            this.activityResultRegistryOwner = dVar;
            this.callbackManager = callbackManager;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: startActivityForResult$lambda-0, reason: not valid java name */
        public static final void m156startActivityForResult$lambda0(AndroidxActivityResultRegistryOwnerStartActivityDelegate androidxActivityResultRegistryOwnerStartActivityDelegate, LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder loginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder, Pair pair) {
            t9.m.e(androidxActivityResultRegistryOwnerStartActivityDelegate, "this$0");
            t9.m.e(loginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder, "$launcherHolder");
            CallbackManager callbackManager = androidxActivityResultRegistryOwnerStartActivityDelegate.callbackManager;
            int requestCode = CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode();
            Object obj = pair.first;
            t9.m.d(obj, "result.first");
            callbackManager.onActivityResult(requestCode, ((Number) obj).intValue(), (Intent) pair.second);
            androidx.activity.result.c<Intent> launcher = loginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder.getLauncher();
            if (launcher != null) {
                launcher.d();
            }
            loginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder.setLauncher(null);
        }

        @Override // com.facebook.login.StartActivityDelegate
        public Activity getActivityContext() {
            Object obj = this.activityResultRegistryOwner;
            if (obj instanceof Activity) {
                return (Activity) obj;
            }
            return null;
        }

        @Override // com.facebook.login.StartActivityDelegate
        public void startActivityForResult(Intent intent, int i10) {
            t9.m.e(intent, SDKConstants.PARAM_INTENT);
            final LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder loginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder = new LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder();
            loginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder.setLauncher(this.activityResultRegistryOwner.getActivityResultRegistry().j("facebook-login", new e.a<Intent, Pair<Integer, Intent>>() { // from class: com.facebook.login.LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$1
                @Override // e.a
                public Intent createIntent(Context context, Intent intent2) {
                    t9.m.e(context, "context");
                    t9.m.e(intent2, "input");
                    return intent2;
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // e.a
                public Pair<Integer, Intent> parseResult(int i11, Intent intent2) {
                    Pair<Integer, Intent> pairCreate = Pair.create(Integer.valueOf(i11), intent2);
                    t9.m.d(pairCreate, "create(resultCode, intent)");
                    return pairCreate;
                }
            }, new androidx.activity.result.b() { // from class: com.facebook.login.p
                @Override // androidx.activity.result.b
                public final void a(Object obj) {
                    LoginManager.AndroidxActivityResultRegistryOwnerStartActivityDelegate.m156startActivityForResult$lambda0(this.f5454a, loginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder, (Pair) obj);
                }
            }));
            androidx.activity.result.c<Intent> launcher = loginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$LauncherHolder.getLauncher();
            if (launcher == null) {
                return;
            }
            launcher.b(intent);
        }
    }

    /* JADX INFO: compiled from: LoginManager.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Set<String> getOtherPublishPermissions() {
            return i0.f("ads_management", "create_event", "rsvp_event");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void handleLoginStatusError(String str, String str2, String str3, LoginLogger loginLogger, LoginStatusCallback loginStatusCallback) {
            FacebookException facebookException = new FacebookException(str + ": " + ((Object) str2));
            loginLogger.logLoginStatusError(str3, facebookException);
            loginStatusCallback.onError(facebookException);
        }

        public final LoginResult computeLoginResult(LoginClient.Request request, AccessToken accessToken, AuthenticationToken authenticationToken) {
            t9.m.e(request, "request");
            t9.m.e(accessToken, "newToken");
            Set<String> permissions = request.getPermissions();
            Set setR = t.R(t.t(accessToken.getPermissions()));
            if (request.isRerequest()) {
                setR.retainAll(permissions);
            }
            Set setR2 = t.R(t.t(permissions));
            setR2.removeAll(setR);
            return new LoginResult(accessToken, authenticationToken, setR, setR2);
        }

        public final Map<String, String> getExtraDataFromIntent(Intent intent) {
            if (intent == null) {
                return null;
            }
            intent.setExtrasClassLoader(LoginClient.Result.class.getClassLoader());
            LoginClient.Result result = (LoginClient.Result) intent.getParcelableExtra(LoginFragment.RESULT_KEY);
            if (result == null) {
                return null;
            }
            return result.extraData;
        }

        public LoginManager getInstance() {
            if (LoginManager.instance == null) {
                synchronized (this) {
                    Companion companion = LoginManager.Companion;
                    LoginManager.instance = new LoginManager();
                    h9.t tVar = h9.t.f30301a;
                }
            }
            LoginManager loginManager = LoginManager.instance;
            if (loginManager != null) {
                return loginManager;
            }
            t9.m.p("instance");
            throw null;
        }

        public final boolean isPublishPermission(String str) {
            if (str != null) {
                return ba.p.u(str, LoginManager.PUBLISH_PERMISSION_PREFIX, false, 2, null) || ba.p.u(str, LoginManager.MANAGE_PERMISSION_PREFIX, false, 2, null) || LoginManager.OTHER_PUBLISH_PERMISSIONS.contains(str);
            }
            return false;
        }
    }

    /* JADX INFO: compiled from: LoginManager.kt */
    public final class FacebookLoginActivityResultContract extends e.a<Collection<? extends String>, CallbackManager.ActivityResultParameters> {
        private CallbackManager callbackManager;
        private String loggerID;

        public FacebookLoginActivityResultContract(LoginManager loginManager, CallbackManager callbackManager, String str) {
            t9.m.e(loginManager, "this$0");
            LoginManager.this = loginManager;
            this.callbackManager = callbackManager;
            this.loggerID = str;
        }

        @Override // e.a
        public /* bridge */ /* synthetic */ Intent createIntent(Context context, Collection<? extends String> collection) {
            return createIntent2(context, (Collection<String>) collection);
        }

        public final CallbackManager getCallbackManager() {
            return this.callbackManager;
        }

        public final String getLoggerID() {
            return this.loggerID;
        }

        public final void setCallbackManager(CallbackManager callbackManager) {
            this.callbackManager = callbackManager;
        }

        public final void setLoggerID(String str) {
            this.loggerID = str;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: createIntent, reason: avoid collision after fix types in other method */
        public Intent createIntent2(Context context, Collection<String> collection) {
            t9.m.e(context, "context");
            t9.m.e(collection, "permissions");
            LoginClient.Request requestCreateLoginRequestWithConfig = LoginManager.this.createLoginRequestWithConfig(new LoginConfiguration(collection, null, 2, 0 == true ? 1 : 0));
            String str = this.loggerID;
            if (str != null) {
                requestCreateLoginRequestWithConfig.setAuthId(str);
            }
            LoginManager.this.logStartLogin(context, requestCreateLoginRequestWithConfig);
            Intent facebookActivityIntent = LoginManager.this.getFacebookActivityIntent(requestCreateLoginRequestWithConfig);
            if (LoginManager.this.resolveIntent(facebookActivityIntent)) {
                return facebookActivityIntent;
            }
            FacebookException facebookException = new FacebookException("Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest.");
            LoginManager.this.logCompleteLogin(context, LoginClient.Result.Code.ERROR, null, facebookException, false, requestCreateLoginRequestWithConfig);
            throw facebookException;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // e.a
        public CallbackManager.ActivityResultParameters parseResult(int i10, Intent intent) {
            LoginManager.onActivityResult$default(LoginManager.this, i10, intent, null, 4, null);
            int requestCode = CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode();
            CallbackManager callbackManager = this.callbackManager;
            if (callbackManager != null) {
                callbackManager.onActivityResult(requestCode, i10, intent);
            }
            return new CallbackManager.ActivityResultParameters(requestCode, i10, intent);
        }

        public /* synthetic */ FacebookLoginActivityResultContract(CallbackManager callbackManager, String str, int i10, t9.g gVar) {
            this(LoginManager.this, (i10 & 1) != 0 ? null : callbackManager, (i10 & 2) != 0 ? null : str);
        }
    }

    /* JADX INFO: compiled from: LoginManager.kt */
    private static final class FragmentStartActivityDelegate implements StartActivityDelegate {
        private final Activity activityContext;
        private final FragmentWrapper fragment;

        public FragmentStartActivityDelegate(FragmentWrapper fragmentWrapper) {
            t9.m.e(fragmentWrapper, "fragment");
            this.fragment = fragmentWrapper;
            this.activityContext = fragmentWrapper.getActivity();
        }

        @Override // com.facebook.login.StartActivityDelegate
        public Activity getActivityContext() {
            return this.activityContext;
        }

        @Override // com.facebook.login.StartActivityDelegate
        public void startActivityForResult(Intent intent, int i10) {
            t9.m.e(intent, SDKConstants.PARAM_INTENT);
            this.fragment.startActivityForResult(intent, i10);
        }
    }

    /* JADX INFO: compiled from: LoginManager.kt */
    private static final class LoginLoggerHolder {
        public static final LoginLoggerHolder INSTANCE = new LoginLoggerHolder();
        private static LoginLogger logger;

        private LoginLoggerHolder() {
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0011 A[Catch: all -> 0x000a, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0003, B:12:0x0011, B:14:0x0015, B:15:0x0022), top: B:20:0x0003 }] */
        /* JADX WARN: Removed duplicated region for block: B:9:0x000e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final synchronized com.facebook.login.LoginLogger getLogger(android.content.Context r3) {
            /*
                r2 = this;
                monitor-enter(r2)
                if (r3 != 0) goto Lc
                com.facebook.FacebookSdk r3 = com.facebook.FacebookSdk.INSTANCE     // Catch: java.lang.Throwable -> La
                android.content.Context r3 = com.facebook.FacebookSdk.getApplicationContext()     // Catch: java.lang.Throwable -> La
                goto Lc
            La:
                r3 = move-exception
                goto L26
            Lc:
                if (r3 != 0) goto L11
                r3 = 0
                monitor-exit(r2)
                return r3
            L11:
                com.facebook.login.LoginLogger r0 = com.facebook.login.LoginManager.LoginLoggerHolder.logger     // Catch: java.lang.Throwable -> La
                if (r0 != 0) goto L22
                com.facebook.login.LoginLogger r0 = new com.facebook.login.LoginLogger     // Catch: java.lang.Throwable -> La
                com.facebook.FacebookSdk r1 = com.facebook.FacebookSdk.INSTANCE     // Catch: java.lang.Throwable -> La
                java.lang.String r1 = com.facebook.FacebookSdk.getApplicationId()     // Catch: java.lang.Throwable -> La
                r0.<init>(r3, r1)     // Catch: java.lang.Throwable -> La
                com.facebook.login.LoginManager.LoginLoggerHolder.logger = r0     // Catch: java.lang.Throwable -> La
            L22:
                com.facebook.login.LoginLogger r3 = com.facebook.login.LoginManager.LoginLoggerHolder.logger     // Catch: java.lang.Throwable -> La
                monitor-exit(r2)
                return r3
            L26:
                monitor-exit(r2)
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.LoginManager.LoginLoggerHolder.getLogger(android.content.Context):com.facebook.login.LoginLogger");
        }
    }

    static {
        Companion companion = new Companion(null);
        Companion = companion;
        OTHER_PUBLISH_PERMISSIONS = companion.getOtherPublishPermissions();
        String string = LoginManager.class.toString();
        t9.m.d(string, "LoginManager::class.java.toString()");
        TAG = string;
    }

    public LoginManager() {
        Validate validate = Validate.INSTANCE;
        Validate.sdkInitialized();
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        SharedPreferences sharedPreferences = FacebookSdk.getApplicationContext().getSharedPreferences(PREFERENCE_LOGIN_MANAGER, 0);
        t9.m.d(sharedPreferences, "getApplicationContext().getSharedPreferences(PREFERENCE_LOGIN_MANAGER, Context.MODE_PRIVATE)");
        this.sharedPreferences = sharedPreferences;
        if (FacebookSdk.hasCustomTabsPrefetching) {
            CustomTabUtils customTabUtils = CustomTabUtils.INSTANCE;
            if (CustomTabUtils.getChromePackage() != null) {
                androidx.browser.customtabs.c.a(FacebookSdk.getApplicationContext(), "com.android.chrome", new CustomTabPrefetchHelper());
                androidx.browser.customtabs.c.b(FacebookSdk.getApplicationContext(), FacebookSdk.getApplicationContext().getPackageName());
            }
        }
    }

    public static final LoginResult computeLoginResult(LoginClient.Request request, AccessToken accessToken, AuthenticationToken authenticationToken) {
        return Companion.computeLoginResult(request, accessToken, authenticationToken);
    }

    public static /* synthetic */ FacebookLoginActivityResultContract createLogInActivityResultContract$default(LoginManager loginManager, CallbackManager callbackManager, String str, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createLogInActivityResultContract");
        }
        if ((i10 & 1) != 0) {
            callbackManager = null;
        }
        if ((i10 & 2) != 0) {
            str = null;
        }
        return loginManager.createLogInActivityResultContract(callbackManager, str);
    }

    private final LoginClient.Request createLoginRequestFromResponse(GraphResponse graphResponse) {
        Set<String> permissions;
        AccessToken accessToken = graphResponse.getRequest().getAccessToken();
        List listT = null;
        if (accessToken != null && (permissions = accessToken.getPermissions()) != null) {
            listT = t.t(permissions);
        }
        return createLoginRequest(listT);
    }

    private final void finishLogin(AccessToken accessToken, AuthenticationToken authenticationToken, LoginClient.Request request, FacebookException facebookException, boolean z10, FacebookCallback<LoginResult> facebookCallback) {
        if (accessToken != null) {
            AccessToken.Companion.setCurrentAccessToken(accessToken);
            Profile.Companion.fetchProfileForCurrentAccessToken();
        }
        if (authenticationToken != null) {
            AuthenticationToken.Companion.setCurrentAuthenticationToken(authenticationToken);
        }
        if (facebookCallback != null) {
            LoginResult loginResultComputeLoginResult = (accessToken == null || request == null) ? null : Companion.computeLoginResult(request, accessToken, authenticationToken);
            if (z10 || (loginResultComputeLoginResult != null && loginResultComputeLoginResult.getRecentlyGrantedPermissions().isEmpty())) {
                facebookCallback.onCancel();
                return;
            }
            if (facebookException != null) {
                facebookCallback.onError(facebookException);
            } else {
                if (accessToken == null || loginResultComputeLoginResult == null) {
                    return;
                }
                setExpressLoginStatus(true);
                facebookCallback.onSuccess(loginResultComputeLoginResult);
            }
        }
    }

    public static final Map<String, String> getExtraDataFromIntent(Intent intent) {
        return Companion.getExtraDataFromIntent(intent);
    }

    public static LoginManager getInstance() {
        return Companion.getInstance();
    }

    private final boolean isExpressLoginAllowed() {
        return this.sharedPreferences.getBoolean(EXPRESS_LOGIN_ALLOWED, true);
    }

    public static final boolean isPublishPermission(String str) {
        return Companion.isPublishPermission(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void logCompleteLogin(Context context, LoginClient.Result.Code code, Map<String, String> map, Exception exc, boolean z10, LoginClient.Request request) {
        LoginLogger logger = LoginLoggerHolder.INSTANCE.getLogger(context);
        if (logger == null) {
            return;
        }
        if (request == null) {
            LoginLogger.logUnexpectedError$default(logger, LoginLogger.EVENT_NAME_LOGIN_COMPLETE, "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.", null, 4, null);
            return;
        }
        HashMap map2 = new HashMap();
        map2.put(LoginLogger.EVENT_EXTRAS_TRY_LOGIN_ACTIVITY, z10 ? AppEventsConstants.EVENT_PARAM_VALUE_YES : AppEventsConstants.EVENT_PARAM_VALUE_NO);
        logger.logCompleteLogin(request.getAuthId(), map2, code, map, exc, request.isFamilyLogin() ? LoginLogger.EVENT_NAME_FOA_LOGIN_COMPLETE : LoginLogger.EVENT_NAME_LOGIN_COMPLETE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void logStartLogin(Context context, LoginClient.Request request) {
        LoginLogger logger = LoginLoggerHolder.INSTANCE.getLogger(context);
        if (logger == null || request == null) {
            return;
        }
        logger.logStartLogin(request, request.isFamilyLogin() ? LoginLogger.EVENT_NAME_FOA_LOGIN_START : LoginLogger.EVENT_NAME_LOGIN_START);
    }

    private final void loginWithConfiguration(FragmentWrapper fragmentWrapper, LoginConfiguration loginConfiguration) {
        logIn(fragmentWrapper, loginConfiguration);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ boolean onActivityResult$default(LoginManager loginManager, int i10, Intent intent, FacebookCallback facebookCallback, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onActivityResult");
        }
        if ((i11 & 4) != 0) {
            facebookCallback = null;
        }
        return loginManager.onActivityResult(i10, intent, facebookCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: registerCallback$lambda-0, reason: not valid java name */
    public static final boolean m153registerCallback$lambda0(LoginManager loginManager, FacebookCallback facebookCallback, int i10, Intent intent) {
        t9.m.e(loginManager, "this$0");
        return loginManager.onActivityResult(i10, intent, facebookCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean resolveIntent(Intent intent) {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        return FacebookSdk.getApplicationContext().getPackageManager().resolveActivity(intent, 0) != null;
    }

    private final void retrieveLoginStatusImpl(Context context, final LoginStatusCallback loginStatusCallback, long j10) {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        final String applicationId = FacebookSdk.getApplicationId();
        final String string = UUID.randomUUID().toString();
        t9.m.d(string, "randomUUID().toString()");
        final LoginLogger loginLogger = new LoginLogger(context == null ? FacebookSdk.getApplicationContext() : context, applicationId);
        if (!isExpressLoginAllowed()) {
            loginLogger.logLoginStatusFailure(string);
            loginStatusCallback.onFailure();
            return;
        }
        LoginStatusClient loginStatusClientNewInstance$facebook_common_release = LoginStatusClient.Companion.newInstance$facebook_common_release(context, applicationId, string, FacebookSdk.getGraphApiVersion(), j10, null);
        loginStatusClientNewInstance$facebook_common_release.setCompletedListener(new PlatformServiceClient.CompletedListener() { // from class: com.facebook.login.o
            @Override // com.facebook.internal.PlatformServiceClient.CompletedListener
            public final void completed(Bundle bundle) {
                LoginManager.m154retrieveLoginStatusImpl$lambda2(string, loginLogger, loginStatusCallback, applicationId, bundle);
            }
        });
        loginLogger.logLoginStatusStart(string);
        if (loginStatusClientNewInstance$facebook_common_release.start()) {
            return;
        }
        loginLogger.logLoginStatusFailure(string);
        loginStatusCallback.onFailure();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: retrieveLoginStatusImpl$lambda-2, reason: not valid java name */
    public static final void m154retrieveLoginStatusImpl$lambda2(String str, LoginLogger loginLogger, LoginStatusCallback loginStatusCallback, String str2, Bundle bundle) {
        t9.m.e(str, "$loggerRef");
        t9.m.e(loginLogger, "$logger");
        t9.m.e(loginStatusCallback, "$responseCallback");
        t9.m.e(str2, "$applicationId");
        if (bundle == null) {
            loginLogger.logLoginStatusFailure(str);
            loginStatusCallback.onFailure();
            return;
        }
        String string = bundle.getString(NativeProtocol.STATUS_ERROR_TYPE);
        String string2 = bundle.getString(NativeProtocol.STATUS_ERROR_DESCRIPTION);
        if (string != null) {
            Companion.handleLoginStatusError(string, string2, str, loginLogger, loginStatusCallback);
            return;
        }
        String string3 = bundle.getString(NativeProtocol.EXTRA_ACCESS_TOKEN);
        Utility utility = Utility.INSTANCE;
        Date bundleLongAsDate = Utility.getBundleLongAsDate(bundle, NativeProtocol.EXTRA_EXPIRES_SECONDS_SINCE_EPOCH, new Date(0L));
        ArrayList<String> stringArrayList = bundle.getStringArrayList(NativeProtocol.EXTRA_PERMISSIONS);
        String string4 = bundle.getString(NativeProtocol.RESULT_ARGS_SIGNED_REQUEST);
        String string5 = bundle.getString("graph_domain");
        Date bundleLongAsDate2 = Utility.getBundleLongAsDate(bundle, NativeProtocol.EXTRA_DATA_ACCESS_EXPIRATION_TIME, new Date(0L));
        String userIDFromSignedRequest = string4 == null || string4.length() == 0 ? null : LoginMethodHandler.Companion.getUserIDFromSignedRequest(string4);
        if (!(string3 == null || string3.length() == 0)) {
            if (!(stringArrayList == null || stringArrayList.isEmpty())) {
                if (!(userIDFromSignedRequest == null || userIDFromSignedRequest.length() == 0)) {
                    AccessToken accessToken = new AccessToken(string3, str2, userIDFromSignedRequest, stringArrayList, null, null, null, bundleLongAsDate, null, bundleLongAsDate2, string5);
                    AccessToken.Companion.setCurrentAccessToken(accessToken);
                    Profile.Companion.fetchProfileForCurrentAccessToken();
                    loginLogger.logLoginStatusSuccess(str);
                    loginStatusCallback.onCompleted(accessToken);
                    return;
                }
            }
        }
        loginLogger.logLoginStatusFailure(str);
        loginStatusCallback.onFailure();
    }

    private final void setExpressLoginStatus(boolean z10) {
        SharedPreferences.Editor editorEdit = this.sharedPreferences.edit();
        editorEdit.putBoolean(EXPRESS_LOGIN_ALLOWED, z10);
        editorEdit.apply();
    }

    private final void startLogin(StartActivityDelegate startActivityDelegate, LoginClient.Request request) throws FacebookException {
        logStartLogin(startActivityDelegate.getActivityContext(), request);
        CallbackManagerImpl.Companion.registerStaticCallback(CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode(), new CallbackManagerImpl.Callback() { // from class: com.facebook.login.m
            @Override // com.facebook.internal.CallbackManagerImpl.Callback
            public final boolean onActivityResult(int i10, Intent intent) {
                return LoginManager.m155startLogin$lambda1(this.f5447a, i10, intent);
            }
        });
        if (tryFacebookActivity(startActivityDelegate, request)) {
            return;
        }
        FacebookException facebookException = new FacebookException("Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest.");
        logCompleteLogin(startActivityDelegate.getActivityContext(), LoginClient.Result.Code.ERROR, null, facebookException, false, request);
        throw facebookException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: startLogin$lambda-1, reason: not valid java name */
    public static final boolean m155startLogin$lambda1(LoginManager loginManager, int i10, Intent intent) {
        t9.m.e(loginManager, "this$0");
        return onActivityResult$default(loginManager, i10, intent, null, 4, null);
    }

    private final boolean tryFacebookActivity(StartActivityDelegate startActivityDelegate, LoginClient.Request request) {
        Intent facebookActivityIntent = getFacebookActivityIntent(request);
        if (!resolveIntent(facebookActivityIntent)) {
            return false;
        }
        try {
            startActivityDelegate.startActivityForResult(facebookActivityIntent, LoginClient.Companion.getLoginRequestCode());
            return true;
        } catch (ActivityNotFoundException unused) {
            return false;
        }
    }

    private final void validatePublishPermissions(Collection<String> collection) {
        if (collection == null) {
            return;
        }
        for (String str : collection) {
            if (!Companion.isPublishPermission(str)) {
                throw new FacebookException("Cannot pass a read permission (" + str + ") to a request for publish authorization");
            }
        }
    }

    private final void validateReadPermissions(Collection<String> collection) {
        if (collection == null) {
            return;
        }
        for (String str : collection) {
            if (Companion.isPublishPermission(str)) {
                throw new FacebookException("Cannot pass a publish or manage permission (" + str + ") to a request for read authorization");
            }
        }
    }

    public final FacebookLoginActivityResultContract createLogInActivityResultContract() {
        return createLogInActivityResultContract$default(this, null, null, 3, null);
    }

    public final FacebookLoginActivityResultContract createLogInActivityResultContract(CallbackManager callbackManager) {
        return createLogInActivityResultContract$default(this, callbackManager, null, 2, null);
    }

    public final FacebookLoginActivityResultContract createLogInActivityResultContract(CallbackManager callbackManager, String str) {
        return new FacebookLoginActivityResultContract(this, callbackManager, str);
    }

    protected LoginClient.Request createLoginRequest(Collection<String> collection) {
        LoginBehavior loginBehavior = this.loginBehavior;
        Set setS = collection == null ? null : t.S(collection);
        DefaultAudience defaultAudience = this.defaultAudience;
        String str = this.authType;
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        String applicationId = FacebookSdk.getApplicationId();
        String string = UUID.randomUUID().toString();
        t9.m.d(string, "randomUUID().toString()");
        LoginClient.Request request = new LoginClient.Request(loginBehavior, setS, defaultAudience, str, applicationId, string, this.loginTargetApp, null, null, null, null, 1920, null);
        request.setRerequest(AccessToken.Companion.isCurrentAccessTokenActive());
        request.setMessengerPageId(this.messengerPageId);
        request.setResetMessengerState(this.resetMessengerState);
        request.setFamilyLogin(this.isFamilyLogin);
        request.setShouldSkipAccountDeduplication(this.shouldSkipAccountDeduplication);
        return request;
    }

    protected LoginClient.Request createLoginRequestWithConfig(LoginConfiguration loginConfiguration) {
        String codeVerifier;
        t9.m.e(loginConfiguration, "loginConfig");
        CodeChallengeMethod codeChallengeMethod = CodeChallengeMethod.S256;
        try {
            PKCEUtil pKCEUtil = PKCEUtil.INSTANCE;
            codeVerifier = PKCEUtil.generateCodeChallenge(loginConfiguration.getCodeVerifier(), codeChallengeMethod);
        } catch (FacebookException unused) {
            codeChallengeMethod = CodeChallengeMethod.PLAIN;
            codeVerifier = loginConfiguration.getCodeVerifier();
        }
        String str = codeVerifier;
        LoginBehavior loginBehavior = this.loginBehavior;
        Set setS = t.S(loginConfiguration.getPermissions());
        DefaultAudience defaultAudience = this.defaultAudience;
        String str2 = this.authType;
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        String applicationId = FacebookSdk.getApplicationId();
        String string = UUID.randomUUID().toString();
        t9.m.d(string, "randomUUID().toString()");
        LoginClient.Request request = new LoginClient.Request(loginBehavior, setS, defaultAudience, str2, applicationId, string, this.loginTargetApp, loginConfiguration.getNonce(), loginConfiguration.getCodeVerifier(), str, codeChallengeMethod);
        request.setRerequest(AccessToken.Companion.isCurrentAccessTokenActive());
        request.setMessengerPageId(this.messengerPageId);
        request.setResetMessengerState(this.resetMessengerState);
        request.setFamilyLogin(this.isFamilyLogin);
        request.setShouldSkipAccountDeduplication(this.shouldSkipAccountDeduplication);
        return request;
    }

    protected LoginClient.Request createReauthorizeRequest() {
        LoginBehavior loginBehavior = LoginBehavior.DIALOG_ONLY;
        HashSet hashSet = new HashSet();
        DefaultAudience defaultAudience = this.defaultAudience;
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        String applicationId = FacebookSdk.getApplicationId();
        String string = UUID.randomUUID().toString();
        t9.m.d(string, "randomUUID().toString()");
        LoginClient.Request request = new LoginClient.Request(loginBehavior, hashSet, defaultAudience, "reauthorize", applicationId, string, this.loginTargetApp, null, null, null, null, 1920, null);
        request.setFamilyLogin(this.isFamilyLogin);
        request.setShouldSkipAccountDeduplication(this.shouldSkipAccountDeduplication);
        return request;
    }

    public final String getAuthType() {
        return this.authType;
    }

    public final DefaultAudience getDefaultAudience() {
        return this.defaultAudience;
    }

    protected Intent getFacebookActivityIntent(LoginClient.Request request) {
        t9.m.e(request, "request");
        Intent intent = new Intent();
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        intent.setClass(FacebookSdk.getApplicationContext(), FacebookActivity.class);
        intent.setAction(request.getLoginBehavior().toString());
        Bundle bundle = new Bundle();
        bundle.putParcelable("request", request);
        intent.putExtra(LoginFragment.REQUEST_KEY, bundle);
        return intent;
    }

    public final LoginBehavior getLoginBehavior() {
        return this.loginBehavior;
    }

    public final LoginTargetApp getLoginTargetApp() {
        return this.loginTargetApp;
    }

    public final boolean getShouldSkipAccountDeduplication() {
        return this.shouldSkipAccountDeduplication;
    }

    public final boolean isFamilyLogin() {
        return this.isFamilyLogin;
    }

    public final void logIn(Fragment fragment, Collection<String> collection) {
        t9.m.e(fragment, "fragment");
        logIn(new FragmentWrapper(fragment), collection);
    }

    public final void logInWithConfiguration(Fragment fragment, LoginConfiguration loginConfiguration) {
        t9.m.e(fragment, "fragment");
        t9.m.e(loginConfiguration, "loginConfig");
        loginWithConfiguration(new FragmentWrapper(fragment), loginConfiguration);
    }

    public final void logInWithPublishPermissions(Fragment fragment, Collection<String> collection) {
        t9.m.e(fragment, "fragment");
        t9.m.e(collection, "permissions");
        logInWithPublishPermissions(new FragmentWrapper(fragment), collection);
    }

    public final void logInWithReadPermissions(Fragment fragment, Collection<String> collection) {
        t9.m.e(fragment, "fragment");
        t9.m.e(collection, "permissions");
        logInWithReadPermissions(new FragmentWrapper(fragment), collection);
    }

    public void logOut() {
        AccessToken.Companion.setCurrentAccessToken(null);
        AuthenticationToken.Companion.setCurrentAuthenticationToken(null);
        Profile.Companion.setCurrentProfile(null);
        setExpressLoginStatus(false);
    }

    public final boolean onActivityResult(int i10, Intent intent) {
        return onActivityResult$default(this, i10, intent, null, 4, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onActivityResult(int r16, android.content.Intent r17, com.facebook.FacebookCallback<com.facebook.login.LoginResult> r18) {
        /*
            r15 = this;
            r0 = r16
            r1 = r17
            com.facebook.login.LoginClient$Result$Code r2 = com.facebook.login.LoginClient.Result.Code.ERROR
            r3 = 1
            r4 = 0
            r5 = 0
            if (r1 == 0) goto L48
            java.lang.Class<com.facebook.login.LoginClient$Result> r6 = com.facebook.login.LoginClient.Result.class
            java.lang.ClassLoader r6 = r6.getClassLoader()
            r1.setExtrasClassLoader(r6)
            java.lang.String r6 = "com.facebook.LoginFragment:Result"
            android.os.Parcelable r1 = r1.getParcelableExtra(r6)
            com.facebook.login.LoginClient$Result r1 = (com.facebook.login.LoginClient.Result) r1
            if (r1 == 0) goto L53
            com.facebook.login.LoginClient$Request r2 = r1.request
            com.facebook.login.LoginClient$Result$Code r6 = r1.code
            r7 = -1
            if (r0 == r7) goto L2e
            if (r0 == 0) goto L2a
            r0 = r4
            r7 = r0
            goto L41
        L2a:
            r0 = r4
            r7 = r0
            r5 = 1
            goto L41
        L2e:
            com.facebook.login.LoginClient$Result$Code r0 = com.facebook.login.LoginClient.Result.Code.SUCCESS
            if (r6 != r0) goto L37
            com.facebook.AccessToken r0 = r1.token
            com.facebook.AuthenticationToken r7 = r1.authenticationToken
            goto L41
        L37:
            com.facebook.FacebookAuthorizationException r0 = new com.facebook.FacebookAuthorizationException
            java.lang.String r7 = r1.errorMessage
            r0.<init>(r7)
            r7 = r4
            r4 = r0
            r0 = r7
        L41:
            java.util.Map<java.lang.String, java.lang.String> r1 = r1.loggingExtras
            r8 = r1
            r13 = r5
            r1 = r7
            r7 = r6
            goto L59
        L48:
            if (r0 != 0) goto L53
            com.facebook.login.LoginClient$Result$Code r2 = com.facebook.login.LoginClient.Result.Code.CANCEL
            r7 = r2
            r0 = r4
            r1 = r0
            r2 = r1
            r8 = r2
            r13 = 1
            goto L59
        L53:
            r7 = r2
            r0 = r4
            r1 = r0
            r2 = r1
            r8 = r2
            r13 = 0
        L59:
            if (r4 != 0) goto L66
            if (r0 != 0) goto L66
            if (r13 != 0) goto L66
            com.facebook.FacebookException r4 = new com.facebook.FacebookException
            java.lang.String r5 = "Unexpected call to LoginManager.onActivityResult"
            r4.<init>(r5)
        L66:
            r12 = r4
            r10 = 1
            r6 = 0
            r5 = r15
            r9 = r12
            r11 = r2
            r5.logCompleteLogin(r6, r7, r8, r9, r10, r11)
            r8 = r15
            r9 = r0
            r10 = r1
            r14 = r18
            r8.finishLogin(r9, r10, r11, r12, r13, r14)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.LoginManager.onActivityResult(int, android.content.Intent, com.facebook.FacebookCallback):boolean");
    }

    public final void reauthorizeDataAccess(Activity activity) {
        t9.m.e(activity, "activity");
        startLogin(new ActivityStartActivityDelegate(activity), createReauthorizeRequest());
    }

    public final void registerCallback(CallbackManager callbackManager, final FacebookCallback<LoginResult> facebookCallback) {
        if (!(callbackManager instanceof CallbackManagerImpl)) {
            throw new FacebookException("Unexpected CallbackManager, please use the provided Factory.");
        }
        ((CallbackManagerImpl) callbackManager).registerCallback(CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode(), new CallbackManagerImpl.Callback() { // from class: com.facebook.login.n
            @Override // com.facebook.internal.CallbackManagerImpl.Callback
            public final boolean onActivityResult(int i10, Intent intent) {
                return LoginManager.m153registerCallback$lambda0(this.f5448a, facebookCallback, i10, intent);
            }
        });
    }

    public final void resolveError(Activity activity, GraphResponse graphResponse) {
        t9.m.e(activity, "activity");
        t9.m.e(graphResponse, "response");
        startLogin(new ActivityStartActivityDelegate(activity), createLoginRequestFromResponse(graphResponse));
    }

    public final void retrieveLoginStatus(Context context, LoginStatusCallback loginStatusCallback) {
        t9.m.e(context, "context");
        t9.m.e(loginStatusCallback, "responseCallback");
        retrieveLoginStatus(context, 5000L, loginStatusCallback);
    }

    public final LoginManager setAuthType(String str) {
        t9.m.e(str, "authType");
        this.authType = str;
        return this;
    }

    public final LoginManager setDefaultAudience(DefaultAudience defaultAudience) {
        t9.m.e(defaultAudience, "defaultAudience");
        this.defaultAudience = defaultAudience;
        return this;
    }

    public final LoginManager setFamilyLogin(boolean z10) {
        this.isFamilyLogin = z10;
        return this;
    }

    public final LoginManager setLoginBehavior(LoginBehavior loginBehavior) {
        t9.m.e(loginBehavior, "loginBehavior");
        this.loginBehavior = loginBehavior;
        return this;
    }

    public final LoginManager setLoginTargetApp(LoginTargetApp loginTargetApp) {
        t9.m.e(loginTargetApp, "targetApp");
        this.loginTargetApp = loginTargetApp;
        return this;
    }

    public final LoginManager setMessengerPageId(String str) {
        this.messengerPageId = str;
        return this;
    }

    public final LoginManager setResetMessengerState(boolean z10) {
        this.resetMessengerState = z10;
        return this;
    }

    public final LoginManager setShouldSkipAccountDeduplication(boolean z10) {
        this.shouldSkipAccountDeduplication = z10;
        return this;
    }

    public final void unregisterCallback(CallbackManager callbackManager) {
        if (!(callbackManager instanceof CallbackManagerImpl)) {
            throw new FacebookException("Unexpected CallbackManager, please use the provided Factory.");
        }
        ((CallbackManagerImpl) callbackManager).unregisterCallback(CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode());
    }

    public final void logIn(Fragment fragment, Collection<String> collection, String str) {
        t9.m.e(fragment, "fragment");
        logIn(new FragmentWrapper(fragment), collection, str);
    }

    public final void logInWithPublishPermissions(Fragment fragment, CallbackManager callbackManager, Collection<String> collection) {
        t9.m.e(fragment, "fragment");
        t9.m.e(callbackManager, "callbackManager");
        t9.m.e(collection, "permissions");
        androidx.fragment.app.e activity = fragment.getActivity();
        if (activity == null) {
            throw new FacebookException(t9.m.k("Cannot obtain activity context on the fragment ", fragment));
        }
        logInWithPublishPermissions(activity, callbackManager, collection);
    }

    public final void logInWithReadPermissions(Fragment fragment, CallbackManager callbackManager, Collection<String> collection) {
        t9.m.e(fragment, "fragment");
        t9.m.e(callbackManager, "callbackManager");
        t9.m.e(collection, "permissions");
        androidx.fragment.app.e activity = fragment.getActivity();
        if (activity == null) {
            throw new FacebookException(t9.m.k("Cannot obtain activity context on the fragment ", fragment));
        }
        logInWithReadPermissions(activity, callbackManager, collection);
    }

    public final void loginWithConfiguration(Activity activity, LoginConfiguration loginConfiguration) {
        t9.m.e(activity, "activity");
        t9.m.e(loginConfiguration, "loginConfig");
        logIn(activity, loginConfiguration);
    }

    public final void resolveError(Fragment fragment, GraphResponse graphResponse) {
        t9.m.e(fragment, "fragment");
        t9.m.e(graphResponse, "response");
        resolveError(new FragmentWrapper(fragment), graphResponse);
    }

    public final void retrieveLoginStatus(Context context, long j10, LoginStatusCallback loginStatusCallback) {
        t9.m.e(context, "context");
        t9.m.e(loginStatusCallback, "responseCallback");
        retrieveLoginStatusImpl(context, loginStatusCallback, j10);
    }

    public final void logIn(android.app.Fragment fragment, Collection<String> collection) {
        t9.m.e(fragment, "fragment");
        logIn(new FragmentWrapper(fragment), collection);
    }

    public final void reauthorizeDataAccess(Fragment fragment) {
        t9.m.e(fragment, "fragment");
        reauthorizeDataAccess(new FragmentWrapper(fragment));
    }

    public final void resolveError(Fragment fragment, CallbackManager callbackManager, GraphResponse graphResponse) {
        t9.m.e(fragment, "fragment");
        t9.m.e(callbackManager, "callbackManager");
        t9.m.e(graphResponse, "response");
        androidx.fragment.app.e activity = fragment.getActivity();
        if (activity != null) {
            resolveError(activity, callbackManager, graphResponse);
            return;
        }
        throw new FacebookException(t9.m.k("Cannot obtain activity context on the fragment ", fragment));
    }

    private final void reauthorizeDataAccess(FragmentWrapper fragmentWrapper) {
        startLogin(new FragmentStartActivityDelegate(fragmentWrapper), createReauthorizeRequest());
    }

    public final void logIn(android.app.Fragment fragment, Collection<String> collection, String str) {
        t9.m.e(fragment, "fragment");
        logIn(new FragmentWrapper(fragment), collection, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void logIn(FragmentWrapper fragmentWrapper, Collection<String> collection) {
        t9.m.e(fragmentWrapper, "fragment");
        logIn(fragmentWrapper, new LoginConfiguration(collection, null, 2, 0 == true ? 1 : 0));
    }

    public final void logInWithPublishPermissions(android.app.Fragment fragment, Collection<String> collection) {
        t9.m.e(fragment, "fragment");
        t9.m.e(collection, "permissions");
        logInWithPublishPermissions(new FragmentWrapper(fragment), collection);
    }

    public final void logInWithReadPermissions(android.app.Fragment fragment, Collection<String> collection) {
        t9.m.e(fragment, "fragment");
        t9.m.e(collection, "permissions");
        logInWithReadPermissions(new FragmentWrapper(fragment), collection);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void logInWithPublishPermissions(FragmentWrapper fragmentWrapper, Collection<String> collection) {
        validatePublishPermissions(collection);
        loginWithConfiguration(fragmentWrapper, new LoginConfiguration(collection, null, 2, 0 == true ? 1 : 0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void logInWithReadPermissions(FragmentWrapper fragmentWrapper, Collection<String> collection) {
        validateReadPermissions(collection);
        logIn(fragmentWrapper, new LoginConfiguration(collection, null, 2, 0 == true ? 1 : 0));
    }

    public final void resolveError(android.app.Fragment fragment, GraphResponse graphResponse) {
        t9.m.e(fragment, "fragment");
        t9.m.e(graphResponse, "response");
        resolveError(new FragmentWrapper(fragment), graphResponse);
    }

    private final void resolveError(FragmentWrapper fragmentWrapper, GraphResponse graphResponse) {
        startLogin(new FragmentStartActivityDelegate(fragmentWrapper), createLoginRequestFromResponse(graphResponse));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void logIn(FragmentWrapper fragmentWrapper, Collection<String> collection, String str) {
        t9.m.e(fragmentWrapper, "fragment");
        LoginClient.Request requestCreateLoginRequestWithConfig = createLoginRequestWithConfig(new LoginConfiguration(collection, null, 2, 0 == true ? 1 : 0));
        if (str != null) {
            requestCreateLoginRequestWithConfig.setAuthId(str);
        }
        startLogin(new FragmentStartActivityDelegate(fragmentWrapper), requestCreateLoginRequestWithConfig);
    }

    public final void resolveError(androidx.activity.result.d dVar, CallbackManager callbackManager, GraphResponse graphResponse) {
        t9.m.e(dVar, "activityResultRegistryOwner");
        t9.m.e(callbackManager, "callbackManager");
        t9.m.e(graphResponse, "response");
        startLogin(new AndroidxActivityResultRegistryOwnerStartActivityDelegate(dVar, callbackManager), createLoginRequestFromResponse(graphResponse));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void logInWithPublishPermissions(Activity activity, Collection<String> collection) {
        t9.m.e(activity, "activity");
        validatePublishPermissions(collection);
        loginWithConfiguration(activity, new LoginConfiguration(collection, null, 2, 0 == true ? 1 : 0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void logInWithReadPermissions(Activity activity, Collection<String> collection) {
        t9.m.e(activity, "activity");
        validateReadPermissions(collection);
        logIn(activity, new LoginConfiguration(collection, null, 2, 0 == true ? 1 : 0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void logIn(Activity activity, Collection<String> collection) {
        t9.m.e(activity, "activity");
        logIn(activity, new LoginConfiguration(collection, null, 2, 0 == true ? 1 : 0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void logInWithPublishPermissions(androidx.activity.result.d dVar, CallbackManager callbackManager, Collection<String> collection) {
        t9.m.e(dVar, "activityResultRegistryOwner");
        t9.m.e(callbackManager, "callbackManager");
        t9.m.e(collection, "permissions");
        validatePublishPermissions(collection);
        logIn(dVar, callbackManager, new LoginConfiguration(collection, null, 2, 0 == true ? 1 : 0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void logInWithReadPermissions(androidx.activity.result.d dVar, CallbackManager callbackManager, Collection<String> collection) {
        t9.m.e(dVar, "activityResultRegistryOwner");
        t9.m.e(callbackManager, "callbackManager");
        t9.m.e(collection, "permissions");
        validateReadPermissions(collection);
        logIn(dVar, callbackManager, new LoginConfiguration(collection, null, 2, 0 == true ? 1 : 0));
    }

    public final void logIn(FragmentWrapper fragmentWrapper, LoginConfiguration loginConfiguration) {
        t9.m.e(fragmentWrapper, "fragment");
        t9.m.e(loginConfiguration, "loginConfig");
        startLogin(new FragmentStartActivityDelegate(fragmentWrapper), createLoginRequestWithConfig(loginConfiguration));
    }

    public final void logIn(Activity activity, LoginConfiguration loginConfiguration) {
        t9.m.e(activity, "activity");
        t9.m.e(loginConfiguration, "loginConfig");
        if (activity instanceof androidx.activity.result.d) {
            Log.w(TAG, "You're calling logging in Facebook with an activity supports androidx activity result APIs. Please follow our document to upgrade to new APIs to avoid overriding onActivityResult().");
        }
        startLogin(new ActivityStartActivityDelegate(activity), createLoginRequestWithConfig(loginConfiguration));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void logIn(Activity activity, Collection<String> collection, String str) {
        t9.m.e(activity, "activity");
        LoginClient.Request requestCreateLoginRequestWithConfig = createLoginRequestWithConfig(new LoginConfiguration(collection, null, 2, 0 == true ? 1 : 0));
        if (str != null) {
            requestCreateLoginRequestWithConfig.setAuthId(str);
        }
        startLogin(new ActivityStartActivityDelegate(activity), requestCreateLoginRequestWithConfig);
    }

    private final void logIn(androidx.activity.result.d dVar, CallbackManager callbackManager, LoginConfiguration loginConfiguration) {
        startLogin(new AndroidxActivityResultRegistryOwnerStartActivityDelegate(dVar, callbackManager), createLoginRequestWithConfig(loginConfiguration));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void logIn(androidx.activity.result.d dVar, CallbackManager callbackManager, Collection<String> collection, String str) {
        t9.m.e(dVar, "activityResultRegistryOwner");
        t9.m.e(callbackManager, "callbackManager");
        t9.m.e(collection, "permissions");
        LoginClient.Request requestCreateLoginRequestWithConfig = createLoginRequestWithConfig(new LoginConfiguration(collection, null, 2, 0 == true ? 1 : 0));
        if (str != null) {
            requestCreateLoginRequestWithConfig.setAuthId(str);
        }
        startLogin(new AndroidxActivityResultRegistryOwnerStartActivityDelegate(dVar, callbackManager), requestCreateLoginRequestWithConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void logIn(androidx.activity.result.d dVar, CallbackManager callbackManager, Collection<String> collection) {
        t9.m.e(dVar, "activityResultRegistryOwner");
        t9.m.e(callbackManager, "callbackManager");
        t9.m.e(collection, "permissions");
        logIn(dVar, callbackManager, new LoginConfiguration(collection, null, 2, 0 == true ? 1 : 0));
    }
}
