package com.tebakgambar.levelselection;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import com.tebakgambar.Henson;
import com.tebakgambar.R;
import com.tebakgambar.levelselection.c0;
import com.tebakgambar.model.QuestionSavedData;
import com.vungle.mediation.BuildConfig;
import j8.c0;

/* JADX INFO: loaded from: classes2.dex */
public class QuestionSelectionActivity extends j8.t implements c0.b {
    private c0 A;
    private j8.c0 B;
    public boolean isQuestionNotEligible;
    int level;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private o8.m f26909y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private j0 f26910z;

    class a implements c0.i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ j8.c0 f26912a;

        a(j8.c0 c0Var) {
            this.f26912a = c0Var;
        }

        @Override // j8.c0.i
        public void a() {
            Intent intentBuild = Henson.with(QuestionSelectionActivity.this).b().showLoginImmediately(true).build();
            intentBuild.addFlags(603979776);
            QuestionSelectionActivity.this.startActivity(intentBuild);
            this.f26912a.dismiss();
            QuestionSelectionActivity.this.finish();
        }

        @Override // j8.c0.i
        public void b() {
            this.f26912a.dismiss();
        }
    }

    class b extends androidx.activity.g {
        b(boolean z10) {
            super(z10);
        }

        @Override // androidx.activity.g
        public void b() {
            QuestionSelectionActivity.this.a1();
        }
    }

    public class c {
        public c() {
        }

        public void a(View view) {
            QuestionSelectionActivity.this.a1();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X0(Boolean bool) {
        j8.c0 c0Var;
        if (bool.booleanValue() && this.B == null) {
            j8.c0 c0Var2 = new j8.c0(this, R.style.CustomDialog, true, getString(R.string.loading), Integer.valueOf(R.dimen.size_text));
            this.B = c0Var2;
            c0Var2.setCancelable(false);
            this.B.show();
            return;
        }
        if (bool.booleanValue() || (c0Var = this.B) == null) {
            return;
        }
        c0Var.dismiss();
        this.B = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y0(Boolean bool) {
        if (bool.booleanValue()) {
            j8.c0 c0Var = new j8.c0(this, R.style.CustomDialog, false, getString(R.string.login_expired_message), null, getString(R.string.lets_login), getString(R.string.close));
            c0Var.d();
            c0Var.o(new a(c0Var));
            c0Var.show();
        }
    }

    private void Z0() {
        getOnBackPressedDispatcher().b(new b(true));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a1() {
        Intent intentA = androidx.core.app.j.a(this);
        if (androidx.core.app.j.f(this, intentA) || isTaskRoot()) {
            androidx.core.app.t.k(this).g(intentA).l();
        } else {
            androidx.core.app.j.e(this, intentA);
        }
    }

    private void b1() {
        H0(getString(R.string.message_not_eligible_question));
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, androidx.core.app.g, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f26910z = (j0) androidx.lifecycle.k0.b(this).a(j0.class);
        o8.m mVar = (o8.m) androidx.databinding.g.j(this, R.layout.activity_question_selection);
        this.f26909y = mVar;
        mVar.w0(this.f26910z);
        this.f26909y.u0(new c());
        y2.a.b(this);
        this.f26910z.f26955u.h(this, new androidx.lifecycle.u() { // from class: com.tebakgambar.levelselection.b0
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f26921a.X0((Boolean) obj);
            }
        });
        this.f26910z.f26956v.h(this, new androidx.lifecycle.u() { // from class: com.tebakgambar.levelselection.a0
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f26919a.Y0((Boolean) obj);
            }
        });
        this.f26910z.H(this.level);
        this.f26909y.Q.setLayoutManager(new GridLayoutManager(this, 4));
        c0 c0Var = new c0();
        this.A = c0Var;
        c0Var.x(this.f26910z.f26957w);
        this.A.w(this);
        this.f26909y.Q.setAdapter(this.A);
        E0(R.id.frameAds, "ca-app-pub-7269282889157841/4242111423");
        h0().H = "sub level page";
        h0().I = this.level + BuildConfig.FLAVOR;
        if (this.isQuestionNotEligible) {
            this.isQuestionNotEligible = false;
            b1();
        }
        if (this.f26910z.q()) {
            l8.d.z(new h8.a(true)).show(getSupportFragmentManager(), "TGInAppReviewDialogFragment");
        }
        Z0();
    }

    @Override // j8.t, androidx.fragment.app.e, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.f26910z.u();
    }

    @Override // com.tebakgambar.levelselection.c0.b
    public void s(QuestionSavedData questionSavedData) {
        m8.e.c("clickSubLevelPage", "sub level page", "click on sub level", this.level + " - " + questionSavedData.globalIndex);
        y8.y.Z(this, Integer.valueOf(R.raw.sound_click));
        startActivity(Henson.with(this).h().questionGlobalIndex(questionSavedData.globalIndex).build());
    }
}
