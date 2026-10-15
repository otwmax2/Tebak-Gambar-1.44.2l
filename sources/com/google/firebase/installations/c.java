package com.google.firebase.installations;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.installations.d;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import k5.x;
import o6.d;
import o6.f;

/* JADX INFO: compiled from: FirebaseInstallations.java */
/* JADX INFO: loaded from: classes2.dex */
public class c implements l6.e {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Object f26345m = new Object();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final ThreadFactory f26346n = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b5.g f26347a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final o6.c f26348b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final n6.c f26349c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final i f26350d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final x<n6.b> f26351e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final l6.g f26352f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Object f26353g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ExecutorService f26354h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Executor f26355i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f26356j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Set<m6.a> f26357k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final List<h> f26358l;

    /* JADX INFO: compiled from: FirebaseInstallations.java */
    class a implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AtomicInteger f26359a = new AtomicInteger(1);

        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        @SuppressLint({"ThreadPoolCreation"})
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, String.format("firebase-installations-executor-%d", Integer.valueOf(this.f26359a.getAndIncrement())));
        }
    }

    /* JADX INFO: compiled from: FirebaseInstallations.java */
    static /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f26360a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f26361b;

        static {
            int[] iArr = new int[f.b.values().length];
            f26361b = iArr;
            try {
                iArr[f.b.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f26361b[f.b.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f26361b[f.b.AUTH_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[d.b.values().length];
            f26360a = iArr2;
            try {
                iArr2[d.b.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f26360a[d.b.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    @SuppressLint({"ThreadPoolCreation"})
    c(final b5.g gVar, k6.b<i6.i> bVar, ExecutorService executorService, Executor executor) {
        this(executorService, executor, gVar, new o6.c(gVar.l(), bVar), new n6.c(gVar), i.c(), new x(new k6.b() { // from class: l6.d
            @Override // k6.b
            public final Object get() {
                return com.google.firebase.installations.c.z(gVar);
            }
        }), new l6.g());
    }

    private void A() {
        Preconditions.h(n(), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        Preconditions.h(u(), "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        Preconditions.h(m(), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
        Preconditions.b(i.h(n()), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        Preconditions.b(i.g(m()), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
    }

    private String B(n6.d dVar) {
        if ((!this.f26347a.o().equals("CHIME_ANDROID_SDK") && !this.f26347a.w()) || !dVar.m()) {
            return this.f26352f.a();
        }
        String strF = p().f();
        return TextUtils.isEmpty(strF) ? this.f26352f.a() : strF;
    }

    private n6.d C(n6.d dVar) throws d {
        o6.d dVarD = this.f26348b.d(m(), dVar.d(), u(), n(), (dVar.d() == null || dVar.d().length() != 11) ? null : p().i());
        int i10 = b.f26360a[dVarD.e().ordinal()];
        if (i10 == 1) {
            return dVar.s(dVarD.c(), dVarD.d(), this.f26350d.b(), dVarD.b().c(), dVarD.b().d());
        }
        if (i10 == 2) {
            return dVar.q("BAD CONFIG");
        }
        throw new d("Firebase Installations Service is unavailable. Please try again later.", d.a.UNAVAILABLE);
    }

    private void D(Exception exc) {
        synchronized (this.f26353g) {
            Iterator<h> it = this.f26358l.iterator();
            while (it.hasNext()) {
                if (it.next().a(exc)) {
                    it.remove();
                }
            }
        }
    }

    private void E(n6.d dVar) {
        synchronized (this.f26353g) {
            Iterator<h> it = this.f26358l.iterator();
            while (it.hasNext()) {
                if (it.next().b(dVar)) {
                    it.remove();
                }
            }
        }
    }

    private synchronized void F(String str) {
        this.f26356j = str;
    }

    private synchronized void G(n6.d dVar, n6.d dVar2) {
        if (this.f26357k.size() != 0 && !TextUtils.equals(dVar.d(), dVar2.d())) {
            Iterator<m6.a> it = this.f26357k.iterator();
            while (it.hasNext()) {
                it.next().a(dVar2.d());
            }
        }
    }

    private Task<g> g() {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        i(new e(this.f26350d, taskCompletionSource));
        return taskCompletionSource.a();
    }

    private Task<String> h() {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        i(new f(taskCompletionSource));
        return taskCompletionSource.a();
    }

    private void i(h hVar) {
        synchronized (this.f26353g) {
            this.f26358l.add(hVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public void w(boolean z10) {
        n6.d dVarC;
        n6.d dVarS = s();
        try {
            if (dVarS.i() || dVarS.l()) {
                dVarC = C(dVarS);
            } else {
                if (!z10 && !this.f26350d.f(dVarS)) {
                    return;
                }
                dVarC = l(dVarS);
            }
            v(dVarC);
            G(dVarS, dVarC);
            if (dVarC.k()) {
                F(dVarC.d());
            }
            if (dVarC.i()) {
                D(new d(d.a.BAD_CONFIG));
            } else if (dVarC.j()) {
                D(new IOException("Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."));
            } else {
                E(dVarC);
            }
        } catch (d e10) {
            D(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public final void y(final boolean z10) {
        n6.d dVarT = t();
        if (z10) {
            dVarT = dVarT.p();
        }
        E(dVarT);
        this.f26355i.execute(new Runnable() { // from class: l6.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f32020o.w(z10);
            }
        });
    }

    private n6.d l(n6.d dVar) throws d {
        o6.f fVarE = this.f26348b.e(m(), dVar.d(), u(), dVar.f());
        int i10 = b.f26361b[fVarE.b().ordinal()];
        if (i10 == 1) {
            return dVar.o(fVarE.c(), fVarE.d(), this.f26350d.b());
        }
        if (i10 == 2) {
            return dVar.q("BAD CONFIG");
        }
        if (i10 != 3) {
            throw new d("Firebase Installations Service is unavailable. Please try again later.", d.a.UNAVAILABLE);
        }
        F(null);
        return dVar.r();
    }

    private synchronized String o() {
        return this.f26356j;
    }

    private n6.b p() {
        return this.f26351e.get();
    }

    public static c q() {
        return r(b5.g.m());
    }

    public static c r(b5.g gVar) {
        Preconditions.b(gVar != null, "Null is not a valid value of FirebaseApp.");
        return (c) gVar.j(l6.e.class);
    }

    private n6.d s() {
        n6.d dVarD;
        synchronized (f26345m) {
            com.google.firebase.installations.b bVarA = com.google.firebase.installations.b.a(this.f26347a.l(), "generatefid.lock");
            try {
                dVarD = this.f26349c.d();
            } finally {
                if (bVarA != null) {
                    bVarA.b();
                }
            }
        }
        return dVarD;
    }

    private n6.d t() {
        n6.d dVarD;
        synchronized (f26345m) {
            com.google.firebase.installations.b bVarA = com.google.firebase.installations.b.a(this.f26347a.l(), "generatefid.lock");
            try {
                dVarD = this.f26349c.d();
                if (dVarD.j()) {
                    dVarD = this.f26349c.b(dVarD.t(B(dVarD)));
                }
            } finally {
                if (bVarA != null) {
                    bVarA.b();
                }
            }
        }
        return dVarD;
    }

    private void v(n6.d dVar) {
        synchronized (f26345m) {
            com.google.firebase.installations.b bVarA = com.google.firebase.installations.b.a(this.f26347a.l(), "generatefid.lock");
            try {
                this.f26349c.b(dVar);
            } finally {
                if (bVarA != null) {
                    bVarA.b();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x() {
        y(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ n6.b z(b5.g gVar) {
        return new n6.b(gVar);
    }

    @Override // l6.e
    public Task<String> a() {
        A();
        String strO = o();
        if (strO != null) {
            return Tasks.e(strO);
        }
        Task<String> taskH = h();
        this.f26354h.execute(new Runnable() { // from class: l6.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f32019o.x();
            }
        });
        return taskH;
    }

    @Override // l6.e
    public Task<g> b(final boolean z10) {
        A();
        Task<g> taskG = g();
        this.f26354h.execute(new Runnable() { // from class: l6.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f32022o.y(z10);
            }
        });
        return taskG;
    }

    String m() {
        return this.f26347a.p().b();
    }

    String n() {
        return this.f26347a.p().c();
    }

    String u() {
        return this.f26347a.p().e();
    }

    @SuppressLint({"ThreadPoolCreation"})
    c(ExecutorService executorService, Executor executor, b5.g gVar, o6.c cVar, n6.c cVar2, i iVar, x<n6.b> xVar, l6.g gVar2) {
        this.f26353g = new Object();
        this.f26357k = new HashSet();
        this.f26358l = new ArrayList();
        this.f26347a = gVar;
        this.f26348b = cVar;
        this.f26349c = cVar2;
        this.f26350d = iVar;
        this.f26351e = xVar;
        this.f26352f = gVar2;
        this.f26354h = executorService;
        this.f26355i = executor;
    }
}
