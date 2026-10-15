package com.tebakgambar.levelselection;

import android.os.Bundle;
import com.tebakgambar.Henson;
import com.tebakgambar.R;
import com.tebakgambar.model.Level;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes2.dex */
public class LevelLoadingActivity extends j8.t {
    private f A;
    int level;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private Timer f26900y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private o8.i f26901z;

    class a extends TimerTask {
        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            LevelLoadingActivity.this.A.r();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X0(i8.a aVar) {
        if (aVar != null && aVar.d()) {
            Z0(aVar.e());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y0(Boolean bool) {
        if (bool == null) {
            return;
        }
        Z0(bool.booleanValue());
    }

    private void Z0(boolean z10) {
        if (!z10) {
            startActivity(Henson.with(this).e().failedLevel(this.A.f26938y).build().setFlags(603979776));
            finish();
            return;
        }
        Level levelY = this.A.f26936w.y();
        if (levelY == null || !levelY.shouldShowSlider()) {
            startActivity(Henson.with(this).g().level(this.level).a());
        } else {
            startActivity(Henson.with(this).k().levelId(levelY.id).build());
        }
        finish();
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, androidx.core.app.g, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.A = (f) androidx.lifecycle.k0.b(this).a(f.class);
        o8.i iVar = (o8.i) androidx.databinding.g.j(this, R.layout.activity_level_loading);
        this.f26901z = iVar;
        iVar.u0(this.A);
        y2.a.b(this);
        this.A.f26934u.h(this, new androidx.lifecycle.u() { // from class: com.tebakgambar.levelselection.a
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f26918a.X0((i8.a) obj);
            }
        });
        this.A.f26935v.h(this, new androidx.lifecycle.u() { // from class: com.tebakgambar.levelselection.b
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f26920a.Y0((Boolean) obj);
            }
        });
        this.A.s(this.level);
        D0(R.id.frameAds);
    }

    @Override // androidx.fragment.app.e, android.app.Activity
    protected void onPause() {
        super.onPause();
        Timer timer = this.f26900y;
        if (timer != null) {
            timer.cancel();
            this.f26900y = null;
        }
        if (this.A.f26937x != null) {
            u0.a.b(getApplication()).e(this.A.f26937x);
        }
    }

    @Override // j8.t, androidx.fragment.app.e, android.app.Activity
    protected void onResume() {
        super.onResume();
        Timer timer = this.f26900y;
        if (timer != null) {
            timer.cancel();
        }
        Timer timer2 = new Timer();
        this.f26900y = timer2;
        timer2.schedule(new a(), 0L, 1000L);
        u0.a aVarB = u0.a.b(getApplication());
        f fVar = this.A;
        aVarB.c(fVar.f26937x, i8.a.c(fVar.f26938y));
        this.A.n();
    }
}
