package u2;

import android.view.View;
import android.view.animation.Animation;
import u2.c;

/* JADX INFO: compiled from: ViewAnimation.java */
/* JADX INFO: loaded from: classes.dex */
public class f<R> implements c<R> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f35588a;

    /* JADX INFO: compiled from: ViewAnimation.java */
    interface a {
        Animation build();
    }

    f(a aVar) {
        this.f35588a = aVar;
    }

    @Override // u2.c
    public boolean a(R r10, c.a aVar) {
        View viewA = aVar.a();
        if (viewA == null) {
            return false;
        }
        viewA.clearAnimation();
        viewA.startAnimation(this.f35588a.build());
        return false;
    }
}
