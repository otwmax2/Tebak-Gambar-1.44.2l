package androidx.lifecycle;

import android.app.Application;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;
import s0.a;

/* JADX INFO: compiled from: ViewModelProvider.kt */
/* JADX INFO: loaded from: classes.dex */
public class h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l0 f3524a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f3525b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final s0.a f3526c;

    /* JADX INFO: compiled from: ViewModelProvider.kt */
    public interface b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f3532a = a.f3533a;

        /* JADX INFO: compiled from: ViewModelProvider.kt */
        public static final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            static final /* synthetic */ a f3533a = new a();

            private a() {
            }
        }

        <T extends g0> T a(Class<T> cls);

        <T extends g0> T b(Class<T> cls, s0.a aVar);
    }

    /* JADX INFO: compiled from: ViewModelProvider.kt */
    public static class c implements b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static c f3535c;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final a f3534b = new a(null);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final a.b<String> f3536d = a.C0057a.f3537a;

        /* JADX INFO: compiled from: ViewModelProvider.kt */
        public static final class a {

            /* JADX INFO: renamed from: androidx.lifecycle.h0$c$a$a, reason: collision with other inner class name */
            /* JADX INFO: compiled from: ViewModelProvider.kt */
            private static final class C0057a implements a.b<String> {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public static final C0057a f3537a = new C0057a();

                private C0057a() {
                }
            }

            private a() {
            }

            public /* synthetic */ a(t9.g gVar) {
                this();
            }

            public final c a() {
                if (c.f3535c == null) {
                    c.f3535c = new c();
                }
                c cVar = c.f3535c;
                t9.m.b(cVar);
                return cVar;
            }
        }

        @Override // androidx.lifecycle.h0.b
        public <T extends g0> T a(Class<T> cls) {
            t9.m.e(cls, "modelClass");
            try {
                T tNewInstance = cls.newInstance();
                t9.m.d(tNewInstance, "{\n                modelC…wInstance()\n            }");
                return tNewInstance;
            } catch (IllegalAccessException e10) {
                throw new RuntimeException("Cannot create an instance of " + cls, e10);
            } catch (InstantiationException e11) {
                throw new RuntimeException("Cannot create an instance of " + cls, e11);
            }
        }

        @Override // androidx.lifecycle.h0.b
        public /* synthetic */ g0 b(Class cls, s0.a aVar) {
            return i0.b(this, cls, aVar);
        }
    }

    /* JADX INFO: compiled from: ViewModelProvider.kt */
    public static class d {
        public void c(g0 g0Var) {
            t9.m.e(g0Var, "viewModel");
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public h0(l0 l0Var, b bVar) {
        this(l0Var, bVar, null, 4, null);
        t9.m.e(l0Var, "store");
        t9.m.e(bVar, "factory");
    }

    public h0(l0 l0Var, b bVar, s0.a aVar) {
        t9.m.e(l0Var, "store");
        t9.m.e(bVar, "factory");
        t9.m.e(aVar, "defaultCreationExtras");
        this.f3524a = l0Var;
        this.f3525b = bVar;
        this.f3526c = aVar;
    }

    public <T extends g0> T a(Class<T> cls) {
        t9.m.e(cls, "modelClass");
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
        }
        return (T) b("androidx.lifecycle.ViewModelProvider.DefaultKey:" + canonicalName, cls);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public <T extends g0> T b(String str, Class<T> cls) {
        t9.m.e(str, SDKConstants.PARAM_KEY);
        t9.m.e(cls, "modelClass");
        T t10 = (T) this.f3524a.b(str);
        if (!cls.isInstance(t10)) {
            s0.d dVar = new s0.d(this.f3526c);
            dVar.c(c.f3536d, str);
            T t11 = (T) this.f3525b.b(cls, dVar);
            this.f3524a.d(str, t11);
            return t11;
        }
        Object obj = this.f3525b;
        d dVar2 = obj instanceof d ? (d) obj : null;
        if (dVar2 != null) {
            t9.m.d(t10, "viewModel");
            dVar2.c(t10);
        }
        Objects.requireNonNull(t10, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get");
        return t10;
    }

    /* JADX INFO: compiled from: ViewModelProvider.kt */
    public static class a extends c {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static a f3528g;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Application f3530e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final C0055a f3527f = new C0055a(null);

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a.b<Application> f3529h = C0055a.C0056a.f3531a;

        /* JADX INFO: renamed from: androidx.lifecycle.h0$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: ViewModelProvider.kt */
        public static final class C0055a {

            /* JADX INFO: renamed from: androidx.lifecycle.h0$a$a$a, reason: collision with other inner class name */
            /* JADX INFO: compiled from: ViewModelProvider.kt */
            private static final class C0056a implements a.b<Application> {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public static final C0056a f3531a = new C0056a();

                private C0056a() {
                }
            }

            private C0055a() {
            }

            public /* synthetic */ C0055a(t9.g gVar) {
                this();
            }

            public final b a(m0 m0Var) {
                t9.m.e(m0Var, "owner");
                if (!(m0Var instanceof i)) {
                    return c.f3534b.a();
                }
                b defaultViewModelProviderFactory = ((i) m0Var).getDefaultViewModelProviderFactory();
                t9.m.d(defaultViewModelProviderFactory, "owner.defaultViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }

            public final a b(Application application) {
                t9.m.e(application, "application");
                if (a.f3528g == null) {
                    a.f3528g = new a(application);
                }
                a aVar = a.f3528g;
                t9.m.b(aVar);
                return aVar;
            }
        }

        private a(Application application, int i10) {
            this.f3530e = application;
        }

        private final <T extends g0> T g(Class<T> cls, Application application) {
            if (!androidx.lifecycle.a.class.isAssignableFrom(cls)) {
                return (T) super.a(cls);
            }
            try {
                T tNewInstance = cls.getConstructor(Application.class).newInstance(application);
                t9.m.d(tNewInstance, "{\n                try {\n…          }\n            }");
                return tNewInstance;
            } catch (IllegalAccessException e10) {
                throw new RuntimeException("Cannot create an instance of " + cls, e10);
            } catch (InstantiationException e11) {
                throw new RuntimeException("Cannot create an instance of " + cls, e11);
            } catch (NoSuchMethodException e12) {
                throw new RuntimeException("Cannot create an instance of " + cls, e12);
            } catch (InvocationTargetException e13) {
                throw new RuntimeException("Cannot create an instance of " + cls, e13);
            }
        }

        @Override // androidx.lifecycle.h0.c, androidx.lifecycle.h0.b
        public <T extends g0> T a(Class<T> cls) {
            t9.m.e(cls, "modelClass");
            Application application = this.f3530e;
            if (application != null) {
                return (T) g(cls, application);
            }
            throw new UnsupportedOperationException("AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras).");
        }

        @Override // androidx.lifecycle.h0.c, androidx.lifecycle.h0.b
        public <T extends g0> T b(Class<T> cls, s0.a aVar) {
            t9.m.e(cls, "modelClass");
            t9.m.e(aVar, "extras");
            Application application = this.f3530e;
            if (application != null) {
                return (T) g(cls, application);
            }
            Application application2 = (Application) aVar.a(f3529h);
            if (application2 != null) {
                return (T) g(cls, application2);
            }
            if (androidx.lifecycle.a.class.isAssignableFrom(cls)) {
                throw new IllegalArgumentException("CreationExtras must have an application by `APPLICATION_KEY`");
            }
            return (T) super.a(cls);
        }

        public a() {
            this(null, 0);
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public a(Application application) {
            this(application, 0);
            t9.m.e(application, "application");
        }
    }

    public /* synthetic */ h0(l0 l0Var, b bVar, s0.a aVar, int i10, t9.g gVar) {
        this(l0Var, bVar, (i10 & 4) != 0 ? a.C0227a.f34458b : aVar);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public h0(m0 m0Var) {
        t9.m.e(m0Var, "owner");
        l0 viewModelStore = m0Var.getViewModelStore();
        t9.m.d(viewModelStore, "owner.viewModelStore");
        this(viewModelStore, a.f3527f.a(m0Var), j0.a(m0Var));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public h0(m0 m0Var, b bVar) {
        t9.m.e(m0Var, "owner");
        t9.m.e(bVar, "factory");
        l0 viewModelStore = m0Var.getViewModelStore();
        t9.m.d(viewModelStore, "owner.viewModelStore");
        this(viewModelStore, bVar, j0.a(m0Var));
    }
}
