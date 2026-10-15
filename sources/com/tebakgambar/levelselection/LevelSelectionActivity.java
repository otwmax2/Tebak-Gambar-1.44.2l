package com.tebakgambar.levelselection;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Toast;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.tebakgambar.Henson;
import com.tebakgambar.QuotesActivity;
import com.tebakgambar.R;
import com.tebakgambar.levelselection.r;
import com.tebakgambar.model.BaseEvent;
import com.tebakgambar.model.ComingSoon;
import com.tebakgambar.model.CustomBanner;
import com.tebakgambar.model.DialogModel;
import com.tebakgambar.model.Level;
import com.tebakgambar.model.ResultEventClue;
import com.tebakgambar.model.ResultEvents;
import com.tebakgambar.question.EventQuestionActivity;
import j8.c0;
import j8.i1;

/* JADX INFO: loaded from: classes2.dex */
public class LevelSelectionActivity extends j8.t implements r.c {
    private r A = new r();
    private RecyclerView.v B = new RecyclerView.v();
    public int eventId;
    public int failedLevel;
    public BaseEvent homeEvent;
    public boolean isLevelNotEligible;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private o8.k f26904y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private z f26905z;

    class a implements t2.f<String, l2.b> {
        a() {
        }

        @Override // t2.f
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public boolean b(Exception exc, String str, v2.j<l2.b> jVar, boolean z10) {
            return false;
        }

        @Override // t2.f
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean a(l2.b bVar, String str, v2.j<l2.b> jVar, boolean z10, boolean z11) {
            return false;
        }
    }

    class b implements c0.i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ j8.c0 f26907a;

        b(j8.c0 c0Var) {
            this.f26907a = c0Var;
        }

        @Override // j8.c0.i
        public void a() {
            this.f26907a.dismiss();
            Intent intentBuild = Henson.with(LevelSelectionActivity.this).b().showLoginImmediately(true).build();
            intentBuild.addFlags(603979776);
            LevelSelectionActivity.this.startActivity(intentBuild);
        }

        @Override // j8.c0.i
        public void b() {
            this.f26907a.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e1(final CustomBanner customBanner) {
        if (customBanner != null) {
            h0().U(customBanner.imageUrl, new a(), new View.OnClickListener() { // from class: com.tebakgambar.levelselection.m
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f26966o.h1(customBanner, view);
                }
            });
        } else {
            h0().R();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f1(BaseEvent baseEvent) {
        o(baseEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object g1(t1.h hVar) throws Exception {
        startActivity((Intent) hVar.s());
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h1(CustomBanner customBanner, View view) {
        y8.f.k(this, customBanner.webUrl).x(new t1.f() { // from class: com.tebakgambar.levelselection.p
            @Override // t1.f
            public final Object a(t1.h hVar) {
                return this.f26974a.g1(hVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j1(Level level, DialogInterface dialogInterface, int i10) {
        dialogInterface.dismiss();
        startActivity(Henson.with(this).d().level(level.id).a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l1(int i10, DialogInterface dialogInterface, int i11) {
        dialogInterface.dismiss();
        startActivity(Henson.with(this).d().level(i10).a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n1(DialogModel dialogModel, DialogInterface dialogInterface, int i10) {
        dialogInterface.dismiss();
        y8.a.f(this, Uri.parse(dialogModel.url));
    }

    private void o1(ResultEvents resultEvents) {
        if (resultEvents.isDone()) {
            if (resultEvents.isMessageExists()) {
                startActivity(new Intent(this, (Class<?>) QuotesActivity.class).putExtra("event_data", resultEvents));
            }
        } else if (resultEvents.isNew() && resultEvents.isMessageExists()) {
            startActivity(new Intent(this, (Class<?>) QuotesActivity.class).putExtra("event_data", resultEvents));
        } else {
            startActivity(new Intent(this, (Class<?>) EventQuestionActivity.class).putExtra("event_data", resultEvents));
        }
        m8.e.c("clickLevelPage", "level page", "click on level", "EVENT-" + resultEvents.id);
    }

    private void p1(ResultEventClue resultEventClue) {
        if (!y8.y.V(this, resultEventClue.id)) {
            startActivity(new Intent(this, (Class<?>) EventQuestionActivity.class).putExtra("event_clue", resultEventClue));
        } else {
            y8.y.f0(this, resultEventClue.id);
            startActivity(Henson.with(this).a().clueEvent(resultEventClue).a());
        }
    }

    private void q1(final Level level) {
        new i1(this).h(getString(R.string.download_level_message)).c(getString(R.string.no), new DialogInterface.OnClickListener() { // from class: com.tebakgambar.levelselection.k
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                dialogInterface.dismiss();
            }
        }).d(getString(R.string.yes), new DialogInterface.OnClickListener() { // from class: com.tebakgambar.levelselection.i
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                this.f26949o.j1(level, dialogInterface, i10);
            }
        }).show();
    }

    private void r1() {
        final int i10 = this.failedLevel;
        if (i10 != 0) {
            new i1(this).h(getString(R.string.level_download_failed_message)).c(getString(R.string.later), new DialogInterface.OnClickListener() { // from class: com.tebakgambar.levelselection.j
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i11) {
                    dialogInterface.dismiss();
                }
            }).d(getString(R.string.download_again), new DialogInterface.OnClickListener() { // from class: com.tebakgambar.levelselection.g
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i11) {
                    this.f26942o.l1(i10, dialogInterface, i11);
                }
            }).show();
            this.failedLevel = 0;
        }
    }

    private void s1(BaseEvent baseEvent) {
        String str = baseEvent.message_login;
        String str2 = baseEvent.title_login;
        String string = baseEvent.positive_login;
        if (string == null) {
            string = getString(R.string.login);
        }
        String str3 = string;
        String string2 = baseEvent.negative_login;
        if (string2 == null) {
            string2 = getString(R.string.close);
        }
        j8.c0 c0Var = new j8.c0(this, R.style.CustomDialog, false, str, str2, str3, string2);
        c0Var.q();
        c0Var.o(new b(c0Var));
        c0Var.show();
    }

    private void u1() {
        H0(getString(R.string.message_not_eligible_level));
    }

    private void v1(Level level) {
        ComingSoon comingSoon = level.comingSoon;
        if (comingSoon == null) {
            return;
        }
        final DialogModel dialogModel = comingSoon.pending;
        new i1(this).i(dialogModel.titleMessage).h(dialogModel.message).c(dialogModel.buttonNegative, new DialogInterface.OnClickListener() { // from class: com.tebakgambar.levelselection.l
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                dialogInterface.dismiss();
            }
        }).d(dialogModel.buttonPositive, new DialogInterface.OnClickListener() { // from class: com.tebakgambar.levelselection.h
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                this.f26946o.n1(dialogModel, dialogInterface, i10);
            }
        }).show();
    }

    @Override // com.tebakgambar.levelselection.r.c
    public void a() {
        y8.y.Z(this, Integer.valueOf(R.raw.sound_click));
        Toast.makeText(this, R.string.level_coming_soon_toast, 0).show();
    }

    @Override // com.tebakgambar.levelselection.r.c
    public void b(Level level) {
        y8.y.Z(this, Integer.valueOf(R.raw.sound_click));
        m8.e.c("clickLevelPage", "level page", "click on level", "REGULAR-" + level.id);
        if (level.isLocked()) {
            return;
        }
        this.f26905z.U(level);
        if (!level.isAvailable()) {
            q1(level);
        } else if (level.shouldShowSlider()) {
            startActivity(Henson.with(this).k().levelId(level.id).build());
        } else {
            startActivity(Henson.with(this).g().level(level.id).a());
        }
    }

    @Override // com.tebakgambar.levelselection.r.c
    public void o(BaseEvent baseEvent) {
        y8.y.Z(this, Integer.valueOf(R.raw.sound_click));
        if (this.f26905z.V(baseEvent)) {
            s1(baseEvent);
        } else if (baseEvent instanceof ResultEvents) {
            o1((ResultEvents) baseEvent);
        } else if (baseEvent instanceof ResultEventClue) {
            p1((ResultEventClue) baseEvent);
        }
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, androidx.core.app.g, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f26905z = (z) androidx.lifecycle.k0.b(this).a(z.class);
        o8.k kVar = (o8.k) androidx.databinding.g.j(this, R.layout.activity_level_selection);
        this.f26904y = kVar;
        kVar.u0(this.f26905z);
        C0(this.f26905z);
        y2.a.b(this);
        this.f26905z.D.h(this, new androidx.lifecycle.u() { // from class: com.tebakgambar.levelselection.o
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f26972a.e1((CustomBanner) obj);
            }
        });
        this.f26905z.E.h(this, new androidx.lifecycle.u() { // from class: com.tebakgambar.levelselection.n
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f26969a.f1((BaseEvent) obj);
            }
        });
        this.f26905z.f0();
        this.f26905z.R();
        this.f26905z.S();
        this.f26905z.G = this.eventId;
        this.eventId = 0;
        r1();
        this.f26904y.Q.setRecycledViewPool(this.B);
        this.f26904y.Q.setLayoutManager(new LinearLayoutManager(this));
        this.A.A(this.f26905z.C);
        this.A.z(this);
        this.f26904y.Q.setAdapter(this.A);
        this.f26905z.T();
        D0(R.id.frameAds);
        if (this.isLevelNotEligible) {
            this.isLevelNotEligible = false;
            u1();
            return;
        }
        BaseEvent baseEvent = this.homeEvent;
        if (baseEvent != null) {
            o(baseEvent);
            this.homeEvent = null;
        }
    }

    @Override // j8.t, androidx.appcompat.app.c, androidx.fragment.app.e, android.app.Activity
    protected void onDestroy() {
        this.A.x();
        super.onDestroy();
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        y2.a.c(this, intent.getExtras());
        this.f26905z.f0();
        this.f26905z.R();
        this.f26905z.S();
        r1();
    }

    @Override // j8.t, androidx.fragment.app.e, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.A.i();
    }

    @Override // com.tebakgambar.levelselection.r.c
    public void p(Level level) {
        y8.y.Z(this, Integer.valueOf(R.raw.sound_click));
        v1(level);
    }

    @Override // com.tebakgambar.levelselection.r.c
    public void u() {
        y8.a.l(this);
    }
}
