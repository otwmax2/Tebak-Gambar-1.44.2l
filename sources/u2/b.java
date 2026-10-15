package u2;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import u2.c;

/* JADX INFO: compiled from: DrawableCrossFadeViewAnimation.java */
/* JADX INFO: loaded from: classes.dex */
public class b<T extends Drawable> implements c<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c<T> f35584a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f35585b;

    public b(c<T> cVar, int i10) {
        this.f35584a = cVar;
        this.f35585b = i10;
    }

    @Override // u2.c
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(T t10, c.a aVar) {
        Drawable drawableE = aVar.e();
        if (drawableE == null) {
            this.f35584a.a(t10, aVar);
            return false;
        }
        TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{drawableE, t10});
        transitionDrawable.setCrossFadeEnabled(true);
        transitionDrawable.startTransition(this.f35585b);
        aVar.d(transitionDrawable);
        return true;
    }
}
