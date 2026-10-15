package kotlinx.coroutines.internal;

import da.h2;
import java.util.Iterator;
import java.util.List;
import java.util.ServiceLoader;

/* JADX INFO: compiled from: MainDispatchers.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final v f31784a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final boolean f31785b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final h2 f31786c;

    static {
        v vVar = new v();
        f31784a = vVar;
        f31785b = f0.e("kotlinx.coroutines.fast.service.loader", true);
        f31786c = vVar.a();
    }

    private v() {
    }

    private final h2 a() {
        Object next;
        h2 h2VarE;
        try {
            List<u> listC = f31785b ? k.f31753a.c() : aa.h.f(aa.f.a(ServiceLoader.load(u.class, u.class.getClassLoader()).iterator()));
            Iterator<T> it = listC.iterator();
            if (it.hasNext()) {
                next = it.next();
                if (it.hasNext()) {
                    int iC = ((u) next).c();
                    do {
                        Object next2 = it.next();
                        int iC2 = ((u) next2).c();
                        if (iC < iC2) {
                            next = next2;
                            iC = iC2;
                        }
                    } while (it.hasNext());
                }
            } else {
                next = null;
            }
            u uVar = (u) next;
            return (uVar == null || (h2VarE = w.e(uVar, listC)) == null) ? w.b(null, null, 3, null) : h2VarE;
        } catch (Throwable th) {
            return w.b(th, null, 2, null);
        }
    }
}
