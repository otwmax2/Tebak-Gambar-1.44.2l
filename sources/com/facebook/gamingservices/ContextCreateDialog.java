package com.facebook.gamingservices;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.facebook.AccessToken;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookSdk;
import com.facebook.GraphResponse;
import com.facebook.gamingservices.ContextCreateDialog;
import com.facebook.gamingservices.cloudgaming.CloudGameLoginHandler;
import com.facebook.gamingservices.cloudgaming.DaemonRequest;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.gamingservices.cloudgaming.internal.SDKMessageEnum;
import com.facebook.gamingservices.model.ContextCreateContent;
import com.facebook.internal.AppCall;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.DialogPresenter;
import com.facebook.internal.FacebookDialogBase;
import com.facebook.internal.FragmentWrapper;
import com.facebook.internal.NativeProtocol;
import com.facebook.share.internal.ResultProcessor;
import com.facebook.share.internal.ShareInternalUtility;
import h9.t;
import i9.l;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import t9.m;

/* JADX INFO: compiled from: ContextCreateDialog.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ContextCreateDialog extends FacebookDialogBase<ContextCreateContent, Result> {
    public static final Companion Companion = new Companion(null);
    private static final int DEFAULT_REQUEST_CODE = CallbackManagerImpl.RequestCodeOffset.GamingContextCreate.toRequestCode();
    private FacebookCallback<Result> callback;

    /* JADX INFO: compiled from: ContextCreateDialog.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: ContextCreateDialog.kt */
    private final class FacebookAppHandler extends FacebookDialogBase<ContextCreateContent, Result>.ModeHandler {
        final /* synthetic */ ContextCreateDialog this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FacebookAppHandler(ContextCreateDialog contextCreateDialog) {
            super(contextCreateDialog);
            m.e(contextCreateDialog, "this$0");
            this.this$0 = contextCreateDialog;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public boolean canShow(ContextCreateContent contextCreateContent, boolean z10) {
            m.e(contextCreateContent, "content");
            Activity activityContext = this.this$0.getActivityContext();
            PackageManager packageManager = activityContext == null ? null : activityContext.getPackageManager();
            Intent intent = new Intent("com.facebook.games.gaming_services.DEEPLINK");
            intent.setType("text/plain");
            boolean z11 = (packageManager == null ? null : intent.resolveActivity(packageManager)) != null;
            AccessToken currentAccessToken = AccessToken.Companion.getCurrentAccessToken();
            return z11 && ((currentAccessToken != null ? currentAccessToken.getGraphDomain() : null) != null && m.a(FacebookSdk.GAMING, currentAccessToken.getGraphDomain()));
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public AppCall createAppCall(ContextCreateContent contextCreateContent) {
            m.e(contextCreateContent, "content");
            AppCall appCallCreateBaseAppCall = this.this$0.createBaseAppCall();
            Intent intent = new Intent("com.facebook.games.gaming_services.DEEPLINK");
            intent.setType("text/plain");
            AccessToken currentAccessToken = AccessToken.Companion.getCurrentAccessToken();
            Bundle bundle = new Bundle();
            bundle.putString(SDKConstants.PARAM_TOURNAMENTS_DEEPLINK, "CONTEXT_CREATE");
            if (currentAccessToken != null) {
                bundle.putString("game_id", currentAccessToken.getApplicationId());
            } else {
                FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                bundle.putString("game_id", FacebookSdk.getApplicationId());
            }
            if (contextCreateContent.getSuggestedPlayerID() != null) {
                bundle.putString("player_id", contextCreateContent.getSuggestedPlayerID());
            }
            NativeProtocol nativeProtocol = NativeProtocol.INSTANCE;
            NativeProtocol.setupProtocolRequestIntent(intent, appCallCreateBaseAppCall.getCallId().toString(), com.vungle.mediation.BuildConfig.FLAVOR, NativeProtocol.getLatestKnownVersion(), bundle);
            appCallCreateBaseAppCall.setRequestIntent(intent);
            return appCallCreateBaseAppCall;
        }
    }

    /* JADX INFO: compiled from: ContextCreateDialog.kt */
    private final class WebHandler extends FacebookDialogBase<ContextCreateContent, Result>.ModeHandler {
        final /* synthetic */ ContextCreateDialog this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WebHandler(ContextCreateDialog contextCreateDialog) {
            super(contextCreateDialog);
            m.e(contextCreateDialog, "this$0");
            this.this$0 = contextCreateDialog;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public boolean canShow(ContextCreateContent contextCreateContent, boolean z10) {
            m.e(contextCreateContent, "content");
            return true;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public AppCall createAppCall(ContextCreateContent contextCreateContent) {
            m.e(contextCreateContent, "content");
            AppCall appCallCreateBaseAppCall = this.this$0.createBaseAppCall();
            Bundle bundle = new Bundle();
            bundle.putString("player_id", contextCreateContent.getSuggestedPlayerID());
            AccessToken currentAccessToken = AccessToken.Companion.getCurrentAccessToken();
            if (currentAccessToken != null) {
                bundle.putString("dialog_access_token", currentAccessToken.getToken());
            }
            DialogPresenter dialogPresenter = DialogPresenter.INSTANCE;
            DialogPresenter.setupAppCallForWebDialog(appCallCreateBaseAppCall, "context", bundle);
            return appCallCreateBaseAppCall;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContextCreateDialog(Activity activity) {
        super(activity, DEFAULT_REQUEST_CODE);
        m.e(activity, "activity");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: registerCallbackImpl$lambda-3, reason: not valid java name */
    public static final boolean m91registerCallbackImpl$lambda3(ContextCreateDialog contextCreateDialog, ResultProcessor resultProcessor, int i10, Intent intent) {
        m.e(contextCreateDialog, "this$0");
        m.e(resultProcessor, "$resultProcessor");
        ShareInternalUtility shareInternalUtility = ShareInternalUtility.INSTANCE;
        return ShareInternalUtility.handleActivityResult(contextCreateDialog.getRequestCode(), i10, intent, resultProcessor);
    }

    private final void showForCloud(ContextCreateContent contextCreateContent) {
        AccessToken currentAccessToken = AccessToken.Companion.getCurrentAccessToken();
        if (currentAccessToken == null || currentAccessToken.isExpired()) {
            throw new FacebookException("Attempted to open ContextCreateContent with an invalid access token");
        }
        DaemonRequest.Callback callback = new DaemonRequest.Callback() { // from class: com.facebook.gamingservices.c
            @Override // com.facebook.gamingservices.cloudgaming.DaemonRequest.Callback
            public final void onCompleted(GraphResponse graphResponse) {
                ContextCreateDialog.m92showForCloud$lambda2(this.f5366a, graphResponse);
            }
        };
        JSONObject jSONObject = new JSONObject();
        try {
            if (contextCreateContent.getSuggestedPlayerID() != null) {
                jSONObject.put("id", contextCreateContent.getSuggestedPlayerID());
            }
            DaemonRequest.executeAsync(getActivityContext(), jSONObject, callback, SDKMessageEnum.CONTEXT_CREATE);
        } catch (JSONException unused) {
            FacebookCallback<Result> facebookCallback = this.callback;
            if (facebookCallback == null) {
                return;
            }
            facebookCallback.onError(new FacebookException("Couldn't prepare Context Create Dialog"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: showForCloud$lambda-2, reason: not valid java name */
    public static final void m92showForCloud$lambda2(ContextCreateDialog contextCreateDialog, GraphResponse graphResponse) {
        t tVar;
        m.e(contextCreateDialog, "this$0");
        FacebookCallback<Result> facebookCallback = contextCreateDialog.callback;
        if (facebookCallback == null) {
            return;
        }
        FacebookRequestError error = graphResponse.getError();
        if (error == null) {
            tVar = null;
        } else {
            facebookCallback.onError(new FacebookException(error.getErrorMessage()));
            tVar = t.f30301a;
        }
        if (tVar == null) {
            m.d(graphResponse, "response");
            facebookCallback.onSuccess(new Result(graphResponse));
        }
    }

    @Override // com.facebook.internal.FacebookDialogBase
    protected AppCall createBaseAppCall() {
        return new AppCall(getRequestCode(), null, 2, null);
    }

    @Override // com.facebook.internal.FacebookDialogBase
    protected List<FacebookDialogBase<ContextCreateContent, Result>.ModeHandler> getOrderedModeHandlers() {
        return l.g(new FacebookAppHandler(this), new WebHandler(this));
    }

    @Override // com.facebook.internal.FacebookDialogBase
    protected void registerCallbackImpl(CallbackManagerImpl callbackManagerImpl, final FacebookCallback<Result> facebookCallback) {
        m.e(callbackManagerImpl, "callbackManager");
        m.e(facebookCallback, "callback");
        this.callback = facebookCallback;
        final ResultProcessor resultProcessor = new ResultProcessor(facebookCallback) { // from class: com.facebook.gamingservices.ContextCreateDialog$registerCallbackImpl$resultProcessor$1
            final /* synthetic */ FacebookCallback<ContextCreateDialog.Result> $callback;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(facebookCallback);
                this.$callback = facebookCallback;
            }

            @Override // com.facebook.share.internal.ResultProcessor
            public void onSuccess(AppCall appCall, Bundle bundle) {
                m.e(appCall, "appCall");
                if (bundle == null) {
                    onCancel(appCall);
                    return;
                }
                if (bundle.getString("error_message") != null) {
                    this.$callback.onError(new FacebookException(bundle.getString("error_message")));
                    return;
                }
                String string = bundle.getString("id");
                String string2 = bundle.getString(SDKConstants.PARAM_CONTEXT_CONTEXT_ID);
                if (string != null) {
                    GamingContext.Companion.setCurrentGamingContext(new GamingContext(string));
                    this.$callback.onSuccess(new ContextCreateDialog.Result(string));
                } else if (string2 != null) {
                    GamingContext.Companion.setCurrentGamingContext(new GamingContext(string2));
                    this.$callback.onSuccess(new ContextCreateDialog.Result(string2));
                }
                this.$callback.onError(new FacebookException(bundle.getString("Invalid response received from server.")));
            }
        };
        callbackManagerImpl.registerCallback(getRequestCode(), new CallbackManagerImpl.Callback() { // from class: com.facebook.gamingservices.d
            @Override // com.facebook.internal.CallbackManagerImpl.Callback
            public final boolean onActivityResult(int i10, Intent intent) {
                return ContextCreateDialog.m91registerCallbackImpl$lambda3(this.f5367a, resultProcessor, i10, intent);
            }
        });
    }

    /* JADX INFO: compiled from: ContextCreateDialog.kt */
    public static final class Result {
        private String contextID;

        public Result(String str) {
            m.e(str, "contextID");
            this.contextID = str;
        }

        public final String getContextID() {
            return this.contextID;
        }

        public final void setContextID(String str) {
            this.contextID = str;
        }

        public Result(GraphResponse graphResponse) {
            JSONObject jSONObjectOptJSONObject;
            m.e(graphResponse, "response");
            try {
                JSONObject jSONObject = graphResponse.getJSONObject();
                if (jSONObject != null && (jSONObjectOptJSONObject = jSONObject.optJSONObject("data")) != null) {
                    setContextID(jSONObjectOptJSONObject.getString("id"));
                }
            } catch (JSONException unused) {
                this.contextID = null;
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ContextCreateDialog(Fragment fragment) {
        this(new FragmentWrapper(fragment));
        m.e(fragment, "fragment");
    }

    @Override // com.facebook.internal.FacebookDialogBase, com.facebook.FacebookDialog
    public boolean canShow(ContextCreateContent contextCreateContent) {
        m.e(contextCreateContent, "content");
        return CloudGameLoginHandler.isRunningInCloud() || new FacebookAppHandler(this).canShow(contextCreateContent, true) || new WebHandler(this).canShow(contextCreateContent, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.internal.FacebookDialogBase
    public void showImpl(ContextCreateContent contextCreateContent, Object obj) {
        m.e(contextCreateContent, "content");
        m.e(obj, "mode");
        if (CloudGameLoginHandler.isRunningInCloud()) {
            showForCloud(contextCreateContent);
        } else {
            super.showImpl(contextCreateContent, obj);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ContextCreateDialog(android.app.Fragment fragment) {
        this(new FragmentWrapper(fragment));
        m.e(fragment, "fragment");
    }

    private ContextCreateDialog(FragmentWrapper fragmentWrapper) {
        super(fragmentWrapper, DEFAULT_REQUEST_CODE);
    }
}
