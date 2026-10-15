package com.google.firebase.ktx;

import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import da.i0;
import da.p1;
import i9.l;
import java.util.List;
import java.util.concurrent.Executor;
import k5.e;
import k5.f0;
import k5.h;
import k5.r;
import t9.m;

/* JADX INFO: compiled from: Firebase.kt */
/* JADX INFO: loaded from: classes2.dex */
@Keep
public final class FirebaseCommonKtxRegistrar implements ComponentRegistrar {

    /* JADX INFO: compiled from: Firebase.kt */
    public static final class a<T> implements h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a<T> f26374a = new a<>();

        @Override // k5.h
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final i0 a(e eVar) {
            Object objE = eVar.e(f0.a(f5.a.class, Executor.class));
            m.d(objE, "c.get(Qualified.qualifie…a, Executor::class.java))");
            return p1.a((Executor) objE);
        }
    }

    /* JADX INFO: compiled from: Firebase.kt */
    public static final class b<T> implements h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b<T> f26375a = new b<>();

        @Override // k5.h
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final i0 a(e eVar) {
            Object objE = eVar.e(f0.a(f5.c.class, Executor.class));
            m.d(objE, "c.get(Qualified.qualifie…a, Executor::class.java))");
            return p1.a((Executor) objE);
        }
    }

    /* JADX INFO: compiled from: Firebase.kt */
    public static final class c<T> implements h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final c<T> f26376a = new c<>();

        @Override // k5.h
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final i0 a(e eVar) {
            Object objE = eVar.e(f0.a(f5.b.class, Executor.class));
            m.d(objE, "c.get(Qualified.qualifie…a, Executor::class.java))");
            return p1.a((Executor) objE);
        }
    }

    /* JADX INFO: compiled from: Firebase.kt */
    public static final class d<T> implements h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final d<T> f26377a = new d<>();

        @Override // k5.h
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final i0 a(e eVar) {
            Object objE = eVar.e(f0.a(f5.d.class, Executor.class));
            m.d(objE, "c.get(Qualified.qualifie…a, Executor::class.java))");
            return p1.a((Executor) objE);
        }
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<k5.c<?>> getComponents() {
        k5.c cVarD = k5.c.e(f0.a(f5.a.class, i0.class)).b(r.k(f0.a(f5.a.class, Executor.class))).f(a.f26374a).d();
        m.d(cVarD, "builder(Qualified.qualif…cher()\n    }\n    .build()");
        k5.c cVarD2 = k5.c.e(f0.a(f5.c.class, i0.class)).b(r.k(f0.a(f5.c.class, Executor.class))).f(b.f26375a).d();
        m.d(cVarD2, "builder(Qualified.qualif…cher()\n    }\n    .build()");
        k5.c cVarD3 = k5.c.e(f0.a(f5.b.class, i0.class)).b(r.k(f0.a(f5.b.class, Executor.class))).f(c.f26376a).d();
        m.d(cVarD3, "builder(Qualified.qualif…cher()\n    }\n    .build()");
        k5.c cVarD4 = k5.c.e(f0.a(f5.d.class, i0.class)).b(r.k(f0.a(f5.d.class, Executor.class))).f(d.f26377a).d();
        m.d(cVarD4, "builder(Qualified.qualif…cher()\n    }\n    .build()");
        return l.g(cVarD, cVarD2, cVarD3, cVarD4);
    }
}
