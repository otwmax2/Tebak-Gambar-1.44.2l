package aa;

import com.facebook.share.internal.ShareConstants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import s9.l;
import t9.m;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: _Sequences.kt */
/* JADX INFO: loaded from: classes2.dex */
public class h extends g {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: Iterables.kt */
    public static final class a<T> implements Iterable<T>, u9.a {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ b f92o;

        public a(b bVar) {
            this.f92o = bVar;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return this.f92o.iterator();
        }
    }

    public static <T> Iterable<T> c(b<? extends T> bVar) {
        m.e(bVar, "<this>");
        return new a(bVar);
    }

    public static <T, R> b<R> d(b<? extends T> bVar, l<? super T, ? extends R> lVar) {
        m.e(bVar, "<this>");
        m.e(lVar, "transform");
        return new i(bVar, lVar);
    }

    public static final <T, C extends Collection<? super T>> C e(b<? extends T> bVar, C c10) {
        m.e(bVar, "<this>");
        m.e(c10, ShareConstants.DESTINATION);
        Iterator<? extends T> it = bVar.iterator();
        while (it.hasNext()) {
            c10.add(it.next());
        }
        return c10;
    }

    public static <T> List<T> f(b<? extends T> bVar) {
        m.e(bVar, "<this>");
        return i9.l.j(g(bVar));
    }

    public static final <T> List<T> g(b<? extends T> bVar) {
        m.e(bVar, "<this>");
        return (List) e(bVar, new ArrayList());
    }
}
