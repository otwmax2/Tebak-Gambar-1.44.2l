package t6;

import java.util.Iterator;
import java.util.Set;
import k5.r;

/* JADX INFO: compiled from: DefaultUserAgentPublisher.java */
/* JADX INFO: loaded from: classes2.dex */
public class c implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f35402a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f35403b;

    c(Set<f> set, d dVar) {
        this.f35402a = e(set);
        this.f35403b = dVar;
    }

    public static k5.c<i> c() {
        return k5.c.c(i.class).b(r.n(f.class)).f(new k5.h() { // from class: t6.b
            @Override // k5.h
            public final Object a(k5.e eVar) {
                return c.d(eVar);
            }
        }).d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ i d(k5.e eVar) {
        return new c(eVar.g(f.class), d.a());
    }

    private static String e(Set<f> set) {
        StringBuilder sb = new StringBuilder();
        Iterator<f> it = set.iterator();
        while (it.hasNext()) {
            f next = it.next();
            sb.append(next.b());
            sb.append('/');
            sb.append(next.c());
            if (it.hasNext()) {
                sb.append(' ');
            }
        }
        return sb.toString();
    }

    @Override // t6.i
    public String a() {
        if (this.f35403b.b().isEmpty()) {
            return this.f35402a;
        }
        return this.f35402a + ' ' + e(this.f35403b.b());
    }
}
