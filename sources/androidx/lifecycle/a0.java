package androidx.lifecycle;

import a1.c;
import android.os.Bundle;
import androidx.lifecycle.h0;
import androidx.lifecycle.j;
import s0.a;

/* JADX INFO: compiled from: SavedStateHandleSupport.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a.b<a1.e> f3491a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a.b<m0> f3492b = new c();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a.b<Bundle> f3493c = new a();

    /* JADX INFO: compiled from: SavedStateHandleSupport.kt */
    public static final class a implements a.b<Bundle> {
        a() {
        }
    }

    /* JADX INFO: compiled from: SavedStateHandleSupport.kt */
    public static final class b implements a.b<a1.e> {
        b() {
        }
    }

    /* JADX INFO: compiled from: SavedStateHandleSupport.kt */
    public static final class c implements a.b<m0> {
        c() {
        }
    }

    /* JADX INFO: compiled from: SavedStateHandleSupport.kt */
    static final class d extends t9.n implements s9.l<s0.a, c0> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public static final d f3494o = new d();

        d() {
            super(1);
        }

        @Override // s9.l
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final c0 invoke(s0.a aVar) {
            t9.m.e(aVar, "$this$initializer");
            return new c0();
        }
    }

    private static final z a(a1.e eVar, m0 m0Var, String str, Bundle bundle) {
        b0 b0VarD = d(eVar);
        c0 c0VarE = e(m0Var);
        z zVar = c0VarE.j().get(str);
        if (zVar != null) {
            return zVar;
        }
        z zVarA = z.f3576f.a(b0VarD.b(str), bundle);
        c0VarE.j().put(str, zVarA);
        return zVarA;
    }

    public static final z b(s0.a aVar) {
        t9.m.e(aVar, "<this>");
        a1.e eVar = (a1.e) aVar.a(f3491a);
        if (eVar == null) {
            throw new IllegalArgumentException("CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`");
        }
        m0 m0Var = (m0) aVar.a(f3492b);
        if (m0Var == null) {
            throw new IllegalArgumentException("CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`");
        }
        Bundle bundle = (Bundle) aVar.a(f3493c);
        String str = (String) aVar.a(h0.c.f3536d);
        if (str != null) {
            return a(eVar, m0Var, str, bundle);
        }
        throw new IllegalArgumentException("CreationExtras must have a value by `VIEW_MODEL_KEY`");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T extends a1.e & m0> void c(T t10) {
        t9.m.e(t10, "<this>");
        j.c cVarB = t10.getLifecycle().b();
        t9.m.d(cVarB, "lifecycle.currentState");
        if (!(cVarB == j.c.INITIALIZED || cVarB == j.c.CREATED)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (t10.getSavedStateRegistry().c("androidx.lifecycle.internal.SavedStateHandlesProvider") == null) {
            b0 b0Var = new b0(t10.getSavedStateRegistry(), t10);
            t10.getSavedStateRegistry().h("androidx.lifecycle.internal.SavedStateHandlesProvider", b0Var);
            t10.getLifecycle().a(new SavedStateHandleAttacher(b0Var));
        }
    }

    public static final b0 d(a1.e eVar) {
        t9.m.e(eVar, "<this>");
        c.InterfaceC0003c interfaceC0003cC = eVar.getSavedStateRegistry().c("androidx.lifecycle.internal.SavedStateHandlesProvider");
        b0 b0Var = interfaceC0003cC instanceof b0 ? (b0) interfaceC0003cC : null;
        if (b0Var != null) {
            return b0Var;
        }
        throw new IllegalStateException("enableSavedStateHandles() wasn't called prior to createSavedStateHandle() call");
    }

    public static final c0 e(m0 m0Var) {
        t9.m.e(m0Var, "<this>");
        s0.c cVar = new s0.c();
        cVar.a(t9.z.b(c0.class), d.f3494o);
        return (c0) new h0(m0Var, cVar.b()).b("androidx.lifecycle.internal.SavedStateHandlesVM", c0.class);
    }
}
