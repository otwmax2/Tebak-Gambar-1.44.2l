package com.facebook.login;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.Fragment;
import com.facebook.AccessTokenSource;
import com.facebook.CustomTabMainActivity;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookSdk;
import com.facebook.FacebookServiceException;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.CustomTab;
import com.facebook.internal.CustomTabUtils;
import com.facebook.internal.InstagramCustomTab;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.login.LoginClient;
import com.facebook.share.internal.ShareConstants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: CustomTabLoginMethodHandler.kt */
/* JADX INFO: loaded from: classes.dex */
public final class CustomTabLoginMethodHandler extends WebLoginMethodHandler {
    private static final int API_EC_DIALOG_CANCEL = 4201;
    private static final int CHALLENGE_LENGTH = 20;
    private static final int CUSTOM_TAB_REQUEST_CODE = 1;
    public static final String OAUTH_DIALOG = "oauth";
    public static boolean calledThroughLoggedOutAppSwitch;
    private String currentPackage;
    private String expectedChallenge;
    private final String nameForLogging;
    private final AccessTokenSource tokenSource;
    private String validRedirectURI;
    public static final Companion Companion = new Companion(null);
    public static final Parcelable.Creator<CustomTabLoginMethodHandler> CREATOR = new Parcelable.Creator<CustomTabLoginMethodHandler>() { // from class: com.facebook.login.CustomTabLoginMethodHandler$Companion$CREATOR$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CustomTabLoginMethodHandler createFromParcel(Parcel parcel) {
            t9.m.e(parcel, ShareConstants.FEED_SOURCE_PARAM);
            return new CustomTabLoginMethodHandler(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CustomTabLoginMethodHandler[] newArray(int i10) {
            return new CustomTabLoginMethodHandler[i10];
        }
    };

    /* JADX INFO: compiled from: CustomTabLoginMethodHandler.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomTabLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
        t9.m.e(loginClient, "loginClient");
        this.nameForLogging = "custom_tab";
        this.tokenSource = AccessTokenSource.CHROME_CUSTOM_TAB;
        Utility utility = Utility.INSTANCE;
        this.expectedChallenge = Utility.generateRandomString(20);
        calledThroughLoggedOutAppSwitch = false;
        CustomTabUtils customTabUtils = CustomTabUtils.INSTANCE;
        this.validRedirectURI = CustomTabUtils.getValidRedirectURI(getDeveloperDefinedRedirectURI());
    }

    private final String getChromePackage() {
        String str = this.currentPackage;
        if (str != null) {
            return str;
        }
        CustomTabUtils customTabUtils = CustomTabUtils.INSTANCE;
        String chromePackage = CustomTabUtils.getChromePackage();
        this.currentPackage = chromePackage;
        return chromePackage;
    }

    private final String getDeveloperDefinedRedirectURI() {
        return super.getRedirectUrl();
    }

    private final void onCustomTabComplete(String str, final LoginClient.Request request) {
        int i10;
        if (str != null) {
            if (ba.p.u(str, Validate.CUSTOM_TAB_REDIRECT_URI_PREFIX, false, 2, null) || ba.p.u(str, super.getRedirectUrl(), false, 2, null)) {
                Uri uri = Uri.parse(str);
                Utility utility = Utility.INSTANCE;
                final Bundle urlQueryString = Utility.parseUrlQueryString(uri.getQuery());
                urlQueryString.putAll(Utility.parseUrlQueryString(uri.getFragment()));
                if (!validateChallengeParam(urlQueryString)) {
                    super.onComplete(request, null, new FacebookException("Invalid state parameter"));
                    return;
                }
                String string = urlQueryString.getString("error");
                if (string == null) {
                    string = urlQueryString.getString("error_type");
                }
                String string2 = urlQueryString.getString("error_msg");
                if (string2 == null) {
                    string2 = urlQueryString.getString("error_message");
                }
                if (string2 == null) {
                    string2 = urlQueryString.getString(NativeProtocol.BRIDGE_ARG_ERROR_DESCRIPTION);
                }
                String string3 = urlQueryString.getString("error_code");
                if (string3 == null) {
                    i10 = -1;
                } else {
                    try {
                        i10 = Integer.parseInt(string3);
                    } catch (NumberFormatException unused) {
                        i10 = -1;
                    }
                }
                Utility utility2 = Utility.INSTANCE;
                if (Utility.isNullOrEmpty(string) && Utility.isNullOrEmpty(string2) && i10 == -1) {
                    if (urlQueryString.containsKey("access_token")) {
                        super.onComplete(request, urlQueryString, null);
                        return;
                    } else {
                        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                        FacebookSdk.getExecutor().execute(new Runnable() { // from class: com.facebook.login.a
                            @Override // java.lang.Runnable
                            public final void run() {
                                CustomTabLoginMethodHandler.m141onCustomTabComplete$lambda0(this.f5423o, request, urlQueryString);
                            }
                        });
                        return;
                    }
                }
                if (string != null && (t9.m.a(string, "access_denied") || t9.m.a(string, "OAuthAccessDeniedException"))) {
                    super.onComplete(request, null, new FacebookOperationCanceledException());
                } else if (i10 == API_EC_DIALOG_CANCEL) {
                    super.onComplete(request, null, new FacebookOperationCanceledException());
                } else {
                    super.onComplete(request, null, new FacebookServiceException(new FacebookRequestError(i10, string, string2), string2));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onCustomTabComplete$lambda-0, reason: not valid java name */
    public static final void m141onCustomTabComplete$lambda0(CustomTabLoginMethodHandler customTabLoginMethodHandler, LoginClient.Request request, Bundle bundle) {
        t9.m.e(customTabLoginMethodHandler, "this$0");
        t9.m.e(request, "$request");
        t9.m.e(bundle, "$values");
        try {
            customTabLoginMethodHandler.onComplete(request, customTabLoginMethodHandler.processCodeExchange(request, bundle), null);
        } catch (FacebookException e10) {
            customTabLoginMethodHandler.onComplete(request, null, e10);
        }
    }

    private final boolean validateChallengeParam(Bundle bundle) {
        try {
            String string = bundle.getString("state");
            if (string == null) {
                return false;
            }
            return t9.m.a(new JSONObject(string).getString(LoginLogger.EVENT_PARAM_CHALLENGE), this.expectedChallenge);
        } catch (JSONException unused) {
            return false;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler
    public String getNameForLogging() {
        return this.nameForLogging;
    }

    @Override // com.facebook.login.LoginMethodHandler
    protected String getRedirectUrl() {
        return this.validRedirectURI;
    }

    @Override // com.facebook.login.WebLoginMethodHandler
    protected String getSSODevice() {
        return "chrome_custom_tab";
    }

    @Override // com.facebook.login.WebLoginMethodHandler
    public AccessTokenSource getTokenSource() {
        return this.tokenSource;
    }

    @Override // com.facebook.login.LoginMethodHandler
    public boolean onActivityResult(int i10, int i11, Intent intent) {
        if (intent != null && intent.getBooleanExtra(CustomTabMainActivity.NO_ACTIVITY_EXCEPTION, false)) {
            return super.onActivityResult(i10, i11, intent);
        }
        if (i10 != 1) {
            return super.onActivityResult(i10, i11, intent);
        }
        LoginClient.Request pendingRequest = getLoginClient().getPendingRequest();
        if (pendingRequest == null) {
            return false;
        }
        if (i11 == -1) {
            onCustomTabComplete(intent != null ? intent.getStringExtra(CustomTabMainActivity.EXTRA_URL) : null, pendingRequest);
            return true;
        }
        super.onComplete(pendingRequest, null, new FacebookOperationCanceledException());
        return false;
    }

    @Override // com.facebook.login.LoginMethodHandler
    public void putChallengeParam(JSONObject jSONObject) throws JSONException {
        t9.m.e(jSONObject, "param");
        jSONObject.put(LoginLogger.EVENT_PARAM_CHALLENGE, this.expectedChallenge);
    }

    @Override // com.facebook.login.LoginMethodHandler
    public int tryAuthorize(LoginClient.Request request) {
        t9.m.e(request, "request");
        LoginClient loginClient = getLoginClient();
        if (getRedirectUrl().length() == 0) {
            return 0;
        }
        Bundle bundleAddExtraParameters = addExtraParameters(getParameters(request), request);
        if (calledThroughLoggedOutAppSwitch) {
            bundleAddExtraParameters.putString(ServerProtocol.DIALOG_PARAM_CCT_OVER_LOGGED_OUT_APP_SWITCH, AppEventsConstants.EVENT_PARAM_VALUE_YES);
        }
        if (FacebookSdk.hasCustomTabsPrefetching) {
            if (request.isInstagramLogin()) {
                CustomTabPrefetchHelper.Companion.mayLaunchUrl(InstagramCustomTab.Companion.getURIForAction(OAUTH_DIALOG, bundleAddExtraParameters));
            } else {
                CustomTabPrefetchHelper.Companion.mayLaunchUrl(CustomTab.Companion.getURIForAction(OAUTH_DIALOG, bundleAddExtraParameters));
            }
        }
        androidx.fragment.app.e activity = loginClient.getActivity();
        if (activity == null) {
            return 0;
        }
        Intent intent = new Intent(activity, (Class<?>) CustomTabMainActivity.class);
        intent.putExtra(CustomTabMainActivity.EXTRA_ACTION, OAUTH_DIALOG);
        intent.putExtra(CustomTabMainActivity.EXTRA_PARAMS, bundleAddExtraParameters);
        intent.putExtra(CustomTabMainActivity.EXTRA_CHROME_PACKAGE, getChromePackage());
        intent.putExtra(CustomTabMainActivity.EXTRA_TARGET_APP, request.getLoginTargetApp().toString());
        Fragment fragment = loginClient.getFragment();
        if (fragment != null) {
            fragment.startActivityForResult(intent, 1);
        }
        return 1;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        t9.m.e(parcel, "dest");
        super.writeToParcel(parcel, i10);
        parcel.writeString(this.expectedChallenge);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomTabLoginMethodHandler(Parcel parcel) {
        super(parcel);
        t9.m.e(parcel, ShareConstants.FEED_SOURCE_PARAM);
        this.nameForLogging = "custom_tab";
        this.tokenSource = AccessTokenSource.CHROME_CUSTOM_TAB;
        this.expectedChallenge = parcel.readString();
        CustomTabUtils customTabUtils = CustomTabUtils.INSTANCE;
        this.validRedirectURI = CustomTabUtils.getValidRedirectURI(getDeveloperDefinedRedirectURI());
    }
}
