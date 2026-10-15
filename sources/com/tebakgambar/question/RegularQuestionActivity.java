package com.tebakgambar.question;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.Toast;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.FirebaseAuth;
import com.tebakgambar.Henson;
import com.tebakgambar.QuotesActivity;
import com.tebakgambar.R;
import com.tebakgambar.component.CustomTextView;
import com.tebakgambar.model.FreeAnswer;
import com.tebakgambar.model.Question;
import com.tebakgambar.model.RequestHeader;
import com.tebakgambar.model.enums.QuestionType;
import com.tebakgambar.model.response.ApiResponse3;
import com.tebakgambar.network.TebakGambarApi;
import com.tebakgambar.question.g;
import com.vungle.mediation.BuildConfig;
import g5.u;
import j8.c0;
import j8.f1;
import j8.h0;
import j8.k0;
import j8.t;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import o8.m0;
import o8.o;
import t1.h;
import wa.l;
import y8.m;
import y8.n;
import y8.s;
import y8.v;
import y8.w;
import y8.y;

/* JADX INFO: loaded from: classes2.dex */
public class RegularQuestionActivity extends t {
    private static int K = 500;
    private static int L = 1200;
    com.tebakgambar.question.g A;
    private Dialog B;
    private k C;
    private Drawable D;
    private Drawable E;
    private FreeAnswer F;
    private c0 H;
    private c0 I;
    private w J;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private Runnable f27088y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    o f27089z;
    int questionGlobalIndex = -1;
    private long G = 0;

    class a extends androidx.activity.g {
        a(boolean z10) {
            super(z10);
        }

        @Override // androidx.activity.g
        public void b() {
            com.tebakgambar.question.g gVar = RegularQuestionActivity.this.A;
            if (gVar.f27122z == null || !gVar.A.isUsingTimer()) {
                RegularQuestionActivity.this.finish();
            }
        }
    }

    class b implements t2.f<byte[], l2.b> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ h.C0255h f27091a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Question f27092b;

        b(h.C0255h c0255h, Question question) {
            this.f27091a = c0255h;
            this.f27092b = question;
        }

        @Override // t2.f
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public boolean b(Exception exc, byte[] bArr, v2.j<l2.b> jVar, boolean z10) {
            if (this.f27091a.a().v()) {
                com.google.firebase.crashlytics.a.a().d(exc);
                return true;
            }
            this.f27091a.c(exc);
            return true;
        }

        @Override // t2.f
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean a(l2.b bVar, byte[] bArr, v2.j<l2.b> jVar, boolean z10, boolean z11) {
            this.f27091a.d(this.f27092b);
            RegularQuestionActivity.this.c2();
            return false;
        }
    }

    class c implements s.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ k0 f27094a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Runnable f27095b;

        c(k0 k0Var, Runnable runnable) {
            this.f27094a = k0Var;
            this.f27095b = runnable;
        }

        @Override // y8.s.a
        public void a() {
            RegularQuestionActivity.this.f27089z.T.setVisibility(0);
            this.f27094a.V(true);
        }

        @Override // y8.s.a
        public void b(Uri uri) {
            this.f27094a.V(false);
            RegularQuestionActivity.this.A.B = uri;
            Runnable runnable = this.f27095b;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    class d implements c0.i {
        d() {
        }

        @Override // j8.c0.i
        public void a() {
            if (RegularQuestionActivity.this.I == null || !RegularQuestionActivity.this.I.isShowing()) {
                return;
            }
            RegularQuestionActivity.this.I.dismiss();
            if (j8.b.l().p()) {
                RegularQuestionActivity.this.Y2();
                return;
            }
            RegularQuestionActivity regularQuestionActivity = RegularQuestionActivity.this;
            regularQuestionActivity.f3(regularQuestionActivity.getString(R.string.video_ad_not_available));
            RegularQuestionActivity.this.A.b0();
        }

        @Override // j8.c0.i
        public void b() {
            if (RegularQuestionActivity.this.I == null || !RegularQuestionActivity.this.I.isShowing()) {
                return;
            }
            RegularQuestionActivity.this.I.dismiss();
            RegularQuestionActivity.this.A.b0();
        }
    }

    class e implements wa.d<ApiResponse3<FreeAnswer>> {
        e() {
        }

        @Override // wa.d
        public void a(wa.b<ApiResponse3<FreeAnswer>> bVar, l<ApiResponse3<FreeAnswer>> lVar) {
            if (lVar.f()) {
                RegularQuestionActivity.this.F = lVar.a().data;
                RegularQuestionActivity regularQuestionActivity = RegularQuestionActivity.this;
                regularQuestionActivity.k3(regularQuestionActivity.F.imageUrl);
            }
        }

        @Override // wa.d
        public void b(wa.b<ApiResponse3<FreeAnswer>> bVar, Throwable th) {
            RegularQuestionActivity regularQuestionActivity = RegularQuestionActivity.this;
            regularQuestionActivity.f3(regularQuestionActivity.getString(R.string.error_fetch_free_answer));
        }
    }

    class f implements wa.d<ApiResponse3<FreeAnswer>> {
        f() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d() {
            RegularQuestionActivity.this.e2();
        }

        @Override // wa.d
        public void a(wa.b<ApiResponse3<FreeAnswer>> bVar, l<ApiResponse3<FreeAnswer>> lVar) {
            if (!lVar.f()) {
                RegularQuestionActivity regularQuestionActivity = RegularQuestionActivity.this;
                regularQuestionActivity.f3(regularQuestionActivity.getString(R.string.error_add_progress_free_answer));
                return;
            }
            RegularQuestionActivity regularQuestionActivity2 = RegularQuestionActivity.this;
            if (!regularQuestionActivity2.A.f27121y) {
                regularQuestionActivity2.F = lVar.a().data;
                RegularQuestionActivity regularQuestionActivity3 = RegularQuestionActivity.this;
                regularQuestionActivity3.k3(regularQuestionActivity3.F.imageUrl);
            }
            RegularQuestionActivity.this.A.l0();
            RegularQuestionActivity.this.g0().postDelayed(new Runnable() { // from class: com.tebakgambar.question.f
                @Override // java.lang.Runnable
                public final void run() {
                    this.f27114o.d();
                }
            }, RegularQuestionActivity.K + RegularQuestionActivity.L);
        }

        @Override // wa.d
        public void b(wa.b<ApiResponse3<FreeAnswer>> bVar, Throwable th) {
            RegularQuestionActivity.this.e2();
        }
    }

    class g implements wa.d<ApiResponse3<FreeAnswer>> {
        g() {
        }

        @Override // wa.d
        public void a(wa.b<ApiResponse3<FreeAnswer>> bVar, l<ApiResponse3<FreeAnswer>> lVar) {
            if (!lVar.f()) {
                RegularQuestionActivity regularQuestionActivity = RegularQuestionActivity.this;
                regularQuestionActivity.f3(regularQuestionActivity.getString(R.string.error_use_free_answer));
                return;
            }
            RegularQuestionActivity.this.A.m0();
            RegularQuestionActivity.this.F = lVar.a().data;
            RegularQuestionActivity regularQuestionActivity2 = RegularQuestionActivity.this;
            regularQuestionActivity2.k3(regularQuestionActivity2.F.imageUrl);
            RegularQuestionActivity regularQuestionActivity3 = RegularQuestionActivity.this;
            regularQuestionActivity3.f27089z.S.setText(regularQuestionActivity3.A.f27122z.answer);
        }

        @Override // wa.d
        public void b(wa.b<ApiResponse3<FreeAnswer>> bVar, Throwable th) {
            RegularQuestionActivity regularQuestionActivity = RegularQuestionActivity.this;
            regularQuestionActivity.f3(regularQuestionActivity.getString(R.string.error_use_free_answer));
        }
    }

    class h implements t2.f<String, l2.b> {
        h() {
        }

        @Override // t2.f
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public boolean b(Exception exc, String str, v2.j<l2.b> jVar, boolean z10) {
            RegularQuestionActivity.this.f27089z.U.setVisibility(8);
            return false;
        }

        @Override // t2.f
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean a(l2.b bVar, String str, v2.j<l2.b> jVar, boolean z10, boolean z11) {
            RegularQuestionActivity.this.f27089z.U.setVisibility(0);
            return false;
        }
    }

    public class i {
        public i() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void k() {
            if (!y8.a.d(RegularQuestionActivity.this)) {
                RegularQuestionActivity regularQuestionActivity = RegularQuestionActivity.this;
                RegularQuestionActivity regularQuestionActivity2 = RegularQuestionActivity.this;
                regularQuestionActivity.H = new c0(regularQuestionActivity2, R.style.CustomDialog, true, regularQuestionActivity2.getString(R.string.instagram_not_found), Integer.valueOf(R.dimen.size_text));
                RegularQuestionActivity.this.H.show();
                return;
            }
            try {
                RegularQuestionActivity.this.b2(true, new Runnable() { // from class: t8.s1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f35501o.l();
                    }
                });
            } catch (n e10) {
                e10.printStackTrace();
                RegularQuestionActivity.this.f27088y = new Runnable() { // from class: t8.u1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f35509o.k();
                    }
                };
                androidx.core.app.b.t(RegularQuestionActivity.this, e10.a(), 55);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void l() {
            RegularQuestionActivity.this.J.y(RegularQuestionActivity.this.A.B);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void m(View view) {
            RegularQuestionActivity.this.B.dismiss();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void n(View view) {
            k();
            RegularQuestionActivity.this.B.dismiss();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void o(View view) {
            y();
            RegularQuestionActivity.this.B.dismiss();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void p(View view) {
            x();
            RegularQuestionActivity.this.B.dismiss();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void q() {
            RegularQuestionActivity.this.J.A(RegularQuestionActivity.this.A.B);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void r() {
            RegularQuestionActivity.this.J.B(RegularQuestionActivity.this.A.B);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void x() {
            try {
                RegularQuestionActivity.this.b2(false, new Runnable() { // from class: t8.t1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f35505o.q();
                    }
                });
            } catch (n e10) {
                e10.printStackTrace();
                RegularQuestionActivity.this.f27088y = new Runnable() { // from class: t8.w1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f35516o.x();
                    }
                };
                androidx.core.app.b.t(RegularQuestionActivity.this, e10.a(), 55);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void y() {
            try {
                RegularQuestionActivity.this.b2(false, new Runnable() { // from class: t8.v1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f35513o.r();
                    }
                });
            } catch (n e10) {
                e10.printStackTrace();
                RegularQuestionActivity.this.f27088y = new Runnable() { // from class: t8.r1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f35498o.y();
                    }
                };
                androidx.core.app.b.t(RegularQuestionActivity.this, e10.a(), 55);
            }
        }

        public void s(View view) {
            if (RegularQuestionActivity.this.B != null && RegularQuestionActivity.this.B.isShowing()) {
                RegularQuestionActivity.this.B.dismiss();
            }
            RegularQuestionActivity.this.A.D();
        }

        public void t(View view) {
            m8.e.c("clickAnswerPage", "answer page", "click on hint", RegularQuestionActivity.this.A.G() + " - " + RegularQuestionActivity.this.A.P.f());
            if (RegularQuestionActivity.this.A.K()) {
                RegularQuestionActivity.this.A.j0();
            } else {
                RegularQuestionActivity.this.d3();
            }
        }

        public void u(View view) {
            try {
                if (RegularQuestionActivity.this.F != null && RegularQuestionActivity.this.F.qty == 0 && RegularQuestionActivity.this.A.r()) {
                    k8.c.w(new h8.a(true), new j(RegularQuestionActivity.this, null)).show(RegularQuestionActivity.this.getSupportFragmentManager(), "TGInAppReviewDialogFragment");
                } else {
                    RegularQuestionActivity.this.A.e0();
                }
            } catch (IllegalStateException e10) {
                com.google.firebase.crashlytics.a.a().d(e10);
            }
        }

        public void v(View view) {
            if (RegularQuestionActivity.this.B != null && RegularQuestionActivity.this.B.isShowing()) {
                RegularQuestionActivity.this.B.dismiss();
            }
            RegularQuestionActivity regularQuestionActivity = RegularQuestionActivity.this;
            regularQuestionActivity.startActivity(Henson.with(regularQuestionActivity).k().build());
        }

        public void w(View view) {
            if (RegularQuestionActivity.this.B == null) {
                RegularQuestionActivity.this.B = new Dialog(RegularQuestionActivity.this);
                if (RegularQuestionActivity.this.B.getWindow() != null) {
                    RegularQuestionActivity.this.B.getWindow().requestFeature(1);
                    RegularQuestionActivity.this.B.getWindow().clearFlags(2);
                    RegularQuestionActivity.this.B.getWindow().setBackgroundDrawable(new ColorDrawable(0));
                }
            } else if (RegularQuestionActivity.this.B.isShowing()) {
                RegularQuestionActivity.this.B.dismiss();
            }
            m0 m0VarU0 = m0.u0(LayoutInflater.from(RegularQuestionActivity.this), null, false);
            m0VarU0.P.setOnClickListener(new View.OnClickListener() { // from class: t8.n1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f35486o.m(view2);
                }
            });
            m0VarU0.Q.setOnClickListener(new View.OnClickListener() { // from class: t8.p1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f35492o.n(view2);
                }
            });
            m0VarU0.R.setOnClickListener(new View.OnClickListener() { // from class: t8.q1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f35495o.o(view2);
                }
            });
            m0VarU0.S.setOnClickListener(new View.OnClickListener() { // from class: t8.o1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f35489o.p(view2);
                }
            });
            RegularQuestionActivity.this.B.setContentView(m0VarU0.S());
            RegularQuestionActivity.this.B.show();
        }
    }

    private class j extends Handler {
        private j() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (RegularQuestionActivity.this.B != null && RegularQuestionActivity.this.B.isShowing()) {
                RegularQuestionActivity.this.B.dismiss();
            }
            if (message.what != 1) {
                RegularQuestionActivity.this.A.e0();
            } else {
                RegularQuestionActivity.this.f27089z.U.setVisibility(8);
                RegularQuestionActivity.this.W2();
            }
        }

        /* synthetic */ j(RegularQuestionActivity regularQuestionActivity, a aVar) {
            this();
        }
    }

    class k extends CountDownTimer {
        k(long j10, long j11) {
            super(j10, j11);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            RegularQuestionActivity.this.f27089z.f33234m0.setText(AppEventsConstants.EVENT_PARAM_VALUE_NO);
            RegularQuestionActivity.this.A.d0();
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j10) {
            RegularQuestionActivity regularQuestionActivity = RegularQuestionActivity.this;
            regularQuestionActivity.A.H = j10;
            long j11 = j10 / 1000;
            Integer numValueOf = Integer.valueOf(R.raw.sound_count_5s);
            if (j11 <= 5) {
                y.Z(regularQuestionActivity.getBaseContext(), numValueOf);
                RegularQuestionActivity.this.f27089z.f33234m0.setTextColor(Color.parseColor("#E44144"));
            } else {
                y.Z(regularQuestionActivity.getBaseContext(), numValueOf);
                RegularQuestionActivity.this.f27089z.f33234m0.setTextColor(Color.parseColor("#000000"));
            }
            RegularQuestionActivity.this.f27089z.f33234m0.setText(String.valueOf(j11));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A2(g.f fVar) {
        this.B.dismiss();
        this.f27089z.O.setEnabled(true);
        Runnable runnable = fVar.f27133c;
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B2(DialogInterface dialogInterface, int i10) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.A.L() ? "RAJA" : "REGULAR");
        sb.append("-");
        sb.append(this.A.D.id);
        sb.append("-");
        sb.append(this.A.P.f());
        sb.append("- ads");
        m8.e.c("clickAnswerPage", "answer page", "click on hint adder", sb.toString());
        dialogInterface.dismiss();
        X2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C2(DialogInterface dialogInterface, int i10) {
        m8.e.c("clickAnswerPage", "answer page", "click on hint adder", this.A.D.id + "-" + this.A.f27122z.id + "-" + this.A.P.f() + "- selfie");
        dialogInterface.dismiss();
        startActivityForResult(Henson.with(this).i().questionGlobalIndex(this.A.G).build(), 11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E2(DialogInterface dialogInterface, int i10) {
        dialogInterface.dismiss();
        X2();
        StringBuilder sb = new StringBuilder();
        sb.append(this.A.L() ? "RAJA" : "REGULAR");
        sb.append("-");
        sb.append(this.A.D.id);
        sb.append("-");
        sb.append(this.A.P.f());
        sb.append("- ads");
        m8.e.c("clickAnswerPage", "answer page", "click on hint adder", sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F2(DialogInterface dialogInterface, int i10) {
        dialogInterface.dismiss();
        startActivityForResult(Henson.with(this).i().questionGlobalIndex(this.A.G).build(), 11);
        m8.e.c("clickAnswerPage", "answer page", "click on hint adder", this.A.D.id + "-" + this.A.f27122z.id + "-" + this.A.P.f() + "- selfie");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void G2(DialogInterface dialogInterface, int i10) {
        dialogInterface.dismiss();
        this.A.k0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I2(DialogInterface dialogInterface) {
        this.f27089z.O.setEnabled(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void J2(DialogInterface dialogInterface, int i10) {
        dialogInterface.dismiss();
        this.A.k0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void K2(DialogInterface dialogInterface, int i10) {
        dialogInterface.dismiss();
        this.A.j0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void M2(DialogInterface dialogInterface) {
        this.f27089z.O.setEnabled(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void N2(Task task) {
        if (!task.t() || task.p() == null || ((u) task.p()).c() == null) {
            return;
        }
        TebakGambarApi.b().useFreeAnswer(RequestHeader.create(((u) task.p()).c())).v3(new g());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object O2(g5.s sVar) throws Exception {
        sVar.W3(true).c(new OnCompleteListener() { // from class: t8.z0
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void a(Task task) {
                this.f35524a.N2(task);
            }
        });
        return null;
    }

    private void P2() {
        Dialog dialog = this.B;
        if (dialog != null && dialog.isShowing()) {
            this.B.dismiss();
        }
        M(Henson.with(this).e().build());
    }

    private void Q2(int i10) {
        Dialog dialog = this.B;
        if (dialog != null && dialog.isShowing()) {
            this.B.dismiss();
        }
        startActivity(Henson.with(this).h().questionGlobalIndex(i10).build());
        finish();
    }

    private void R2() {
        Dialog dialog = this.B;
        if (dialog != null && dialog.isShowing()) {
            this.B.dismiss();
        }
        M(Henson.with(this).g().level(this.A.D.id).a());
    }

    private void S2() {
        Dialog dialog = this.B;
        if (dialog != null && dialog.isShowing()) {
            this.B.dismiss();
        }
        S0();
        startActivity(new Intent(getBaseContext(), (Class<?>) QuotesActivity.class).putExtra("level", this.A.D.id));
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U2(t1.h<Question> hVar) {
        if (hVar == null) {
            return;
        }
        this.G = System.currentTimeMillis();
        this.f27089z.f33227f0.setVisibility(0);
        this.f27089z.f33225d0.setVisibility(8);
        this.f27089z.f33231j0.setVisibility(8);
        t1.f<Question, t1.h<TContinuationResult>> fVar = new t1.f() { // from class: t8.e1
            @Override // t1.f
            public final Object a(t1.h hVar2) {
                return this.f35459a.u2(hVar2);
            }
        };
        Executor executor = t1.h.f35199k;
        hVar.A(fVar, executor).m(new t1.f() { // from class: t8.f1
            @Override // t1.f
            public final Object a(t1.h hVar2) {
                return this.f35462a.v2(hVar2);
            }
        }, executor);
    }

    private void V2() {
        this.f27089z.S.setOnClickListener(new View.OnClickListener() { // from class: t8.h0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f35467o.w2(view);
            }
        });
        this.f27089z.U.l();
        this.f27089z.U.setOnClickListener(m.b(new View.OnClickListener() { // from class: t8.i0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f35470o.x2(view);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W2() {
        g3();
        if (j8.b.o(this.A.f27118v)) {
            this.A.f27118v.e(this, new OnUserEarnedRewardListener() { // from class: t8.w0
                @Override // com.google.android.gms.ads.OnUserEarnedRewardListener
                public final void a(RewardItem rewardItem) {
                    this.f35515a.y2(rewardItem);
                }
            });
        } else if (j8.b.n(this.A.f27116t)) {
            this.A.f27116t.f(this);
        } else {
            h3(false);
            Toast.makeText(this, getString(R.string.video_ad_not_available), 0).show();
        }
    }

    private void X2() {
        com.tebakgambar.question.g gVar = this.A;
        if (gVar.f27117u != null) {
            j8.b.l().A(this);
        } else if (j8.b.n(gVar.f27115s)) {
            this.A.f27115s.f(this);
        } else {
            Toast.makeText(i0(), getString(R.string.video_ad_not_available), 0).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y2() {
        if (j8.b.l().p()) {
            j8.b.l().A(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z2(final g.f fVar) {
        if (fVar == null) {
            return;
        }
        Dialog dialog = this.B;
        if (dialog == null) {
            Dialog dialog2 = new Dialog(this);
            this.B = dialog2;
            if (dialog2.getWindow() != null) {
                this.B.getWindow().requestFeature(1);
                this.B.getWindow().clearFlags(2);
                this.B.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            }
        } else if (dialog.isShowing()) {
            this.B.dismiss();
        }
        this.f27089z.O.setEnabled(false);
        g0().postDelayed(new Runnable() { // from class: com.tebakgambar.question.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f27110o.z2(fVar);
            }
        }, K);
    }

    private void a2() {
        final g5.s sVarB = FirebaseAuth.getInstance().b();
        if (sVarB == null) {
            e2();
        } else {
            t1.h.d(new Callable() { // from class: t8.c1
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f35449a.i2(sVarB);
                }
            });
        }
    }

    private void a3() {
        if (this.A.K()) {
            new f1(this).k(getString(R.string.extra_hint_message)).d(getString(R.string.extra_hint_watch_video), new DialogInterface.OnClickListener() { // from class: t8.h1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    this.f35468o.B2(dialogInterface, i10);
                }
            }).e(getString(R.string.extra_hint_selfie), new DialogInterface.OnClickListener() { // from class: t8.i1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    this.f35471o.C2(dialogInterface, i10);
                }
            }).f(getString(R.string.close), new DialogInterface.OnClickListener() { // from class: t8.k1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    dialogInterface.dismiss();
                }
            }).show();
        } else {
            new h0(this).n(getString(R.string.extra_hint_message)).e(getString(R.string.extra_hint_watch_video), new DialogInterface.OnClickListener() { // from class: t8.a1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    this.f35439o.E2(dialogInterface, i10);
                }
            }).f(getString(R.string.extra_hint_selfie), new DialogInterface.OnClickListener() { // from class: t8.e0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    this.f35458o.F2(dialogInterface, i10);
                }
            }).g(getString(R.string.button_show_hint), new DialogInterface.OnClickListener() { // from class: t8.j1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    this.f35474o.G2(dialogInterface, i10);
                }
            }).h(getString(R.string.close), new DialogInterface.OnClickListener() { // from class: t8.m1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    dialogInterface.dismiss();
                }
            }).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b2(boolean z10, Runnable runnable) throws n {
        s.d(z10, this, new c((k0) getSupportFragmentManager().h0(R.id.frameAds), runnable), new t1.e().d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b3(Integer num) {
        if (num == null) {
            return;
        }
        if (num.intValue() <= 0) {
            this.f27089z.f33233l0.setText(R.string.bonus_hint);
            this.f27089z.f33233l0.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
        } else {
            this.f27089z.f33233l0.setText(String.valueOf(num));
            this.f27089z.f33233l0.setCompoundDrawablesWithIntrinsicBounds(this.D, (Drawable) null, (Drawable) null, (Drawable) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c2() {
        final g5.s sVarB = FirebaseAuth.getInstance().b();
        if (sVarB == null) {
            return;
        }
        t1.h.d(new Callable() { // from class: t8.b1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f35443a.k2(sVarB);
            }
        });
    }

    private String d2() {
        Question question = this.A.f27122z;
        return question != null ? question.id : AppEventsConstants.EVENT_PARAM_VALUE_NO.concat(Integer.toString(this.questionGlobalIndex));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d3() {
        new f1(this).k(null).d(getString(R.string.button_show_hint), new DialogInterface.OnClickListener() { // from class: t8.g1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                this.f35465o.J2(dialogInterface, i10);
            }
        }).e(getString(R.string.button_use_hint), new DialogInterface.OnClickListener() { // from class: t8.p0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                this.f35491o.K2(dialogInterface, i10);
            }
        }).f(getString(R.string.close), new DialogInterface.OnClickListener() { // from class: t8.l1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                dialogInterface.dismiss();
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e2() {
        com.tebakgambar.question.g gVar = this.A;
        if (gVar.f27121y) {
            gVar.e0();
        }
    }

    private void e3() {
        this.f27089z.O.setEnabled(false);
        String[] strArr = {getString(R.string.extra_life_message_1), getString(R.string.extra_life_message_2), getString(R.string.extra_life_message_3), getString(R.string.extra_life_message_4), getString(R.string.extra_life_message_5)};
        c0 c0Var = new c0(this, R.style.CustomDialog, false, strArr[new Random().nextInt(5)], BuildConfig.FLAVOR, getString(R.string.watch), getString(R.string.close));
        this.I = c0Var;
        c0Var.o(new d());
        this.I.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: t8.f0
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f35461o.M2(dialogInterface);
            }
        });
        this.I.p(strArr[new Random().nextInt(5)], getString(R.string.watch), getString(R.string.close));
        this.I.show();
    }

    private void f2() {
        getOnBackPressedDispatcher().b(new a(true));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f3(String str) {
        Toast.makeText(getApplicationContext(), str, 0).show();
    }

    private void g2() {
        int i10 = getResources().getDisplayMetrics().densityDpi;
        Bitmap bitmap = ((BitmapDrawable) getBaseContext().getResources().getDrawable(R.drawable.ic_hint_new)).getBitmap();
        Context baseContext = getBaseContext();
        Float fValueOf = Float.valueOf(20.0f);
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, (int) y.l(baseContext, fValueOf), (int) y.l(getBaseContext(), fValueOf), true);
        bitmapCreateScaledBitmap.setDensity(i10);
        this.D = new BitmapDrawable(getResources(), bitmapCreateScaledBitmap);
        Bitmap bitmapCreateScaledBitmap2 = Bitmap.createScaledBitmap(((BitmapDrawable) getBaseContext().getResources().getDrawable(R.drawable.ic_clock)).getBitmap(), (int) y.l(getBaseContext(), fValueOf), (int) y.l(getBaseContext(), fValueOf), true);
        bitmapCreateScaledBitmap2.setDensity(i10);
        this.E = new BitmapDrawable(getResources(), bitmapCreateScaledBitmap2);
    }

    private void g3() {
        m8.e.c("clickOnAddFreeAnswer", "answer page", "click on add free answer energy", d2().concat(" - init"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h2(Task task) {
        if (!task.t() || task.p() == null || ((u) task.p()).c() == null) {
            return;
        }
        TebakGambarApi.b().addProgress(RequestHeader.create(((u) task.p()).c())).v3(new f());
    }

    private void h3(boolean z10) {
        m8.e.c("clickOnAddFreeAnswer", "answer page", "click on add free answer energy", d2().concat(" - ").concat(z10 ? "completed" : "not complete"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object i2(g5.s sVar) throws Exception {
        sVar.W3(true).c(new OnCompleteListener() { // from class: t8.x0
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void a(Task task) {
                this.f35518a.h2(task);
            }
        });
        return null;
    }

    private void i3(int i10) {
        m8.e.c("clickOnUseFreeAnswer", "answer page", "click on use free answer", d2().concat(" - ").concat(Integer.toString(i10)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j2(Task task) {
        if (!task.t() || task.p() == null || ((u) task.p()).c() == null) {
            return;
        }
        TebakGambarApi.b().getFreeAnswer((this.A.L() ? QuestionType.REGULAR_KING : QuestionType.REGULAR).toString(), RequestHeader.create(((u) task.p()).c())).v3(new e());
    }

    private void j3(t1.h<Object>.C0255h c0255h, Context context, Question question) {
        v size = question.getSize(context);
        if (question.answerImageBytes != null) {
            v1.g.w(this).y(question.answerImageBytes).z(true).j(b2.b.NONE).Q(R.drawable.ic_transparent).p(this.f27089z.V);
        }
        v1.g.w(this).y(question.imageBytes).u(size.b(), size.a()).z(true).j(b2.b.NONE).Q(R.drawable.ic_transparent).N(new b(c0255h, question)).p(this.f27089z.X);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object k2(g5.s sVar) throws Exception {
        sVar.W3(true).c(new OnCompleteListener() { // from class: t8.y0
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void a(Task task) {
                this.f35521a.j2(task);
            }
        });
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k3(String str) {
        Context contextI0 = i0();
        if (contextI0 == null) {
            return;
        }
        h hVar = new h();
        e1.a aVar = new e1.a(contextI0);
        aVar.f(5.0f);
        aVar.d(30.0f);
        aVar.start();
        v1.g.w(this).x(str).R(aVar).N(hVar).j(b2.b.ALL).J(R.drawable.ic_daily_quiz_button).p(this.f27089z.U);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l2(Boolean bool) {
        a3();
    }

    private void l3() {
        i3(this.F.qty);
        final g5.s sVarB = FirebaseAuth.getInstance().b();
        if (sVarB == null) {
            return;
        }
        t1.h.d(new Callable() { // from class: t8.d1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f35454a.O2(sVarB);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m2(Boolean bool) {
        e3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n2(Integer num) {
        P2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o2(Integer num) {
        R2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p2(Integer num) {
        Q2(num.intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q2(Integer num) {
        S2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r2(String str) {
        if (str != null) {
            O0(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s2(Boolean bool) {
        if (this.C == null || !bool.booleanValue()) {
            return;
        }
        this.C.cancel();
        this.C = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t2(Integer num) {
        if (num.intValue() == 3) {
            a2();
            h3(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ t1.h u2(t1.h hVar) throws Exception {
        t1.h<Object>.C0255h c0255hO = t1.h.o();
        Context contextI0 = i0();
        Question question = (Question) hVar.s();
        if (contextI0 != null) {
            j3(c0255hO, contextI0, question);
        } else {
            c0255hO.d(question);
            c2();
        }
        return c0255hO.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ t1.h v2(t1.h hVar) throws Exception {
        if (hVar.s() == null) {
            if (hVar.r() != null) {
                com.google.firebase.crashlytics.a.a().d(hVar.r());
            }
            this.A.Y();
        } else {
            this.f27089z.f33227f0.setVisibility(8);
            this.f27089z.f33231j0.setVisibility(0);
            this.f27089z.f33225d0.setVisibility(8);
            if (this.A.A.isUsingTimer()) {
                this.f27089z.f33229h0.setVisibility(0);
                this.f27089z.f33228g0.setVisibility(8);
                this.f27089z.f33234m0.setCompoundDrawablesWithIntrinsicBounds(this.E, (Drawable) null, (Drawable) null, (Drawable) null);
                this.C.start();
            } else {
                this.f27089z.f33229h0.setVisibility(8);
                this.f27089z.f33228g0.setVisibility(0);
            }
            this.G = System.currentTimeMillis() - this.G;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w2(View view) {
        m8.e.c("clickAnswerPage", "answer page", "click on answer box", this.A.G());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x2(View view) {
        T2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y2(RewardItem rewardItem) {
        this.A.c0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z2(final g.f fVar) {
        y.Z(getBaseContext(), Integer.valueOf(fVar.f27132b));
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.layout_toast_custom, (ViewGroup) null);
        v1.g.w(this).w(Integer.valueOf(fVar.f27131a)).z(true).j(b2.b.NONE).p((ImageView) viewInflate.findViewById(R.id.imageViewIndicator));
        this.B.setContentView(viewInflate);
        if (isFinishing()) {
            return;
        }
        this.B.show();
        g0().postDelayed(new Runnable() { // from class: com.tebakgambar.question.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f27112o.A2(fVar);
            }
        }, L);
    }

    @Override // j8.t
    protected void A0(boolean z10) {
        super.A0(z10);
        if (z10) {
            this.f27089z.T.setVisibility(8);
        } else {
            this.f27089z.T.setVisibility(0);
        }
    }

    public void T2() {
        Context contextI0 = i0();
        if (contextI0 == null) {
            return;
        }
        if (!y.W(contextI0)) {
            f3(getString(R.string.error_no_internet_2));
        } else if (this.F.qty >= 1) {
            l3();
        } else {
            W2();
        }
    }

    public void c3(String str) {
        if (str == null) {
            return;
        }
        Dialog dialog = this.B;
        if (dialog == null) {
            Dialog dialog2 = new Dialog(this);
            this.B = dialog2;
            if (dialog2.getWindow() != null) {
                this.B.getWindow().requestFeature(1);
                this.B.getWindow().clearFlags(2);
                this.B.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            }
        } else if (dialog.isShowing()) {
            this.B.dismiss();
        }
        this.f27089z.O.setEnabled(false);
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.layout_dialog_bantuan, (ViewGroup) null);
        CustomTextView customTextView = (CustomTextView) viewInflate.findViewById(R.id.textViewBantuan);
        CustomTextView customTextView2 = (CustomTextView) viewInflate.findViewById(R.id.textViewLabelBantuan);
        v1.g.w(this).w(Integer.valueOf(R.drawable.ic_sigam_quotes)).z(true).j(b2.b.NONE).u((int) y.u(getApplicationContext(), Integer.valueOf(R.dimen.size_sigam_story)), (int) y.u(getApplicationContext(), Integer.valueOf(R.dimen.size_sigam_story))).p((ImageView) viewInflate.findViewById(R.id.imageViewBantuan));
        if (this.A.P.f().intValue() < 0) {
            customTextView2.setVisibility(8);
        } else {
            customTextView2.setVisibility(0);
        }
        customTextView.setText(str);
        this.B.setContentView(viewInflate);
        this.B.show();
        this.B.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: t8.g0
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f35464o.I2(dialogInterface);
            }
        });
    }

    @Override // j8.t, androidx.fragment.app.e, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        this.J.o(i10, i11, intent);
        if (i10 == 11 && i11 == -1) {
            this.A.F();
        }
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, androidx.core.app.g, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.A = (com.tebakgambar.question.g) androidx.lifecycle.k0.b(this).a(com.tebakgambar.question.g.class);
        o oVar = (o) androidx.databinding.g.j(this, R.layout.activity_regular_question);
        this.f27089z = oVar;
        oVar.w0(this.A);
        this.f27089z.u0(new i());
        y2.a.b(this);
        w wVar = new w(this);
        this.J = wVar;
        wVar.u(this.A);
        this.A.i0(this.questionGlobalIndex);
        E0(R.id.frameAds, "ca-app-pub-7269282889157841/8572238673");
        h0().H = "answer page";
        h0().I = this.A.G();
        this.A.P.h(this, new androidx.lifecycle.u() { // from class: t8.r0
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f35497a.b3((Integer) obj);
            }
        });
        this.A.N.h(this, new androidx.lifecycle.u() { // from class: t8.j0
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f35473a.U2((t1.h) obj);
            }
        });
        this.A.Q.h(this, new androidx.lifecycle.u() { // from class: t8.u0
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f35508a.c3((String) obj);
            }
        });
        this.A.T.h(this, new androidx.lifecycle.u() { // from class: com.tebakgambar.question.c
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f27109a.Z2((g.f) obj);
            }
        });
        this.A.S.h(this, new androidx.lifecycle.u() { // from class: t8.k0
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f35476a.l2((Boolean) obj);
            }
        });
        this.A.R.h(this, new androidx.lifecycle.u() { // from class: t8.l0
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f35479a.m2((Boolean) obj);
            }
        });
        this.A.W.h(this, new androidx.lifecycle.u() { // from class: t8.o0
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f35488a.n2((Integer) obj);
            }
        });
        this.A.X.h(this, new androidx.lifecycle.u() { // from class: t8.q0
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f35494a.o2((Integer) obj);
            }
        });
        this.A.Z.h(this, new androidx.lifecycle.u() { // from class: t8.s0
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f35500a.p2((Integer) obj);
            }
        });
        this.A.Y.h(this, new androidx.lifecycle.u() { // from class: t8.n0
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f35485a.q2((Integer) obj);
            }
        });
        this.A.U.h(this, new androidx.lifecycle.u() { // from class: t8.v0
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f35512a.r2((String) obj);
            }
        });
        this.A.M.h(this, new androidx.lifecycle.u() { // from class: t8.m0
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f35482a.s2((Boolean) obj);
            }
        });
        this.A.V.h(this, new androidx.lifecycle.u() { // from class: t8.t0
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f35504a.t2((Integer) obj);
            }
        });
        g2();
        V2();
        f2();
    }

    @Override // j8.t, androidx.appcompat.app.c, androidx.fragment.app.e, android.app.Activity
    protected void onDestroy() {
        Dialog dialog = this.B;
        if (dialog != null && dialog.isShowing()) {
            this.B.dismiss();
        }
        this.J.p();
        super.onDestroy();
    }

    @Override // androidx.fragment.app.e, android.app.Activity
    protected void onPause() {
        Dialog dialog = this.B;
        if (dialog != null) {
            dialog.dismiss();
        }
        k kVar = this.C;
        if (kVar != null) {
            kVar.cancel();
        }
        super.onPause();
    }

    @Override // j8.t, androidx.fragment.app.e, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        Runnable runnable;
        super.onRequestPermissionsResult(i10, strArr, iArr);
        if (i10 == 55) {
            if (y8.o.b(iArr) && (runnable = this.f27088y) != null) {
                runnable.run();
            }
            this.f27088y = null;
        }
    }

    @Override // j8.t, androidx.fragment.app.e, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.A.M.f() == null || this.A.M.f().booleanValue()) {
            return;
        }
        k kVar = this.C;
        if (kVar != null) {
            kVar.cancel();
        }
        if (this.A.H <= 0) {
            this.C = new k(60000L, 1000L);
            return;
        }
        k kVar2 = new k(this.A.H, 1000L);
        this.C = kVar2;
        kVar2.start();
    }
}
