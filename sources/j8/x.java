package j8;

import android.app.Application;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.auth.FirebaseAuth;
import com.tebakgambar.R;
import com.tebakgambar.model.CustomBanner;
import com.tebakgambar.model.GameData;
import com.tebakgambar.model.LocalUserData;
import com.tebakgambar.model.RequestHeader;
import com.tebakgambar.model.UserData;
import com.tebakgambar.model.request.LoginRequest;
import com.tebakgambar.model.response.ApiResponse3;
import com.tebakgambar.model.response.LoginResult;
import com.tebakgambar.network.TebakGambarApi;
import com.vungle.mediation.BuildConfig;
import java.io.IOException;
import java.util.concurrent.Callable;
import s8.f;

/* JADX INFO: compiled from: BaseViewModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class x extends androidx.lifecycle.a implements f.a {
    protected String A;
    private boolean B;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected y8.u<String> f30904s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected y8.u<CustomBanner> f30905t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected y8.u<String> f30906u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    protected androidx.lifecycle.t<Boolean> f30907v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    protected y8.u<Boolean> f30908w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    protected y8.u<Boolean> f30909x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    protected FirebaseAuth f30910y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    protected UserData f30911z;

    /* JADX INFO: compiled from: BaseViewModel.java */
    class a implements wa.d<ApiResponse3<LoginResult>> {
        a() {
        }

        @Override // wa.d
        public void a(wa.b<ApiResponse3<LoginResult>> bVar, wa.l<ApiResponse3<LoginResult>> lVar) throws Throwable {
            x.this.f30907v.n(Boolean.FALSE);
            ApiResponse3<LoginResult> apiResponse3A = lVar.a();
            if (!lVar.f() || apiResponse3A == null) {
                x xVar = x.this;
                xVar.o(xVar.j().getString(R.string.error_login_generic));
                return;
            }
            if (apiResponse3A.header.statusCode != 200 || lVar.a() == null) {
                String[] strArr = apiResponse3A.header.messages;
                x.this.o(strArr.length > 0 ? strArr[0] : x.this.j().getString(R.string.error_login_generic));
                return;
            }
            m8.a.f().s(new GameData(lVar.a().data.gameToken));
            m8.a.f().w(true);
            LocalUserData.getInstance().clearOldLoginData();
            x.this.f30911z = lVar.a().data.userData;
            FirebaseAnalytics.getInstance(x.this.j()).b(x.this.f30911z.tgUserId);
            x.this.f30905t.n(lVar.a().data.customBanner);
            m8.e.c("clickLoginPopUp", "login popup", "login success", x.this.b());
            x.this.B();
        }

        @Override // wa.d
        public void b(wa.b<ApiResponse3<LoginResult>> bVar, Throwable th) {
            x.this.f30907v.n(Boolean.FALSE);
            if (th instanceof IOException) {
                x xVar = x.this;
                xVar.o(xVar.j().getString(R.string.error_login_no_internet));
            } else {
                x xVar2 = x.this;
                xVar2.o(xVar2.j().getString(R.string.error_login_generic));
            }
        }
    }

    public x(Application application) {
        super(application);
        this.f30904s = new y8.u<>();
        this.f30905t = new y8.u<>();
        this.f30906u = new y8.u<>();
        this.f30907v = new androidx.lifecycle.t<>();
        this.f30908w = new y8.u<>();
        this.f30909x = new y8.u<>();
        this.A = BuildConfig.FLAVOR;
        this.B = false;
        this.f30910y = FirebaseAuth.getInstance();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o(String str) {
        if (!m8.a.f().o() && !this.B) {
            this.f30906u.n(str);
        }
        this.B = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r(Task task) {
        this.f30907v.n(Boolean.FALSE);
        if (task.t()) {
            v();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object s(String str, LoginRequest loginRequest) throws Exception {
        TebakGambarApi.b().login(RequestHeader.create(str), loginRequest).v3(new a());
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t(Task task) {
        if (!task.t() || task.p() == null || ((g5.u) task.p()).c() == null) {
            this.f30907v.n(Boolean.FALSE);
            o(j().getString(R.string.error_login_generic));
            return;
        }
        final String strC = ((g5.u) task.p()).c();
        String syncToken = LocalUserData.getInstance().getSyncToken();
        final LoginRequest loginRequest = new LoginRequest();
        loginRequest.oldSyncToken = syncToken;
        loginRequest.gameToken = m8.a.f().d().toGameToken();
        t1.h.d(new Callable() { // from class: j8.w
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f30899a.s(strC, loginRequest);
            }
        });
    }

    private void u() {
        if (this.f30910y.b() != null) {
            return;
        }
        this.f30907v.n(Boolean.TRUE);
        this.f30910y.c().c(new OnCompleteListener() { // from class: j8.u
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void a(Task task) {
                this.f30895a.r(task);
            }
        });
    }

    void A() {
        v();
    }

    public void B() {
    }

    public void C() {
        if (p() == null) {
            u();
        } else {
            if (m8.a.f().o()) {
                return;
            }
            v();
        }
    }

    public String D() {
        g5.s sVarB = this.f30910y.b();
        if (sVarB == null || sVarB.c4()) {
            return null;
        }
        return j().getString(R.string.popup_message_login_success, new Object[]{this.f30911z.fullname});
    }

    public void a(g5.s sVar) {
        m8.a.f().w(false);
        if (sVar == null) {
            u();
        } else {
            v();
        }
    }

    @Override // s8.f.a
    public String b() {
        return this.A;
    }

    public g5.s p() {
        return this.f30910y.b();
    }

    public boolean q() {
        g5.s sVarB = this.f30910y.b();
        return (sVarB == null || sVarB.c4()) ? false : true;
    }

    public void v() {
        g5.s sVarB = this.f30910y.b();
        if (sVarB == null) {
            return;
        }
        this.f30907v.n(Boolean.TRUE);
        sVarB.W3(true).c(new OnCompleteListener() { // from class: j8.v
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void a(Task task) {
                this.f30897a.t(task);
            }
        });
    }

    public void w() throws Throwable {
        this.f30910y.e();
        m8.a.f().w(false);
        m8.a.f().r();
        u();
    }

    void x() {
        m8.e.b("clickLogoutPopUp", "logout popup", "click on logout");
        w();
    }

    public void z() {
        this.B = true;
        w();
    }
}
