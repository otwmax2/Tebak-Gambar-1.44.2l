package com.tebakgambar.home;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import androidx.lifecycle.k0;
import androidx.lifecycle.u;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.tebakgambar.Henson;
import com.tebakgambar.R;
import com.tebakgambar.levelselection.LevelSelectionActivity;
import com.tebakgambar.model.CustomBanner;
import com.tebakgambar.model.ForceUpdate;
import com.tebakgambar.model.Homes;
import com.tebakgambar.model.request.TGRemoteMessage;
import com.tebakgambar.model.response.StickerCampaignResult;
import com.vungle.mediation.BuildConfig;
import g5.s;
import j8.b0;
import j8.b1;
import j8.c0;
import j8.t;
import java.util.concurrent.Callable;
import u6.j;
import y8.y;

/* JADX INFO: loaded from: classes2.dex */
public class HomeActivity extends t {
    private b0 A;
    private boolean B;
    private com.google.firebase.remoteconfig.a C;
    CustomBanner customBanner;
    TGRemoteMessage remoteMessage;
    boolean showLoginImmediately;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private o8.e f26876y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private com.tebakgambar.home.a f26877z;

    class a implements c0.i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ c0 f26878a;

        a(c0 c0Var) {
            this.f26878a = c0Var;
        }

        @Override // j8.c0.i
        public void a() {
            String str = HomeActivity.this.remoteMessage.pushActionId;
            str.hashCode();
            switch (str) {
                case "1":
                    HomeActivity.this.startActivity(new Intent(HomeActivity.this, (Class<?>) LevelSelectionActivity.class));
                    break;
                case "2":
                    HomeActivity homeActivity = HomeActivity.this;
                    homeActivity.F1(homeActivity.remoteMessage.messageUrl);
                    break;
                case "3":
                case "4":
                case "5":
                    HomeActivity homeActivity2 = HomeActivity.this;
                    homeActivity2.x1(homeActivity2.remoteMessage.messageUrl);
                    break;
                case "6":
                    HomeActivity homeActivity3 = HomeActivity.this;
                    homeActivity3.startActivity(Henson.with(homeActivity3).i().build());
                    break;
            }
            c0 c0Var = this.f26878a;
            if (c0Var == null || !c0Var.isShowing()) {
                return;
            }
            this.f26878a.dismiss();
        }

        @Override // j8.c0.i
        public void b() {
            c0 c0Var = this.f26878a;
            if (c0Var == null || !c0Var.isShowing()) {
                return;
            }
            this.f26878a.dismiss();
        }
    }

    class b extends v2.b {
        b(ImageView imageView) {
            super(imageView);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // v2.b, v2.e
        /* JADX INFO: renamed from: p */
        public void o(Bitmap bitmap) {
            androidx.core.graphics.drawable.c cVarA = androidx.core.graphics.drawable.d.a(HomeActivity.this.getResources(), bitmap);
            cVarA.e(true);
            HomeActivity.this.f26876y.U.setImageDrawable(cVarA);
        }
    }

    class c extends v2.g<Bitmap> {
        c() {
        }

        @Override // v2.j
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void c(Bitmap bitmap, u2.c<? super Bitmap> cVar) {
            HomeActivity.this.s1(bitmap);
        }
    }

    class d extends androidx.activity.g {
        d(boolean z10) {
            super(z10);
        }

        @Override // androidx.activity.g
        public void b() {
            if (HomeActivity.this.isTaskRoot()) {
                HomeActivity.this.J1();
            }
        }
    }

    class e implements b0.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Homes.ExitPopUp f26883a;

        e(Homes.ExitPopUp exitPopUp) {
            this.f26883a = exitPopUp;
        }

        @Override // j8.b0.a
        public void a() {
            if (HomeActivity.this.A != null && HomeActivity.this.A.isShowing()) {
                HomeActivity.this.A.dismiss();
            }
            HomeActivity.this.A = null;
        }

        @Override // j8.b0.a
        public void b() {
            if (HomeActivity.this.A != null && HomeActivity.this.A.isShowing()) {
                HomeActivity.this.A.dismiss();
            }
            HomeActivity.this.A = null;
            HomeActivity.this.finish();
        }

        @Override // j8.b0.a
        public void c() {
            HomeActivity.this.x1(this.f26883a.url);
        }
    }

    class f extends v2.g<Bitmap> {
        f() {
        }

        @Override // v2.j
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void c(Bitmap bitmap, u2.c<? super Bitmap> cVar) {
            HomeActivity.this.s1(bitmap);
        }

        @Override // v2.a, v2.j
        public void g(Exception exc, Drawable drawable) {
            super.g(exc, drawable);
            HomeActivity.this.D1();
        }

        @Override // v2.a, v2.j
        public void j(Drawable drawable) {
            super.j(drawable);
        }
    }

    class g implements c0.i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ c0 f26886a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f26887b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f26888c;

        g(c0 c0Var, String str, String str2) {
            this.f26886a = c0Var;
            this.f26887b = str;
            this.f26888c = str2;
        }

        @Override // j8.c0.i
        public void a() {
            String str = this.f26887b;
            str.hashCode();
            switch (str) {
                case "1":
                    HomeActivity homeActivity = HomeActivity.this;
                    homeActivity.startActivity(Henson.with(homeActivity).e().build());
                    break;
                case "2":
                    HomeActivity.this.F1(this.f26888c);
                    break;
                case "3":
                case "4":
                case "5":
                    HomeActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.f26888c)));
                    break;
                case "6":
                    HomeActivity homeActivity2 = HomeActivity.this;
                    homeActivity2.startActivity(Henson.with(homeActivity2).i().build());
                    break;
            }
            this.f26886a.dismiss();
        }

        @Override // j8.c0.i
        public void b() {
            this.f26886a.dismiss();
        }
    }

    class h implements OnCompleteListener<Void> {
        h() {
        }

        @Override // com.google.android.gms.tasks.OnCompleteListener
        public void a(Task<Void> task) {
            if (task.t()) {
                HomeActivity.this.C.f();
            }
        }
    }

    public class i {
        public i() {
        }

        public void a(View view) {
            HomeActivity.this.I1();
        }

        public void b(View view) {
            Homes.HomeData homeData;
            String str;
            Homes homesF = HomeActivity.this.f26877z.E.f();
            if (homesF == null || (homeData = homesF.home) == null || (str = homeData.deeplink) == null) {
                return;
            }
            HomeActivity.this.x1(str);
        }

        public void c(View view) {
            Homes.Floating floating;
            String str;
            Homes homesF = HomeActivity.this.f26877z.E.f();
            if (homesF == null || (floating = homesF.floating) == null || (str = floating.url) == null) {
                return;
            }
            HomeActivity.this.x1(str);
        }

        public void d(View view) {
            HomeActivity.this.f26877z.H();
        }

        public void e(View view) {
            y8.a.i(HomeActivity.this);
        }

        public void f(View view) {
            HomeActivity homeActivity = HomeActivity.this;
            homeActivity.startActivity(Henson.with(homeActivity).c().build());
        }

        public void g(View view) {
            y8.a.j(HomeActivity.this);
        }

        public void h(View view) {
            HomeActivity homeActivity = HomeActivity.this;
            homeActivity.startActivity(Henson.with(homeActivity).j().build());
        }

        public void i(View view) {
            y8.a.k(HomeActivity.this);
        }

        public void j(View view) {
            HomeActivity.this.f26877z.P();
        }

        public void k(View view) {
            Homes.Messages messages;
            try {
                Homes homesF = HomeActivity.this.f26877z.E.f();
                if (homesF != null && (messages = homesF.message) != null) {
                    HomeActivity.this.L1(messages.title, messages.message, messages.type, messages.url);
                }
            } catch (Exception e10) {
                com.google.firebase.crashlytics.a.a().d(e10);
            }
            HomeActivity.this.f26877z.R();
        }

        public void l(View view) {
            m8.e.c("clickHomePage", "home page", "click on play", BuildConfig.FLAVOR);
            HomeActivity.this.startActivity(new Intent(HomeActivity.this, (Class<?>) LevelSelectionActivity.class));
        }

        public void m(View view) {
            HomeActivity homeActivity = HomeActivity.this;
            homeActivity.startActivity(Henson.with(homeActivity).i().build());
        }

        public void n(View view) {
            HomeActivity.this.f26877z.V();
            if (HomeActivity.this.f26877z.D.y()) {
                y.Z(HomeActivity.this, Integer.valueOf(R.raw.sound_click));
            }
        }

        public void o(View view) {
            HomeActivity.this.f26877z.U();
        }

        public void p(View view) {
            y8.a.m(HomeActivity.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object A1(t1.h hVar) throws Exception {
        startActivity((Intent) hVar.s());
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B1(DialogInterface dialogInterface) {
        b0 b0Var = this.A;
        if (b0Var != null && b0Var.isShowing()) {
            this.A.dismiss();
        }
        this.A = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C1(ForceUpdate forceUpdate, DialogInterface dialogInterface, int i10) {
        y8.a.f(this, Uri.parse(forceUpdate.url));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D1() {
        v1.g.v(i0()).w(Integer.valueOf(R.drawable.bg_home)).W().j(b2.b.ALL).q(new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E1(StickerCampaignResult stickerCampaignResult) {
        startActivity(Henson.with(this).m().stickerCampaignResult(stickerCampaignResult).build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F1(String str) {
        if (!y8.a.c(this)) {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://facebook.com/profile.php?id=" + str)));
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("fb://page/" + str));
        startActivity(intent);
    }

    private void G1(Homes.HomeData homeData) {
        try {
            this.f26876y.f33182j0.setBackgroundColor(Color.parseColor("#" + homeData.color));
        } catch (Exception e10) {
            this.f26876y.f33182j0.setBackgroundColor(-1);
            e10.printStackTrace();
        }
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        int i10 = point.x;
        String strReplace = homeData.background;
        if (i10 <= 600) {
            strReplace = strReplace.replace(".png", "-150.png");
        } else if (i10 >= 1000) {
            strReplace = strReplace.replace(".png", "-450.png");
        }
        try {
            v1.g.w(this).x(strReplace).W().j(b2.b.ALL).q(new f());
        } catch (Exception e11) {
            com.google.firebase.crashlytics.a.a().d(e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H1(Homes homes) {
        if (homes == null) {
            D1();
            return;
        }
        if (homes.home != null) {
            v1.g.w(this).x(homes.home.icon).j(b2.b.ALL).J(R.drawable.ic_sigam_default).p(this.f26876y.f33173a0);
            G1(homes.home);
            if (Build.VERSION.SDK_INT >= 21) {
                Window window = getWindow();
                window.addFlags(Integer.MIN_VALUE);
                try {
                    window.setStatusBarColor(Color.parseColor("#" + homes.home.color));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        } else {
            D1();
        }
        if (!this.f26877z.S() || homes.floating == null) {
            this.f26876y.f33174b0.setVisibility(8);
            this.f26876y.f33175c0.setVisibility(8);
        } else {
            this.f26876y.f33175c0.setVisibility(0);
            this.f26876y.f33174b0.setVisibility(0);
            v1.g.w(this).x(homes.floating.icon_url).j(b2.b.ALL).J(R.drawable.ic_daily_quiz_button).p(this.f26876y.f33174b0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I1() {
        if (l0()) {
            Q0();
        } else {
            R0();
            this.B = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J1() {
        Homes.ExitPopUp exitPopUpK = this.f26877z.K();
        b0 b0Var = new b0(this, R.style.CustomDialog);
        this.A = b0Var;
        b0Var.f30769q.setText(exitPopUpK.positive);
        this.A.f30768p.setText(exitPopUpK.negative);
        v1.g.w(this).x(exitPopUpK.image).Q(R.drawable.ads_exit).J(R.drawable.ads_exit).j(b2.b.NONE).z(true).p(this.A.f30767o);
        this.A.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: q8.a
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                this.f34064o.B1(dialogInterface);
            }
        });
        this.A.a(new e(exitPopUpK));
        this.A.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K1(final ForceUpdate forceUpdate) {
        b1 b1VarC = new b1(this).g(forceUpdate.description).c(forceUpdate.buttonTitle, new DialogInterface.OnClickListener() { // from class: q8.b
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                this.f34065o.C1(forceUpdate, dialogInterface, i10);
            }
        });
        b1VarC.setCancelable(false);
        b1VarC.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L1(String str, String str2, String str3, String str4) {
        String string;
        if (str3.equals(AppEventsConstants.EVENT_PARAM_VALUE_YES)) {
            string = getString(R.string.lets_play);
        } else if (str3.equals("2")) {
            string = getString(R.string.open_fb);
        } else if (str3.equals("3")) {
            string = "twitter";
        } else if (str3.equals("4")) {
            string = getString(R.string.update_game);
        } else {
            string = getString(str3.equals("5") ? R.string.see_info : R.string.lets_selfie);
        }
        c0 c0Var = new c0(this, R.style.CustomDialog, false, str2, str, string, getString(R.string.close));
        c0Var.q();
        c0Var.o(new g(c0Var, str3, str4));
        c0Var.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q1(String str) {
        if (str == null) {
            return;
        }
        v1.g.w(this).x(str).p(this.f26876y.f33177e0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r1(s sVar) {
        if (this.f26877z.q()) {
            v1.g.w(this).v(sVar.Z3()).W().M(R.drawable.ic_login).H(R.drawable.ic_login).D().q(new b(this.f26876y.U));
        } else {
            this.f26876y.U.setImageResource(R.drawable.ic_no_login);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s1(final Bitmap bitmap) {
        t1.h.d(new Callable() { // from class: q8.h
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f34072a.y1(bitmap);
            }
        }).j(new t1.f() { // from class: q8.j
            @Override // t1.f
            public final Object a(t1.h hVar) {
                return this.f34075a.z1(hVar);
            }
        }, t1.h.f35199k, new t1.e().d());
    }

    private void u1() {
        this.C = com.google.firebase.remoteconfig.a.i();
        this.C.s(new j.b().d(3600L).c());
        this.C.t(R.xml.remote_config_defaults);
        this.C.g(3600L).b(this, new h());
    }

    private void v1() {
        TGRemoteMessage tGRemoteMessage = this.remoteMessage;
        if (tGRemoteMessage == null || TextUtils.isEmpty(tGRemoteMessage.message)) {
            return;
        }
        TGRemoteMessage tGRemoteMessage2 = this.remoteMessage;
        c0 c0Var = new c0(this, R.style.CustomDialog, false, tGRemoteMessage2.message, tGRemoteMessage2.ticker, tGRemoteMessage2.buttonPositiveText(), this.remoteMessage.buttonNegativeText());
        c0Var.q();
        c0Var.o(new a(c0Var));
        c0Var.show();
    }

    private void w1() {
        getOnBackPressedDispatcher().b(new d(true));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x1(String str) {
        y8.f.k(this, str).x(new t1.f() { // from class: q8.i
            @Override // t1.f
            public final Object a(t1.h hVar) {
                return this.f34074a.A1(hVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ BitmapDrawable y1(Bitmap bitmap) throws Exception {
        if (bitmap == null) {
            return null;
        }
        return y.H(this, bitmap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object z1(t1.h hVar) throws Exception {
        if (hVar.s() != null) {
            this.f26876y.f33180h0.setBackground((Drawable) hVar.s());
            return null;
        }
        this.f26876y.f33180h0.setBackgroundResource(R.drawable.bg_home_transparent_repeat);
        return null;
    }

    @Override // j8.t
    protected boolean k0() {
        return true;
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, androidx.core.app.g, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        u1();
        this.f26877z = (com.tebakgambar.home.a) k0.b(this).b("activityViewModel", com.tebakgambar.home.a.class);
        o8.e eVar = (o8.e) androidx.databinding.g.j(this, R.layout.activity_home);
        this.f26876y = eVar;
        eVar.w0(this.f26877z);
        this.f26876y.u0(new i());
        C0(this.f26877z);
        y2.a.b(this);
        this.f26877z.E.h(this, new u() { // from class: q8.e
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f34069a.H1((Homes) obj);
            }
        });
        this.f26877z.F.h(this, new u() { // from class: q8.c
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f34067a.r1((s) obj);
            }
        });
        this.f26877z.G.h(this, new u() { // from class: q8.g
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f34071a.q1((String) obj);
            }
        });
        this.f26877z.H.h(this, new u() { // from class: q8.f
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f34070a.E1((StickerCampaignResult) obj);
            }
        });
        this.f26877z.I.h(this, new u() { // from class: q8.d
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f34068a.K1((ForceUpdate) obj);
            }
        });
        this.f26877z.O();
        v1();
        w1();
        if (this.showLoginImmediately) {
            this.f26877z.P();
        }
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        y2.a.c(this, intent.getExtras());
        CustomBanner customBanner = this.customBanner;
        if (customBanner != null) {
            M0(customBanner);
        }
    }

    @Override // androidx.appcompat.app.c, androidx.fragment.app.e, android.app.Activity
    protected void onStart() {
        super.onStart();
        this.f26877z.Q();
    }

    @Override // j8.t
    protected void y0(String str) {
        super.y0(str);
        this.B = false;
    }

    @Override // j8.t
    protected void z0() {
        super.z0();
        this.f26876y.O.setImageResource(R.drawable.btn_achievement_on);
        if (this.B) {
            this.B = false;
            I1();
        }
    }
}
