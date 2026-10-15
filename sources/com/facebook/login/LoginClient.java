package com.facebook.login;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import com.facebook.AccessToken;
import com.facebook.AuthenticationToken;
import com.facebook.CustomTabMainActivity;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.GraphResponse;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.login.LoginClient;
import com.facebook.share.internal.ShareConstants;
import i9.d0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: LoginClient.kt */
/* JADX INFO: loaded from: classes.dex */
public class LoginClient implements Parcelable {
    private BackgroundProcessingListener backgroundProcessingListener;
    private boolean checkedInternetPermission;
    private int currentHandler;
    private Map<String, String> extraData;
    private Fragment fragment;
    private LoginMethodHandler[] handlersToTry;
    private Map<String, String> loggingExtras;
    private LoginLogger loginLogger;
    private int numActivitiesReturned;
    private int numTotalIntentsFired;
    private OnCompletedListener onCompletedListener;
    private Request pendingRequest;
    public static final Companion Companion = new Companion(null);
    public static final Parcelable.Creator<LoginClient> CREATOR = new Parcelable.Creator<LoginClient>() { // from class: com.facebook.login.LoginClient$Companion$CREATOR$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LoginClient createFromParcel(Parcel parcel) {
            t9.m.e(parcel, ShareConstants.FEED_SOURCE_PARAM);
            return new LoginClient(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LoginClient[] newArray(int i10) {
            return new LoginClient[i10];
        }
    };

    /* JADX INFO: compiled from: LoginClient.kt */
    public interface BackgroundProcessingListener {
        void onBackgroundProcessingStarted();

        void onBackgroundProcessingStopped();
    }

    /* JADX INFO: compiled from: LoginClient.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }

        public final String getE2E() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("init", System.currentTimeMillis());
            } catch (JSONException unused) {
            }
            String string = jSONObject.toString();
            t9.m.d(string, "e2e.toString()");
            return string;
        }

        public final int getLoginRequestCode() {
            return CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode();
        }
    }

    /* JADX INFO: compiled from: LoginClient.kt */
    public interface OnCompletedListener {
        void onCompleted(Result result);
    }

    /* JADX INFO: compiled from: LoginClient.kt */
    public static final class Result implements Parcelable {
        public final AuthenticationToken authenticationToken;
        public final Code code;
        public final String errorCode;
        public final String errorMessage;
        public Map<String, String> extraData;
        public Map<String, String> loggingExtras;
        public final Request request;
        public final AccessToken token;
        public static final Companion Companion = new Companion(null);
        public static final Parcelable.Creator<Result> CREATOR = new Parcelable.Creator<Result>() { // from class: com.facebook.login.LoginClient$Result$Companion$CREATOR$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LoginClient.Result createFromParcel(Parcel parcel) {
                t9.m.e(parcel, ShareConstants.FEED_SOURCE_PARAM);
                return new LoginClient.Result(parcel, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LoginClient.Result[] newArray(int i10) {
                return new LoginClient.Result[i10];
            }
        };

        /* JADX INFO: compiled from: LoginClient.kt */
        public enum Code {
            SUCCESS(GraphResponse.SUCCESS_KEY),
            CANCEL("cancel"),
            ERROR("error");

            private final String loggingValue;

            Code(String str) {
                this.loggingValue = str;
            }

            /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
            public static Code[] valuesCustom() {
                Code[] codeArrValuesCustom = values();
                return (Code[]) Arrays.copyOf(codeArrValuesCustom, codeArrValuesCustom.length);
            }

            public final String getLoggingValue() {
                return this.loggingValue;
            }
        }

        /* JADX INFO: compiled from: LoginClient.kt */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(t9.g gVar) {
                this();
            }

            public static /* synthetic */ Result createErrorResult$default(Companion companion, Request request, String str, String str2, String str3, int i10, Object obj) {
                if ((i10 & 8) != 0) {
                    str3 = null;
                }
                return companion.createErrorResult(request, str, str2, str3);
            }

            public final Result createCancelResult(Request request, String str) {
                return new Result(request, Code.CANCEL, null, str, null);
            }

            public final Result createCompositeTokenResult(Request request, AccessToken accessToken, AuthenticationToken authenticationToken) {
                return new Result(request, Code.SUCCESS, accessToken, authenticationToken, null, null);
            }

            public final Result createErrorResult(Request request, String str, String str2) {
                return createErrorResult$default(this, request, str, str2, null, 8, null);
            }

            public final Result createErrorResult(Request request, String str, String str2, String str3) {
                ArrayList arrayList = new ArrayList();
                if (str != null) {
                    arrayList.add(str);
                }
                if (str2 != null) {
                    arrayList.add(str2);
                }
                return new Result(request, Code.ERROR, null, TextUtils.join(": ", arrayList), str3);
            }

            public final Result createTokenResult(Request request, AccessToken accessToken) {
                t9.m.e(accessToken, "token");
                return new Result(request, Code.SUCCESS, accessToken, null, null);
            }
        }

        public /* synthetic */ Result(Parcel parcel, t9.g gVar) {
            this(parcel);
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Result(Request request, Code code, AccessToken accessToken, String str, String str2) {
            this(request, code, accessToken, null, str, str2);
            t9.m.e(code, "code");
        }

        public static final Result createCancelResult(Request request, String str) {
            return Companion.createCancelResult(request, str);
        }

        public static final Result createCompositeTokenResult(Request request, AccessToken accessToken, AuthenticationToken authenticationToken) {
            return Companion.createCompositeTokenResult(request, accessToken, authenticationToken);
        }

        public static final Result createErrorResult(Request request, String str, String str2) {
            return Companion.createErrorResult(request, str, str2);
        }

        public static final Result createErrorResult(Request request, String str, String str2, String str3) {
            return Companion.createErrorResult(request, str, str2, str3);
        }

        public static final Result createTokenResult(Request request, AccessToken accessToken) {
            return Companion.createTokenResult(request, accessToken);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            t9.m.e(parcel, "dest");
            parcel.writeString(this.code.name());
            parcel.writeParcelable(this.token, i10);
            parcel.writeParcelable(this.authenticationToken, i10);
            parcel.writeString(this.errorMessage);
            parcel.writeString(this.errorCode);
            parcel.writeParcelable(this.request, i10);
            Utility utility = Utility.INSTANCE;
            Utility.writeNonnullStringMapToParcel(parcel, this.loggingExtras);
            Utility.writeNonnullStringMapToParcel(parcel, this.extraData);
        }

        public Result(Request request, Code code, AccessToken accessToken, AuthenticationToken authenticationToken, String str, String str2) {
            t9.m.e(code, "code");
            this.request = request;
            this.token = accessToken;
            this.authenticationToken = authenticationToken;
            this.errorMessage = str;
            this.code = code;
            this.errorCode = str2;
        }

        private Result(Parcel parcel) {
            String string = parcel.readString();
            this.code = Code.valueOf(string == null ? "error" : string);
            this.token = (AccessToken) parcel.readParcelable(AccessToken.class.getClassLoader());
            this.authenticationToken = (AuthenticationToken) parcel.readParcelable(AuthenticationToken.class.getClassLoader());
            this.errorMessage = parcel.readString();
            this.errorCode = parcel.readString();
            this.request = (Request) parcel.readParcelable(Request.class.getClassLoader());
            Utility utility = Utility.INSTANCE;
            this.loggingExtras = Utility.readNonnullStringMapFromParcel(parcel);
            this.extraData = Utility.readNonnullStringMapFromParcel(parcel);
        }
    }

    public LoginClient(Fragment fragment) {
        t9.m.e(fragment, "fragment");
        this.currentHandler = -1;
        setFragment(fragment);
    }

    private final void addLoggingExtra(String str, String str2, boolean z10) {
        Map<String, String> map = this.loggingExtras;
        if (map == null) {
            map = new HashMap<>();
        }
        if (this.loggingExtras == null) {
            this.loggingExtras = map;
        }
        if (map.containsKey(str) && z10) {
            str2 = ((Object) map.get(str)) + ',' + str2;
        }
        map.put(str, str2);
    }

    private final void completeWithFailure() {
        complete(Result.Companion.createErrorResult$default(Result.Companion, this.pendingRequest, "Login attempt failed.", null, null, 8, null));
    }

    public static final String getE2E() {
        return Companion.getE2E();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final com.facebook.login.LoginLogger getLogger() {
        /*
            r3 = this;
            com.facebook.login.LoginLogger r0 = r3.loginLogger
            if (r0 == 0) goto L18
            java.lang.String r1 = r0.getApplicationId()
            com.facebook.login.LoginClient$Request r2 = r3.pendingRequest
            if (r2 != 0) goto Le
            r2 = 0
            goto L12
        Le:
            java.lang.String r2 = r2.getApplicationId()
        L12:
            boolean r1 = t9.m.a(r1, r2)
            if (r1 != 0) goto L3a
        L18:
            com.facebook.login.LoginLogger r0 = new com.facebook.login.LoginLogger
            androidx.fragment.app.e r1 = r3.getActivity()
            if (r1 != 0) goto L26
            com.facebook.FacebookSdk r1 = com.facebook.FacebookSdk.INSTANCE
            android.content.Context r1 = com.facebook.FacebookSdk.getApplicationContext()
        L26:
            com.facebook.login.LoginClient$Request r2 = r3.pendingRequest
            if (r2 != 0) goto L31
            com.facebook.FacebookSdk r2 = com.facebook.FacebookSdk.INSTANCE
            java.lang.String r2 = com.facebook.FacebookSdk.getApplicationId()
            goto L35
        L31:
            java.lang.String r2 = r2.getApplicationId()
        L35:
            r0.<init>(r1, r2)
            r3.loginLogger = r0
        L3a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.LoginClient.getLogger():com.facebook.login.LoginLogger");
    }

    public static final int getLoginRequestCode() {
        return Companion.getLoginRequestCode();
    }

    private final void logAuthorizationMethodComplete(String str, Result result, Map<String, String> map) {
        logAuthorizationMethodComplete(str, result.code.getLoggingValue(), result.errorMessage, result.errorCode, map);
    }

    private final void notifyOnCompleteListener(Result result) {
        OnCompletedListener onCompletedListener = this.onCompletedListener;
        if (onCompletedListener == null) {
            return;
        }
        onCompletedListener.onCompleted(result);
    }

    public final void addExtraData(String str, String str2, boolean z10) {
        t9.m.e(str, SDKConstants.PARAM_KEY);
        t9.m.e(str2, SDKConstants.PARAM_VALUE);
        Map<String, String> map = this.extraData;
        if (map == null) {
            map = new HashMap<>();
        }
        if (this.extraData == null) {
            this.extraData = map;
        }
        if (map.containsKey(str) && z10) {
            str2 = ((Object) map.get(str)) + ',' + str2;
        }
        map.put(str, str2);
    }

    public final void authorize(Request request) {
        if (request == null) {
            return;
        }
        if (this.pendingRequest != null) {
            throw new FacebookException("Attempted to authorize while a request is pending.");
        }
        if (!AccessToken.Companion.isCurrentAccessTokenActive() || checkInternetPermission()) {
            this.pendingRequest = request;
            this.handlersToTry = getHandlersToTry(request);
            tryNextHandler();
        }
    }

    public final void cancelCurrentHandler() {
        LoginMethodHandler currentHandler = getCurrentHandler();
        if (currentHandler == null) {
            return;
        }
        currentHandler.cancel();
    }

    public final boolean checkInternetPermission() {
        if (this.checkedInternetPermission) {
            return true;
        }
        if (checkPermission("android.permission.INTERNET") == 0) {
            this.checkedInternetPermission = true;
            return true;
        }
        androidx.fragment.app.e activity = getActivity();
        complete(Result.Companion.createErrorResult$default(Result.Companion, this.pendingRequest, activity == null ? null : activity.getString(com.facebook.common.R.string.com_facebook_internet_permission_error_title), activity != null ? activity.getString(com.facebook.common.R.string.com_facebook_internet_permission_error_message) : null, null, 8, null));
        return false;
    }

    public final int checkPermission(String str) {
        t9.m.e(str, "permission");
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return -1;
        }
        return activity.checkCallingOrSelfPermission(str);
    }

    public final void complete(Result result) {
        t9.m.e(result, "outcome");
        LoginMethodHandler currentHandler = getCurrentHandler();
        if (currentHandler != null) {
            logAuthorizationMethodComplete(currentHandler.getNameForLogging(), result, currentHandler.getMethodLoggingExtras());
        }
        Map<String, String> map = this.loggingExtras;
        if (map != null) {
            result.loggingExtras = map;
        }
        Map<String, String> map2 = this.extraData;
        if (map2 != null) {
            result.extraData = map2;
        }
        this.handlersToTry = null;
        this.currentHandler = -1;
        this.pendingRequest = null;
        this.loggingExtras = null;
        this.numActivitiesReturned = 0;
        this.numTotalIntentsFired = 0;
        notifyOnCompleteListener(result);
    }

    public final void completeAndValidate(Result result) {
        t9.m.e(result, "outcome");
        if (result.token == null || !AccessToken.Companion.isCurrentAccessTokenActive()) {
            complete(result);
        } else {
            validateSameFbidAndFinish(result);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final androidx.fragment.app.e getActivity() {
        Fragment fragment = this.fragment;
        if (fragment == null) {
            return null;
        }
        return fragment.getActivity();
    }

    public final BackgroundProcessingListener getBackgroundProcessingListener() {
        return this.backgroundProcessingListener;
    }

    public final boolean getCheckedInternetPermission() {
        return this.checkedInternetPermission;
    }

    public final LoginMethodHandler getCurrentHandler() {
        LoginMethodHandler[] loginMethodHandlerArr;
        int i10 = this.currentHandler;
        if (i10 < 0 || (loginMethodHandlerArr = this.handlersToTry) == null) {
            return null;
        }
        return loginMethodHandlerArr[i10];
    }

    public final Map<String, String> getExtraData() {
        return this.extraData;
    }

    public final Fragment getFragment() {
        return this.fragment;
    }

    public final LoginMethodHandler[] getHandlersToTry() {
        return this.handlersToTry;
    }

    public final boolean getInProgress() {
        return this.pendingRequest != null && this.currentHandler >= 0;
    }

    public final Map<String, String> getLoggingExtras() {
        return this.loggingExtras;
    }

    public final OnCompletedListener getOnCompletedListener() {
        return this.onCompletedListener;
    }

    public final Request getPendingRequest() {
        return this.pendingRequest;
    }

    public final void notifyBackgroundProcessingStart() {
        BackgroundProcessingListener backgroundProcessingListener = this.backgroundProcessingListener;
        if (backgroundProcessingListener == null) {
            return;
        }
        backgroundProcessingListener.onBackgroundProcessingStarted();
    }

    public final void notifyBackgroundProcessingStop() {
        BackgroundProcessingListener backgroundProcessingListener = this.backgroundProcessingListener;
        if (backgroundProcessingListener == null) {
            return;
        }
        backgroundProcessingListener.onBackgroundProcessingStopped();
    }

    public final boolean onActivityResult(int i10, int i11, Intent intent) {
        this.numActivitiesReturned++;
        if (this.pendingRequest != null) {
            if (intent != null && intent.getBooleanExtra(CustomTabMainActivity.NO_ACTIVITY_EXCEPTION, false)) {
                tryNextHandler();
                return false;
            }
            LoginMethodHandler currentHandler = getCurrentHandler();
            if (currentHandler != null && (!currentHandler.shouldKeepTrackOfMultipleIntents() || intent != null || this.numActivitiesReturned >= this.numTotalIntentsFired)) {
                return currentHandler.onActivityResult(i10, i11, intent);
            }
        }
        return false;
    }

    public final void setBackgroundProcessingListener(BackgroundProcessingListener backgroundProcessingListener) {
        this.backgroundProcessingListener = backgroundProcessingListener;
    }

    public final void setCheckedInternetPermission(boolean z10) {
        this.checkedInternetPermission = z10;
    }

    protected final void setCurrentHandlerIndex(int i10) {
        this.currentHandler = i10;
    }

    public final void setExtraData(Map<String, String> map) {
        this.extraData = map;
    }

    public final void setFragment(Fragment fragment) {
        if (this.fragment != null) {
            throw new FacebookException("Can't set fragment once it is already set.");
        }
        this.fragment = fragment;
    }

    public final void setHandlersToTry(LoginMethodHandler[] loginMethodHandlerArr) {
        this.handlersToTry = loginMethodHandlerArr;
    }

    public final void setLoggingExtras(Map<String, String> map) {
        this.loggingExtras = map;
    }

    public final void setOnCompletedListener(OnCompletedListener onCompletedListener) {
        this.onCompletedListener = onCompletedListener;
    }

    public final void setPendingRequest(Request request) {
        this.pendingRequest = request;
    }

    public final void startOrContinueAuth(Request request) {
        if (getInProgress()) {
            return;
        }
        authorize(request);
    }

    public final boolean tryCurrentHandler() {
        LoginMethodHandler currentHandler = getCurrentHandler();
        if (currentHandler == null) {
            return false;
        }
        if (currentHandler.needsInternetPermission() && !checkInternetPermission()) {
            addLoggingExtra(LoginLogger.EVENT_EXTRAS_MISSING_INTERNET_PERMISSION, AppEventsConstants.EVENT_PARAM_VALUE_YES, false);
            return false;
        }
        Request request = this.pendingRequest;
        if (request == null) {
            return false;
        }
        int iTryAuthorize = currentHandler.tryAuthorize(request);
        this.numActivitiesReturned = 0;
        if (iTryAuthorize > 0) {
            getLogger().logAuthorizationMethodStart(request.getAuthId(), currentHandler.getNameForLogging(), request.isFamilyLogin() ? LoginLogger.EVENT_NAME_FOA_LOGIN_METHOD_START : LoginLogger.EVENT_NAME_LOGIN_METHOD_START);
            this.numTotalIntentsFired = iTryAuthorize;
        } else {
            getLogger().logAuthorizationMethodNotTried(request.getAuthId(), currentHandler.getNameForLogging(), request.isFamilyLogin() ? LoginLogger.EVENT_NAME_FOA_LOGIN_METHOD_NOT_TRIED : LoginLogger.EVENT_NAME_LOGIN_METHOD_NOT_TRIED);
            addLoggingExtra(LoginLogger.EVENT_EXTRAS_NOT_TRIED, currentHandler.getNameForLogging(), true);
        }
        return iTryAuthorize > 0;
    }

    public final void tryNextHandler() {
        LoginMethodHandler currentHandler = getCurrentHandler();
        if (currentHandler != null) {
            logAuthorizationMethodComplete(currentHandler.getNameForLogging(), LoginLogger.EVENT_PARAM_METHOD_RESULT_SKIPPED, null, null, currentHandler.getMethodLoggingExtras());
        }
        LoginMethodHandler[] loginMethodHandlerArr = this.handlersToTry;
        while (loginMethodHandlerArr != null) {
            int i10 = this.currentHandler;
            if (i10 >= loginMethodHandlerArr.length - 1) {
                break;
            }
            this.currentHandler = i10 + 1;
            if (tryCurrentHandler()) {
                return;
            }
        }
        if (this.pendingRequest != null) {
            completeWithFailure();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x002e A[Catch: Exception -> 0x0041, TryCatch #0 {Exception -> 0x0041, blocks: (B:6:0x0013, B:8:0x0021, B:10:0x003d, B:9:0x002e), top: B:17:0x0013 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void validateSameFbidAndFinish(com.facebook.login.LoginClient.Result r8) {
        /*
            r7 = this;
            java.lang.String r0 = "pendingResult"
            t9.m.e(r8, r0)
            com.facebook.AccessToken r0 = r8.token
            if (r0 == 0) goto L58
            com.facebook.AccessToken$Companion r0 = com.facebook.AccessToken.Companion
            com.facebook.AccessToken r0 = r0.getCurrentAccessToken()
            com.facebook.AccessToken r1 = r8.token
            if (r0 == 0) goto L2e
            java.lang.String r0 = r0.getUserId()     // Catch: java.lang.Exception -> L41
            java.lang.String r1 = r1.getUserId()     // Catch: java.lang.Exception -> L41
            boolean r0 = t9.m.a(r0, r1)     // Catch: java.lang.Exception -> L41
            if (r0 == 0) goto L2e
            com.facebook.login.LoginClient$Result$Companion r0 = com.facebook.login.LoginClient.Result.Companion     // Catch: java.lang.Exception -> L41
            com.facebook.login.LoginClient$Request r1 = r7.pendingRequest     // Catch: java.lang.Exception -> L41
            com.facebook.AccessToken r2 = r8.token     // Catch: java.lang.Exception -> L41
            com.facebook.AuthenticationToken r8 = r8.authenticationToken     // Catch: java.lang.Exception -> L41
            com.facebook.login.LoginClient$Result r8 = r0.createCompositeTokenResult(r1, r2, r8)     // Catch: java.lang.Exception -> L41
            goto L3d
        L2e:
            com.facebook.login.LoginClient$Result$Companion r0 = com.facebook.login.LoginClient.Result.Companion     // Catch: java.lang.Exception -> L41
            com.facebook.login.LoginClient$Request r1 = r7.pendingRequest     // Catch: java.lang.Exception -> L41
            java.lang.String r2 = "User logged in as different Facebook user."
            r3 = 0
            r4 = 0
            r5 = 8
            r6 = 0
            com.facebook.login.LoginClient$Result r8 = com.facebook.login.LoginClient.Result.Companion.createErrorResult$default(r0, r1, r2, r3, r4, r5, r6)     // Catch: java.lang.Exception -> L41
        L3d:
            r7.complete(r8)     // Catch: java.lang.Exception -> L41
            goto L57
        L41:
            r8 = move-exception
            com.facebook.login.LoginClient$Result$Companion r0 = com.facebook.login.LoginClient.Result.Companion
            com.facebook.login.LoginClient$Request r1 = r7.pendingRequest
            java.lang.String r3 = r8.getMessage()
            r4 = 0
            r5 = 8
            r6 = 0
            java.lang.String r2 = "Caught exception"
            com.facebook.login.LoginClient$Result r8 = com.facebook.login.LoginClient.Result.Companion.createErrorResult$default(r0, r1, r2, r3, r4, r5, r6)
            r7.complete(r8)
        L57:
            return
        L58:
            com.facebook.FacebookException r8 = new com.facebook.FacebookException
            java.lang.String r0 = "Can't validate without a token"
            r8.<init>(r0)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.LoginClient.validateSameFbidAndFinish(com.facebook.login.LoginClient$Result):void");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        t9.m.e(parcel, "dest");
        parcel.writeParcelableArray(this.handlersToTry, i10);
        parcel.writeInt(this.currentHandler);
        parcel.writeParcelable(this.pendingRequest, i10);
        Utility utility = Utility.INSTANCE;
        Utility.writeNonnullStringMapToParcel(parcel, this.loggingExtras);
        Utility.writeNonnullStringMapToParcel(parcel, this.extraData);
    }

    /* JADX INFO: compiled from: LoginClient.kt */
    public static final class Request implements Parcelable {
        private final String applicationId;
        private String authId;
        private String authType;
        private final String codeChallenge;
        private final CodeChallengeMethod codeChallengeMethod;
        private final String codeVerifier;
        private final DefaultAudience defaultAudience;
        private String deviceAuthTargetUserId;
        private String deviceRedirectUriString;
        private boolean isFamilyLogin;
        private boolean isRerequest;
        private final LoginBehavior loginBehavior;
        private final LoginTargetApp loginTargetApp;
        private String messengerPageId;
        private final String nonce;
        private Set<String> permissions;
        private boolean resetMessengerState;
        private boolean shouldSkipAccountDeduplication;
        public static final Companion Companion = new Companion(null);
        public static final Parcelable.Creator<Request> CREATOR = new Parcelable.Creator<Request>() { // from class: com.facebook.login.LoginClient$Request$Companion$CREATOR$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LoginClient.Request createFromParcel(Parcel parcel) {
                t9.m.e(parcel, ShareConstants.FEED_SOURCE_PARAM);
                return new LoginClient.Request(parcel, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LoginClient.Request[] newArray(int i10) {
                return new LoginClient.Request[i10];
            }
        };

        /* JADX INFO: compiled from: LoginClient.kt */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(t9.g gVar) {
                this();
            }
        }

        public /* synthetic */ Request(Parcel parcel, t9.g gVar) {
            this(parcel);
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Request(LoginBehavior loginBehavior, Set<String> set, DefaultAudience defaultAudience, String str, String str2, String str3) {
            this(loginBehavior, set, defaultAudience, str, str2, str3, null, null, null, null, null, 1984, null);
            t9.m.e(loginBehavior, "loginBehavior");
            t9.m.e(defaultAudience, "defaultAudience");
            t9.m.e(str, "authType");
            t9.m.e(str2, "applicationId");
            t9.m.e(str3, "authId");
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Request(LoginBehavior loginBehavior, Set<String> set, DefaultAudience defaultAudience, String str, String str2, String str3, LoginTargetApp loginTargetApp) {
            this(loginBehavior, set, defaultAudience, str, str2, str3, loginTargetApp, null, null, null, null, 1920, null);
            t9.m.e(loginBehavior, "loginBehavior");
            t9.m.e(defaultAudience, "defaultAudience");
            t9.m.e(str, "authType");
            t9.m.e(str2, "applicationId");
            t9.m.e(str3, "authId");
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Request(LoginBehavior loginBehavior, Set<String> set, DefaultAudience defaultAudience, String str, String str2, String str3, LoginTargetApp loginTargetApp, String str4) {
            this(loginBehavior, set, defaultAudience, str, str2, str3, loginTargetApp, str4, null, null, null, 1792, null);
            t9.m.e(loginBehavior, "loginBehavior");
            t9.m.e(defaultAudience, "defaultAudience");
            t9.m.e(str, "authType");
            t9.m.e(str2, "applicationId");
            t9.m.e(str3, "authId");
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Request(LoginBehavior loginBehavior, Set<String> set, DefaultAudience defaultAudience, String str, String str2, String str3, LoginTargetApp loginTargetApp, String str4, String str5) {
            this(loginBehavior, set, defaultAudience, str, str2, str3, loginTargetApp, str4, str5, null, null, 1536, null);
            t9.m.e(loginBehavior, "loginBehavior");
            t9.m.e(defaultAudience, "defaultAudience");
            t9.m.e(str, "authType");
            t9.m.e(str2, "applicationId");
            t9.m.e(str3, "authId");
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Request(LoginBehavior loginBehavior, Set<String> set, DefaultAudience defaultAudience, String str, String str2, String str3, LoginTargetApp loginTargetApp, String str4, String str5, String str6) {
            this(loginBehavior, set, defaultAudience, str, str2, str3, loginTargetApp, str4, str5, str6, null, 1024, null);
            t9.m.e(loginBehavior, "loginBehavior");
            t9.m.e(defaultAudience, "defaultAudience");
            t9.m.e(str, "authType");
            t9.m.e(str2, "applicationId");
            t9.m.e(str3, "authId");
        }

        public /* synthetic */ Request(LoginBehavior loginBehavior, Set set, DefaultAudience defaultAudience, String str, String str2, String str3, LoginTargetApp loginTargetApp, String str4, String str5, String str6, CodeChallengeMethod codeChallengeMethod, int i10, t9.g gVar) {
            this(loginBehavior, set, defaultAudience, str, str2, str3, (i10 & 64) != 0 ? LoginTargetApp.FACEBOOK : loginTargetApp, (i10 & 128) != 0 ? null : str4, (i10 & 256) != 0 ? null : str5, (i10 & 512) != 0 ? null : str6, (i10 & 1024) != 0 ? null : codeChallengeMethod);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public final String getApplicationId() {
            return this.applicationId;
        }

        public final String getAuthId() {
            return this.authId;
        }

        public final String getAuthType() {
            return this.authType;
        }

        public final String getCodeChallenge() {
            return this.codeChallenge;
        }

        public final CodeChallengeMethod getCodeChallengeMethod() {
            return this.codeChallengeMethod;
        }

        public final String getCodeVerifier() {
            return this.codeVerifier;
        }

        public final DefaultAudience getDefaultAudience() {
            return this.defaultAudience;
        }

        public final String getDeviceAuthTargetUserId() {
            return this.deviceAuthTargetUserId;
        }

        public final String getDeviceRedirectUriString() {
            return this.deviceRedirectUriString;
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

        public final String getNonce() {
            return this.nonce;
        }

        public final Set<String> getPermissions() {
            return this.permissions;
        }

        public final boolean getResetMessengerState() {
            return this.resetMessengerState;
        }

        public final boolean hasPublishPermission() {
            Iterator<String> it = this.permissions.iterator();
            while (it.hasNext()) {
                if (LoginManager.Companion.isPublishPermission(it.next())) {
                    return true;
                }
            }
            return false;
        }

        public final boolean isFamilyLogin() {
            return this.isFamilyLogin;
        }

        public final boolean isInstagramLogin() {
            return this.loginTargetApp == LoginTargetApp.INSTAGRAM;
        }

        public final boolean isRerequest() {
            return this.isRerequest;
        }

        public final void setAuthId(String str) {
            t9.m.e(str, "<set-?>");
            this.authId = str;
        }

        public final void setAuthType(String str) {
            t9.m.e(str, "<set-?>");
            this.authType = str;
        }

        public final void setDeviceAuthTargetUserId(String str) {
            this.deviceAuthTargetUserId = str;
        }

        public final void setDeviceRedirectUriString(String str) {
            this.deviceRedirectUriString = str;
        }

        public final void setFamilyLogin(boolean z10) {
            this.isFamilyLogin = z10;
        }

        public final void setMessengerPageId(String str) {
            this.messengerPageId = str;
        }

        public final void setPermissions(Set<String> set) {
            t9.m.e(set, "<set-?>");
            this.permissions = set;
        }

        public final void setRerequest(boolean z10) {
            this.isRerequest = z10;
        }

        public final void setResetMessengerState(boolean z10) {
            this.resetMessengerState = z10;
        }

        public final void setShouldSkipAccountDeduplication(boolean z10) {
            this.shouldSkipAccountDeduplication = z10;
        }

        public final boolean shouldSkipAccountDeduplication() {
            return this.shouldSkipAccountDeduplication;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            t9.m.e(parcel, "dest");
            parcel.writeString(this.loginBehavior.name());
            parcel.writeStringList(new ArrayList(this.permissions));
            parcel.writeString(this.defaultAudience.name());
            parcel.writeString(this.applicationId);
            parcel.writeString(this.authId);
            parcel.writeByte(this.isRerequest ? (byte) 1 : (byte) 0);
            parcel.writeString(this.deviceRedirectUriString);
            parcel.writeString(this.authType);
            parcel.writeString(this.deviceAuthTargetUserId);
            parcel.writeString(this.messengerPageId);
            parcel.writeByte(this.resetMessengerState ? (byte) 1 : (byte) 0);
            parcel.writeString(this.loginTargetApp.name());
            parcel.writeByte(this.isFamilyLogin ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.shouldSkipAccountDeduplication ? (byte) 1 : (byte) 0);
            parcel.writeString(this.nonce);
            parcel.writeString(this.codeVerifier);
            parcel.writeString(this.codeChallenge);
            CodeChallengeMethod codeChallengeMethod = this.codeChallengeMethod;
            parcel.writeString(codeChallengeMethod == null ? null : codeChallengeMethod.name());
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0046  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public Request(com.facebook.login.LoginBehavior r2, java.util.Set<java.lang.String> r3, com.facebook.login.DefaultAudience r4, java.lang.String r5, java.lang.String r6, java.lang.String r7, com.facebook.login.LoginTargetApp r8, java.lang.String r9, java.lang.String r10, java.lang.String r11, com.facebook.login.CodeChallengeMethod r12) {
            /*
                r1 = this;
                java.lang.String r0 = "loginBehavior"
                t9.m.e(r2, r0)
                java.lang.String r0 = "defaultAudience"
                t9.m.e(r4, r0)
                java.lang.String r0 = "authType"
                t9.m.e(r5, r0)
                java.lang.String r0 = "applicationId"
                t9.m.e(r6, r0)
                java.lang.String r0 = "authId"
                t9.m.e(r7, r0)
                r1.<init>()
                r1.loginBehavior = r2
                if (r3 != 0) goto L25
                java.util.HashSet r3 = new java.util.HashSet
                r3.<init>()
            L25:
                r1.permissions = r3
                r1.defaultAudience = r4
                r1.authType = r5
                r1.applicationId = r6
                r1.authId = r7
                if (r8 != 0) goto L33
                com.facebook.login.LoginTargetApp r8 = com.facebook.login.LoginTargetApp.FACEBOOK
            L33:
                r1.loginTargetApp = r8
                if (r9 == 0) goto L46
                int r2 = r9.length()
                if (r2 != 0) goto L3f
                r2 = 1
                goto L40
            L3f:
                r2 = 0
            L40:
                if (r2 == 0) goto L43
                goto L46
            L43:
                r1.nonce = r9
                goto L55
            L46:
                java.util.UUID r2 = java.util.UUID.randomUUID()
                java.lang.String r2 = r2.toString()
                java.lang.String r3 = "randomUUID().toString()"
                t9.m.d(r2, r3)
                r1.nonce = r2
            L55:
                r1.codeVerifier = r10
                r1.codeChallenge = r11
                r1.codeChallengeMethod = r12
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.LoginClient.Request.<init>(com.facebook.login.LoginBehavior, java.util.Set, com.facebook.login.DefaultAudience, java.lang.String, java.lang.String, java.lang.String, com.facebook.login.LoginTargetApp, java.lang.String, java.lang.String, java.lang.String, com.facebook.login.CodeChallengeMethod):void");
        }

        private Request(Parcel parcel) {
            DefaultAudience defaultAudienceValueOf;
            LoginTargetApp loginTargetAppValueOf;
            Validate validate = Validate.INSTANCE;
            this.loginBehavior = LoginBehavior.valueOf(Validate.notNullOrEmpty(parcel.readString(), "loginBehavior"));
            ArrayList arrayList = new ArrayList();
            parcel.readStringList(arrayList);
            this.permissions = new HashSet(arrayList);
            String string = parcel.readString();
            if (string != null) {
                defaultAudienceValueOf = DefaultAudience.valueOf(string);
            } else {
                defaultAudienceValueOf = DefaultAudience.NONE;
            }
            this.defaultAudience = defaultAudienceValueOf;
            this.applicationId = Validate.notNullOrEmpty(parcel.readString(), "applicationId");
            this.authId = Validate.notNullOrEmpty(parcel.readString(), "authId");
            this.isRerequest = parcel.readByte() != 0;
            this.deviceRedirectUriString = parcel.readString();
            this.authType = Validate.notNullOrEmpty(parcel.readString(), "authType");
            this.deviceAuthTargetUserId = parcel.readString();
            this.messengerPageId = parcel.readString();
            this.resetMessengerState = parcel.readByte() != 0;
            String string2 = parcel.readString();
            if (string2 != null) {
                loginTargetAppValueOf = LoginTargetApp.valueOf(string2);
            } else {
                loginTargetAppValueOf = LoginTargetApp.FACEBOOK;
            }
            this.loginTargetApp = loginTargetAppValueOf;
            this.isFamilyLogin = parcel.readByte() != 0;
            this.shouldSkipAccountDeduplication = parcel.readByte() != 0;
            this.nonce = Validate.notNullOrEmpty(parcel.readString(), "nonce");
            this.codeVerifier = parcel.readString();
            this.codeChallenge = parcel.readString();
            String string3 = parcel.readString();
            this.codeChallengeMethod = string3 == null ? null : CodeChallengeMethod.valueOf(string3);
        }
    }

    public LoginMethodHandler[] getHandlersToTry(Request request) {
        t9.m.e(request, "request");
        ArrayList arrayList = new ArrayList();
        LoginBehavior loginBehavior = request.getLoginBehavior();
        if (!request.isInstagramLogin()) {
            if (loginBehavior.allowsGetTokenAuth()) {
                arrayList.add(new GetTokenLoginMethodHandler(this));
            }
            if (!FacebookSdk.bypassAppSwitch && loginBehavior.allowsKatanaAuth()) {
                arrayList.add(new KatanaProxyLoginMethodHandler(this));
            }
        } else if (!FacebookSdk.bypassAppSwitch && loginBehavior.allowsInstagramAppAuth()) {
            arrayList.add(new InstagramAppLoginMethodHandler(this));
        }
        if (loginBehavior.allowsCustomTabAuth()) {
            arrayList.add(new CustomTabLoginMethodHandler(this));
        }
        if (loginBehavior.allowsWebViewAuth()) {
            arrayList.add(new WebViewLoginMethodHandler(this));
        }
        if (!request.isInstagramLogin() && loginBehavior.allowsDeviceAuth()) {
            arrayList.add(new DeviceAuthMethodHandler(this));
        }
        Object[] array = arrayList.toArray(new LoginMethodHandler[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        return (LoginMethodHandler[]) array;
    }

    private final void logAuthorizationMethodComplete(String str, String str2, String str3, String str4, Map<String, String> map) {
        Request request = this.pendingRequest;
        String str5 = LoginLogger.EVENT_NAME_LOGIN_METHOD_COMPLETE;
        if (request == null) {
            getLogger().logUnexpectedError(LoginLogger.EVENT_NAME_LOGIN_METHOD_COMPLETE, "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.", str);
            return;
        }
        LoginLogger logger = getLogger();
        String authId = request.getAuthId();
        if (request.isFamilyLogin()) {
            str5 = LoginLogger.EVENT_NAME_FOA_LOGIN_METHOD_COMPLETE;
        }
        logger.logAuthorizationMethodComplete(authId, str, str2, str3, str4, map, str5);
    }

    public LoginClient(Parcel parcel) {
        t9.m.e(parcel, ShareConstants.FEED_SOURCE_PARAM);
        this.currentHandler = -1;
        Parcelable[] parcelableArray = parcel.readParcelableArray(LoginMethodHandler.class.getClassLoader());
        parcelableArray = parcelableArray == null ? new Parcelable[0] : parcelableArray;
        ArrayList arrayList = new ArrayList();
        int length = parcelableArray.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                break;
            }
            Parcelable parcelable = parcelableArray[i10];
            LoginMethodHandler loginMethodHandler = parcelable instanceof LoginMethodHandler ? (LoginMethodHandler) parcelable : null;
            if (loginMethodHandler != null) {
                loginMethodHandler.setLoginClient(this);
            }
            if (loginMethodHandler != null) {
                arrayList.add(loginMethodHandler);
            }
            i10++;
        }
        Object[] array = arrayList.toArray(new LoginMethodHandler[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        this.handlersToTry = (LoginMethodHandler[]) array;
        this.currentHandler = parcel.readInt();
        this.pendingRequest = (Request) parcel.readParcelable(Request.class.getClassLoader());
        Utility utility = Utility.INSTANCE;
        Map<String, String> nonnullStringMapFromParcel = Utility.readNonnullStringMapFromParcel(parcel);
        this.loggingExtras = nonnullStringMapFromParcel == null ? null : d0.n(nonnullStringMapFromParcel);
        Map<String, String> nonnullStringMapFromParcel2 = Utility.readNonnullStringMapFromParcel(parcel);
        this.extraData = nonnullStringMapFromParcel2 != null ? d0.n(nonnullStringMapFromParcel2) : null;
    }
}
