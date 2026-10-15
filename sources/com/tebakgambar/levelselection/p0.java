package com.tebakgambar.levelselection;

import android.app.Application;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import com.tebakgambar.R;
import com.tebakgambar.database.SliderDatabase;
import com.tebakgambar.model.Level;
import com.tebakgambar.model.Slider;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: SliderViewModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class p0 extends androidx.lifecycle.a {
    private Slider A;
    private int B;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    y8.u<Level> f26975s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    y8.u<Integer> f26976t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public androidx.databinding.m<String> f26977u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public androidx.databinding.m<String> f26978v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public androidx.databinding.m<Drawable> f26979w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public androidx.databinding.m<Drawable> f26980x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public androidx.databinding.n f26981y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private Level f26982z;

    public p0(Application application) {
        super(application);
        this.f26975s = new y8.u<>();
        this.f26976t = new y8.u<>();
        this.f26977u = new androidx.databinding.m<>();
        this.f26978v = new androidx.databinding.m<>();
        this.f26979w = new androidx.databinding.m<>();
        this.f26980x = new androidx.databinding.m<>();
        this.f26981y = new androidx.databinding.n();
        this.B = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Void m(int i10) throws Exception {
        if (i10 == 0) {
            this.A = SliderDatabase.C().D().b();
            return null;
        }
        Level levelFromId = Level.fromId(i10);
        this.f26982z = levelFromId;
        this.A = Slider.fromId(levelFromId.sliderId);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ t1.h n(t1.h hVar) throws Exception {
        o();
        return null;
    }

    private void o() {
        Slider.Image image = this.A.images.get(this.B);
        this.f26977u.z(image.imageUrl);
        if (!image.backgroundColor.contains("#")) {
            image.backgroundColor = "#" + image.backgroundColor;
        }
        this.f26979w.z(new ColorDrawable(Color.parseColor(image.backgroundColor)));
        this.f26978v.z(image.buttonTitle + " ");
        if (this.B == this.A.images.size() - 1) {
            this.f26981y.z(-16777216);
            this.f26980x.z(androidx.core.content.a.f(j(), R.drawable.button_new_yellow));
        } else {
            this.f26981y.z(-1);
            this.f26980x.z(androidx.core.content.a.f(j(), R.drawable.button_new_green));
        }
    }

    void p() {
        if (this.B + 1 < this.A.images.size()) {
            this.B++;
            o();
            return;
        }
        Level level = this.f26982z;
        if (level == null) {
            this.f26976t.n(1);
        } else {
            level.setSlideAlredyShown();
            this.f26975s.n(this.f26982z);
        }
    }

    void q(final int i10) {
        t1.h.d(new Callable() { // from class: com.tebakgambar.levelselection.n0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f26970a.m(i10);
            }
        }).A(new t1.f() { // from class: com.tebakgambar.levelselection.o0
            @Override // t1.f
            public final Object a(t1.h hVar) {
                return this.f26973a.n(hVar);
            }
        }, t1.h.f35199k);
    }
}
