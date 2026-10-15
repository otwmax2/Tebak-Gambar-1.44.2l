package h0;

import da.o0;
import java.io.File;
import java.util.List;

/* JADX INFO: compiled from: DataStoreFactory.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f30126a = new g();

    private g() {
    }

    public final <T> f<T> a(k<T> kVar, i0.b<T> bVar, List<? extends d<T>> list, o0 o0Var, s9.a<? extends File> aVar) {
        t9.m.e(kVar, "serializer");
        t9.m.e(list, "migrations");
        t9.m.e(o0Var, "scope");
        t9.m.e(aVar, "produceFile");
        return new m(aVar, kVar, i9.k.b(e.f30108a.b(list)), new i0.a(), o0Var);
    }
}
