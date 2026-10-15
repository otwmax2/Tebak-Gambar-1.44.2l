package androidx.loader.app;

import android.os.Bundle;
import androidx.lifecycle.m0;
import androidx.lifecycle.n;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: compiled from: LoaderManager.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: androidx.loader.app.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: LoaderManager.java */
    public interface InterfaceC0058a<D> {
        void a(t0.b<D> bVar);

        t0.b<D> b(int i10, Bundle bundle);

        void c(t0.b<D> bVar, D d10);
    }

    public static <T extends n & m0> a b(T t10) {
        return new b(t10, t10.getViewModelStore());
    }

    @Deprecated
    public abstract void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract <D> t0.b<D> c(int i10, Bundle bundle, InterfaceC0058a<D> interfaceC0058a);

    public abstract void d();
}
