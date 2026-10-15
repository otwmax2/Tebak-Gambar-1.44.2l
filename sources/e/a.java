package e;

import android.content.Context;
import android.content.Intent;
import t9.m;

/* JADX INFO: compiled from: ActivityResultContract.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class a<I, O> {

    /* JADX INFO: renamed from: e.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ActivityResultContract.kt */
    public static final class C0149a<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final T f28885a;

        public C0149a(T t10) {
            this.f28885a = t10;
        }

        public final T a() {
            return this.f28885a;
        }
    }

    public abstract Intent createIntent(Context context, I i10);

    public C0149a<O> getSynchronousResult(Context context, I i10) {
        m.e(context, "context");
        return null;
    }

    public abstract O parseResult(int i10, Intent intent);
}
