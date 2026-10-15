package com.tebakgambar.home;

import android.app.Application;
import android.util.Log;
import androidx.databinding.l;
import androidx.lifecycle.t;
import com.facebook.appevents.AppEventsConstants;
import com.google.firebase.auth.FirebaseAuth;
import com.google.gson.f;
import com.tebakgambar.R;
import com.tebakgambar.TGApplication;
import com.tebakgambar.model.ForceUpdate;
import com.tebakgambar.model.Homes;
import com.tebakgambar.model.response.ApiResponse3;
import com.tebakgambar.model.response.StickerCampaignResult;
import com.tebakgambar.network.TebakGambarApi;
import com.tebakgambar.service.TGDownloadService;
import com.vungle.mediation.BuildConfig;
import g5.s;
import j8.x;
import java.util.concurrent.Callable;
import m8.e;
import t1.h;
import wa.d;
import y8.u;
import y8.y;

/* JADX INFO: compiled from: HomeViewModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class a extends x {
    public l C;
    public l D;
    t<Homes> E;
    t<s> F;
    t<String> G;
    u<StickerCampaignResult> H;
    u<ForceUpdate> I;
    private StickerCampaignResult J;

    /* JADX INFO: renamed from: com.tebakgambar.home.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: HomeViewModel.java */
    class C0131a implements d<Homes> {
        C0131a() {
        }

        @Override // wa.d
        public void a(wa.b<Homes> bVar, wa.l<Homes> lVar) {
            if (lVar.f()) {
                Homes homesA = lVar.a();
                a.this.E.n(homesA);
                if (homesA != null) {
                    String strT = new f().t(homesA);
                    if (strT != null && !strT.equals(y.C(a.this.j()))) {
                        y.l0(a.this.j(), strT);
                        a.this.C.z(true);
                    }
                    ForceUpdate forceUpdate = homesA.forceUpdate;
                    if (forceUpdate != null) {
                        a.this.I.n(forceUpdate);
                    }
                }
            }
        }

        @Override // wa.d
        public void b(wa.b<Homes> bVar, Throwable th) {
        }
    }

    /* JADX INFO: compiled from: HomeViewModel.java */
    class b implements d<ApiResponse3<StickerCampaignResult>> {
        b() {
        }

        @Override // wa.d
        public void a(wa.b<ApiResponse3<StickerCampaignResult>> bVar, wa.l<ApiResponse3<StickerCampaignResult>> lVar) {
            if (!lVar.f() || lVar.a() == null) {
                return;
            }
            StickerCampaignResult stickerCampaignResult = lVar.a().data;
            a.this.J = stickerCampaignResult;
            String str = stickerCampaignResult.buttonImageUrl;
            if (str != null) {
                a.this.G.n(str);
            }
        }

        @Override // wa.d
        public void b(wa.b<ApiResponse3<StickerCampaignResult>> bVar, Throwable th) {
        }
    }

    public a(Application application) {
        super(application);
        this.C = new l();
        this.D = new l();
        this.E = new t<>();
        this.F = new t<>();
        this.G = new t<>();
        this.H = new u<>();
        this.I = new u<>();
        this.E.n(y.B(application));
        this.D.z(Boolean.parseBoolean(y.R(application)));
        I();
        J();
    }

    private void I() {
        h.d(new Callable() { // from class: q8.k
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f34076a.M();
            }
        });
    }

    private void J() {
        Log.v("=info", "fetchStickerCampaign");
        if (FirebaseAuth.getInstance().b() == null) {
            return;
        }
        h.d(new Callable() { // from class: q8.l
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f34077a.N();
            }
        });
    }

    private boolean L(int i10) {
        return y.N(j()).getBoolean(y.f37099d + i10, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object M() throws Exception {
        TebakGambarApi.c().getHome("1.44.2l").v3(new C0131a());
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object N() throws Exception {
        TebakGambarApi.b().getCampaign().v3(new b());
        return null;
    }

    private boolean T() {
        s sVarB = FirebaseAuth.getInstance().b();
        return (sVarB == null || sVarB.c4()) && (((System.currentTimeMillis() - m8.a.f().c()) > 2592000000L ? 1 : ((System.currentTimeMillis() - m8.a.f().c()) == 2592000000L ? 0 : -1)) > 0) && !TGApplication.d().f();
    }

    @Override // j8.x
    public void B() {
        super.B();
        this.F.n(p());
        J();
    }

    void H() {
        Homes homesF = this.E.f();
        if (homesF != null && homesF.floating != null) {
            y.N(j()).edit().putBoolean(y.f37099d + homesF.floating.id, true).apply();
        }
        this.E.n(homesF);
    }

    public Homes.ExitPopUp K() {
        if (this.E.f() != null && this.E.f().exitPopUp != null) {
            return this.E.f().exitPopUp;
        }
        Homes.ExitPopUp exitPopUp = new Homes.ExitPopUp();
        exitPopUp.positive = j().getString(R.string.resume_game);
        exitPopUp.negative = j().getString(R.string.label_keluar);
        exitPopUp.image = "http://tebakgambar.com/redirect/download/exit/exit-image.png";
        exitPopUp.url = "http://j.mp/exitads";
        return exitPopUp;
    }

    void O() {
        e.b("viewHomePage", "home page", "view on home page");
        TGDownloadService.M(j());
        j8.b.l().y();
    }

    void P() {
        e.c("clickHomePage", "home page", "click on profile icon", BuildConfig.FLAVOR);
        if (q()) {
            this.f30909x.n(Boolean.TRUE);
        } else {
            this.A = "profile icon";
            this.f30908w.n(Boolean.TRUE);
        }
    }

    void Q() {
        this.F.n(this.f30910y.b());
        if (!T()) {
            C();
            return;
        }
        if (m8.a.f().c() == 0) {
            this.A = "homepage_first_open";
        } else {
            this.A = "homepage_next_open";
        }
        TGApplication.d().i(true);
        this.f30908w.n(Boolean.TRUE);
    }

    void R() {
        y.v0(j(), AppEventsConstants.EVENT_PARAM_VALUE_NO);
        this.C.z(false);
    }

    boolean S() {
        Homes.Floating floating;
        Homes homesF = this.E.f();
        return (homesF == null || (floating = homesF.floating) == null || floating.icon_url == null || L(floating.id)) ? false : true;
    }

    void U() {
        e.b("clickHomePage", "home page", "click on footer banner");
        StickerCampaignResult stickerCampaignResult = this.J;
        if (stickerCampaignResult != null) {
            this.H.n(stickerCampaignResult);
        }
    }

    void V() {
        boolean z10 = !Boolean.parseBoolean(y.R(j()));
        y.A0(j(), String.valueOf(z10));
        this.D.z(z10);
    }

    @Override // j8.x, s8.f.a
    public void a(s sVar) {
        super.a(sVar);
        this.F.n(p());
    }
}
