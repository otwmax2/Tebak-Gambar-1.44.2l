package androidx.loader.app;

import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.lifecycle.g0;
import androidx.lifecycle.h0;
import androidx.lifecycle.i0;
import androidx.lifecycle.l0;
import androidx.lifecycle.n;
import androidx.lifecycle.t;
import androidx.lifecycle.u;
import androidx.loader.app.a;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import o.h;
import t0.b;

/* JADX INFO: compiled from: LoaderManagerImpl.java */
/* JADX INFO: loaded from: classes.dex */
class b extends androidx.loader.app.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static boolean f3583c = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final n f3584a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f3585b;

    /* JADX INFO: compiled from: LoaderManagerImpl.java */
    public static class a<D> extends t<D> implements b.InterfaceC0251b<D> {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final int f3586l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final Bundle f3587m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private final t0.b<D> f3588n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private n f3589o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private C0059b<D> f3590p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private t0.b<D> f3591q;

        a(int i10, Bundle bundle, t0.b<D> bVar, t0.b<D> bVar2) {
            this.f3586l = i10;
            this.f3587m = bundle;
            this.f3588n = bVar;
            this.f3591q = bVar2;
            bVar.q(i10, this);
        }

        @Override // t0.b.InterfaceC0251b
        public void a(t0.b<D> bVar, D d10) {
            if (b.f3583c) {
                Log.v("LoaderManager", "onLoadComplete: " + this);
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                n(d10);
                return;
            }
            if (b.f3583c) {
                Log.w("LoaderManager", "onLoadComplete was incorrectly called on a background thread");
            }
            l(d10);
        }

        @Override // androidx.lifecycle.LiveData
        protected void j() {
            if (b.f3583c) {
                Log.v("LoaderManager", "  Starting: " + this);
            }
            this.f3588n.t();
        }

        @Override // androidx.lifecycle.LiveData
        protected void k() {
            if (b.f3583c) {
                Log.v("LoaderManager", "  Stopping: " + this);
            }
            this.f3588n.u();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.lifecycle.LiveData
        public void m(u<? super D> uVar) {
            super.m(uVar);
            this.f3589o = null;
            this.f3590p = null;
        }

        @Override // androidx.lifecycle.t, androidx.lifecycle.LiveData
        public void n(D d10) {
            super.n(d10);
            t0.b<D> bVar = this.f3591q;
            if (bVar != null) {
                bVar.r();
                this.f3591q = null;
            }
        }

        t0.b<D> o(boolean z10) {
            if (b.f3583c) {
                Log.v("LoaderManager", "  Destroying: " + this);
            }
            this.f3588n.b();
            this.f3588n.a();
            C0059b<D> c0059b = this.f3590p;
            if (c0059b != null) {
                m(c0059b);
                if (z10) {
                    c0059b.c();
                }
            }
            this.f3588n.v(this);
            if ((c0059b == null || c0059b.b()) && !z10) {
                return this.f3588n;
            }
            this.f3588n.r();
            return this.f3591q;
        }

        public void p(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.f3586l);
            printWriter.print(" mArgs=");
            printWriter.println(this.f3587m);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.f3588n);
            this.f3588n.g(str + "  ", fileDescriptor, printWriter, strArr);
            if (this.f3590p != null) {
                printWriter.print(str);
                printWriter.print("mCallbacks=");
                printWriter.println(this.f3590p);
                this.f3590p.a(str + "  ", printWriter);
            }
            printWriter.print(str);
            printWriter.print("mData=");
            printWriter.println(q().d(f()));
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.println(g());
        }

        t0.b<D> q() {
            return this.f3588n;
        }

        void r() {
            n nVar = this.f3589o;
            C0059b<D> c0059b = this.f3590p;
            if (nVar == null || c0059b == null) {
                return;
            }
            super.m(c0059b);
            h(nVar, c0059b);
        }

        t0.b<D> s(n nVar, a.InterfaceC0058a<D> interfaceC0058a) {
            C0059b<D> c0059b = new C0059b<>(this.f3588n, interfaceC0058a);
            h(nVar, c0059b);
            C0059b<D> c0059b2 = this.f3590p;
            if (c0059b2 != null) {
                m(c0059b2);
            }
            this.f3589o = nVar;
            this.f3590p = c0059b;
            return this.f3588n;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.f3586l);
            sb.append(" : ");
            androidx.core.util.b.a(this.f3588n, sb);
            sb.append("}}");
            return sb.toString();
        }
    }

    /* JADX INFO: renamed from: androidx.loader.app.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: LoaderManagerImpl.java */
    static class C0059b<D> implements u<D> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final t0.b<D> f3592a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final a.InterfaceC0058a<D> f3593b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f3594c = false;

        C0059b(t0.b<D> bVar, a.InterfaceC0058a<D> interfaceC0058a) {
            this.f3592a = bVar;
            this.f3593b = interfaceC0058a;
        }

        public void a(String str, PrintWriter printWriter) {
            printWriter.print(str);
            printWriter.print("mDeliveredData=");
            printWriter.println(this.f3594c);
        }

        boolean b() {
            return this.f3594c;
        }

        void c() {
            if (this.f3594c) {
                if (b.f3583c) {
                    Log.v("LoaderManager", "  Resetting: " + this.f3592a);
                }
                this.f3593b.a(this.f3592a);
            }
        }

        @Override // androidx.lifecycle.u
        public void d(D d10) {
            if (b.f3583c) {
                Log.v("LoaderManager", "  onLoadFinished in " + this.f3592a + ": " + this.f3592a.d(d10));
            }
            this.f3593b.c(this.f3592a, d10);
            this.f3594c = true;
        }

        public String toString() {
            return this.f3593b.toString();
        }
    }

    /* JADX INFO: compiled from: LoaderManagerImpl.java */
    static class c extends g0 {

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private static final h0.b f3595t = new a();

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private h<a> f3596r = new h<>();

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private boolean f3597s = false;

        /* JADX INFO: compiled from: LoaderManagerImpl.java */
        static class a implements h0.b {
            a() {
            }

            @Override // androidx.lifecycle.h0.b
            public <T extends g0> T a(Class<T> cls) {
                return new c();
            }

            @Override // androidx.lifecycle.h0.b
            public /* synthetic */ g0 b(Class cls, s0.a aVar) {
                return i0.b(this, cls, aVar);
            }
        }

        c() {
        }

        static c l(l0 l0Var) {
            return (c) new h0(l0Var, f3595t).a(c.class);
        }

        @Override // androidx.lifecycle.g0
        protected void h() {
            super.h();
            int iL = this.f3596r.l();
            for (int i10 = 0; i10 < iL; i10++) {
                this.f3596r.m(i10).o(true);
            }
            this.f3596r.b();
        }

        public void j(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            if (this.f3596r.l() > 0) {
                printWriter.print(str);
                printWriter.println("Loaders:");
                String str2 = str + "    ";
                for (int i10 = 0; i10 < this.f3596r.l(); i10++) {
                    a aVarM = this.f3596r.m(i10);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(this.f3596r.j(i10));
                    printWriter.print(": ");
                    printWriter.println(aVarM.toString());
                    aVarM.p(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }

        void k() {
            this.f3597s = false;
        }

        <D> a<D> m(int i10) {
            return this.f3596r.g(i10);
        }

        boolean n() {
            return this.f3597s;
        }

        void o() {
            int iL = this.f3596r.l();
            for (int i10 = 0; i10 < iL; i10++) {
                this.f3596r.m(i10).r();
            }
        }

        void p(int i10, a aVar) {
            this.f3596r.k(i10, aVar);
        }

        void q() {
            this.f3597s = true;
        }
    }

    b(n nVar, l0 l0Var) {
        this.f3584a = nVar;
        this.f3585b = c.l(l0Var);
    }

    private <D> t0.b<D> e(int i10, Bundle bundle, a.InterfaceC0058a<D> interfaceC0058a, t0.b<D> bVar) {
        try {
            this.f3585b.q();
            t0.b<D> bVarB = interfaceC0058a.b(i10, bundle);
            if (bVarB == null) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be null");
            }
            if (bVarB.getClass().isMemberClass() && !Modifier.isStatic(bVarB.getClass().getModifiers())) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + bVarB);
            }
            a aVar = new a(i10, bundle, bVarB, bVar);
            if (f3583c) {
                Log.v("LoaderManager", "  Created new loader " + aVar);
            }
            this.f3585b.p(i10, aVar);
            this.f3585b.k();
            return aVar.s(this.f3584a, interfaceC0058a);
        } catch (Throwable th) {
            this.f3585b.k();
            throw th;
        }
    }

    @Override // androidx.loader.app.a
    @Deprecated
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.f3585b.j(str, fileDescriptor, printWriter, strArr);
    }

    @Override // androidx.loader.app.a
    public <D> t0.b<D> c(int i10, Bundle bundle, a.InterfaceC0058a<D> interfaceC0058a) {
        if (this.f3585b.n()) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("initLoader must be called on the main thread");
        }
        a<D> aVarM = this.f3585b.m(i10);
        if (f3583c) {
            Log.v("LoaderManager", "initLoader in " + this + ": args=" + bundle);
        }
        if (aVarM == null) {
            return e(i10, bundle, interfaceC0058a, null);
        }
        if (f3583c) {
            Log.v("LoaderManager", "  Re-using existing loader " + aVarM);
        }
        return aVarM.s(this.f3584a, interfaceC0058a);
    }

    @Override // androidx.loader.app.a
    public void d() {
        this.f3585b.o();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        androidx.core.util.b.a(this.f3584a, sb);
        sb.append("}}");
        return sb.toString();
    }
}
