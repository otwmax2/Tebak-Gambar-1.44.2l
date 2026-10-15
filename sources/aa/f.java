package aa;

import java.util.Iterator;
import t9.m;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: Sequences.kt */
/* JADX INFO: loaded from: classes2.dex */
public class f extends e {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: Sequences.kt */
    public static final class a<T> implements b<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Iterator f91a;

        public a(Iterator it) {
            this.f91a = it;
        }

        @Override // aa.b
        public Iterator<T> iterator() {
            return this.f91a;
        }
    }

    public static <T> b<T> a(Iterator<? extends T> it) {
        m.e(it, "<this>");
        return b(new a(it));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> b<T> b(b<? extends T> bVar) {
        m.e(bVar, "<this>");
        return bVar instanceof aa.a ? bVar : new aa.a(bVar);
    }
}
