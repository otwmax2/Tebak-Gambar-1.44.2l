package androidx.databinding;

import java.util.List;

/* JADX INFO: compiled from: ObservableList.java */
/* JADX INFO: loaded from: classes.dex */
public interface o<T> extends List<T> {

    /* JADX INFO: compiled from: ObservableList.java */
    public static abstract class a<T extends o> {
        public abstract void d(T t10);

        public abstract void e(T t10, int i10, int i11);

        public abstract void f(T t10, int i10, int i11);

        public abstract void g(T t10, int i10, int i11, int i12);

        public abstract void h(T t10, int i10, int i11);
    }

    void K2(a<? extends o<T>> aVar);

    void e0(a<? extends o<T>> aVar);
}
