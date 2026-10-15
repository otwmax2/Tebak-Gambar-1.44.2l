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
import com.facebook.gamingservices.ContextSwitchDialog;
import com.facebook.gamingservices.cloudgaming.CloudGameLoginHandler;
import com.facebook.gamingservices.cloudgaming.DaemonRequest;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.gamingservices.cloudgaming.internal.SDKMessageEnum;
import com.facebook.gamingservices.model.ContextSwitchContent;
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

/* JADX INFO: compiled from: ContextSwitchDialog.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ContextSwitchDialog extends FacebookDialogBase<ContextSwitchContent, Result> {
    public static final Companion Companion = new Companion(null);
    private static final int DEFAULT_REQUEST_CODE = CallbackManagerImpl.RequestCodeOffset.GamingContextSwitch.toRequestCode();
    private FacebookCallback<Result> callback;

    /* JADX INFO: compiled from: ContextSwitchDialog.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: ContextSwitchDialog.kt */
    private final class FacebookAppHandler extends FacebookDialogBase<ContextSwitchContent, Result>.ModeHandler {
        final /* synthetic */ ContextSwitchDialog this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FacebookAppHandler(ContextSwitchDialog contextSwitchDialog) {
            super(contextSwitchDialog);
            m.e(contextSwitchDialog, "this$0");
            this.this$0 = contextSwitchDialog;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public boolean canShow(ContextSwitchContent contextSwitchContent, boolean z10) {
            m.e(contextSwitchContent, "content");
            Activity activityContext = this.this$0.getActivityContext();
            PackageManager packageManager = activityContext == null ? null : activityContext.getPackageManager();
            Intent intent = new Intent("com.facebook.games.gaming_services.DEEPLINK");
            intent.setType("text/plain");
            boolean z11 = (packageManager == null ? null : intent.resolveActivity(packageManager)) != null;
            AccessToken currentAccessToken = AccessToken.Companion.getCurrentAccessToken();
            return z11 && ((currentAccessToken != null ? currentAccessToken.getGraphDomain() : null) != null && m.a(FacebookSdk.GAMING, currentAccessToken.getGraphDomain()));
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public AppCall createAppCall(ContextSwitchContent contextSwitchContent) {
            m.e(contextSwitchContent, "content");
            AppCall appCallCreateBaseAppCall = this.this$0.createBaseAppCall();
            Intent intent = new Intent("com.facebook.games.gaming_services.DEEPLINK");
            intent.setType("text/plain");
            AccessToken currentAccessToken = AccessToken.Companion.getCurrentAccessToken();
            Bundle bundle = new Bundle();
            bundle.putString(SDKConstants.PARAM_TOURNAMENTS_DEEPLINK, "CONTEXT_SWITCH");
            if (currentAccessToken != null) {
                bundle.putString("game_id", currentAccessToken.getApplicationId());
            } else {
                FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                bundle.putString("game_id", FacebookSdk.getApplicationId());
            }
            if (contextSwitchContent.getContextID() != null) {
                bundle.putString("context_token_id", contextSwitchContent.getContextID());
            }
            NativeProtocol nativeProtocol = NativeProtocol.INSTANCE;
            NativeProtocol.setupProtocolRequestIntent(intent, appCallCreateBaseAppCall.getCallId().toString(), com.vungle.mediation.BuildConfig.FLAVOR, NativeProtocol.getLatestKnownVersion(), bundle);
            appCallCreateBaseAppCall.setRequestIntent(intent);
            return appCallCreateBaseAppCall;
        }
    }

    /* JADX INFO: compiled from: ContextSwitchDialog.kt */
    private final class WebHandler extends FacebookDialogBase<ContextSwitchContent, Result>.ModeHandler {
        final /* synthetic */ ContextSwitchDialog this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WebHandler(ContextSwitchDialog contextSwitchDialog) {
            super(contextSwitchDialog);
            m.e(contextSwitchDialog, "this$0");
            this.this$0 = contextSwitchDialog;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public boolean canShow(ContextSwitchContent contextSwitchContent, boolean z10) {
            m.e(contextSwitchContent, "content");
            return true;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public AppCall createAppCall(ContextSwitchContent contextSwitchContent) {
            m.e(contextSwitchContent, "content");
            AppCall appCallCreateBaseAppCall = this.this$0.createBaseAppCall();
            Bundle bundle = new Bundle();
            bundle.putString(SDKConstants.PARAM_CONTEXT_CONTEXT_ID, contextSwitchContent.getContextID());
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
    public ContextSwitchDialog(Activity activity) {
        super(activity, DEFAULT_REQUEST_CODE);
        m.e(activity, "activity");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: registerCallbackImpl$lambda-3, reason: not valid java name */
    public static final boolean m93registerCallbackImpl$lambda3(ContextSwitchDialog contextSwitchDialog, ResultProcessor resultProcessor, int i10, Intent intent) {
        m.e(contextSwitchDialog, "this$0");
        m.e(resultProcessor, "$resultProcessor");
        ShareInternalUtility shareInternalUtility = ShareInternalUtility.INSTANCE;
        return ShareInternalUtility.handleActivityResult(contextSwitchDialog.getRequestCode(), i10, intent, resultProcessor);
    }

    private final void showForCloud(ContextSwitchContent contextSwitchContent) {
        AccessToken currentAccessToken = AccessToken.Companion.getCurrentAccessToken();
        if (currentAccessToken == null || currentAccessToken.isExpired()) {
            throw new FacebookException("Attempted to open ContextSwitchContent with an invalid access token");
        }
        DaemonRequest.Callback callback = new DaemonRequest.Callback() { // from class: com.facebook.gamingservices.e
            @Override // com.facebook.gamingservices.cloudgaming.DaemonRequest.Callback
            public final void onCompleted(GraphResponse graphResponse) {
                ContextSwitchDialog.m94showForCloud$lambda2(this.f5369a, graphResponse);
            }
        };
        String contextID = contextSwitchContent.getContextID();
        if (contextID == null) {
            FacebookCallback<Result> facebookCallback = this.callback;
            if (facebookCallback == null) {
                return;
            }
            facebookCallback.onError(new FacebookException("Required string contextID not provided."));
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", contextID);
            DaemonRequest.executeAsync(getActivityContext(), jSONObject, callback, SDKMessageEnum.CONTEXT_SWITCH);
        } catch (JSONException unused) {
            FacebookCallback<Result> facebookCallback2 = this.callback;
            if (facebookCallback2 == null) {
                return;
            }
            facebookCallback2.onError(new FacebookException("Couldn't prepare Context Switch Dialog"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: showForCloud$lambda-2, reason: not valid java name */
    public static final void m94showForCloud$lambda2(ContextSwitchDialog contextSwitchDialog, GraphResponse graphResponse) {
        t tVar;
        m.e(contextSwitchDialog, "this$0");
        FacebookCallback<Result> facebookCallback = contextSwitchDialog.callback;
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
    protected List<FacebookDialogBase<ContextSwitchContent, Result>.ModeHandler> getOrderedModeHandlers() {
        return l.g(new FacebookAppHandler(this), new WebHandler(this));
    }

    @Override // com.facebook.internal.FacebookDialogBase
    protected void registerCallbackImpl(CallbackManagerImpl callbackManagerImpl, final FacebookCallback<Result> facebookCallback) {
        m.e(callbackManagerImpl, "callbackManager");
        m.e(facebookCallback, "callback");
        this.callback = facebookCallback;
        final ResultProcessor resultProcessor = new ResultProcessor(facebookCallback) { // from class: com.facebook.gamingservices.ContextSwitchDialog$registerCallbackImpl$resultProcessor$1
            final /* synthetic */ FacebookCallback<ContextSwitchDialog.Result> $callback;

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
                    this.$callback.onSuccess(new ContextSwitchDialog.Result(string));
                } else if (string2 != null) {
                    GamingContext.Companion.setCurrentGamingContext(new GamingContext(string2));
                    this.$callback.onSuccess(new ContextSwitchDialog.Result(string2));
                }
                this.$callback.onError(new FacebookException(bundle.getString("Invalid response received from server.")));
            }
        };
        callbackManagerImpl.registerCallback(getRequestCode(), new CallbackManagerImpl.Callback() { // from class: com.facebook.gamingservices.f
            @Override // com.facebook.internal.CallbackManagerImpl.Callback
            public final boolean onActivityResult(int i10, Intent intent) {
                return ContextSwitchDialog.m93registerCallbackImpl$lambda3(this.f5370a, resultProcessor, i10, intent);
            }
        });
    }

    /* JADX INFO: compiled from: ContextSwitchDialog.kt */
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
    public ContextSwitchDialog(Fragment fragment) {
        this(new FragmentWrapper(fragment));
        m.e(fragment, "fragment");
    }

    @Override // com.facebook.internal.FacebookDialogBase, com.facebook.FacebookDialog
    public boolean canShow(ContextSwitchContent contextSwitchContent) {
        m.e(contextSwitchContent, "content");
        return CloudGameLoginHandler.isRunningInCloud() || new FacebookAppHandler(this).canShow(contextSwitchContent, true) || new WebHandler(this).canShow(contextSwitchContent, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.internal.FacebookDialogBase
    public void showImpl(ContextSwitchContent contextSwitchContent, Object obj) {
        m.e(contextSwitchContent, "content");
        m.e(obj, "mode");
        if (CloudGameLoginHandler.isRunningInCloud()) {
            showForCloud(contextSwitchContent);
        } else {
            super.showImpl(contextSwitchContent, obj);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ContextSwitchDialog(android.app.Fragment fragment) {
        this(new FragmentWrapper(fragment));
        m.e(fragment, "fragment");
    }

    private ContextSwitchDialog(FragmentWrapper fragmentWrapper) {
        super(fragmentWrapper, DEFAULT_REQUEST_CODE);
    }
}
