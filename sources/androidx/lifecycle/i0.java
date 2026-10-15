package androidx.lifecycle;

import androidx.lifecycle.h0;

/* JADX INFO: compiled from: ViewModelProvider.kt */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i0 {
    static {
        h0.b.a aVar = h0.b.f3532a;
    }

    public static g0 a(h0.b bVar, Class cls) {
        t9.m.e(cls, "modelClass");
        throw new UnsupportedOperationException("Factory.create(String) is unsupported.  This Factory requires `CreationExtras` to be passed into `create` method.");
    }

    public static g0 b(h0.b bVar, Class cls, s0.a aVar) {
        t9.m.e(cls, "modelClass");
        t9.m.e(aVar, "extras");
        return bVar.a(cls);
    }
}
