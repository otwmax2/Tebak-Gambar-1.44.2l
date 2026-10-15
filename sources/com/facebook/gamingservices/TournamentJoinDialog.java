package com.facebook.gamingservices;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.facebook.AccessToken;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.gamingservices.TournamentJoinDialog;
import com.facebook.gamingservices.cloudgaming.CloudGameLoginHandler;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.gamingservices.internal.TournamentJoinDialogURIBuilder;
import com.facebook.internal.AppCall;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.CustomTabUtils;
import com.facebook.internal.DialogPresenter;
import com.facebook.internal.FacebookDialogBase;
import com.facebook.internal.FragmentWrapper;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.instrument.crashshield.AutoHandleExceptions;
import com.facebook.share.internal.ResultProcessor;
import com.facebook.share.internal.ShareInternalUtility;
import i9.l;
import java.util.List;
import t9.m;

/* JADX INFO: compiled from: TournamentJoinDialog.kt */
/* JADX INFO: loaded from: classes.dex */
@AutoHandleExceptions
public final class TournamentJoinDialog extends FacebookDialogBase<String, Result> {
    public static final Companion Companion = new Companion(null);
    private static final int DEFAULT_REQUEST_CODE = CallbackManagerImpl.RequestCodeOffset.TournamentJoinDialog.toRequestCode();
    private static final String JOIN_TOURNAMENT_ACCESS_TOKEN_KEY = "access_token";
    private static final String JOIN_TOURNAMENT_ACTION = "com.facebook.games.gaming_services.DEEPLINK";
    private static final String JOIN_TOURNAMENT_CONTENT_TYPE = "text/plain";
    private static final String JOIN_TOURNAMENT_DIALOG = "join_tournament";
    private static final String JOIN_TOURNAMENT_ERROR_MESSAGE_KEY = "error_message";
    private String payload;
    private Number requestID;
    private String tournamentID;

    /* JADX INFO: compiled from: TournamentJoinDialog.kt */
    private final class ChromeCustomTabHandler extends FacebookDialogBase<String, Result>.ModeHandler {
        final /* synthetic */ TournamentJoinDialog this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChromeCustomTabHandler(TournamentJoinDialog tournamentJoinDialog) {
            super(tournamentJoinDialog);
            m.e(tournamentJoinDialog, "this$0");
            this.this$0 = tournamentJoinDialog;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public boolean canShow(String str, boolean z10) {
            CustomTabUtils customTabUtils = CustomTabUtils.INSTANCE;
            return CustomTabUtils.getChromePackage() != null;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public AppCall createAppCall(String str) {
            AppCall appCallCreateBaseAppCall = this.this$0.createBaseAppCall();
            AccessToken currentAccessToken = AccessToken.Companion.getCurrentAccessToken();
            Bundle bundle = new Bundle();
            Bundle bundle2 = new Bundle();
            String applicationId = currentAccessToken == null ? null : currentAccessToken.getApplicationId();
            if (applicationId == null) {
                FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                applicationId = FacebookSdk.getApplicationId();
            }
            bundle.putString("app_id", applicationId);
            bundle.putString("payload", bundle2.toString());
            if (currentAccessToken != null) {
                currentAccessToken.getToken();
            }
            bundle.putString("access_token", currentAccessToken != null ? currentAccessToken.getToken() : null);
            CustomTabUtils customTabUtils = CustomTabUtils.INSTANCE;
            bundle.putString(ServerProtocol.DIALOG_PARAM_REDIRECT_URI, CustomTabUtils.getDefaultRedirectURI());
            DialogPresenter dialogPresenter = DialogPresenter.INSTANCE;
            DialogPresenter.setupAppCallForCustomTabDialog(appCallCreateBaseAppCall, TournamentJoinDialog.JOIN_TOURNAMENT_DIALOG, bundle);
            return appCallCreateBaseAppCall;
        }
    }

    /* JADX INFO: compiled from: TournamentJoinDialog.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: TournamentJoinDialog.kt */
    private final class FacebookAppHandler extends FacebookDialogBase<String, Result>.ModeHandler {
        final /* synthetic */ TournamentJoinDialog this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FacebookAppHandler(TournamentJoinDialog tournamentJoinDialog) {
            super(tournamentJoinDialog);
            m.e(tournamentJoinDialog, "this$0");
            this.this$0 = tournamentJoinDialog;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public boolean canShow(String str, boolean z10) {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            PackageManager packageManager = FacebookSdk.getApplicationContext().getPackageManager();
            m.d(packageManager, "FacebookSdk.getApplicationContext().packageManager");
            Intent intent = new Intent(TournamentJoinDialog.JOIN_TOURNAMENT_ACTION);
            intent.setType(TournamentJoinDialog.JOIN_TOURNAMENT_CONTENT_TYPE);
            return intent.resolveActivity(packageManager) != null;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public AppCall createAppCall(String str) {
            AccessToken currentAccessToken = AccessToken.Companion.getCurrentAccessToken();
            AppCall appCallCreateBaseAppCall = this.this$0.createBaseAppCall();
            Intent intent = new Intent(TournamentJoinDialog.JOIN_TOURNAMENT_ACTION);
            intent.setType(TournamentJoinDialog.JOIN_TOURNAMENT_CONTENT_TYPE);
            if (currentAccessToken == null || currentAccessToken.isExpired()) {
                throw new FacebookException("Attempted to present TournamentJoinDialog with an invalid access token");
            }
            if (currentAccessToken.getGraphDomain() != null && !m.a(FacebookSdk.GAMING, currentAccessToken.getGraphDomain())) {
                throw new FacebookException("Attempted to present TournamentJoinDialog while user is not gaming logged in");
            }
            Bundle bundleBundle$facebook_gamingservices_release = TournamentJoinDialogURIBuilder.INSTANCE.bundle$facebook_gamingservices_release(currentAccessToken.getApplicationId(), this.this$0.tournamentID, this.this$0.payload);
            NativeProtocol nativeProtocol = NativeProtocol.INSTANCE;
            NativeProtocol.setupProtocolRequestIntent(intent, appCallCreateBaseAppCall.getCallId().toString(), com.vungle.mediation.BuildConfig.FLAVOR, NativeProtocol.PROTOCOL_VERSION_20210906, bundleBundle$facebook_gamingservices_release);
            appCallCreateBaseAppCall.setRequestIntent(intent);
            return appCallCreateBaseAppCall;
        }
    }

    /* JADX INFO: compiled from: TournamentJoinDialog.kt */
    public static final class Result {
        private String payload;
        private String requestID;
        private String tournamentID;

        public Result(Bundle bundle) {
            m.e(bundle, "results");
            if (bundle.getString("request") != null) {
                this.requestID = bundle.getString("request");
            }
            this.tournamentID = bundle.getString(SDKConstants.PARAM_TOURNAMENTS_ID);
            this.payload = bundle.getString("payload");
        }

        public final String getPayload() {
            return this.payload;
        }

        public final String getRequestID() {
            return this.requestID;
        }

        public final String getTournamentID() {
            return this.tournamentID;
        }

        public final void setPayload(String str) {
            this.payload = str;
        }

        public final void setRequestID(String str) {
            this.requestID = str;
        }

        public final void setTournamentID(String str) {
            this.tournamentID = str;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TournamentJoinDialog(Activity activity) {
        super(activity, DEFAULT_REQUEST_CODE);
        m.e(activity, "activity");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: registerCallbackImpl$lambda-0, reason: not valid java name */
    public static final boolean m96registerCallbackImpl$lambda0(TournamentJoinDialog tournamentJoinDialog, ResultProcessor resultProcessor, int i10, Intent intent) {
        m.e(tournamentJoinDialog, "this$0");
        m.e(resultProcessor, "$resultProcessor");
        ShareInternalUtility shareInternalUtility = ShareInternalUtility.INSTANCE;
        return ShareInternalUtility.handleActivityResult(tournamentJoinDialog.getRequestCode(), i10, intent, resultProcessor);
    }

    @Override // com.facebook.internal.FacebookDialogBase
    protected AppCall createBaseAppCall() {
        return new AppCall(getRequestCode(), null, 2, null);
    }

    @Override // com.facebook.internal.FacebookDialogBase
    protected List<FacebookDialogBase<String, Result>.ModeHandler> getOrderedModeHandlers() {
        return l.g(new FacebookAppHandler(this), new ChromeCustomTabHandler(this));
    }

    @Override // com.facebook.internal.FacebookDialogBase
    protected void registerCallbackImpl(CallbackManagerImpl callbackManagerImpl, final FacebookCallback<Result> facebookCallback) {
        m.e(callbackManagerImpl, "callbackManager");
        m.e(facebookCallback, "callback");
        final ResultProcessor resultProcessor = new ResultProcessor(facebookCallback) { // from class: com.facebook.gamingservices.TournamentJoinDialog$registerCallbackImpl$resultProcessor$1
            final /* synthetic */ FacebookCallback<TournamentJoinDialog.Result> $callback;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(facebookCallback);
                this.$callback = facebookCallback;
            }

            @Override // com.facebook.share.internal.ResultProcessor
            public void onSuccess(AppCall appCall, Bundle bundle) {
                m.e(appCall, "appCall");
                if (bundle != null) {
                    if (bundle.getString("error_message") != null) {
                        this.$callback.onError(new FacebookException(bundle.getString("error_message")));
                        return;
                    } else if (bundle.getString("payload") != null) {
                        this.$callback.onSuccess(new TournamentJoinDialog.Result(bundle));
                        return;
                    }
                }
                onCancel(appCall);
            }
        };
        callbackManagerImpl.registerCallback(getRequestCode(), new CallbackManagerImpl.Callback() { // from class: com.facebook.gamingservices.h
            @Override // com.facebook.internal.CallbackManagerImpl.Callback
            public final boolean onActivityResult(int i10, Intent intent) {
                return TournamentJoinDialog.m96registerCallbackImpl$lambda0(this.f5373a, resultProcessor, i10, intent);
            }
        });
    }

    public final void show(String str, String str2) {
        this.tournamentID = str;
        this.payload = str2;
        super.showImpl(str, FacebookDialogBase.BASE_AUTOMATIC_MODE);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TournamentJoinDialog(Fragment fragment) {
        this(new FragmentWrapper(fragment));
        m.e(fragment, "fragment");
    }

    @Override // com.facebook.internal.FacebookDialogBase, com.facebook.FacebookDialog
    public boolean canShow(String str) {
        if (CloudGameLoginHandler.isRunningInCloud()) {
            return false;
        }
        if (new FacebookAppHandler(this).canShow(str, true)) {
            return true;
        }
        return new ChromeCustomTabHandler(this).canShow(str, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.internal.FacebookDialogBase
    public void showImpl(String str, Object obj) {
        m.e(obj, "mode");
        if (CloudGameLoginHandler.isRunningInCloud()) {
            return;
        }
        super.showImpl(str, obj);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TournamentJoinDialog(android.app.Fragment fragment) {
        this(new FragmentWrapper(fragment));
        m.e(fragment, "fragment");
    }

    private TournamentJoinDialog(FragmentWrapper fragmentWrapper) {
        super(fragmentWrapper, DEFAULT_REQUEST_CODE);
    }
}
