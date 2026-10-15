package com.tebakgambar.question;

import android.app.Application;
import android.content.SharedPreferences;
import android.net.Uri;
import android.text.TextUtils;
import androidx.databinding.m;
import androidx.lifecycle.t;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import com.tebakgambar.R;
import com.tebakgambar.model.Level;
import com.tebakgambar.model.Question;
import com.tebakgambar.model.QuestionSavedData;
import com.tebakgambar.model.constant.AdManagerConstant;
import com.tebakgambar.model.constant.SharedPreferencesKey;
import com.tebakgambar.service.TGDownloadService;
import com.vungle.mediation.BuildConfig;
import java.util.Date;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import t1.h;
import y8.j;
import y8.u;
import y8.w;
import y8.y;

/* JADX INFO: compiled from: RegularQuestionViewModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class g extends androidx.lifecycle.a implements w.g {
    QuestionSavedData A;
    Uri B;
    private boolean C;
    Level D;
    private Level E;
    private int F;
    int G;
    long H;
    public m<String> I;
    public m<Boolean> J;
    public m<Boolean> K;
    public m<Boolean> L;
    public t<Boolean> M;
    t<h<Question>> N;
    private t1.e O;
    t<Integer> P;
    u<String> Q;
    u<Boolean> R;
    u<Boolean> S;
    u<f> T;
    u<String> U;
    u<Integer> V;
    u<Integer> W;
    u<Integer> X;
    u<Integer> Y;
    u<Integer> Z;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    InterstitialAd f27115s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    InterstitialAd f27116t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    RewardedAd f27117u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    RewardedAd f27118v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    m8.a f27119w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f27120x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    boolean f27121y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    Question f27122z;

    /* JADX INFO: compiled from: RegularQuestionViewModel.java */
    class a extends FullScreenContentCallback {
        a() {
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void b() throws Throwable {
            super.b();
            if (j8.b.l().q()) {
                g.this.f27119w.k();
            }
            j8.b.l().x(false);
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void c(AdError adError) {
            super.c(adError);
            j8.b.l().h();
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void e() {
            super.e();
            j8.b.l().h();
            g.this.X();
        }
    }

    /* JADX INFO: compiled from: RegularQuestionViewModel.java */
    class b extends InterstitialAdLoadCallback {

        /* JADX INFO: compiled from: RegularQuestionViewModel.java */
        class a extends FullScreenContentCallback {
            a() {
            }

            @Override // com.google.android.gms.ads.FullScreenContentCallback
            public void b() throws Throwable {
                g.this.T();
                g.this.a0(3);
            }

            @Override // com.google.android.gms.ads.FullScreenContentCallback
            public void e() {
                g.this.f27116t = null;
            }
        }

        b() {
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void a(LoadAdError loadAdError) {
            super.a(loadAdError);
            g.this.f27116t = null;
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(InterstitialAd interstitialAd) {
            super.b(interstitialAd);
            g.this.f27116t = interstitialAd;
            interstitialAd.d(new a());
        }
    }

    /* JADX INFO: compiled from: RegularQuestionViewModel.java */
    class c extends InterstitialAdLoadCallback {

        /* JADX INFO: compiled from: RegularQuestionViewModel.java */
        class a extends FullScreenContentCallback {
            a() {
            }

            @Override // com.google.android.gms.ads.FullScreenContentCallback
            public void b() throws Throwable {
                g.this.a0(1);
                g.this.V();
            }

            @Override // com.google.android.gms.ads.FullScreenContentCallback
            public void e() {
                g.this.f27115s = null;
            }
        }

        c() {
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void a(LoadAdError loadAdError) {
            super.a(loadAdError);
            g.this.f27115s = null;
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(InterstitialAd interstitialAd) {
            super.b(interstitialAd);
            g.this.f27115s = interstitialAd;
            interstitialAd.d(new a());
        }
    }

    /* JADX INFO: compiled from: RegularQuestionViewModel.java */
    class d extends FullScreenContentCallback {
        d() {
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void b() throws Throwable {
            super.b();
            if (j8.b.l().q()) {
                g.this.a0(1);
            }
            j8.b.l().x(false);
            g.this.W();
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void e() {
            super.e();
            j8.b.l().h();
        }
    }

    /* JADX INFO: compiled from: RegularQuestionViewModel.java */
    class e extends RewardedAdLoadCallback {

        /* JADX INFO: compiled from: RegularQuestionViewModel.java */
        class a extends FullScreenContentCallback {
            a() {
            }

            @Override // com.google.android.gms.ads.FullScreenContentCallback
            public void b() throws Throwable {
                super.b();
                if (g.this.f27120x) {
                    g.this.a0(3);
                } else {
                    g.this.e0();
                }
                g.this.f27120x = false;
            }

            @Override // com.google.android.gms.ads.FullScreenContentCallback
            public void e() {
                super.e();
                g gVar = g.this;
                gVar.f27118v = null;
                gVar.U();
            }
        }

        e() {
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void a(LoadAdError loadAdError) {
            super.a(loadAdError);
            g.this.f27118v = null;
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(RewardedAd rewardedAd) {
            super.b(rewardedAd);
            g.this.f27118v = rewardedAd;
            rewardedAd.d(new a());
        }
    }

    /* JADX INFO: compiled from: RegularQuestionViewModel.java */
    static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f27131a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f27132b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Runnable f27133c;

        private f(int i10, int i11) {
            this.f27131a = i10;
            this.f27132b = i11;
        }

        static f a(int i10) {
            int i11 = R.raw.sound_berhasil_nonton_iklan_2x;
            int i12 = 0;
            switch (i10) {
                case 1:
                    i12 = R.drawable.ic_sigam_benar;
                    i11 = R.raw.sound_benar;
                    break;
                case 2:
                    i12 = R.drawable.ic_sigam_benar_checkpoint;
                    i11 = R.raw.sound_checkpoint;
                    break;
                case 3:
                    i12 = R.drawable.ic_sigam_hampir_benar;
                    i11 = R.raw.sound_benar;
                    break;
                case 4:
                    i12 = R.drawable.ic_sigam_salah;
                    i11 = R.raw.sound_salah;
                    break;
                case 5:
                    i12 = R.drawable.ic_sigam_gameover_salah;
                    i11 = R.raw.sound_gameover;
                    break;
                case 6:
                    i12 = R.drawable.ic_sigam_gameover_waktuhabis;
                    i11 = R.raw.sound_gameover;
                    break;
                case 7:
                    i12 = R.drawable.pop_up_mendapat_1_kunci_jawaban;
                    break;
                case 8:
                    i12 = R.drawable.pop_up_kunci_jawaban_terpakai;
                    break;
                default:
                    i11 = 0;
                    break;
            }
            return new f(i12, i11);
        }

        static f b(int i10) {
            return i10 == 1 ? new f(R.drawable.ic_sigam_exra_hint, R.raw.sound_extra_hint) : new f(R.drawable.ic_sigam_extra_hint_2, R.raw.sound_extra_hint);
        }
    }

    public g(Application application) {
        super(application);
        this.f27120x = false;
        this.f27121y = false;
        this.I = new m<>();
        this.J = new m<>();
        this.K = new m<>();
        this.L = new m<>();
        this.M = new t<>();
        this.N = new t<>();
        this.O = new t1.e();
        this.P = new t<>();
        this.Q = new u<>();
        this.R = new u<>();
        this.S = new u<>();
        this.T = new u<>();
        this.U = new u<>();
        this.V = new u<>();
        this.W = new u<>();
        this.X = new u<>();
        this.Y = new u<>();
        this.Z = new u<>();
        this.K.z(Boolean.TRUE);
        this.M.n(Boolean.FALSE);
        this.f27119w = m8.a.f();
    }

    private void B(int i10) {
        int iH = H() + i10;
        y.k0(j(), this.D.id, String.valueOf(iH));
        this.P.n(Integer.valueOf(iH));
        this.T.n(f.b(i10));
    }

    private int C(String str) {
        int iA = j.a(str.trim(), this.f27122z.answer);
        if (iA == 0) {
            return 1;
        }
        return iA <= 2 ? 3 : 4;
    }

    private void E() {
        this.f27115s = null;
        this.f27116t = null;
        this.f27117u = null;
        this.f27118v = null;
    }

    private int H() {
        return Integer.parseInt(y.A(j(), this.D.id));
    }

    private int I() {
        return this.f27119w.g();
    }

    private void J() {
        j8.b.l().s();
        X();
        W();
        U();
        V();
        T();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ h M(h hVar) throws Exception {
        this.f27122z = (Question) hVar.s();
        if (y.X(j(), this.D.id)) {
            y.n0(j(), this.D.id);
        }
        return hVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void N() {
        this.W.n(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void O() {
        this.J.z(Boolean.TRUE);
        this.K.z(Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void P() {
        this.Y.n(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Q() {
        this.W.n(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object R(int i10) throws Exception {
        Level levelFromGlobalIndex = Level.fromGlobalIndex(i10);
        this.D = levelFromGlobalIndex;
        this.F = levelFromGlobalIndex.id + 1;
        QuestionSavedData questionSavedData = levelFromGlobalIndex.getQuestionSavedData(i10);
        this.A = questionSavedData;
        if (questionSavedData == null || !questionSavedData.isBoss) {
            return null;
        }
        this.E = Level.fromId(this.F);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ h S(h hVar) throws Exception {
        Y();
        this.P.l(Integer.valueOf(H()));
        this.L.z(Boolean.valueOf(this.A.isReceh));
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T() {
        if (this.f27116t != null) {
            return;
        }
        j8.b.l().w(AdManagerConstant.FREE_ANSWER_INTERSTITIAL_AD_UNIT_ID, new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U() {
        if (this.f27118v != null) {
            return;
        }
        RewardedAd.c(j().getApplicationContext(), AdManagerConstant.FREE_ANSWER_REWARDED_AD_UNIT_ID, new AdRequest.Builder().c(), new e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V() {
        if (this.f27115s != null) {
            return;
        }
        j8.b.l().w(AdManagerConstant.QUESTION_INTERSTITIAL_AD_UNIT_ID, new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W() {
        j8.b.l().v(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X() {
        j8.b.l().v(new a());
    }

    private int Z() {
        Iterator<QuestionSavedData> it = this.D.getQuestionSavedData().iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            int i10 = it.next().globalIndex;
            if (i10 == this.G) {
                z10 = true;
            } else if (z10) {
                return i10;
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a0(int i10) throws Throwable {
        if (i10 == 1) {
            B(1);
        } else if (i10 == 3) {
            this.V.n(Integer.valueOf(i10));
        } else if (i10 == 2) {
            this.f27119w.k();
        }
    }

    private void f0() {
        this.C = true;
        this.f27122z.clearHint();
        if (this.A.getType().equals(QuestionSavedData.TYPE_RAJA)) {
            this.M.n(Boolean.TRUE);
        }
        if (this.A.isBoss) {
            y.N(j()).edit().putBoolean(SharedPreferencesKey.JUST_COMPLETED_BOSS_QUESTION, true).apply();
            y.o0(j(), String.valueOf(this.F));
            Level level = this.E;
            if (level != null) {
                level.generateLevelIfNeeded(j());
            }
            f fVarA = f.a(1);
            fVarA.f27133c = new Runnable() { // from class: t8.y1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f35522o.P();
                }
            };
            this.T.n(fVarA);
        } else {
            Application applicationJ = j();
            Level level2 = this.D;
            y.c(applicationJ, level2.id, level2.getNextQuestionSavedData(this.G).globalIndex);
            f fVarA2 = this.A.isCheckPoint ? f.a(2) : f.a(1);
            fVarA2.f27133c = new Runnable() { // from class: t8.a2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f35440o.O();
                }
            };
            this.T.n(fVarA2);
        }
        if (this.D.id == 19) {
            TGDownloadService.w(j());
        }
        this.f27121y = true;
    }

    private void g0() throws Throwable {
        this.C = true;
        h0();
        f fVarA = f.a(5);
        fVarA.f27133c = new Runnable() { // from class: t8.z1
            @Override // java.lang.Runnable
            public final void run() {
                this.f35525o.Q();
            }
        };
        this.T.n(fVarA);
    }

    private void h0() throws Throwable {
        if (this.f27119w.g() == 0) {
            this.f27119w.A(m8.a.f32206z);
            y.c0(j(), this.D.id);
        }
    }

    void D() {
        String strY = this.I.y() != null ? this.I.y() : BuildConfig.FLAVOR;
        if (TextUtils.isEmpty(strY) || this.C || this.f27122z == null) {
            return;
        }
        int iC = C(strY);
        if (iC == 1) {
            m8.e.c("clickAnswerPage", "answer page", "click on check", G() + " - true");
            f0();
            return;
        }
        if (iC == 3) {
            m8.e.c("clickAnswerPage", "answer page", "click on check", G() + " - false");
            this.T.n(f.a(3));
            return;
        }
        if (iC == 4) {
            m8.e.c("clickAnswerPage", "answer page", "click on check", G() + " - false");
            int I = I();
            if (this.D.id >= y.s(j())) {
                I--;
                this.f27119w.A(I);
            }
            if (I > 0) {
                this.T.n(f.a(4));
            } else if (this.A.isBoss) {
                g0();
            } else {
                this.R.n(Boolean.TRUE);
            }
        }
    }

    void F() {
        B(2);
    }

    String G() {
        return Level.getLevelFolderNameByGlobalIndex(this.G) + " - " + this.G;
    }

    boolean K() {
        return this.f27122z.isNoHintUnlocked();
    }

    boolean L() {
        return this.f27122z.type.equals(QuestionSavedData.TYPE_RAJA);
    }

    public void Y() {
        this.N.l(Question.getQuestion(j(), this.G, this.A.getType(), this.O.d()).z(new t1.f() { // from class: t8.c2
            @Override // t1.f
            public final Object a(t1.h hVar) {
                return this.f35451a.M(hVar);
            }
        }));
    }

    public void b0() {
        g0();
    }

    public void c0() {
        this.f27120x = true;
    }

    @Override // y8.w.g
    public void d(String str, int i10, Uri uri) {
        this.U.n(str);
    }

    void d0() {
        if (this.M.f() == null || !this.M.f().booleanValue()) {
            int iG = this.f27119w.g();
            if (this.D.id >= y.s(j())) {
                this.f27119w.b();
            }
            f fVarA = f.a(iG > 0 ? 6 : 5);
            fVarA.f27133c = new Runnable() { // from class: t8.x1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f35519o.N();
                }
            };
            this.T.n(fVarA);
        }
    }

    void e0() {
        int iZ = Z();
        if (iZ != 0) {
            this.Z.n(Integer.valueOf(iZ));
        } else {
            this.X.n(1);
        }
    }

    @Override // androidx.lifecycle.g0
    protected void h() {
        super.h();
        E();
        this.O.b();
        y.i(j(), this.G);
    }

    public void i0(final int i10) {
        com.google.firebase.crashlytics.a.a().e("RegularQuestionActivity.globalIndex", i10);
        this.G = i10;
        J();
        h.d(new Callable() { // from class: t8.b2
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f35445a.R(i10);
            }
        }).m(new t1.f() { // from class: t8.d2
            @Override // t1.f
            public final Object a(t1.h hVar) {
                return this.f35456a.S(hVar);
            }
        }, h.f35197i);
    }

    void j0() {
        if (this.A.isHintAvailable()) {
            if (this.f27122z.isAllHintUnlocked()) {
                this.Q.n(this.f27122z.getHint());
                return;
            }
            int iH = H();
            if (iH == 0) {
                this.S.n(Boolean.TRUE);
                return;
            }
            int i10 = iH - 1;
            y.k0(j(), this.D.id, String.valueOf(i10));
            this.P.n(Integer.valueOf(i10));
            this.Q.n(this.f27122z.getHintAndUnlock());
        }
    }

    void k0() {
        if (this.A.isHintAvailable()) {
            this.Q.n(this.f27122z.getHint());
        }
    }

    public void l0() {
        this.T.n(f.a(7));
    }

    public void m0() {
        this.T.n(f.a(8));
    }

    public boolean r() {
        SharedPreferences sharedPreferencesN = y.N(j());
        if (sharedPreferencesN.getInt(SharedPreferencesKey.TOTAL_CLOSE_FREE_ANSWER_BOTTOM_SHEET, 0) < 3) {
            return true;
        }
        Date date = new Date(System.currentTimeMillis());
        if (!(y.t(new Date(sharedPreferencesN.getLong("LAST_DATE_REQUEST_IN_APP_REVIEW", date.getTime())), date, TimeUnit.DAYS) > 7)) {
            return false;
        }
        SharedPreferences.Editor editorEdit = sharedPreferencesN.edit();
        editorEdit.putInt(SharedPreferencesKey.TOTAL_CLOSE_FREE_ANSWER_BOTTOM_SHEET, 0);
        editorEdit.putLong("LAST_DATE_REQUEST_IN_APP_REVIEW", date.getTime());
        editorEdit.apply();
        return true;
    }

    @Override // y8.w.g
    public void y(int i10, Uri uri) {
        this.U.n(j().getString(R.string.share_image_success));
    }
}
