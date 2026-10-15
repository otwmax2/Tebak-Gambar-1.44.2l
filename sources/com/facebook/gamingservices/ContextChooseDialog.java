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
import com.facebook.gamingservices.ContextChooseDialog;
import com.facebook.gamingservices.cloudgaming.CloudGameLoginHandler;
import com.facebook.gamingservices.cloudgaming.DaemonRequest;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.gamingservices.cloudgaming.internal.SDKMessageEnum;
import com.facebook.gamingservices.model.ContextChooseContent;
import com.facebook.internal.AppCall;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.CustomTabUtils;
import com.facebook.internal.DialogPresenter;
import com.facebook.internal.FacebookDialogBase;
import com.facebook.internal.FragmentWrapper;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.facebook.share.internal.ResultProcessor;
import com.facebook.share.internal.ShareInternalUtility;
import h9.t;
import i9.l;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import t9.m;

/* JADX INFO: compiled from: ContextChooseDialog.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ContextChooseDialog extends FacebookDialogBase<ContextChooseContent, Result> {
    private static final String CONTEXT_CHOOSE_DIALOG = "context_choose";
    public static final Companion Companion = new Companion(null);
    private static final int DEFAULT_REQUEST_CODE = CallbackManagerImpl.RequestCodeOffset.GamingContextChoose.toRequestCode();
    private FacebookCallback<Result> callback;

    /* JADX INFO: compiled from: ContextChooseDialog.kt */
    private final class ChromeCustomTabHandler extends FacebookDialogBase<ContextChooseContent, Result>.ModeHandler {
        final /* synthetic */ ContextChooseDialog this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChromeCustomTabHandler(ContextChooseDialog contextChooseDialog) {
            super(contextChooseDialog);
            m.e(contextChooseDialog, "this$0");
            this.this$0 = contextChooseDialog;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public boolean canShow(ContextChooseContent contextChooseContent, boolean z10) {
            m.e(contextChooseContent, "content");
            CustomTabUtils customTabUtils = CustomTabUtils.INSTANCE;
            return CustomTabUtils.getChromePackage() != null;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public AppCall createAppCall(ContextChooseContent contextChooseContent) {
            m.e(contextChooseContent, "content");
            AppCall appCallCreateBaseAppCall = this.this$0.createBaseAppCall();
            AccessToken currentAccessToken = AccessToken.Companion.getCurrentAccessToken();
            Bundle bundle = new Bundle();
            Bundle bundle2 = new Bundle();
            Bundle bundle3 = new Bundle();
            String applicationId = currentAccessToken == null ? null : currentAccessToken.getApplicationId();
            if (applicationId == null) {
                FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                applicationId = FacebookSdk.getApplicationId();
            }
            bundle.putString("app_id", applicationId);
            if (contextChooseContent.getMinSize() != null) {
                bundle3.putString("min_size", contextChooseContent.getMinSize().toString());
            }
            if (contextChooseContent.getMaxSize() != null) {
                bundle3.putString("max_size", contextChooseContent.getMaxSize().toString());
            }
            if (contextChooseContent.getFilters() != null) {
                bundle3.putString("filters", new JSONArray((Collection) contextChooseContent.getFilters()).toString());
            }
            bundle2.putString("filters", bundle3.toString());
            bundle.putString("payload", bundle2.toString());
            CustomTabUtils customTabUtils = CustomTabUtils.INSTANCE;
            bundle.putString(ServerProtocol.DIALOG_PARAM_REDIRECT_URI, CustomTabUtils.getDefaultRedirectURI());
            DialogPresenter dialogPresenter = DialogPresenter.INSTANCE;
            DialogPresenter.setupAppCallForCustomTabDialog(appCallCreateBaseAppCall, ContextChooseDialog.CONTEXT_CHOOSE_DIALOG, bundle);
            return appCallCreateBaseAppCall;
        }
    }

    /* JADX INFO: compiled from: ContextChooseDialog.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: ContextChooseDialog.kt */
    private final class FacebookAppHandler extends FacebookDialogBase<ContextChooseContent, Result>.ModeHandler {
        final /* synthetic */ ContextChooseDialog this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FacebookAppHandler(ContextChooseDialog contextChooseDialog) {
            super(contextChooseDialog);
            m.e(contextChooseDialog, "this$0");
            this.this$0 = contextChooseDialog;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public boolean canShow(ContextChooseContent contextChooseContent, boolean z10) {
            m.e(contextChooseContent, "content");
            Activity activityContext = this.this$0.getActivityContext();
            PackageManager packageManager = activityContext == null ? null : activityContext.getPackageManager();
            Intent intent = new Intent("com.facebook.games.gaming_services.DEEPLINK");
            intent.setType("text/plain");
            boolean z11 = (packageManager == null ? null : intent.resolveActivity(packageManager)) != null;
            AccessToken currentAccessToken = AccessToken.Companion.getCurrentAccessToken();
            return z11 && ((currentAccessToken != null ? currentAccessToken.getGraphDomain() : null) != null && m.a(FacebookSdk.GAMING, currentAccessToken.getGraphDomain()));
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public AppCall createAppCall(ContextChooseContent contextChooseContent) {
            m.e(contextChooseContent, "content");
            AppCall appCallCreateBaseAppCall = this.this$0.createBaseAppCall();
            Intent intent = new Intent("com.facebook.games.gaming_services.DEEPLINK");
            intent.setType("text/plain");
            AccessToken currentAccessToken = AccessToken.Companion.getCurrentAccessToken();
            Bundle bundle = new Bundle();
            bundle.putString(SDKConstants.PARAM_TOURNAMENTS_DEEPLINK, "CONTEXT_CHOOSE");
            if (currentAccessToken != null) {
                bundle.putString("game_id", currentAccessToken.getApplicationId());
            } else {
                FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                bundle.putString("game_id", FacebookSdk.getApplicationId());
            }
            if (contextChooseContent.getMinSize() != null) {
                bundle.putString("min_thread_size", contextChooseContent.getMinSize().toString());
            }
            if (contextChooseContent.getMaxSize() != null) {
                bundle.putString("max_thread_size", contextChooseContent.getMaxSize().toString());
            }
            if (contextChooseContent.getFilters() != null) {
                bundle.putString("filters", new JSONArray((Collection) contextChooseContent.getFilters()).toString());
            }
            NativeProtocol nativeProtocol = NativeProtocol.INSTANCE;
            NativeProtocol.setupProtocolRequestIntent(intent, appCallCreateBaseAppCall.getCallId().toString(), com.vungle.mediation.BuildConfig.FLAVOR, NativeProtocol.getLatestKnownVersion(), bundle);
            appCallCreateBaseAppCall.setRequestIntent(intent);
            return appCallCreateBaseAppCall;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContextChooseDialog(Activity activity) {
        super(activity, DEFAULT_REQUEST_CODE);
        m.e(activity, "activity");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: registerCallbackImpl$lambda-4, reason: not valid java name */
    public static final boolean m89registerCallbackImpl$lambda4(ContextChooseDialog contextChooseDialog, ContextChooseDialog$registerCallbackImpl$resultProcessor$1 contextChooseDialog$registerCallbackImpl$resultProcessor$1, int i10, Intent intent) {
        m.e(contextChooseDialog, "this$0");
        m.e(contextChooseDialog$registerCallbackImpl$resultProcessor$1, "$resultProcessor");
        ShareInternalUtility shareInternalUtility = ShareInternalUtility.INSTANCE;
        return ShareInternalUtility.handleActivityResult(contextChooseDialog.getRequestCode(), i10, intent, contextChooseDialog$registerCallbackImpl$resultProcessor$1);
    }

    private final void showForCloud(ContextChooseContent contextChooseContent) {
        AccessToken currentAccessToken = AccessToken.Companion.getCurrentAccessToken();
        if (currentAccessToken == null || currentAccessToken.isExpired()) {
            throw new FacebookException("Attempted to open ContextChooseContent with an invalid access token");
        }
        DaemonRequest.Callback callback = new DaemonRequest.Callback() { // from class: com.facebook.gamingservices.a
            @Override // com.facebook.gamingservices.cloudgaming.DaemonRequest.Callback
            public final void onCompleted(GraphResponse graphResponse) {
                ContextChooseDialog.m90showForCloud$lambda2(this.f5363a, graphResponse);
            }
        };
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("filters", contextChooseContent.getFilters());
            jSONObject.put(SDKConstants.PARAM_CONTEXT_MIN_SIZE, contextChooseContent.getMinSize());
            List<String> filters = contextChooseContent.getFilters();
            if (filters != null) {
                JSONArray jSONArray = new JSONArray();
                Iterator<String> it = filters.iterator();
                while (it.hasNext()) {
                    jSONArray.put(it.next());
                }
                jSONObject.put("filters", jSONArray);
            }
            DaemonRequest.executeAsync(getActivityContext(), jSONObject, callback, SDKMessageEnum.CONTEXT_CHOOSE);
        } catch (JSONException unused) {
            FacebookCallback<Result> facebookCallback = this.callback;
            if (facebookCallback == null) {
                return;
            }
            facebookCallback.onError(new FacebookException("Couldn't prepare Context Choose Dialog"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: showForCloud$lambda-2, reason: not valid java name */
    public static final void m90showForCloud$lambda2(ContextChooseDialog contextChooseDialog, GraphResponse graphResponse) {
        t tVar;
        m.e(contextChooseDialog, "this$0");
        FacebookCallback<Result> facebookCallback = contextChooseDialog.callback;
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
    protected List<FacebookDialogBase<ContextChooseContent, Result>.ModeHandler> getOrderedModeHandlers() {
        return l.g(new FacebookAppHandler(this), new ChromeCustomTabHandler(this));
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.facebook.gamingservices.ContextChooseDialog$registerCallbackImpl$resultProcessor$1] */
    @Override // com.facebook.internal.FacebookDialogBase
    protected void registerCallbackImpl(CallbackManagerImpl callbackManagerImpl, final FacebookCallback<Result> facebookCallback) {
        m.e(callbackManagerImpl, "callbackManager");
        m.e(facebookCallback, "callback");
        this.callback = facebookCallback;
        final ?? r02 = new ResultProcessor(facebookCallback) { // from class: com.facebook.gamingservices.ContextChooseDialog$registerCallbackImpl$resultProcessor$1
            final /* synthetic */ FacebookCallback<ContextChooseDialog.Result> $callback;

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
                if (string != null) {
                    GamingContext.Companion.setCurrentGamingContext(new GamingContext(string));
                    this.$callback.onSuccess(new ContextChooseDialog.Result(bundle));
                }
                this.$callback.onError(new FacebookException(bundle.getString("Invalid response received from server.")));
            }
        };
        callbackManagerImpl.registerCallback(getRequestCode(), new CallbackManagerImpl.Callback() { // from class: com.facebook.gamingservices.b
            @Override // com.facebook.internal.CallbackManagerImpl.Callback
            public final boolean onActivityResult(int i10, Intent intent) {
                return ContextChooseDialog.m89registerCallbackImpl$lambda4(this.f5364a, r02, i10, intent);
            }
        });
    }

    /* JADX INFO: compiled from: ContextChooseDialog.kt */
    public static final class Result {
        private String contextID;

        public Result(Bundle bundle) {
            m.e(bundle, "results");
            this.contextID = bundle.getString("id");
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
    public ContextChooseDialog(Fragment fragment) {
        this(new FragmentWrapper(fragment));
        m.e(fragment, "fragment");
    }

    @Override // com.facebook.internal.FacebookDialogBase, com.facebook.FacebookDialog
    public boolean canShow(ContextChooseContent contextChooseContent) {
        m.e(contextChooseContent, "content");
        return CloudGameLoginHandler.isRunningInCloud() || new FacebookAppHandler(this).canShow(contextChooseContent, true) || new ChromeCustomTabHandler(this).canShow(contextChooseContent, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.internal.FacebookDialogBase
    public void showImpl(ContextChooseContent contextChooseContent, Object obj) {
        m.e(contextChooseContent, "content");
        m.e(obj, "mode");
        if (CloudGameLoginHandler.isRunningInCloud()) {
            showForCloud(contextChooseContent);
        } else {
            super.showImpl(contextChooseContent, obj);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ContextChooseDialog(android.app.Fragment fragment) {
        this(new FragmentWrapper(fragment));
        m.e(fragment, "fragment");
    }

    private ContextChooseDialog(FragmentWrapper fragmentWrapper) {
        super(fragmentWrapper, DEFAULT_REQUEST_CODE);
    }
}
