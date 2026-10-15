package com.facebook.gamingservices;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.facebook.AccessToken;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.gamingservices.TournamentShareDialog;
import com.facebook.gamingservices.cloudgaming.CloudGameLoginHandler;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.gamingservices.internal.TournamentShareDialogURIBuilder;
import com.facebook.internal.AppCall;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.FacebookDialogBase;
import com.facebook.internal.FragmentWrapper;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.instrument.crashshield.AutoHandleExceptions;
import com.facebook.share.internal.ResultProcessor;
import com.facebook.share.internal.ShareInternalUtility;
import java.util.ArrayList;
import java.util.List;
import t9.m;

/* JADX INFO: compiled from: TournamentShareDialog.kt */
/* JADX INFO: loaded from: classes.dex */
@AutoHandleExceptions
public final class TournamentShareDialog extends FacebookDialogBase<TournamentConfig, Result> {
    public static final Companion Companion = new Companion(null);
    private static final int defaultRequestCode = CallbackManagerImpl.RequestCodeOffset.TournamentShareDialog.toRequestCode();
    private Number score;
    private Tournament tournament;

    /* JADX INFO: compiled from: TournamentShareDialog.kt */
    private final class AppSwitchHandler extends FacebookDialogBase<TournamentConfig, Result>.ModeHandler {
        final /* synthetic */ TournamentShareDialog this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AppSwitchHandler(TournamentShareDialog tournamentShareDialog) {
            super(tournamentShareDialog);
            m.e(tournamentShareDialog, "this$0");
            this.this$0 = tournamentShareDialog;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public boolean canShow(TournamentConfig tournamentConfig, boolean z10) {
            return true;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public AppCall createAppCall(TournamentConfig tournamentConfig) {
            Uri uriUriForUpdating$facebook_gamingservices_release;
            AppCall appCallCreateBaseAppCall = this.this$0.createBaseAppCall();
            AccessToken currentAccessToken = AccessToken.Companion.getCurrentAccessToken();
            if (currentAccessToken == null || currentAccessToken.isExpired()) {
                throw new FacebookException("Attempted to share tournament with an invalid access token");
            }
            if (currentAccessToken.getGraphDomain() != null && !m.a(FacebookSdk.GAMING, currentAccessToken.getGraphDomain())) {
                throw new FacebookException("Attempted to share tournament without without gaming login");
            }
            Number score = this.this$0.getScore();
            if (score == null) {
                throw new FacebookException("Attempted to share tournament without a score");
            }
            if (tournamentConfig != null) {
                uriUriForUpdating$facebook_gamingservices_release = TournamentShareDialogURIBuilder.INSTANCE.uriForCreating$facebook_gamingservices_release(tournamentConfig, score, currentAccessToken.getApplicationId());
            } else {
                Tournament tournament = this.this$0.getTournament();
                uriUriForUpdating$facebook_gamingservices_release = tournament == null ? null : TournamentShareDialogURIBuilder.INSTANCE.uriForUpdating$facebook_gamingservices_release(tournament.identifier, score, currentAccessToken.getApplicationId());
            }
            Intent intent = new Intent("android.intent.action.VIEW", uriUriForUpdating$facebook_gamingservices_release);
            TournamentShareDialog tournamentShareDialog = this.this$0;
            tournamentShareDialog.startActivityForResult(intent, tournamentShareDialog.getRequestCode());
            return appCallCreateBaseAppCall;
        }
    }

    /* JADX INFO: compiled from: TournamentShareDialog.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: TournamentShareDialog.kt */
    private final class FacebookAppHandler extends FacebookDialogBase<TournamentConfig, Result>.ModeHandler {
        final /* synthetic */ TournamentShareDialog this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FacebookAppHandler(TournamentShareDialog tournamentShareDialog) {
            super(tournamentShareDialog);
            m.e(tournamentShareDialog, "this$0");
            this.this$0 = tournamentShareDialog;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public boolean canShow(TournamentConfig tournamentConfig, boolean z10) {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            PackageManager packageManager = FacebookSdk.getApplicationContext().getPackageManager();
            m.d(packageManager, "getApplicationContext().packageManager");
            Intent intent = new Intent("com.facebook.games.gaming_services.DEEPLINK");
            intent.setType("text/plain");
            return intent.resolveActivity(packageManager) != null;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public AppCall createAppCall(TournamentConfig tournamentConfig) {
            Bundle bundleBundleForUpdating$facebook_gamingservices_release;
            AccessToken currentAccessToken = AccessToken.Companion.getCurrentAccessToken();
            AppCall appCallCreateBaseAppCall = this.this$0.createBaseAppCall();
            Intent intent = new Intent("com.facebook.games.gaming_services.DEEPLINK");
            intent.setType("text/plain");
            if (currentAccessToken == null || currentAccessToken.isExpired()) {
                throw new FacebookException("Attempted to share tournament with an invalid access token");
            }
            if (currentAccessToken.getGraphDomain() != null && !m.a(FacebookSdk.GAMING, currentAccessToken.getGraphDomain())) {
                throw new FacebookException("Attempted to share tournament while user is not gaming logged in");
            }
            String applicationId = currentAccessToken.getApplicationId();
            Number score = this.this$0.getScore();
            if (score == null) {
                throw new FacebookException("Attempted to share tournament without a score");
            }
            if (tournamentConfig != null) {
                bundleBundleForUpdating$facebook_gamingservices_release = TournamentShareDialogURIBuilder.INSTANCE.bundleForCreating$facebook_gamingservices_release(tournamentConfig, score, applicationId);
            } else {
                Tournament tournament = this.this$0.getTournament();
                bundleBundleForUpdating$facebook_gamingservices_release = tournament == null ? null : TournamentShareDialogURIBuilder.INSTANCE.bundleForUpdating$facebook_gamingservices_release(tournament.identifier, score, applicationId);
            }
            NativeProtocol nativeProtocol = NativeProtocol.INSTANCE;
            NativeProtocol.setupProtocolRequestIntent(intent, appCallCreateBaseAppCall.getCallId().toString(), com.vungle.mediation.BuildConfig.FLAVOR, NativeProtocol.PROTOCOL_VERSION_20210906, bundleBundleForUpdating$facebook_gamingservices_release);
            appCallCreateBaseAppCall.setRequestIntent(intent);
            return appCallCreateBaseAppCall;
        }
    }

    /* JADX INFO: compiled from: TournamentShareDialog.kt */
    public static final class Result {
        private String requestID;
        private String tournamentID;

        public Result(Bundle bundle) {
            m.e(bundle, "results");
            if (bundle.getString("request") != null) {
                this.requestID = bundle.getString("request");
            }
            this.tournamentID = bundle.getString(SDKConstants.PARAM_TOURNAMENTS_ID);
        }

        public final String getRequestID() {
            return this.requestID;
        }

        public final String getTournamentID() {
            return this.tournamentID;
        }

        public final void setRequestID(String str) {
            this.requestID = str;
        }

        public final void setTournamentID(String str) {
            this.tournamentID = str;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TournamentShareDialog(Activity activity) {
        super(activity, defaultRequestCode);
        m.e(activity, "activity");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: registerCallbackImpl$lambda-0, reason: not valid java name */
    public static final boolean m97registerCallbackImpl$lambda0(TournamentShareDialog tournamentShareDialog, ResultProcessor resultProcessor, int i10, Intent intent) {
        m.e(tournamentShareDialog, "this$0");
        ShareInternalUtility shareInternalUtility = ShareInternalUtility.INSTANCE;
        return ShareInternalUtility.handleActivityResult(tournamentShareDialog.getRequestCode(), i10, intent, resultProcessor);
    }

    @Override // com.facebook.internal.FacebookDialogBase
    protected AppCall createBaseAppCall() {
        return new AppCall(getRequestCode(), null, 2, null);
    }

    @Override // com.facebook.internal.FacebookDialogBase
    protected List<FacebookDialogBase<TournamentConfig, Result>.ModeHandler> getOrderedModeHandlers() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new FacebookAppHandler(this));
        arrayList.add(new AppSwitchHandler(this));
        return arrayList;
    }

    public final Number getScore() {
        return this.score;
    }

    public final Tournament getTournament() {
        return this.tournament;
    }

    @Override // com.facebook.internal.FacebookDialogBase
    protected void registerCallbackImpl(CallbackManagerImpl callbackManagerImpl, final FacebookCallback<Result> facebookCallback) {
        m.e(callbackManagerImpl, "callbackManager");
        m.e(facebookCallback, "callback");
        final ResultProcessor resultProcessor = new ResultProcessor(facebookCallback) { // from class: com.facebook.gamingservices.TournamentShareDialog$registerCallbackImpl$resultProcessor$1
            final /* synthetic */ FacebookCallback<TournamentShareDialog.Result> $callback;

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
                    } else if (bundle.getString(SDKConstants.PARAM_TOURNAMENTS_ID) != null) {
                        this.$callback.onSuccess(new TournamentShareDialog.Result(bundle));
                        return;
                    }
                }
                onCancel(appCall);
            }
        };
        callbackManagerImpl.registerCallback(getRequestCode(), new CallbackManagerImpl.Callback() { // from class: com.facebook.gamingservices.i
            @Override // com.facebook.internal.CallbackManagerImpl.Callback
            public final boolean onActivityResult(int i10, Intent intent) {
                return TournamentShareDialog.m97registerCallbackImpl$lambda0(this.f5375a, resultProcessor, i10, intent);
            }
        });
    }

    public final void setScore(Number number) {
        this.score = number;
    }

    public final void setTournament(Tournament tournament) {
        this.tournament = tournament;
    }

    public final void show(Number number, TournamentConfig tournamentConfig) {
        m.e(number, "score");
        m.e(tournamentConfig, "newTournamentConfig");
        this.score = number;
        showImpl(tournamentConfig, FacebookDialogBase.BASE_AUTOMATIC_MODE);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TournamentShareDialog(Fragment fragment) {
        this(new FragmentWrapper(fragment));
        m.e(fragment, "fragment");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.internal.FacebookDialogBase
    public void showImpl(TournamentConfig tournamentConfig, Object obj) {
        m.e(obj, "mode");
        if (CloudGameLoginHandler.isRunningInCloud()) {
            return;
        }
        super.showImpl(tournamentConfig, obj);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TournamentShareDialog(android.app.Fragment fragment) {
        this(new FragmentWrapper(fragment));
        m.e(fragment, "fragment");
    }

    public final void show(Number number, Tournament tournament) {
        m.e(number, "score");
        m.e(tournament, "tournament");
        this.score = number;
        this.tournament = tournament;
        showImpl((TournamentConfig) null, FacebookDialogBase.BASE_AUTOMATIC_MODE);
    }

    private TournamentShareDialog(FragmentWrapper fragmentWrapper) {
        super(fragmentWrapper, defaultRequestCode);
    }
}
