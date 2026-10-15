package com.facebook.internal;

import android.app.Activity;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import androidx.activity.result.ActivityResultRegistry;
import com.facebook.CallbackManager;
import com.facebook.FacebookCallback;
import com.facebook.FacebookDialog;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: FacebookDialogBase.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class FacebookDialogBase<CONTENT, RESULT> implements FacebookDialog<CONTENT, RESULT> {
    private static final String TAG = "FacebookDialog";
    private final Activity activity;
    private CallbackManager callbackManager;
    private final FragmentWrapper fragmentWrapper;
    private List<? extends FacebookDialogBase<CONTENT, RESULT>.ModeHandler> modeHandlers;
    private int requestCodeField;
    public static final Companion Companion = new Companion(null);
    public static final Object BASE_AUTOMATIC_MODE = new Object();

    /* JADX INFO: compiled from: FacebookDialogBase.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: compiled from: FacebookDialogBase.kt */
    public abstract class ModeHandler {
        private Object mode;
        final /* synthetic */ FacebookDialogBase<CONTENT, RESULT> this$0;

        public ModeHandler(FacebookDialogBase facebookDialogBase) {
            t9.m.e(facebookDialogBase, "this$0");
            this.this$0 = facebookDialogBase;
            this.mode = FacebookDialogBase.BASE_AUTOMATIC_MODE;
        }

        public abstract boolean canShow(CONTENT content, boolean z10);

        public abstract AppCall createAppCall(CONTENT content);

        public Object getMode() {
            return this.mode;
        }

        public void setMode(Object obj) {
            t9.m.e(obj, "<set-?>");
            this.mode = obj;
        }
    }

    protected FacebookDialogBase(Activity activity, int i10) {
        t9.m.e(activity, "activity");
        this.activity = activity;
        this.fragmentWrapper = null;
        this.requestCodeField = i10;
        this.callbackManager = null;
    }

    private final List<FacebookDialogBase<CONTENT, RESULT>.ModeHandler> cachedModeHandlers() {
        if (this.modeHandlers == null) {
            this.modeHandlers = getOrderedModeHandlers();
        }
        List<? extends FacebookDialogBase<CONTENT, RESULT>.ModeHandler> list = this.modeHandlers;
        Objects.requireNonNull(list, "null cannot be cast to non-null type kotlin.collections.List<com.facebook.internal.FacebookDialogBase.ModeHandler<CONTENT of com.facebook.internal.FacebookDialogBase, RESULT of com.facebook.internal.FacebookDialogBase>>");
        return list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AppCall createAppCallForMode(CONTENT content, Object obj) {
        boolean z10 = obj == BASE_AUTOMATIC_MODE;
        AppCall appCallCreateBaseAppCall = null;
        Iterator<FacebookDialogBase<CONTENT, RESULT>.ModeHandler> it = cachedModeHandlers().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            FacebookDialogBase<CONTENT, RESULT>.ModeHandler next = it.next();
            if (!z10) {
                Utility utility = Utility.INSTANCE;
                if (!Utility.areObjectsEqual(next.getMode(), obj)) {
                    continue;
                }
            }
            if (next.canShow(content, true)) {
                try {
                    appCallCreateBaseAppCall = next.createAppCall(content);
                    break;
                } catch (FacebookException e10) {
                    appCallCreateBaseAppCall = createBaseAppCall();
                    DialogPresenter dialogPresenter = DialogPresenter.INSTANCE;
                    DialogPresenter.setupAppCallForValidationError(appCallCreateBaseAppCall, e10);
                }
            }
        }
        if (appCallCreateBaseAppCall != null) {
            return appCallCreateBaseAppCall;
        }
        AppCall appCallCreateBaseAppCall2 = createBaseAppCall();
        DialogPresenter dialogPresenter2 = DialogPresenter.INSTANCE;
        DialogPresenter.setupAppCallForCannotShowError(appCallCreateBaseAppCall2);
        return appCallCreateBaseAppCall2;
    }

    private final void memorizeCallbackManager(CallbackManager callbackManager) {
        CallbackManager callbackManager2 = this.callbackManager;
        if (callbackManager2 == null) {
            this.callbackManager = callbackManager;
        } else if (callbackManager2 != callbackManager) {
            Log.w(TAG, "You're registering a callback on a Facebook dialog with two different callback managers. It's almost wrong and may cause unexpected results. Only the first callback manager will be used for handling activity result with androidx.");
        }
    }

    @Override // com.facebook.FacebookDialog
    public boolean canShow(CONTENT content) {
        return canShowImpl(content, BASE_AUTOMATIC_MODE);
    }

    protected boolean canShowImpl(CONTENT content, Object obj) {
        t9.m.e(obj, "mode");
        boolean z10 = obj == BASE_AUTOMATIC_MODE;
        for (FacebookDialogBase<CONTENT, RESULT>.ModeHandler modeHandler : cachedModeHandlers()) {
            if (!z10) {
                Utility utility = Utility.INSTANCE;
                if (!Utility.areObjectsEqual(modeHandler.getMode(), obj)) {
                    continue;
                }
            }
            if (modeHandler.canShow(content, false)) {
                return true;
            }
        }
        return false;
    }

    protected final e.a<CONTENT, CallbackManager.ActivityResultParameters> createActivityResultContractForShowingDialog(final CallbackManager callbackManager, final Object obj) {
        t9.m.e(obj, "mode");
        return new e.a<CONTENT, CallbackManager.ActivityResultParameters>(this) { // from class: com.facebook.internal.FacebookDialogBase.createActivityResultContractForShowingDialog.1
            final /* synthetic */ FacebookDialogBase<CONTENT, RESULT> this$0;

            {
                this.this$0 = this;
            }

            @Override // e.a
            public Intent createIntent(Context context, CONTENT content) {
                t9.m.e(context, "context");
                AppCall appCallCreateAppCallForMode = this.this$0.createAppCallForMode(content, obj);
                Intent requestIntent = appCallCreateAppCallForMode == null ? null : appCallCreateAppCallForMode.getRequestIntent();
                if (requestIntent != null) {
                    appCallCreateAppCallForMode.setPending();
                    return requestIntent;
                }
                throw new FacebookException("Content " + content + " is not supported");
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // e.a
            public CallbackManager.ActivityResultParameters parseResult(int i10, Intent intent) {
                CallbackManager callbackManager2 = callbackManager;
                if (callbackManager2 != null) {
                    callbackManager2.onActivityResult(this.this$0.getRequestCode(), i10, intent);
                }
                return new CallbackManager.ActivityResultParameters(this.this$0.getRequestCode(), i10, intent);
            }
        };
    }

    protected abstract AppCall createBaseAppCall();

    /* JADX INFO: Access modifiers changed from: protected */
    public final Activity getActivityContext() {
        Activity activity = this.activity;
        if (activity != null) {
            return activity;
        }
        FragmentWrapper fragmentWrapper = this.fragmentWrapper;
        if (fragmentWrapper == null) {
            return null;
        }
        return fragmentWrapper.getActivity();
    }

    public final CallbackManager getCallbackManager$facebook_common_release() {
        return this.callbackManager;
    }

    protected abstract List<FacebookDialogBase<CONTENT, RESULT>.ModeHandler> getOrderedModeHandlers();

    public final int getRequestCode() {
        return this.requestCodeField;
    }

    @Override // com.facebook.FacebookDialog
    public void registerCallback(CallbackManager callbackManager, FacebookCallback<RESULT> facebookCallback) {
        t9.m.e(callbackManager, "callbackManager");
        t9.m.e(facebookCallback, "callback");
        if (!(callbackManager instanceof CallbackManagerImpl)) {
            throw new FacebookException("Unexpected CallbackManager, please use the provided Factory.");
        }
        memorizeCallbackManager(callbackManager);
        registerCallbackImpl((CallbackManagerImpl) callbackManager, facebookCallback);
    }

    protected abstract void registerCallbackImpl(CallbackManagerImpl callbackManagerImpl, FacebookCallback<RESULT> facebookCallback);

    public final void setCallbackManager(CallbackManager callbackManager) {
        this.callbackManager = callbackManager;
    }

    public final void setCallbackManager$facebook_common_release(CallbackManager callbackManager) {
        this.callbackManager = callbackManager;
    }

    public final void setRequestCode(int i10) {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        if (!FacebookSdk.isFacebookRequestCode(i10)) {
            this.requestCodeField = i10;
            return;
        }
        throw new IllegalArgumentException(("Request code " + i10 + " cannot be within the range reserved by the Facebook SDK.").toString());
    }

    @Override // com.facebook.FacebookDialog
    public void show(CONTENT content) {
        showImpl(content, BASE_AUTOMATIC_MODE);
    }

    protected void showImpl(CONTENT content, Object obj) {
        t9.m.e(obj, "mode");
        AppCall appCallCreateAppCallForMode = createAppCallForMode(content, obj);
        if (appCallCreateAppCallForMode == null) {
            Log.e(TAG, "No code path should ever result in a null appCall");
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            if (!(!FacebookSdk.isDebugEnabled())) {
                throw new IllegalStateException("No code path should ever result in a null appCall".toString());
            }
            return;
        }
        if (getActivityContext() instanceof androidx.activity.result.d) {
            ComponentCallbacks2 activityContext = getActivityContext();
            Objects.requireNonNull(activityContext, "null cannot be cast to non-null type androidx.activity.result.ActivityResultRegistryOwner");
            DialogPresenter dialogPresenter = DialogPresenter.INSTANCE;
            ActivityResultRegistry activityResultRegistry = ((androidx.activity.result.d) activityContext).getActivityResultRegistry();
            t9.m.d(activityResultRegistry, "registryOwner.activityResultRegistry");
            DialogPresenter.present(appCallCreateAppCallForMode, activityResultRegistry, this.callbackManager);
            appCallCreateAppCallForMode.setPending();
            return;
        }
        FragmentWrapper fragmentWrapper = this.fragmentWrapper;
        if (fragmentWrapper != null) {
            DialogPresenter dialogPresenter2 = DialogPresenter.INSTANCE;
            DialogPresenter.present(appCallCreateAppCallForMode, fragmentWrapper);
            return;
        }
        Activity activity = this.activity;
        if (activity != null) {
            DialogPresenter dialogPresenter3 = DialogPresenter.INSTANCE;
            DialogPresenter.present(appCallCreateAppCallForMode, activity);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final void startActivityForResult(android.content.Intent r5, int r6) {
        /*
            r4 = this;
            java.lang.String r0 = "intent"
            t9.m.e(r5, r0)
            android.app.Activity r0 = r4.getActivityContext()
            boolean r1 = r0 instanceof androidx.activity.result.d
            if (r1 == 0) goto L20
            com.facebook.internal.DialogPresenter r1 = com.facebook.internal.DialogPresenter.INSTANCE
            androidx.activity.result.d r0 = (androidx.activity.result.d) r0
            androidx.activity.result.ActivityResultRegistry r0 = r0.getActivityResultRegistry()
            java.lang.String r1 = "activity as ActivityResultRegistryOwner).activityResultRegistry"
            t9.m.d(r0, r1)
            com.facebook.CallbackManager r1 = r4.callbackManager
            com.facebook.internal.DialogPresenter.startActivityForResultWithAndroidX(r0, r1, r5, r6)
            goto L2d
        L20:
            if (r0 == 0) goto L26
            r0.startActivityForResult(r5, r6)
            goto L2d
        L26:
            com.facebook.internal.FragmentWrapper r0 = r4.fragmentWrapper
            if (r0 == 0) goto L2f
            r0.startActivityForResult(r5, r6)
        L2d:
            r5 = 0
            goto L31
        L2f:
            java.lang.String r5 = "Failed to find Activity or Fragment to startActivityForResult "
        L31:
            if (r5 == 0) goto L48
            com.facebook.internal.Logger$Companion r6 = com.facebook.internal.Logger.Companion
            com.facebook.LoggingBehavior r0 = com.facebook.LoggingBehavior.DEVELOPER_ERRORS
            r1 = 6
            java.lang.Class r2 = r4.getClass()
            java.lang.String r2 = r2.getName()
            java.lang.String r3 = "this.javaClass.name"
            t9.m.d(r2, r3)
            r6.log(r0, r1, r2, r5)
        L48:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.FacebookDialogBase.startActivityForResult(android.content.Intent, int):void");
    }

    @Override // com.facebook.FacebookDialog
    public e.a<CONTENT, CallbackManager.ActivityResultParameters> createActivityResultContractForShowingDialog(CallbackManager callbackManager) {
        return createActivityResultContractForShowingDialog(callbackManager, BASE_AUTOMATIC_MODE);
    }

    @Override // com.facebook.FacebookDialog
    public void registerCallback(CallbackManager callbackManager, FacebookCallback<RESULT> facebookCallback, int i10) {
        t9.m.e(callbackManager, "callbackManager");
        t9.m.e(facebookCallback, "callback");
        memorizeCallbackManager(callbackManager);
        setRequestCode(i10);
        registerCallback(callbackManager, facebookCallback);
    }

    protected FacebookDialogBase(FragmentWrapper fragmentWrapper, int i10) {
        t9.m.e(fragmentWrapper, "fragmentWrapper");
        this.fragmentWrapper = fragmentWrapper;
        this.activity = null;
        this.requestCodeField = i10;
        if (fragmentWrapper.getActivity() == null) {
            throw new IllegalArgumentException("Cannot use a fragment that is not attached to an activity".toString());
        }
    }

    protected FacebookDialogBase(int i10) {
        this.requestCodeField = i10;
        this.activity = null;
        this.fragmentWrapper = null;
    }
}
