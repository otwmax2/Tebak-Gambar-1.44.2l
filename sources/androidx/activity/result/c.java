package androidx.activity.result;

import android.annotation.SuppressLint;

/* JADX INFO: compiled from: ActivityResultLauncher.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class c<I> {
    public abstract e.a<I, ?> a();

    public void b(@SuppressLint({"UnknownNullness"}) I i10) {
        c(i10, null);
    }

    public abstract void c(@SuppressLint({"UnknownNullness"}) I i10, androidx.core.app.c cVar);

    public abstract void d();
}
