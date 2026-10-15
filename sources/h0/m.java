package h0;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import da.o0;
import da.v;
import da.x;
import h9.t;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import t9.w;
import t9.y;

/* JADX INFO: compiled from: SingleProcessDataStore.kt */
/* JADX INFO: loaded from: classes.dex */
public final class m<T> implements h0.f<T> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final a f30139k = new a(null);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Set<String> f30140l = new LinkedHashSet();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Object f30141m = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s9.a<File> f30142a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h0.k<T> f30143b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final h0.b<T> f30144c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final o0 f30145d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final kotlinx.coroutines.flow.b<T> f30146e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f30147f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final h9.h f30148g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final kotlinx.coroutines.flow.k<h0.n<T>> f30149h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private List<? extends s9.p<? super h0.i<T>, ? super k9.d<? super t>, ? extends Object>> f30150i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final h0.l<b<T>> f30151j;

    /* JADX INFO: compiled from: SingleProcessDataStore.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(t9.g gVar) {
            this();
        }

        public final Set<String> a() {
            return m.f30140l;
        }

        public final Object b() {
            return m.f30141m;
        }
    }

    /* JADX INFO: compiled from: SingleProcessDataStore.kt */
    private static abstract class b<T> {

        /* JADX INFO: compiled from: SingleProcessDataStore.kt */
        public static final class a<T> extends b<T> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final h0.n<T> f30152a;

            public a(h0.n<T> nVar) {
                super(null);
                this.f30152a = nVar;
            }

            public h0.n<T> a() {
                return this.f30152a;
            }
        }

        /* JADX INFO: renamed from: h0.m$b$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: SingleProcessDataStore.kt */
        public static final class C0169b<T> extends b<T> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final s9.p<T, k9.d<? super T>, Object> f30153a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final v<T> f30154b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final h0.n<T> f30155c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private final k9.g f30156d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C0169b(s9.p<? super T, ? super k9.d<? super T>, ? extends Object> pVar, v<T> vVar, h0.n<T> nVar, k9.g gVar) {
                super(null);
                t9.m.e(pVar, "transform");
                t9.m.e(vVar, "ack");
                t9.m.e(gVar, "callerContext");
                this.f30153a = pVar;
                this.f30154b = vVar;
                this.f30155c = nVar;
                this.f30156d = gVar;
            }

            public final v<T> a() {
                return this.f30154b;
            }

            public final k9.g b() {
                return this.f30156d;
            }

            public h0.n<T> c() {
                return this.f30155c;
            }

            public final s9.p<T, k9.d<? super T>, Object> d() {
                return this.f30153a;
            }
        }

        private b() {
        }

        public /* synthetic */ b(t9.g gVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: SingleProcessDataStore.kt */
    private static final class c extends OutputStream {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final FileOutputStream f30157o;

        public c(FileOutputStream fileOutputStream) {
            t9.m.e(fileOutputStream, "fileOutputStream");
            this.f30157o = fileOutputStream;
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() {
            this.f30157o.flush();
        }

        @Override // java.io.OutputStream
        public void write(int i10) throws IOException {
            this.f30157o.write(i10);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            t9.m.e(bArr, "b");
            this.f30157o.write(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i10, int i11) throws IOException {
            t9.m.e(bArr, "bytes");
            this.f30157o.write(bArr, i10, i11);
        }
    }

    /* JADX INFO: compiled from: SingleProcessDataStore.kt */
    static final class d extends t9.n implements s9.l<Throwable, t> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ m<T> f30158o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(m<T> mVar) {
            super(1);
            this.f30158o = mVar;
        }

        public final void c(Throwable th) {
            if (th != null) {
                ((m) this.f30158o).f30149h.setValue(new h0.h(th));
            }
            a aVar = m.f30139k;
            Object objB = aVar.b();
            m<T> mVar = this.f30158o;
            synchronized (objB) {
                aVar.a().remove(mVar.r().getAbsolutePath());
                t tVar = t.f30301a;
            }
        }

        @Override // s9.l
        public /* bridge */ /* synthetic */ t invoke(Throwable th) {
            c(th);
            return t.f30301a;
        }
    }

    /* JADX INFO: compiled from: SingleProcessDataStore.kt */
    static final class e extends t9.n implements s9.p<b<T>, Throwable, t> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public static final e f30159o = new e();

        e() {
            super(2);
        }

        public final void c(b<T> bVar, Throwable th) {
            t9.m.e(bVar, SDKConstants.PARAM_DEBUG_MESSAGE);
            if (bVar instanceof b.C0169b) {
                v<T> vVarA = ((b.C0169b) bVar).a();
                if (th == null) {
                    th = new CancellationException("DataStore scope was cancelled before updateData could complete");
                }
                vVarA.u(th);
            }
        }

        @Override // s9.p
        public /* bridge */ /* synthetic */ t invoke(Object obj, Throwable th) {
            c((b) obj, th);
            return t.f30301a;
        }
    }

    /* JADX INFO: compiled from: SingleProcessDataStore.kt */
    @m9.f(c = "androidx.datastore.core.SingleProcessDataStore$actor$3", f = "SingleProcessDataStore.kt", l = {239, 242}, m = "invokeSuspend")
    static final class f extends m9.k implements s9.p<b<T>, k9.d<? super t>, Object> {

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        int f30160s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        /* synthetic */ Object f30161t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        final /* synthetic */ m<T> f30162u;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(m<T> mVar, k9.d<? super f> dVar) {
            super(2, dVar);
            this.f30162u = mVar;
        }

        @Override // m9.a
        public final k9.d<t> d(Object obj, k9.d<?> dVar) {
            f fVar = new f(this.f30162u, dVar);
            fVar.f30161t = obj;
            return fVar;
        }

        @Override // m9.a
        public final Object i(Object obj) throws Throwable {
            Object objC = l9.d.c();
            int i10 = this.f30160s;
            if (i10 == 0) {
                h9.o.b(obj);
                b bVar = (b) this.f30161t;
                if (bVar instanceof b.a) {
                    this.f30160s = 1;
                    if (this.f30162u.s((b.a) bVar, this) == objC) {
                        return objC;
                    }
                } else if (bVar instanceof b.C0169b) {
                    this.f30160s = 2;
                    if (this.f30162u.t((b.C0169b) bVar, this) == objC) {
                        return objC;
                    }
                }
            } else {
                if (i10 != 1 && i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                h9.o.b(obj);
            }
            return t.f30301a;
        }

        @Override // s9.p
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public final Object invoke(b<T> bVar, k9.d<? super t> dVar) {
            return ((f) d(bVar, dVar)).i(t.f30301a);
        }
    }

    /* JADX INFO: compiled from: SingleProcessDataStore.kt */
    @m9.f(c = "androidx.datastore.core.SingleProcessDataStore$data$1", f = "SingleProcessDataStore.kt", l = {117}, m = "invokeSuspend")
    static final class g extends m9.k implements s9.p<kotlinx.coroutines.flow.c<? super T>, k9.d<? super t>, Object> {

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        int f30163s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private /* synthetic */ Object f30164t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        final /* synthetic */ m<T> f30165u;

        /* JADX INFO: compiled from: SingleProcessDataStore.kt */
        @m9.f(c = "androidx.datastore.core.SingleProcessDataStore$data$1$1", f = "SingleProcessDataStore.kt", l = {}, m = "invokeSuspend")
        static final class a extends m9.k implements s9.p<h0.n<T>, k9.d<? super Boolean>, Object> {

            /* JADX INFO: renamed from: s, reason: collision with root package name */
            int f30166s;

            /* JADX INFO: renamed from: t, reason: collision with root package name */
            /* synthetic */ Object f30167t;

            /* JADX INFO: renamed from: u, reason: collision with root package name */
            final /* synthetic */ h0.n<T> f30168u;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(h0.n<T> nVar, k9.d<? super a> dVar) {
                super(2, dVar);
                this.f30168u = nVar;
            }

            @Override // m9.a
            public final k9.d<t> d(Object obj, k9.d<?> dVar) {
                a aVar = new a(this.f30168u, dVar);
                aVar.f30167t = obj;
                return aVar;
            }

            @Override // m9.a
            public final Object i(Object obj) throws Throwable {
                l9.d.c();
                if (this.f30166s != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                h9.o.b(obj);
                h0.n<T> nVar = (h0.n) this.f30167t;
                h0.n<T> nVar2 = this.f30168u;
                boolean z10 = false;
                if (!(nVar2 instanceof h0.c) && !(nVar2 instanceof h0.h) && nVar == nVar2) {
                    z10 = true;
                }
                return m9.b.a(z10);
            }

            @Override // s9.p
            /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
            public final Object invoke(h0.n<T> nVar, k9.d<? super Boolean> dVar) {
                return ((a) d(nVar, dVar)).i(t.f30301a);
            }
        }

        /* JADX INFO: compiled from: SafeCollector.common.kt */
        public static final class b implements kotlinx.coroutines.flow.b<T> {

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            final /* synthetic */ kotlinx.coroutines.flow.b f30169o;

            /* JADX INFO: compiled from: Collect.kt */
            public static final class a implements kotlinx.coroutines.flow.c<h0.n<T>> {

                /* JADX INFO: renamed from: o, reason: collision with root package name */
                final /* synthetic */ kotlinx.coroutines.flow.c f30170o;

                /* JADX INFO: renamed from: h0.m$g$b$a$a, reason: collision with other inner class name */
                @m9.f(c = "androidx.datastore.core.SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2", f = "SingleProcessDataStore.kt", l = {137}, m = "emit")
                public static final class C0170a extends m9.d {

                    /* JADX INFO: renamed from: r, reason: collision with root package name */
                    /* synthetic */ Object f30171r;

                    /* JADX INFO: renamed from: s, reason: collision with root package name */
                    int f30172s;

                    public C0170a(k9.d dVar) {
                        super(dVar);
                    }

                    @Override // m9.a
                    public final Object i(Object obj) {
                        this.f30171r = obj;
                        this.f30172s |= Integer.MIN_VALUE;
                        return a.this.c(null, this);
                    }
                }

                public a(kotlinx.coroutines.flow.c cVar) {
                    this.f30170o = cVar;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.c
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public java.lang.Object c(java.lang.Object r5, k9.d r6) throws java.lang.Throwable {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof h0.m.g.b.a.C0170a
                        if (r0 == 0) goto L13
                        r0 = r6
                        h0.m$g$b$a$a r0 = (h0.m.g.b.a.C0170a) r0
                        int r1 = r0.f30172s
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f30172s = r1
                        goto L18
                    L13:
                        h0.m$g$b$a$a r0 = new h0.m$g$b$a$a
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.f30171r
                        java.lang.Object r1 = l9.b.c()
                        int r2 = r0.f30172s
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        h9.o.b(r6)
                        goto L53
                    L29:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L31:
                        h9.o.b(r6)
                        kotlinx.coroutines.flow.c r6 = r4.f30170o
                        h0.n r5 = (h0.n) r5
                        boolean r2 = r5 instanceof h0.j
                        if (r2 != 0) goto L73
                        boolean r2 = r5 instanceof h0.h
                        if (r2 != 0) goto L6c
                        boolean r2 = r5 instanceof h0.c
                        if (r2 == 0) goto L56
                        h0.c r5 = (h0.c) r5
                        java.lang.Object r5 = r5.b()
                        r0.f30172s = r3
                        java.lang.Object r5 = r6.c(r5, r0)
                        if (r5 != r1) goto L53
                        return r1
                    L53:
                        h9.t r5 = h9.t.f30301a
                        return r5
                    L56:
                        boolean r5 = r5 instanceof h0.o
                        if (r5 == 0) goto L66
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"
                        java.lang.String r6 = r6.toString()
                        r5.<init>(r6)
                        throw r5
                    L66:
                        h9.l r5 = new h9.l
                        r5.<init>()
                        throw r5
                    L6c:
                        h0.h r5 = (h0.h) r5
                        java.lang.Throwable r5 = r5.a()
                        throw r5
                    L73:
                        h0.j r5 = (h0.j) r5
                        java.lang.Throwable r5 = r5.a()
                        throw r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: h0.m.g.b.a.c(java.lang.Object, k9.d):java.lang.Object");
                }
            }

            public b(kotlinx.coroutines.flow.b bVar) {
                this.f30169o = bVar;
            }

            @Override // kotlinx.coroutines.flow.b
            public Object a(kotlinx.coroutines.flow.c cVar, k9.d dVar) {
                Object objA = this.f30169o.a(new a(cVar), dVar);
                return objA == l9.d.c() ? objA : t.f30301a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(m<T> mVar, k9.d<? super g> dVar) {
            super(2, dVar);
            this.f30165u = mVar;
        }

        @Override // m9.a
        public final k9.d<t> d(Object obj, k9.d<?> dVar) {
            g gVar = new g(this.f30165u, dVar);
            gVar.f30164t = obj;
            return gVar;
        }

        @Override // m9.a
        public final Object i(Object obj) throws Throwable {
            Object objC = l9.d.c();
            int i10 = this.f30163s;
            if (i10 == 0) {
                h9.o.b(obj);
                kotlinx.coroutines.flow.c cVar = (kotlinx.coroutines.flow.c) this.f30164t;
                h0.n nVar = (h0.n) ((m) this.f30165u).f30149h.getValue();
                if (!(nVar instanceof h0.c)) {
                    ((m) this.f30165u).f30151j.e(new b.a(nVar));
                }
                b bVar = new b(kotlinx.coroutines.flow.d.c(((m) this.f30165u).f30149h, new a(nVar, null)));
                this.f30163s = 1;
                if (kotlinx.coroutines.flow.d.d(cVar, bVar, this) == objC) {
                    return objC;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                h9.o.b(obj);
            }
            return t.f30301a;
        }

        @Override // s9.p
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public final Object invoke(kotlinx.coroutines.flow.c<? super T> cVar, k9.d<? super t> dVar) {
            return ((g) d(cVar, dVar)).i(t.f30301a);
        }
    }

    /* JADX INFO: compiled from: SingleProcessDataStore.kt */
    static final class h extends t9.n implements s9.a<File> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ m<T> f30174o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(m<T> mVar) {
            super(0);
            this.f30174o = mVar;
        }

        @Override // s9.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final File invoke() {
            File file = (File) ((m) this.f30174o).f30142a.invoke();
            String absolutePath = file.getAbsolutePath();
            a aVar = m.f30139k;
            synchronized (aVar.b()) {
                if (!(!aVar.a().contains(absolutePath))) {
                    throw new IllegalStateException(("There are multiple DataStores active for the same file: " + file + ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore's active on the same file (by confirming that the scope is cancelled).").toString());
                }
                Set<String> setA = aVar.a();
                t9.m.d(absolutePath, "it");
                setA.add(absolutePath);
            }
            return file;
        }
    }

    /* JADX INFO: compiled from: SingleProcessDataStore.kt */
    @m9.f(c = "androidx.datastore.core.SingleProcessDataStore", f = "SingleProcessDataStore.kt", l = {276, 281, 284}, m = "handleUpdate")
    static final class i extends m9.d {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        Object f30175r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        Object f30176s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        Object f30177t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        /* synthetic */ Object f30178u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        final /* synthetic */ m<T> f30179v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        int f30180w;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(m<T> mVar, k9.d<? super i> dVar) {
            super(dVar);
            this.f30179v = mVar;
        }

        @Override // m9.a
        public final Object i(Object obj) {
            this.f30178u = obj;
            this.f30180w |= Integer.MIN_VALUE;
            return this.f30179v.t(null, this);
        }
    }

    /* JADX INFO: compiled from: SingleProcessDataStore.kt */
    @m9.f(c = "androidx.datastore.core.SingleProcessDataStore", f = "SingleProcessDataStore.kt", l = {322, 348, 505}, m = "readAndInit")
    static final class j extends m9.d {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        Object f30181r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        Object f30182s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        Object f30183t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        Object f30184u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        Object f30185v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        Object f30186w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        /* synthetic */ Object f30187x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        final /* synthetic */ m<T> f30188y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        int f30189z;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(m<T> mVar, k9.d<? super j> dVar) {
            super(dVar);
            this.f30188y = mVar;
        }

        @Override // m9.a
        public final Object i(Object obj) {
            this.f30187x = obj;
            this.f30189z |= Integer.MIN_VALUE;
            return this.f30188y.u(this);
        }
    }

    /* JADX INFO: compiled from: SingleProcessDataStore.kt */
    public static final class k implements h0.i<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.sync.b f30190a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ w f30191b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ y<T> f30192c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ m<T> f30193d;

        /* JADX INFO: compiled from: SingleProcessDataStore.kt */
        @m9.f(c = "androidx.datastore.core.SingleProcessDataStore$readAndInit$api$1", f = "SingleProcessDataStore.kt", l = {503, 337, 339}, m = "updateData")
        static final class a extends m9.d {

            /* JADX INFO: renamed from: r, reason: collision with root package name */
            Object f30194r;

            /* JADX INFO: renamed from: s, reason: collision with root package name */
            Object f30195s;

            /* JADX INFO: renamed from: t, reason: collision with root package name */
            Object f30196t;

            /* JADX INFO: renamed from: u, reason: collision with root package name */
            Object f30197u;

            /* JADX INFO: renamed from: v, reason: collision with root package name */
            Object f30198v;

            /* JADX INFO: renamed from: w, reason: collision with root package name */
            /* synthetic */ Object f30199w;

            /* JADX INFO: renamed from: y, reason: collision with root package name */
            int f30201y;

            a(k9.d<? super a> dVar) {
                super(dVar);
            }

            @Override // m9.a
            public final Object i(Object obj) {
                this.f30199w = obj;
                this.f30201y |= Integer.MIN_VALUE;
                return k.this.a(null, this);
            }
        }

        k(kotlinx.coroutines.sync.b bVar, w wVar, y<T> yVar, m<T> mVar) {
            this.f30190a = bVar;
            this.f30191b = wVar;
            this.f30192c = yVar;
            this.f30193d = mVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:38:0x00ba A[Catch: all -> 0x0056, TRY_LEAVE, TryCatch #0 {all -> 0x0056, blocks: (B:21:0x0052, B:36:0x00b2, B:38:0x00ba), top: B:53:0x0052 }] */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00d0  */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        @Override // h0.i
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.lang.Object a(s9.p<? super T, ? super k9.d<? super T>, ? extends java.lang.Object> r11, k9.d<? super T> r12) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 229
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: h0.m.k.a(s9.p, k9.d):java.lang.Object");
        }
    }

    /* JADX INFO: compiled from: SingleProcessDataStore.kt */
    @m9.f(c = "androidx.datastore.core.SingleProcessDataStore", f = "SingleProcessDataStore.kt", l = {302}, m = "readAndInitOrPropagateAndThrowFailure")
    static final class l extends m9.d {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        Object f30202r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        /* synthetic */ Object f30203s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        final /* synthetic */ m<T> f30204t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        int f30205u;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(m<T> mVar, k9.d<? super l> dVar) {
            super(dVar);
            this.f30204t = mVar;
        }

        @Override // m9.a
        public final Object i(Object obj) {
            this.f30203s = obj;
            this.f30205u |= Integer.MIN_VALUE;
            return this.f30204t.v(this);
        }
    }

    /* JADX INFO: renamed from: h0.m$m, reason: collision with other inner class name */
    /* JADX INFO: compiled from: SingleProcessDataStore.kt */
    @m9.f(c = "androidx.datastore.core.SingleProcessDataStore", f = "SingleProcessDataStore.kt", l = {311}, m = "readAndInitOrPropagateFailure")
    static final class C0171m extends m9.d {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        Object f30206r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        /* synthetic */ Object f30207s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        final /* synthetic */ m<T> f30208t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        int f30209u;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0171m(m<T> mVar, k9.d<? super C0171m> dVar) {
            super(dVar);
            this.f30208t = mVar;
        }

        @Override // m9.a
        public final Object i(Object obj) {
            this.f30207s = obj;
            this.f30209u |= Integer.MIN_VALUE;
            return this.f30208t.w(this);
        }
    }

    /* JADX INFO: compiled from: SingleProcessDataStore.kt */
    @m9.f(c = "androidx.datastore.core.SingleProcessDataStore", f = "SingleProcessDataStore.kt", l = {381}, m = "readData")
    static final class n extends m9.d {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        Object f30210r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        Object f30211s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        Object f30212t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        /* synthetic */ Object f30213u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        final /* synthetic */ m<T> f30214v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        int f30215w;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(m<T> mVar, k9.d<? super n> dVar) {
            super(dVar);
            this.f30214v = mVar;
        }

        @Override // m9.a
        public final Object i(Object obj) {
            this.f30213u = obj;
            this.f30215w |= Integer.MIN_VALUE;
            return this.f30214v.x(this);
        }
    }

    /* JADX INFO: compiled from: SingleProcessDataStore.kt */
    @m9.f(c = "androidx.datastore.core.SingleProcessDataStore", f = "SingleProcessDataStore.kt", l = {359, 362, 365}, m = "readDataOrHandleCorruption")
    static final class o extends m9.d {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        Object f30216r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        Object f30217s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        /* synthetic */ Object f30218t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        final /* synthetic */ m<T> f30219u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        int f30220v;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(m<T> mVar, k9.d<? super o> dVar) {
            super(dVar);
            this.f30219u = mVar;
        }

        @Override // m9.a
        public final Object i(Object obj) {
            this.f30218t = obj;
            this.f30220v |= Integer.MIN_VALUE;
            return this.f30219u.y(this);
        }
    }

    /* JADX INFO: compiled from: SingleProcessDataStore.kt */
    @m9.f(c = "androidx.datastore.core.SingleProcessDataStore", f = "SingleProcessDataStore.kt", l = {402, 410}, m = "transformAndWrite")
    static final class p extends m9.d {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        Object f30221r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        Object f30222s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        Object f30223t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        /* synthetic */ Object f30224u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        final /* synthetic */ m<T> f30225v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        int f30226w;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p(m<T> mVar, k9.d<? super p> dVar) {
            super(dVar);
            this.f30225v = mVar;
        }

        @Override // m9.a
        public final Object i(Object obj) {
            this.f30224u = obj;
            this.f30226w |= Integer.MIN_VALUE;
            return this.f30225v.z(null, null, this);
        }
    }

    /* JADX INFO: compiled from: SingleProcessDataStore.kt */
    @m9.f(c = "androidx.datastore.core.SingleProcessDataStore$transformAndWrite$newData$1", f = "SingleProcessDataStore.kt", l = {402}, m = "invokeSuspend")
    static final class q extends m9.k implements s9.p<o0, k9.d<? super T>, Object> {

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        int f30227s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        final /* synthetic */ s9.p<T, k9.d<? super T>, Object> f30228t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        final /* synthetic */ T f30229u;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        q(s9.p<? super T, ? super k9.d<? super T>, ? extends Object> pVar, T t10, k9.d<? super q> dVar) {
            super(2, dVar);
            this.f30228t = pVar;
            this.f30229u = t10;
        }

        @Override // m9.a
        public final k9.d<t> d(Object obj, k9.d<?> dVar) {
            return new q(this.f30228t, this.f30229u, dVar);
        }

        @Override // m9.a
        public final Object i(Object obj) throws Throwable {
            Object objC = l9.d.c();
            int i10 = this.f30227s;
            if (i10 == 0) {
                h9.o.b(obj);
                s9.p<T, k9.d<? super T>, Object> pVar = this.f30228t;
                T t10 = this.f30229u;
                this.f30227s = 1;
                obj = pVar.invoke(t10, this);
                if (obj == objC) {
                    return objC;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                h9.o.b(obj);
            }
            return obj;
        }

        @Override // s9.p
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public final Object invoke(o0 o0Var, k9.d<? super T> dVar) {
            return ((q) d(o0Var, dVar)).i(t.f30301a);
        }
    }

    /* JADX INFO: compiled from: SingleProcessDataStore.kt */
    @m9.f(c = "androidx.datastore.core.SingleProcessDataStore", f = "SingleProcessDataStore.kt", l = {426}, m = "writeData$datastore_core")
    static final class r extends m9.d {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        Object f30230r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        Object f30231s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        Object f30232t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        Object f30233u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        Object f30234v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        /* synthetic */ Object f30235w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        final /* synthetic */ m<T> f30236x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        int f30237y;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        r(m<T> mVar, k9.d<? super r> dVar) {
            super(dVar);
            this.f30236x = mVar;
        }

        @Override // m9.a
        public final Object i(Object obj) {
            this.f30235w = obj;
            this.f30237y |= Integer.MIN_VALUE;
            return this.f30236x.A(null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public m(s9.a<? extends File> aVar, h0.k<T> kVar, List<? extends s9.p<? super h0.i<T>, ? super k9.d<? super t>, ? extends Object>> list, h0.b<T> bVar, o0 o0Var) {
        t9.m.e(aVar, "produceFile");
        t9.m.e(kVar, "serializer");
        t9.m.e(list, "initTasksList");
        t9.m.e(bVar, "corruptionHandler");
        t9.m.e(o0Var, "scope");
        this.f30142a = aVar;
        this.f30143b = kVar;
        this.f30144c = bVar;
        this.f30145d = o0Var;
        this.f30146e = kotlinx.coroutines.flow.d.g(new g(this, null));
        this.f30147f = ".tmp";
        this.f30148g = h9.j.a(new h(this));
        this.f30149h = kotlinx.coroutines.flow.n.a(h0.o.f30238a);
        this.f30150i = i9.t.O(list);
        this.f30151j = new h0.l<>(o0Var, new d(this), e.f30159o, new f(this, null));
    }

    private final void q(File file) throws IOException {
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile == null) {
            return;
        }
        parentFile.mkdirs();
        if (!parentFile.isDirectory()) {
            throw new IOException(t9.m.k("Unable to create parent directories of ", file));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final File r() {
        return (File) this.f30148g.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object s(b.a<T> aVar, k9.d<? super t> dVar) throws Throwable {
        h0.n<T> value = this.f30149h.getValue();
        if (!(value instanceof h0.c)) {
            if (value instanceof h0.j) {
                if (value == aVar.a()) {
                    Object objW = w(dVar);
                    return objW == l9.d.c() ? objW : t.f30301a;
                }
            } else {
                if (t9.m.a(value, h0.o.f30238a)) {
                    Object objW2 = w(dVar);
                    return objW2 == l9.d.c() ? objW2 : t.f30301a;
                }
                if (value instanceof h0.h) {
                    throw new IllegalStateException("Can't read in final state.".toString());
                }
            }
        }
        return t.f30301a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v10, types: [h0.m] */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r8v0, types: [h0.m, h0.m<T>, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v0, types: [h0.m$b$b, h0.m$b$b<T>, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v15, types: [h0.m$b$b] */
    /* JADX WARN: Type inference failed for: r9v18 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [da.v] */
    /* JADX WARN: Type inference failed for: r9v32 */
    /* JADX WARN: Type inference failed for: r9v33 */
    /* JADX WARN: Type inference failed for: r9v34 */
    /* JADX WARN: Type inference failed for: r9v35 */
    /* JADX WARN: Type inference failed for: r9v36 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object t(h0.m.b.C0169b<T> r9, k9.d<? super h9.t> r10) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 233
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: h0.m.t(h0.m$b$b, k9.d):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0114 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [h0.m, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8, types: [h0.m] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [h0.m] */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r13v0, types: [h0.m, h0.m<T>, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object u(k9.d<? super h9.t> r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 324
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: h0.m.u(k9.d):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object v(k9.d<? super h9.t> r5) throws java.lang.Throwable {
        /*
            r4 = this;
            boolean r0 = r5 instanceof h0.m.l
            if (r0 == 0) goto L13
            r0 = r5
            h0.m$l r0 = (h0.m.l) r0
            int r1 = r0.f30205u
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f30205u = r1
            goto L18
        L13:
            h0.m$l r0 = new h0.m$l
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f30203s
            java.lang.Object r1 = l9.b.c()
            int r2 = r0.f30205u
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r0 = r0.f30202r
            h0.m r0 = (h0.m) r0
            h9.o.b(r5)     // Catch: java.lang.Throwable -> L2d
            goto L45
        L2d:
            r5 = move-exception
            goto L4a
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L37:
            h9.o.b(r5)
            r0.f30202r = r4     // Catch: java.lang.Throwable -> L48
            r0.f30205u = r3     // Catch: java.lang.Throwable -> L48
            java.lang.Object r5 = r4.u(r0)     // Catch: java.lang.Throwable -> L48
            if (r5 != r1) goto L45
            return r1
        L45:
            h9.t r5 = h9.t.f30301a
            return r5
        L48:
            r5 = move-exception
            r0 = r4
        L4a:
            kotlinx.coroutines.flow.k<h0.n<T>> r0 = r0.f30149h
            h0.j r1 = new h0.j
            r1.<init>(r5)
            r0.setValue(r1)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: h0.m.v(k9.d):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object w(k9.d<? super h9.t> r5) throws java.lang.Throwable {
        /*
            r4 = this;
            boolean r0 = r5 instanceof h0.m.C0171m
            if (r0 == 0) goto L13
            r0 = r5
            h0.m$m r0 = (h0.m.C0171m) r0
            int r1 = r0.f30209u
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f30209u = r1
            goto L18
        L13:
            h0.m$m r0 = new h0.m$m
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f30207s
            java.lang.Object r1 = l9.b.c()
            int r2 = r0.f30209u
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r0 = r0.f30206r
            h0.m r0 = (h0.m) r0
            h9.o.b(r5)     // Catch: java.lang.Throwable -> L2d
            goto L51
        L2d:
            r5 = move-exception
            goto L47
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L37:
            h9.o.b(r5)
            r0.f30206r = r4     // Catch: java.lang.Throwable -> L45
            r0.f30209u = r3     // Catch: java.lang.Throwable -> L45
            java.lang.Object r5 = r4.u(r0)     // Catch: java.lang.Throwable -> L45
            if (r5 != r1) goto L51
            return r1
        L45:
            r5 = move-exception
            r0 = r4
        L47:
            kotlinx.coroutines.flow.k<h0.n<T>> r0 = r0.f30149h
            h0.j r1 = new h0.j
            r1.<init>(r5)
            r0.setValue(r1)
        L51:
            h9.t r5 = h9.t.f30301a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: h0.m.w(k9.d):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r0v12, types: [h0.m] */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v2, types: [h0.m$n, k9.d] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [h0.m] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.io.FileInputStream, java.io.InputStream, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r4v0, types: [h0.k, h0.k<T>] */
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object x(k9.d<? super T> r6) throws java.lang.Throwable {
        /*
            r5 = this;
            boolean r0 = r6 instanceof h0.m.n
            if (r0 == 0) goto L13
            r0 = r6
            h0.m$n r0 = (h0.m.n) r0
            int r1 = r0.f30215w
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f30215w = r1
            goto L18
        L13:
            h0.m$n r0 = new h0.m$n
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.f30213u
            java.lang.Object r1 = l9.b.c()
            int r2 = r0.f30215w
            r3 = 1
            if (r2 == 0) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r1 = r0.f30212t
            java.lang.Throwable r1 = (java.lang.Throwable) r1
            java.lang.Object r2 = r0.f30211s
            java.io.Closeable r2 = (java.io.Closeable) r2
            java.lang.Object r0 = r0.f30210r
            h0.m r0 = (h0.m) r0
            h9.o.b(r6)     // Catch: java.lang.Throwable -> L35
            goto L60
        L35:
            r6 = move-exception
            goto L68
        L37:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L3f:
            h9.o.b(r6)
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.io.FileNotFoundException -> L6e
            java.io.File r6 = r5.r()     // Catch: java.io.FileNotFoundException -> L6e
            r2.<init>(r6)     // Catch: java.io.FileNotFoundException -> L6e
            r6 = 0
            h0.k<T> r4 = r5.f30143b     // Catch: java.lang.Throwable -> L66
            r0.f30210r = r5     // Catch: java.lang.Throwable -> L66
            r0.f30211s = r2     // Catch: java.lang.Throwable -> L66
            r0.f30212t = r6     // Catch: java.lang.Throwable -> L66
            r0.f30215w = r3     // Catch: java.lang.Throwable -> L66
            java.lang.Object r0 = r4.b(r2, r0)     // Catch: java.lang.Throwable -> L66
            if (r0 != r1) goto L5d
            return r1
        L5d:
            r1 = r6
            r6 = r0
            r0 = r5
        L60:
            q9.b.a(r2, r1)     // Catch: java.io.FileNotFoundException -> L64
            return r6
        L64:
            r6 = move-exception
            goto L70
        L66:
            r6 = move-exception
            r0 = r5
        L68:
            throw r6     // Catch: java.lang.Throwable -> L69
        L69:
            r1 = move-exception
            q9.b.a(r2, r6)     // Catch: java.io.FileNotFoundException -> L64
            throw r1     // Catch: java.io.FileNotFoundException -> L64
        L6e:
            r6 = move-exception
            r0 = r5
        L70:
            java.io.File r1 = r0.r()
            boolean r1 = r1.exists()
            if (r1 != 0) goto L81
            h0.k<T> r6 = r0.f30143b
            java.lang.Object r6 = r6.a()
            return r6
        L81:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: h0.m.x(k9.d):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0074 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0085 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [h0.m, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v6, types: [h0.m] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [h0.m] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r7v0, types: [h0.m, h0.m<T>, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object y(k9.d<? super T> r8) throws java.lang.Throwable {
        /*
            r7 = this;
            boolean r0 = r8 instanceof h0.m.o
            if (r0 == 0) goto L13
            r0 = r8
            h0.m$o r0 = (h0.m.o) r0
            int r1 = r0.f30220v
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f30220v = r1
            goto L18
        L13:
            h0.m$o r0 = new h0.m$o
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.f30218t
            java.lang.Object r1 = l9.b.c()
            int r2 = r0.f30220v
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L55
            if (r2 == r5) goto L4b
            if (r2 == r4) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r1 = r0.f30217s
            java.lang.Object r0 = r0.f30216r
            h0.a r0 = (h0.a) r0
            h9.o.b(r8)     // Catch: java.io.IOException -> L35
            goto L87
        L35:
            r8 = move-exception
            goto L8a
        L37:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L3f:
            java.lang.Object r2 = r0.f30217s
            h0.a r2 = (h0.a) r2
            java.lang.Object r4 = r0.f30216r
            h0.m r4 = (h0.m) r4
            h9.o.b(r8)
            goto L79
        L4b:
            java.lang.Object r2 = r0.f30216r
            h0.m r2 = (h0.m) r2
            h9.o.b(r8)     // Catch: h0.a -> L53
            goto L63
        L53:
            r8 = move-exception
            goto L66
        L55:
            h9.o.b(r8)
            r0.f30216r = r7     // Catch: h0.a -> L64
            r0.f30220v = r5     // Catch: h0.a -> L64
            java.lang.Object r8 = r7.x(r0)     // Catch: h0.a -> L64
            if (r8 != r1) goto L63
            return r1
        L63:
            return r8
        L64:
            r8 = move-exception
            r2 = r7
        L66:
            h0.b<T> r5 = r2.f30144c
            r0.f30216r = r2
            r0.f30217s = r8
            r0.f30220v = r4
            java.lang.Object r4 = r5.a(r8, r0)
            if (r4 != r1) goto L75
            return r1
        L75:
            r6 = r2
            r2 = r8
            r8 = r4
            r4 = r6
        L79:
            r0.f30216r = r2     // Catch: java.io.IOException -> L88
            r0.f30217s = r8     // Catch: java.io.IOException -> L88
            r0.f30220v = r3     // Catch: java.io.IOException -> L88
            java.lang.Object r0 = r4.A(r8, r0)     // Catch: java.io.IOException -> L88
            if (r0 != r1) goto L86
            return r1
        L86:
            r1 = r8
        L87:
            return r1
        L88:
            r8 = move-exception
            r0 = r2
        L8a:
            h9.a.a(r0, r8)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: h0.m.y(k9.d):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object z(s9.p<? super T, ? super k9.d<? super T>, ? extends java.lang.Object> r8, k9.g r9, k9.d<? super T> r10) throws java.lang.Throwable {
        /*
            r7 = this;
            boolean r0 = r10 instanceof h0.m.p
            if (r0 == 0) goto L13
            r0 = r10
            h0.m$p r0 = (h0.m.p) r0
            int r1 = r0.f30226w
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f30226w = r1
            goto L18
        L13:
            h0.m$p r0 = new h0.m$p
            r0.<init>(r7, r10)
        L18:
            java.lang.Object r10 = r0.f30224u
            java.lang.Object r1 = l9.b.c()
            int r2 = r0.f30226w
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L49
            if (r2 == r5) goto L3b
            if (r2 != r4) goto L33
            java.lang.Object r8 = r0.f30222s
            java.lang.Object r9 = r0.f30221r
            h0.m r9 = (h0.m) r9
            h9.o.b(r10)
            goto L8e
        L33:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3b:
            java.lang.Object r8 = r0.f30223t
            java.lang.Object r9 = r0.f30222s
            h0.c r9 = (h0.c) r9
            java.lang.Object r2 = r0.f30221r
            h0.m r2 = (h0.m) r2
            h9.o.b(r10)
            goto L73
        L49:
            h9.o.b(r10)
            kotlinx.coroutines.flow.k<h0.n<T>> r10 = r7.f30149h
            java.lang.Object r10 = r10.getValue()
            h0.c r10 = (h0.c) r10
            r10.a()
            java.lang.Object r2 = r10.b()
            h0.m$q r6 = new h0.m$q
            r6.<init>(r8, r2, r3)
            r0.f30221r = r7
            r0.f30222s = r10
            r0.f30223t = r2
            r0.f30226w = r5
            java.lang.Object r8 = da.h.e(r9, r6, r0)
            if (r8 != r1) goto L6f
            return r1
        L6f:
            r9 = r10
            r10 = r8
            r8 = r2
            r2 = r7
        L73:
            r9.a()
            boolean r9 = t9.m.a(r8, r10)
            if (r9 == 0) goto L7d
            goto La0
        L7d:
            r0.f30221r = r2
            r0.f30222s = r10
            r0.f30223t = r3
            r0.f30226w = r4
            java.lang.Object r8 = r2.A(r10, r0)
            if (r8 != r1) goto L8c
            return r1
        L8c:
            r8 = r10
            r9 = r2
        L8e:
            kotlinx.coroutines.flow.k<h0.n<T>> r9 = r9.f30149h
            h0.c r10 = new h0.c
            if (r8 == 0) goto L99
            int r0 = r8.hashCode()
            goto L9a
        L99:
            r0 = 0
        L9a:
            r10.<init>(r8, r0)
            r9.setValue(r10)
        La0:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: h0.m.z(s9.p, k9.g, k9.d):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.io.FileOutputStream, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.io.File, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v9, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r9v5, types: [java.io.File, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v9, types: [java.lang.StringBuilder] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object A(T r8, k9.d<? super h9.t> r9) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 210
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: h0.m.A(java.lang.Object, k9.d):java.lang.Object");
    }

    @Override // h0.f
    public Object a(s9.p<? super T, ? super k9.d<? super T>, ? extends Object> pVar, k9.d<? super T> dVar) throws Throwable {
        v vVarB = x.b(null, 1, null);
        this.f30151j.e(new b.C0169b(pVar, vVarB, this.f30149h.getValue(), dVar.getContext()));
        return vVarB.A(dVar);
    }

    @Override // h0.f
    public kotlinx.coroutines.flow.b<T> b() {
        return this.f30146e;
    }
}
