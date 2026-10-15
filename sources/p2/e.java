package p2;

import b2.l;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: UnitTranscoder.java */
/* JADX INFO: loaded from: classes.dex */
public class e<Z> implements c<Z, Z> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final e<?> f33518a = new e<>();

    public static <Z> c<Z, Z> c() {
        return f33518a;
    }

    @Override // p2.c
    public String a() {
        return BuildConfig.FLAVOR;
    }

    @Override // p2.c
    public l<Z> b(l<Z> lVar) {
        return lVar;
    }
}
