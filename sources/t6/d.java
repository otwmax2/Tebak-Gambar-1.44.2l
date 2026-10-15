package t6;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: GlobalLibraryVersionRegistrar.java */
/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile d f35404b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<f> f35405a = new HashSet();

    d() {
    }

    public static d a() {
        d dVar = f35404b;
        if (dVar == null) {
            synchronized (d.class) {
                dVar = f35404b;
                if (dVar == null) {
                    dVar = new d();
                    f35404b = dVar;
                }
            }
        }
        return dVar;
    }

    Set<f> b() {
        Set<f> setUnmodifiableSet;
        synchronized (this.f35405a) {
            setUnmodifiableSet = Collections.unmodifiableSet(this.f35405a);
        }
        return setUnmodifiableSet;
    }
}
