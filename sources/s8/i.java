package s8;

import android.app.Application;
import android.content.Intent;
import androidx.databinding.m;
import androidx.fragment.app.Fragment;
import com.facebook.AccessToken;
import com.facebook.CallbackManager;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.login.LoginManager;
import com.facebook.login.LoginResult;
import com.google.android.gms.auth.api.signin.GoogleSignIn;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInClient;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.FirebaseAuth;
import com.tebakgambar.R;
import g5.j;
import g5.s;
import g5.x;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import s8.f;
import y8.u;

/* JADX INFO: compiled from: FirebaseLoginViewModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class i extends androidx.lifecycle.a implements FacebookCallback<LoginResult> {
    private static final List<String> D = Arrays.asList("email", "public_profile");
    CallbackManager A;
    private FirebaseAuth B;
    private boolean C;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public m<String> f35031s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    u<Intent> f35032t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    u<String> f35033u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    u<Boolean> f35034v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    u<Boolean> f35035w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    WeakReference<Fragment> f35036x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    f.a f35037y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private GoogleSignInClient f35038z;

    public i(Application application) {
        super(application);
        this.f35031s = new m<>();
        this.f35032t = new u<>();
        this.f35033u = new u<>();
        this.f35034v = new u<>();
        this.f35035w = new u<>();
        this.C = false;
        this.f35031s.z(j().getString(R.string.label_ask_login));
        this.A = CallbackManager.Factory.create();
        this.B = FirebaseAuth.getInstance();
        LoginManager.getInstance().registerCallback(this.A, this);
    }

    private void A() {
        Fragment fragment = this.f35036x.get();
        if (fragment == null) {
            return;
        }
        LoginManager.getInstance().logInWithReadPermissions(fragment, D);
    }

    private void B() {
        if (this.f35038z == null) {
            this.f35038z = GoogleSignIn.a(j(), new GoogleSignInOptions.Builder(GoogleSignInOptions.f6734z).d(j().getString(R.string.firebase_web_client_token)).b().a());
        }
        this.f35032t.n(this.f35038z.z());
    }

    private void C(final g5.d dVar) {
        Fragment fragment = this.f35036x.get();
        if (fragment == null || fragment.getActivity() == null) {
            return;
        }
        this.f35035w.n(Boolean.TRUE);
        s sVarB = this.B.b();
        if (sVarB != null) {
            sVarB.d4(dVar).b(fragment.getActivity(), new OnCompleteListener() { // from class: s8.g
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void a(Task task) {
                    this.f35027a.p(dVar, task);
                }
            });
        } else {
            D(dVar);
        }
    }

    private void D(final g5.d dVar) {
        Fragment fragment = this.f35036x.get();
        if (fragment == null || fragment.getActivity() == null) {
            return;
        }
        this.f35035w.n(Boolean.TRUE);
        this.B.d(dVar).b(fragment.getActivity(), new OnCompleteListener() { // from class: s8.h
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void a(Task task) {
                this.f35029a.q(dVar, task);
            }
        });
    }

    private void m(AccessToken accessToken) {
        C(g5.g.a(accessToken.getToken()));
    }

    private void n(GoogleSignInAccount googleSignInAccount) {
        C(x.a(googleSignInAccount.a4(), null));
    }

    private void o(s sVar) {
        if (this.C) {
            return;
        }
        this.C = true;
        m8.a.f().v(System.currentTimeMillis());
        this.f35034v.n(Boolean.TRUE);
        f.a aVar = this.f35037y;
        if (aVar != null) {
            aVar.a(sVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p(g5.d dVar, Task task) {
        this.f35035w.n(Boolean.FALSE);
        if (task.t()) {
            o(this.B.b());
        } else {
            D(dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q(g5.d dVar, Task task) {
        this.f35035w.n(Boolean.FALSE);
        if (task.t()) {
            o(this.B.b());
            return;
        }
        if (!(task.o() instanceof j)) {
            if (task.o() == null) {
                this.f35033u.n("Firebase Authentication Failed");
                return;
            } else {
                com.google.firebase.crashlytics.a.a().d(task.o());
                this.f35033u.n(task.o().getLocalizedMessage());
                return;
            }
        }
        j jVar = (j) task.o();
        if (!"ERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL".equals(jVar.a())) {
            this.f35033u.n(jVar.getLocalizedMessage());
        } else if (FacebookSdk.FACEBOOK_COM.equals(dVar.V3())) {
            this.f35031s.z("Akun kamu sudah terhubung dengan Google, tekan Google untuk lanjut!");
        } else if ("google.com".equals(dVar.V3())) {
            this.f35031s.z("Akun kamu sudah terhubung dengan Facebook, tekan Facebook untuk lanjut!");
        }
    }

    @Override // com.facebook.FacebookCallback
    public void onCancel() {
    }

    @Override // com.facebook.FacebookCallback
    public void onError(FacebookException facebookException) {
        this.f35033u.n(facebookException.getLocalizedMessage());
    }

    public void r() {
        m8.e.c("viewLoginPopUp", "login popup", "view on login pop up", this.f35037y.b());
    }

    public void s() {
        m8.e.c("clickLoginPopUp", "login popup", "click on close button", this.f35037y.b());
        o(this.B.b());
    }

    public void t() {
        o(this.B.b());
    }

    public void u() {
        m8.e.c("clickLoginPopUp", "login popup", "click on login with facebook", this.f35037y.b());
        A();
    }

    public void v() {
        m8.e.c("clickLoginPopUp", "login popup", "click on login with google", this.f35037y.b());
        B();
    }

    public void w(Task<GoogleSignInAccount> task) {
        try {
            GoogleSignInAccount googleSignInAccountQ = task.q(ApiException.class);
            Objects.requireNonNull(googleSignInAccountQ);
            n(googleSignInAccountQ);
        } catch (ApiException e10) {
            com.google.firebase.crashlytics.a.a().d(e10);
            this.f35033u.n(e10.getLocalizedMessage());
        }
    }

    public void x() {
        m8.e.c("clickLoginPopUp", "login popup", "click on privacy policy", this.f35037y.b());
    }

    @Override // com.facebook.FacebookCallback
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void onSuccess(LoginResult loginResult) {
        m(loginResult.getAccessToken());
    }
}
