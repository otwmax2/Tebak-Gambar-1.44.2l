package androidx.datastore.preferences.protobuf;

import java.io.IOException;

/* JADX INFO: compiled from: MessageLite.java */
/* JADX INFO: loaded from: classes.dex */
public interface r0 extends s0 {

    /* JADX INFO: compiled from: MessageLite.java */
    public interface a extends s0, Cloneable {
        r0 A2();

        r0 build();

        a l0(r0 r0Var);
    }

    a b();

    h d();

    int f();

    void g(k kVar) throws IOException;

    a h();

    z0<? extends r0> i();
}
