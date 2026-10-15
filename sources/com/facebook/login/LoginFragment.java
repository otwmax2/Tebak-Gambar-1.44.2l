package com.facebook.login;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import com.facebook.login.LoginClient;
import h9.t;

/* JADX INFO: compiled from: LoginFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public class LoginFragment extends Fragment {
    public static final Companion Companion = new Companion(null);
    public static final String EXTRA_REQUEST = "request";
    private static final String NULL_CALLING_PKG_ERROR_MSG = "Cannot call LoginFragment with a null calling package. This can occur if the launchMode of the caller is singleInstance.";
    public static final String REQUEST_KEY = "com.facebook.LoginFragment:Request";
    public static final String RESULT_KEY = "com.facebook.LoginFragment:Result";
    private static final String SAVED_LOGIN_CLIENT = "loginClient";
    private static final String TAG = "LoginFragment";
    private String callingPackage;
    private androidx.activity.result.c<Intent> launcher;
    private LoginClient loginClient;
    private View progressBar;
    private LoginClient.Request request;

    /* JADX INFO: compiled from: LoginFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }
    }

    /* JADX INFO: renamed from: com.facebook.login.LoginFragment$getLoginMethodHandlerCallback$1, reason: invalid class name */
    /* JADX INFO: compiled from: LoginFragment.kt */
    static final class AnonymousClass1 extends t9.n implements s9.l<androidx.activity.result.a, t> {
        final /* synthetic */ androidx.fragment.app.e $activity;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(androidx.fragment.app.e eVar) {
            super(1);
            this.$activity = eVar;
        }

        @Override // s9.l
        public /* bridge */ /* synthetic */ t invoke(androidx.activity.result.a aVar) {
            invoke2(aVar);
            return t.f30301a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(androidx.activity.result.a aVar) {
            t9.m.e(aVar, "result");
            if (aVar.t() == -1) {
                LoginFragment.this.getLoginClient().onActivityResult(LoginClient.Companion.getLoginRequestCode(), aVar.t(), aVar.h());
            } else {
                this.$activity.finish();
            }
        }
    }

    private final s9.l<androidx.activity.result.a, t> getLoginMethodHandlerCallback(androidx.fragment.app.e eVar) {
        return new AnonymousClass1(eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void hideSpinner() {
        View view = this.progressBar;
        if (view == null) {
            t9.m.p("progressBar");
            throw null;
        }
        view.setVisibility(8);
        onSpinnerHidden();
    }

    private final void initializeCallingPackage(Activity activity) {
        ComponentName callingActivity = activity.getCallingActivity();
        if (callingActivity == null) {
            return;
        }
        this.callingPackage = callingActivity.getPackageName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onCreate$lambda-0, reason: not valid java name */
    public static final void m150onCreate$lambda0(LoginFragment loginFragment, LoginClient.Result result) {
        t9.m.e(loginFragment, "this$0");
        t9.m.e(result, "outcome");
        loginFragment.onLoginClientCompleted(result);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onCreate$lambda-1, reason: not valid java name */
    public static final void m151onCreate$lambda1(s9.l lVar, androidx.activity.result.a aVar) {
        t9.m.e(lVar, "$tmp0");
        lVar.invoke(aVar);
    }

    private final void onLoginClientCompleted(LoginClient.Result result) {
        this.request = null;
        int i10 = result.code == LoginClient.Result.Code.CANCEL ? 0 : -1;
        Bundle bundle = new Bundle();
        bundle.putParcelable(RESULT_KEY, result);
        Intent intent = new Intent();
        intent.putExtras(bundle);
        androidx.fragment.app.e activity = getActivity();
        if (!isAdded() || activity == null) {
            return;
        }
        activity.setResult(i10, intent);
        activity.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showSpinner() {
        View view = this.progressBar;
        if (view == null) {
            t9.m.p("progressBar");
            throw null;
        }
        view.setVisibility(0);
        onSpinnerShown();
    }

    protected LoginClient createLoginClient() {
        return new LoginClient(this);
    }

    @Override // androidx.fragment.app.Fragment, androidx.lifecycle.i
    public /* bridge */ /* synthetic */ s0.a getDefaultViewModelCreationExtras() {
        return androidx.lifecycle.h.a(this);
    }

    public final androidx.activity.result.c<Intent> getLauncher() {
        androidx.activity.result.c<Intent> cVar = this.launcher;
        if (cVar != null) {
            return cVar;
        }
        t9.m.p("launcher");
        throw null;
    }

    protected int getLayoutResId() {
        return com.facebook.common.R.layout.com_facebook_login_fragment;
    }

    public final LoginClient getLoginClient() {
        LoginClient loginClient = this.loginClient;
        if (loginClient != null) {
            return loginClient;
        }
        t9.m.p(SAVED_LOGIN_CLIENT);
        throw null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        getLoginClient().onActivityResult(i10, i11, intent);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        Bundle bundleExtra;
        super.onCreate(bundle);
        LoginClient loginClientCreateLoginClient = bundle == null ? null : (LoginClient) bundle.getParcelable(SAVED_LOGIN_CLIENT);
        if (loginClientCreateLoginClient != null) {
            loginClientCreateLoginClient.setFragment(this);
        } else {
            loginClientCreateLoginClient = createLoginClient();
        }
        this.loginClient = loginClientCreateLoginClient;
        getLoginClient().setOnCompletedListener(new LoginClient.OnCompletedListener() { // from class: com.facebook.login.k
            @Override // com.facebook.login.LoginClient.OnCompletedListener
            public final void onCompleted(LoginClient.Result result) {
                LoginFragment.m150onCreate$lambda0(this.f5444a, result);
            }
        });
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        initializeCallingPackage(activity);
        Intent intent = activity.getIntent();
        if (intent != null && (bundleExtra = intent.getBundleExtra(REQUEST_KEY)) != null) {
            this.request = (LoginClient.Request) bundleExtra.getParcelable("request");
        }
        e.c cVar = new e.c();
        final s9.l<androidx.activity.result.a, t> loginMethodHandlerCallback = getLoginMethodHandlerCallback(activity);
        androidx.activity.result.c<Intent> cVarRegisterForActivityResult = registerForActivityResult(cVar, new androidx.activity.result.b() { // from class: com.facebook.login.j
            @Override // androidx.activity.result.b
            public final void a(Object obj) {
                LoginFragment.m151onCreate$lambda1(loginMethodHandlerCallback, (androidx.activity.result.a) obj);
            }
        });
        t9.m.d(cVarRegisterForActivityResult, "registerForActivityResult(\n            ActivityResultContracts.StartActivityForResult(),\n            getLoginMethodHandlerCallback(activity))");
        this.launcher = cVarRegisterForActivityResult;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        t9.m.e(layoutInflater, "inflater");
        View viewInflate = layoutInflater.inflate(getLayoutResId(), viewGroup, false);
        View viewFindViewById = viewInflate.findViewById(com.facebook.common.R.id.com_facebook_login_fragment_progress_bar);
        t9.m.d(viewFindViewById, "view.findViewById<View>(R.id.com_facebook_login_fragment_progress_bar)");
        this.progressBar = viewFindViewById;
        getLoginClient().setBackgroundProcessingListener(new LoginClient.BackgroundProcessingListener() { // from class: com.facebook.login.LoginFragment.onCreateView.1
            @Override // com.facebook.login.LoginClient.BackgroundProcessingListener
            public void onBackgroundProcessingStarted() {
                LoginFragment.this.showSpinner();
            }

            @Override // com.facebook.login.LoginClient.BackgroundProcessingListener
            public void onBackgroundProcessingStopped() {
                LoginFragment.this.hideSpinner();
            }
        });
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        getLoginClient().cancelCurrentHandler();
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        View view = getView();
        View viewFindViewById = view == null ? null : view.findViewById(com.facebook.common.R.id.com_facebook_login_fragment_progress_bar);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(8);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.callingPackage != null) {
            getLoginClient().startOrContinueAuth(this.request);
            return;
        }
        Log.e(TAG, NULL_CALLING_PKG_ERROR_MSG);
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        activity.finish();
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        t9.m.e(bundle, "outState");
        super.onSaveInstanceState(bundle);
        bundle.putParcelable(SAVED_LOGIN_CLIENT, getLoginClient());
    }

    protected void onSpinnerHidden() {
    }

    protected void onSpinnerShown() {
    }
}
