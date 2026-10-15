package com.tebakgambar.levelselection;

import android.os.Bundle;
import android.view.View;
import com.tebakgambar.Henson;
import com.tebakgambar.R;
import com.tebakgambar.model.Level;

/* JADX INFO: loaded from: classes2.dex */
public class SliderActivity extends j8.t {
    public int levelId;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private o8.u f26916y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private p0 f26917z;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void X0(Integer num) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Y0(Level level) {
        startActivity(Henson.with(this).g().level(level.id).a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Z0(View view) {
        this.f26917z.p();
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, androidx.core.app.g, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f26917z = (p0) androidx.lifecycle.k0.b(this).a(p0.class);
        o8.u uVar = (o8.u) androidx.databinding.g.j(this, R.layout.activity_slider);
        this.f26916y = uVar;
        uVar.u0(this.f26917z);
        y2.a.b(this);
        this.f26917z.f26976t.h(this, new androidx.lifecycle.u() { // from class: com.tebakgambar.levelselection.m0
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f26968a.X0((Integer) obj);
            }
        });
        this.f26917z.f26975s.h(this, new androidx.lifecycle.u() { // from class: com.tebakgambar.levelselection.l0
            @Override // androidx.lifecycle.u
            public final void d(Object obj) {
                this.f26965a.Y0((Level) obj);
            }
        });
        this.f26917z.q(this.levelId);
        this.f26916y.O.setOnClickListener(new View.OnClickListener() { // from class: com.tebakgambar.levelselection.k0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f26963o.Z0(view);
            }
        });
    }
}
