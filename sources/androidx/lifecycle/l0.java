package androidx.lifecycle;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: ViewModelStore.java */
/* JADX INFO: loaded from: classes.dex */
public class l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashMap<String, g0> f3548a = new HashMap<>();

    public final void a() {
        Iterator<g0> it = this.f3548a.values().iterator();
        while (it.hasNext()) {
            it.next().e();
        }
        this.f3548a.clear();
    }

    final g0 b(String str) {
        return this.f3548a.get(str);
    }

    Set<String> c() {
        return new HashSet(this.f3548a.keySet());
    }

    final void d(String str, g0 g0Var) {
        g0 g0VarPut = this.f3548a.put(str, g0Var);
        if (g0VarPut != null) {
            g0VarPut.h();
        }
    }
}
