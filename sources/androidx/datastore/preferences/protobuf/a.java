package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.a;
import androidx.datastore.preferences.protobuf.a.AbstractC0045a;
import androidx.datastore.preferences.protobuf.h;
import androidx.datastore.preferences.protobuf.r0;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: compiled from: AbstractMessageLite.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a<MessageType extends a<MessageType, BuilderType>, BuilderType extends AbstractC0045a<MessageType, BuilderType>> implements r0 {
    protected int memoizedHashCode = 0;

    /* JADX INFO: renamed from: androidx.datastore.preferences.protobuf.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AbstractMessageLite.java */
    public static abstract class AbstractC0045a<MessageType extends a<MessageType, BuilderType>, BuilderType extends AbstractC0045a<MessageType, BuilderType>> implements r0.a {
        protected static <T> void j(Iterable<T> iterable, List<? super T> list) {
            a0.a(iterable);
            if (!(iterable instanceof g0)) {
                if (iterable instanceof a1) {
                    list.addAll((Collection) iterable);
                    return;
                } else {
                    k(iterable, list);
                    return;
                }
            }
            List<?> listC1 = ((g0) iterable).C1();
            g0 g0Var = (g0) list;
            int size = list.size();
            for (Object obj : listC1) {
                if (obj == null) {
                    String str = "Element at index " + (g0Var.size() - size) + " is null.";
                    for (int size2 = g0Var.size() - 1; size2 >= size; size2--) {
                        g0Var.remove(size2);
                    }
                    throw new NullPointerException(str);
                }
                if (obj instanceof h) {
                    g0Var.e1((h) obj);
                } else {
                    g0Var.add((String) obj);
                }
            }
        }

        private static <T> void k(Iterable<T> iterable, List<? super T> list) {
            if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
                ((ArrayList) list).ensureCapacity(list.size() + ((Collection) iterable).size());
            }
            int size = list.size();
            for (T t10 : iterable) {
                if (t10 == null) {
                    String str = "Element at index " + (list.size() - size) + " is null.";
                    for (int size2 = list.size() - 1; size2 >= size; size2--) {
                        list.remove(size2);
                    }
                    throw new NullPointerException(str);
                }
                list.add(t10);
            }
        }

        protected static m1 n(r0 r0Var) {
            return new m1(r0Var);
        }

        protected abstract BuilderType l(MessageType messagetype);

        @Override // androidx.datastore.preferences.protobuf.r0.a
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public BuilderType l0(r0 r0Var) {
            if (a().getClass().isInstance(r0Var)) {
                return (BuilderType) l((a) r0Var);
            }
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }
    }

    protected static <T> void c(Iterable<T> iterable, List<? super T> list) {
        AbstractC0045a.j(iterable, list);
    }

    private String k(String str) {
        return "Serializing " + getClass().getName() + " to a " + str + " threw an IOException (should never happen).";
    }

    @Override // androidx.datastore.preferences.protobuf.r0
    public h d() {
        try {
            h.C0046h c0046hR = h.r(f());
            g(c0046hR.b());
            return c0046hR.a();
        } catch (IOException e10) {
            throw new RuntimeException(k("ByteString"), e10);
        }
    }

    int e() {
        throw new UnsupportedOperationException();
    }

    int j(g1 g1Var) {
        int iE = e();
        if (iE != -1) {
            return iE;
        }
        int i10 = g1Var.i(this);
        m(i10);
        return i10;
    }

    m1 l() {
        return new m1(this);
    }

    void m(int i10) {
        throw new UnsupportedOperationException();
    }

    public void n(OutputStream outputStream) throws IOException {
        k kVarF0 = k.f0(outputStream, k.I(f()));
        g(kVarF0);
        kVarF0.c0();
    }
}
