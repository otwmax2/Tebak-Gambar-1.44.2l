package u2;

import android.graphics.drawable.Drawable;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import u2.f;

/* JADX INFO: compiled from: DrawableCrossFadeFactory.java */
/* JADX INFO: loaded from: classes.dex */
public class a<T extends Drawable> implements d<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g<T> f35579a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f35580b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b<T> f35581c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b<T> f35582d;

    /* JADX INFO: renamed from: u2.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DrawableCrossFadeFactory.java */
    private static class C0261a implements f.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f35583a;

        C0261a(int i10) {
            this.f35583a = i10;
        }

        @Override // u2.f.a
        public Animation build() {
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(this.f35583a);
            return alphaAnimation;
        }
    }

    public a() {
        this(300);
    }

    private c<T> b() {
        if (this.f35581c == null) {
            this.f35581c = new b<>(this.f35579a.a(false, true), this.f35580b);
        }
        return this.f35581c;
    }

    private c<T> c() {
        if (this.f35582d == null) {
            this.f35582d = new b<>(this.f35579a.a(false, false), this.f35580b);
        }
        return this.f35582d;
    }

    @Override // u2.d
    public c<T> a(boolean z10, boolean z11) {
        return z10 ? e.c() : z11 ? b() : c();
    }

    public a(int i10) {
        this(new g(new C0261a(i10)), i10);
    }

    a(g<T> gVar, int i10) {
        this.f35579a = gVar;
        this.f35580b = i10;
    }
}
