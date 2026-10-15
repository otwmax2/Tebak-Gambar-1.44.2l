package androidx.datastore.preferences.protobuf;

import java.util.List;

/* JADX INFO: compiled from: UninitializedMessageException.java */
/* JADX INFO: loaded from: classes.dex */
public class m1 extends RuntimeException {
    private static final long serialVersionUID = -7466929953374883507L;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final List<String> f2811o;

    public m1(r0 r0Var) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
        this.f2811o = null;
    }

    public b0 a() {
        return new b0(getMessage());
    }
}
