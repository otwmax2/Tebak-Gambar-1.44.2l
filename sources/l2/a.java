package l2;

import android.graphics.drawable.Drawable;
import b2.l;
import java.util.Objects;

/* JADX INFO: compiled from: DrawableResource.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a<T extends Drawable> implements l<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final T f31878a;

    public a(T t10) {
        Objects.requireNonNull(t10, "Drawable must not be null!");
        this.f31878a = t10;
    }

    @Override // b2.l
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final T get() {
        return (T) this.f31878a.getConstantState().newDrawable();
    }
}
