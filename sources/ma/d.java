package ma;

import ja.e0;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: compiled from: RouteDatabase.java */
/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<e0> f32250a = new LinkedHashSet();

    public synchronized void a(e0 e0Var) {
        this.f32250a.remove(e0Var);
    }

    public synchronized void b(e0 e0Var) {
        this.f32250a.add(e0Var);
    }

    public synchronized boolean c(e0 e0Var) {
        return this.f32250a.contains(e0Var);
    }
}
