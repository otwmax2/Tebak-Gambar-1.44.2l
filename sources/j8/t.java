package j8;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.Toast;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.signin.GoogleSignIn;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInClient;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.GoogleSignInResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.games.AchievementsClient;
import com.google.android.gms.games.Games;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.tebakgambar.R;
import com.tebakgambar.model.CustomBanner;
import com.tebakgambar.model.Level;
import com.vungle.warren.AdLoader;
import j8.b0;
import j8.c0;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: BaseActivity.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class t extends androidx.appcompat.app.c {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Runnable f30879q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Handler f30880r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private ViewTreeObserver.OnGlobalLayoutListener f30881s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private View f30882t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private k0 f30883u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private GoogleSignInClient f30884v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private x f30885w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private c0 f30886x;

    /* JADX INFO: compiled from: BaseActivity.java */
    class a implements c0.i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ c0 f30887a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CustomBanner f30888b;

        a(c0 c0Var, CustomBanner customBanner) {
            this.f30887a = c0Var;
            this.f30888b = customBanner;
        }

        @Override // j8.c0.i
        public void a() {
            this.f30887a.dismiss();
            t.this.L0(this.f30888b);
        }

        @Override // j8.c0.i
        public void b() {
            this.f30887a.dismiss();
            t.this.L0(this.f30888b);
        }
    }

    /* JADX INFO: compiled from: BaseActivity.java */
    class b implements b0.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ b0 f30890a;

        b(b0 b0Var) {
            this.f30890a = b0Var;
        }

        @Override // j8.b0.a
        public void a() {
            this.f30890a.dismiss();
        }

        @Override // j8.b0.a
        public void b() {
            this.f30890a.dismiss();
        }

        @Override // j8.b0.a
        public void c() {
            this.f30890a.dismiss();
        }
    }

    /* JADX INFO: compiled from: BaseActivity.java */
    class c implements c0.i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ c0 f30892a;

        c(c0 c0Var) {
            this.f30892a = c0Var;
        }

        @Override // j8.c0.i
        public void a() {
            this.f30892a.dismiss();
            t.this.f30885w.x();
        }

        @Override // j8.c0.i
        public void b() {
            this.f30892a.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F0(Boolean bool) {
        if (getSupportFragmentManager().i0("firebaseDialog") == null) {
            new s8.f().show(getSupportFragmentManager(), "firebaseDialog");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G0(Boolean bool) {
        c0 c0Var = new c0(this, R.style.CustomDialog, false, getString(R.string.logout_message), getString(R.string.logout_title), getString(R.string.logout), getString(R.string.close));
        c0Var.s();
        c0Var.o(new c(c0Var));
        c0Var.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K0(boolean z10) {
        if (z10) {
            if (this.f30886x == null) {
                this.f30886x = I0();
            }
        } else {
            c0 c0Var = this.f30886x;
            if (c0Var != null) {
                c0Var.dismiss();
                this.f30886x = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L0(CustomBanner customBanner) {
        final b0 b0Var = new b0(this, R.style.CustomDialog);
        b0Var.f30769q.setText(customBanner.positive);
        b0Var.f30768p.setText(customBanner.negative);
        v1.g.w(this).x(customBanner.imageUrl).Q(R.drawable.ads_exit).J(R.drawable.ads_exit).j(b2.b.NONE).z(true).p(b0Var.f30767o);
        b0Var.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: j8.c
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                b0Var.dismiss();
            }
        });
        b0Var.a(new b(b0Var));
        b0Var.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N0(String str) {
        b1 b1VarH = new b1(this).g(str).c(getString(R.string.button_coba_lagi), new DialogInterface.OnClickListener() { // from class: j8.k
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                this.f30840o.s0(dialogInterface, i10);
            }
        }).h(new DialogInterface.OnClickListener() { // from class: j8.l
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                this.f30863o.r0(dialogInterface, i10);
            }
        });
        b1VarH.setCancelable(false);
        b1VarH.show();
    }

    private void P0() {
        GoogleSignInClient googleSignInClientA = GoogleSignIn.a(getApplication(), new GoogleSignInOptions.Builder(GoogleSignInOptions.f6734z).d(getApplication().getString(R.string.firebase_web_client_token)).f(new Scope("https://www.googleapis.com/auth/games_lite"), new Scope[0]).b().a());
        this.f30884v = googleSignInClientA;
        googleSignInClientA.C().b(this, new OnCompleteListener() { // from class: j8.f
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void a(Task task) {
                this.f30808a.u0(task);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n0() {
        if (this.f30882t.getRootView().getHeight() - this.f30882t.getHeight() > getResources().getDimension(R.dimen.keyboard_height)) {
            A0(true);
        } else {
            A0(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r0(DialogInterface dialogInterface, int i10) {
        dialogInterface.dismiss();
        this.f30885w.z();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s0(DialogInterface dialogInterface, int i10) {
        dialogInterface.dismiss();
        this.f30885w.A();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t0(c0 c0Var) {
        if ((true ^ (Build.VERSION.SDK_INT >= 17 ? isDestroyed() : isFinishing())) && (c0Var != null && c0Var.isShowing())) {
            c0Var.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u0(Task task) {
        if (task.t()) {
            z0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v0(Intent intent) {
        startActivityForResult(intent, 9002);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object w0() throws Exception {
        int iS = y8.y.s(this) - 1;
        AchievementsClient achievementsClientA = Games.a(this, j0());
        for (Level level : Level.getAllLevels()) {
            if (level.id <= iS) {
                achievementsClientA.e(level.achievementId);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x0(Task task) {
        if (task.t()) {
            y8.y.i0(this, AppEventsConstants.EVENT_PARAM_VALUE_YES);
            y8.y.r0(this, (String) task.p());
        }
    }

    protected void A0(boolean z10) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void B0(String[] strArr, Runnable runnable) {
        this.f30879q = runnable;
        androidx.core.app.b.t(this, strArr, 55);
    }

    protected void C0(x xVar) {
        this.f30885w = xVar;
        xVar.f30904s.h(this, new androidx.lifecycle.u() { // from class: j8.d
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f30798a.O0((String) obj);
            }
        });
        xVar.f30908w.h(this, new androidx.lifecycle.u() { // from class: j8.r
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f30875a.F0((Boolean) obj);
            }
        });
        xVar.f30909x.h(this, new androidx.lifecycle.u() { // from class: j8.s
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f30877a.G0((Boolean) obj);
            }
        });
        xVar.f30907v.h(this, new androidx.lifecycle.u() { // from class: j8.q
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f30873a.K0(((Boolean) obj).booleanValue());
            }
        });
        xVar.f30905t.h(this, new androidx.lifecycle.u() { // from class: j8.p
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f30871a.M0((CustomBanner) obj);
            }
        });
        xVar.f30906u.h(this, new androidx.lifecycle.u() { // from class: j8.e
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f30803a.N0((String) obj);
            }
        });
    }

    protected void D0(int i10) {
        E0(i10, null);
    }

    protected void E0(int i10, String str) {
        androidx.fragment.app.w wVarM = getSupportFragmentManager().m();
        k0 k0VarN = k0.N(str);
        wVarM.m(i10, k0VarN);
        wVarM.f();
        this.f30883u = k0VarN;
    }

    protected void H0(String str) {
        new b1(this).g(str).c(getString(R.string.button_oke), new DialogInterface.OnClickListener() { // from class: j8.n
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                dialogInterface.dismiss();
            }
        }).h(new DialogInterface.OnClickListener() { // from class: j8.m
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                dialogInterface.dismiss();
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public c0 I0() {
        return J0(getString(R.string.loading));
    }

    protected c0 J0(String str) {
        c0 c0Var = new c0(this, R.style.CustomDialog, true, str, Integer.valueOf(R.dimen.size_text));
        c0Var.setCancelable(false);
        c0Var.show();
        return c0Var;
    }

    protected void M0(CustomBanner customBanner) {
        String strD = this.f30885w.D();
        if (strD == null) {
            L0(customBanner);
            return;
        }
        c0 c0Var = new c0(this, R.style.CustomDialog, false, strD, null, null, null);
        c0Var.d();
        c0Var.o(new a(c0Var, customBanner));
        c0Var.show();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void O0(String str) {
        final c0 c0Var = new c0(this, R.style.CustomDialog, true, str, Integer.valueOf(R.dimen.size_text_button_green));
        c0Var.show();
        g0().postDelayed(new Runnable() { // from class: j8.i
            @Override // java.lang.Runnable
            public final void run() {
                this.f30828o.t0(c0Var);
            }
        }, AdLoader.RETRY_DELAY);
    }

    protected void Q0() {
        if (l0()) {
            S0();
            Games.a(this, j0()).b().i(new OnSuccessListener() { // from class: j8.h
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final void onSuccess(Object obj) {
                    this.f30820a.v0((Intent) obj);
                }
            });
        }
    }

    protected void R0() {
        GoogleSignInAccount googleSignInAccountJ0 = j0();
        if (googleSignInAccountJ0 != null) {
            GoogleSignIn.e(this, 9001, googleSignInAccountJ0, new Scope("https://www.googleapis.com/auth/games_lite"));
            return;
        }
        GoogleSignInClient googleSignInClientA = GoogleSignIn.a(getApplication(), new GoogleSignInOptions.Builder(GoogleSignInOptions.A).a());
        this.f30884v = googleSignInClientA;
        startActivityForResult(googleSignInClientA.z(), 9001);
    }

    protected void S0() {
        if (l0()) {
            t1.h.d(new Callable() { // from class: j8.j
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f30835a.w0();
                }
            });
        }
    }

    protected void T0() {
        if (l0()) {
            Games.c(this, j0()).f().c(new OnCompleteListener() { // from class: j8.g
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void a(Task task) {
                    this.f30815a.x0(task);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Handler g0() {
        if (this.f30880r == null) {
            this.f30880r = new Handler();
        }
        return this.f30880r;
    }

    public k0 h0() {
        return this.f30883u;
    }

    public Context i0() {
        Context applicationContext = getApplicationContext();
        if (m0(applicationContext)) {
            return applicationContext;
        }
        return null;
    }

    protected GoogleSignInAccount j0() {
        return GoogleSignIn.b(this);
    }

    protected boolean k0() {
        return false;
    }

    protected boolean l0() {
        GoogleSignInAccount googleSignInAccountB = GoogleSignIn.b(this);
        return googleSignInAccountB != null && GoogleSignIn.d(googleSignInAccountB, new Scope("https://www.googleapis.com/auth/games_lite"));
    }

    public boolean m0(Context context) {
        if (context == null) {
            return false;
        }
        if (!(context instanceof Activity)) {
            return true;
        }
        Activity activity = (Activity) context;
        return Build.VERSION.SDK_INT >= 17 ? (activity.isDestroyed() || activity.isFinishing()) ? false : true : !activity.isFinishing();
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (i10 == 9001) {
            GoogleSignInResult googleSignInResultA = Auth.f6537f.a(intent);
            if (googleSignInResultA.b()) {
                z0();
                return;
            }
            String strY3 = googleSignInResultA.V2().Y3();
            if (strY3 == null || strY3.isEmpty()) {
                strY3 = getString(R.string.signin_other_error);
            }
            y0(strY3);
        }
    }

    @Override // androidx.appcompat.app.c, androidx.fragment.app.e, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        View view = this.f30882t;
        if (view != null) {
            view.getViewTreeObserver().removeOnGlobalLayoutListener(this.f30881s);
        }
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        Runnable runnable;
        if (i10 == 55) {
            if (y8.o.b(iArr) && (runnable = this.f30879q) != null) {
                runnable.run();
            }
            this.f30879q = null;
        }
    }

    @Override // androidx.fragment.app.e, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (!k0() || l0()) {
            return;
        }
        P0();
    }

    @Override // androidx.appcompat.app.c, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i10) {
        super.setContentView(i10);
        View viewFindViewById = getWindow().getDecorView().findViewById(android.R.id.content);
        this.f30882t = viewFindViewById;
        ViewTreeObserver viewTreeObserver = viewFindViewById.getViewTreeObserver();
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: j8.o
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                this.f30869o.n0();
            }
        };
        this.f30881s = onGlobalLayoutListener;
        viewTreeObserver.addOnGlobalLayoutListener(onGlobalLayoutListener);
    }

    protected void y0(String str) {
        Toast.makeText(this, str, 0).show();
    }

    protected void z0() {
        if (l0()) {
            Games.b(this, j0()).d(getWindow().getDecorView().findViewById(android.R.id.content));
            S0();
            T0();
        }
    }
}
