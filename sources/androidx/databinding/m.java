package androidx.databinding;

import java.io.Serializable;

/* JADX INFO: compiled from: ObservableField.java */
/* JADX INFO: loaded from: classes.dex */
public class m<T> extends b implements Serializable {
    static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private T f2641p;

    public m(T t10) {
        this.f2641p = t10;
    }

    public T y() {
        return this.f2641p;
    }

    public void z(T t10) {
        if (t10 != this.f2641p) {
            this.f2641p = t10;
            w();
        }
    }

    public m() {
    }
}
