package i9;

import com.facebook.share.internal.ShareConstants;
import com.vungle.mediation.BuildConfig;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: _Collections.kt */
/* JADX INFO: loaded from: classes2.dex */
public class t extends s {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: _Collections.kt */
    static final class a<T> extends t9.n implements s9.l<Integer, T> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ int f30546o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(int i10) {
            super(1);
            this.f30546o = i10;
        }

        public final T c(int i10) {
            throw new IndexOutOfBoundsException("Collection doesn't contain element at index " + this.f30546o + '.');
        }

        @Override // s9.l
        public /* bridge */ /* synthetic */ Object invoke(Integer num) {
            return c(num.intValue());
        }
    }

    public static final <T> String A(Iterable<? extends T> iterable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, s9.l<? super T, ? extends CharSequence> lVar) {
        t9.m.e(iterable, "<this>");
        t9.m.e(charSequence, "separator");
        t9.m.e(charSequence2, "prefix");
        t9.m.e(charSequence3, "postfix");
        t9.m.e(charSequence4, "truncated");
        String string = ((StringBuilder) y(iterable, new StringBuilder(), charSequence, charSequence2, charSequence3, i10, charSequence4, lVar)).toString();
        t9.m.d(string, "joinTo(StringBuilder(), …ed, transform).toString()");
        return string;
    }

    public static /* synthetic */ String B(Iterable iterable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, s9.l lVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            charSequence = ", ";
        }
        int i12 = i11 & 2;
        CharSequence charSequence5 = BuildConfig.FLAVOR;
        CharSequence charSequence6 = i12 != 0 ? BuildConfig.FLAVOR : charSequence2;
        if ((i11 & 4) == 0) {
            charSequence5 = charSequence3;
        }
        int i13 = (i11 & 8) != 0 ? -1 : i10;
        if ((i11 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i11 & 32) != 0) {
            lVar = null;
        }
        return A(iterable, charSequence, charSequence6, charSequence5, i13, charSequence7, lVar);
    }

    public static final <T> T C(Iterable<? extends T> iterable) {
        t9.m.e(iterable, "<this>");
        if (iterable instanceof List) {
            return (T) D((List) iterable);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException("Collection is empty.");
        }
        T next = it.next();
        while (it.hasNext()) {
            next = it.next();
        }
        return next;
    }

    public static <T> T D(List<? extends T> list) {
        t9.m.e(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(l.f(list));
    }

    public static <T extends Comparable<? super T>> T E(Iterable<? extends T> iterable) {
        t9.m.e(iterable, "<this>");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        T next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            if (next.compareTo(next2) > 0) {
                next = next2;
            }
        }
        return next;
    }

    public static <T> List<T> F(Iterable<? extends T> iterable, Iterable<? extends T> iterable2) {
        t9.m.e(iterable, "<this>");
        t9.m.e(iterable2, "elements");
        if (iterable instanceof Collection) {
            return G((Collection) iterable, iterable2);
        }
        ArrayList arrayList = new ArrayList();
        q.o(arrayList, iterable);
        q.o(arrayList, iterable2);
        return arrayList;
    }

    public static <T> List<T> G(Collection<? extends T> collection, Iterable<? extends T> iterable) {
        t9.m.e(collection, "<this>");
        t9.m.e(iterable, "elements");
        if (!(iterable instanceof Collection)) {
            ArrayList arrayList = new ArrayList(collection);
            q.o(arrayList, iterable);
            return arrayList;
        }
        Collection collection2 = (Collection) iterable;
        ArrayList arrayList2 = new ArrayList(collection.size() + collection2.size());
        arrayList2.addAll(collection);
        arrayList2.addAll(collection2);
        return arrayList2;
    }

    public static <T> List<T> H(Collection<? extends T> collection, T t10) {
        t9.m.e(collection, "<this>");
        ArrayList arrayList = new ArrayList(collection.size() + 1);
        arrayList.addAll(collection);
        arrayList.add(t10);
        return arrayList;
    }

    public static <T> T I(Collection<? extends T> collection, w9.c cVar) {
        t9.m.e(collection, "<this>");
        t9.m.e(cVar, "random");
        if (collection.isEmpty()) {
            throw new NoSuchElementException("Collection is empty.");
        }
        return (T) r(collection, cVar.d(collection.size()));
    }

    public static <T> T J(Iterable<? extends T> iterable) {
        t9.m.e(iterable, "<this>");
        if (iterable instanceof List) {
            return (T) K((List) iterable);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException("Collection is empty.");
        }
        T next = it.next();
        if (it.hasNext()) {
            throw new IllegalArgumentException("Collection has more than one element.");
        }
        return next;
    }

    public static final <T> T K(List<? extends T> list) {
        t9.m.e(list, "<this>");
        int size = list.size();
        if (size == 0) {
            throw new NoSuchElementException("List is empty.");
        }
        if (size == 1) {
            return list.get(0);
        }
        throw new IllegalArgumentException("List has more than one element.");
    }

    public static <T> List<T> L(List<? extends T> list, y9.f fVar) {
        t9.m.e(list, "<this>");
        t9.m.e(fVar, "indices");
        return fVar.isEmpty() ? l.e() : O(list.subList(fVar.n().intValue(), fVar.m().intValue() + 1));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> List<T> M(Iterable<? extends T> iterable, Comparator<? super T> comparator) {
        t9.m.e(iterable, "<this>");
        t9.m.e(comparator, "comparator");
        if (!(iterable instanceof Collection)) {
            List<T> listP = P(iterable);
            p.n(listP, comparator);
            return listP;
        }
        Collection collection = (Collection) iterable;
        if (collection.size() <= 1) {
            return O(iterable);
        }
        Object[] array = collection.toArray(new Object[0]);
        t9.m.c(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        t9.m.c(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.CollectionsKt___CollectionsKt.sortedWith>");
        f.g(array, comparator);
        return f.a(array);
    }

    public static final <T, C extends Collection<? super T>> C N(Iterable<? extends T> iterable, C c10) {
        t9.m.e(iterable, "<this>");
        t9.m.e(c10, ShareConstants.DESTINATION);
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            c10.add(it.next());
        }
        return c10;
    }

    public static <T> List<T> O(Iterable<? extends T> iterable) {
        t9.m.e(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            return l.j(P(iterable));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return l.e();
        }
        if (size != 1) {
            return Q(collection);
        }
        return k.b(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
    }

    public static final <T> List<T> P(Iterable<? extends T> iterable) {
        t9.m.e(iterable, "<this>");
        return iterable instanceof Collection ? Q((Collection) iterable) : (List) N(iterable, new ArrayList());
    }

    public static <T> List<T> Q(Collection<? extends T> collection) {
        t9.m.e(collection, "<this>");
        return new ArrayList(collection);
    }

    public static <T> Set<T> R(Iterable<? extends T> iterable) {
        t9.m.e(iterable, "<this>");
        return iterable instanceof Collection ? new LinkedHashSet((Collection) iterable) : (Set) N(iterable, new LinkedHashSet());
    }

    public static <T> Set<T> S(Iterable<? extends T> iterable) {
        t9.m.e(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            return i0.e((Set) N(iterable, new LinkedHashSet()));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return i0.b();
        }
        if (size != 1) {
            return (Set) N(iterable, new LinkedHashSet(c0.a(collection.size())));
        }
        return h0.a(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
    }

    public static <T, R> List<h9.m<T, R>> T(Iterable<? extends T> iterable, Iterable<? extends R> iterable2) {
        t9.m.e(iterable, "<this>");
        t9.m.e(iterable2, "other");
        Iterator<? extends T> it = iterable.iterator();
        Iterator<? extends R> it2 = iterable2.iterator();
        ArrayList arrayList = new ArrayList(Math.min(m.l(iterable, 10), m.l(iterable2, 10)));
        while (it.hasNext() && it2.hasNext()) {
            arrayList.add(h9.q.a(it.next(), it2.next()));
        }
        return arrayList;
    }

    public static <T> boolean p(Iterable<? extends T> iterable, T t10) {
        t9.m.e(iterable, "<this>");
        return iterable instanceof Collection ? ((Collection) iterable).contains(t10) : x(iterable, t10) >= 0;
    }

    public static <T> List<T> q(Iterable<? extends T> iterable, int i10) {
        ArrayList arrayList;
        t9.m.e(iterable, "<this>");
        int i11 = 0;
        if (!(i10 >= 0)) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return O(iterable);
        }
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            int size = collection.size() - i10;
            if (size <= 0) {
                return l.e();
            }
            if (size == 1) {
                return k.b(C(iterable));
            }
            arrayList = new ArrayList(size);
            if (iterable instanceof List) {
                if (iterable instanceof RandomAccess) {
                    int size2 = collection.size();
                    while (i10 < size2) {
                        arrayList.add(((List) iterable).get(i10));
                        i10++;
                    }
                } else {
                    ListIterator listIterator = ((List) iterable).listIterator(i10);
                    while (listIterator.hasNext()) {
                        arrayList.add(listIterator.next());
                    }
                }
                return arrayList;
            }
        } else {
            arrayList = new ArrayList();
        }
        for (T t10 : iterable) {
            if (i11 >= i10) {
                arrayList.add(t10);
            } else {
                i11++;
            }
        }
        return l.j(arrayList);
    }

    public static final <T> T r(Iterable<? extends T> iterable, int i10) {
        t9.m.e(iterable, "<this>");
        return iterable instanceof List ? (T) ((List) iterable).get(i10) : (T) s(iterable, i10, new a(i10));
    }

    public static final <T> T s(Iterable<? extends T> iterable, int i10, s9.l<? super Integer, ? extends T> lVar) {
        t9.m.e(iterable, "<this>");
        t9.m.e(lVar, "defaultValue");
        if (iterable instanceof List) {
            List list = (List) iterable;
            return (i10 < 0 || i10 > l.f(list)) ? lVar.invoke(Integer.valueOf(i10)) : (T) list.get(i10);
        }
        if (i10 < 0) {
            return lVar.invoke(Integer.valueOf(i10));
        }
        int i11 = 0;
        for (T t10 : iterable) {
            int i12 = i11 + 1;
            if (i10 == i11) {
                return t10;
            }
            i11 = i12;
        }
        return lVar.invoke(Integer.valueOf(i10));
    }

    public static <T> List<T> t(Iterable<? extends T> iterable) {
        t9.m.e(iterable, "<this>");
        return (List) u(iterable, new ArrayList());
    }

    public static final <C extends Collection<? super T>, T> C u(Iterable<? extends T> iterable, C c10) {
        t9.m.e(iterable, "<this>");
        t9.m.e(c10, ShareConstants.DESTINATION);
        for (T t10 : iterable) {
            if (t10 != null) {
                c10.add(t10);
            }
        }
        return c10;
    }

    public static <T> T v(List<? extends T> list) {
        t9.m.e(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(0);
    }

    public static <T> T w(List<? extends T> list) {
        t9.m.e(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static final <T> int x(Iterable<? extends T> iterable, T t10) {
        t9.m.e(iterable, "<this>");
        if (iterable instanceof List) {
            return ((List) iterable).indexOf(t10);
        }
        int i10 = 0;
        for (T t11 : iterable) {
            if (i10 < 0) {
                l.k();
            }
            if (t9.m.a(t10, t11)) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static final <T, A extends Appendable> A y(Iterable<? extends T> iterable, A a10, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, s9.l<? super T, ? extends CharSequence> lVar) throws IOException {
        t9.m.e(iterable, "<this>");
        t9.m.e(a10, "buffer");
        t9.m.e(charSequence, "separator");
        t9.m.e(charSequence2, "prefix");
        t9.m.e(charSequence3, "postfix");
        t9.m.e(charSequence4, "truncated");
        a10.append(charSequence2);
        int i11 = 0;
        for (T t10 : iterable) {
            i11++;
            if (i11 > 1) {
                a10.append(charSequence);
            }
            if (i10 >= 0 && i11 > i10) {
                break;
            }
            ba.h.a(a10, t10, lVar);
        }
        if (i10 >= 0 && i11 > i10) {
            a10.append(charSequence4);
        }
        a10.append(charSequence3);
        return a10;
    }

    public static /* synthetic */ Appendable z(Iterable iterable, Appendable appendable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, s9.l lVar, int i11, Object obj) {
        CharSequence charSequence5 = (i11 & 2) != 0 ? ", " : charSequence;
        int i12 = i11 & 4;
        CharSequence charSequence6 = BuildConfig.FLAVOR;
        CharSequence charSequence7 = i12 != 0 ? BuildConfig.FLAVOR : charSequence2;
        if ((i11 & 8) == 0) {
            charSequence6 = charSequence3;
        }
        return y(iterable, appendable, charSequence5, charSequence7, charSequence6, (i11 & 16) != 0 ? -1 : i10, (i11 & 32) != 0 ? "..." : charSequence4, (i11 & 64) != 0 ? null : lVar);
    }
}
