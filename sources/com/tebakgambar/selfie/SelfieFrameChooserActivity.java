package com.tebakgambar.selfie;

import android.content.Intent;
import android.os.Bundle;
import androidx.lifecycle.k0;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.tebakgambar.Henson;
import com.tebakgambar.R;
import com.tebakgambar.model.Level;
import com.tebakgambar.selfie.h;
import j8.t;
import o8.q;
import y8.y;

/* JADX INFO: loaded from: classes2.dex */
public class SelfieFrameChooserActivity extends t implements h.a {
    public int questionGlobalIndex;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private q f27149y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private i f27150z;

    @Override // com.tebakgambar.selfie.h.a
    public void a() {
    }

    @Override // j8.t, androidx.fragment.app.e, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (i10 == 11 && i11 == -1) {
            setResult(i11);
            finish();
        }
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, androidx.core.app.g, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f27150z = (i) k0.b(this).a(i.class);
        q qVar = (q) androidx.databinding.g.j(this, R.layout.activity_selfie_frame_chooser);
        this.f27149y = qVar;
        qVar.u0(this.f27150z);
        y2.a.b(this);
        this.f27149y.P.setLayoutManager(new LinearLayoutManager(this));
        h hVar = new h();
        hVar.y(this.f27150z.f27167s);
        hVar.x(this);
        this.f27149y.P.setAdapter(hVar);
        D0(R.id.frameAds);
    }

    @Override // com.tebakgambar.selfie.h.a
    public void r(Level level) {
        y.Z(this, Integer.valueOf(R.raw.sound_click));
        m8.e.c("chooseSelfieFrame", "choose selfie frame", "click on selfie frame option", "regular_frame - " + level.id);
        if (this.questionGlobalIndex == 0) {
            startActivity(new Intent(this, (Class<?>) EditFrameActivity.class).putExtra("frameLevel", level.id));
        } else {
            startActivityForResult(new Intent(this, (Class<?>) EditFrameActivity.class).putExtra("frameLevel", level.id).putExtra("questionGlobalIndex", this.questionGlobalIndex), 11);
        }
    }

    @Override // com.tebakgambar.selfie.h.a
    public void z() {
        startActivity(Henson.with(this).c().jumpToQuiz(true).build());
    }
}
