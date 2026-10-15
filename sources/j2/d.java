package j2;

import b2.l;
import com.vungle.mediation.BuildConfig;
import z1.g;

/* JADX INFO: compiled from: UnitTransformation.java */
/* JADX INFO: loaded from: classes.dex */
public class d<T> implements g<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final g<?> f30660a = new d();

    public static <T> d<T> c() {
        return (d) f30660a;
    }

    @Override // z1.g
    public String a() {
        return BuildConfig.FLAVOR;
    }

    @Override // z1.g
    public l<T> b(l<T> lVar, int i10, int i11) {
        return lVar;
    }
}
