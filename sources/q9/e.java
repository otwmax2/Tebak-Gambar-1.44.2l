package q9;

import h9.t;
import java.io.File;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Iterator;
import s9.p;
import t9.m;

/* JADX INFO: compiled from: FileTreeWalk.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class e implements aa.b<File> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final File f34081a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f f34082b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final s9.l<File, Boolean> f34083c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final s9.l<File, t> f34084d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final p<File, IOException, t> f34085e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f34086f;

    /* JADX INFO: compiled from: FileTreeWalk.kt */
    private static abstract class a extends c {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(File file) {
            super(file);
            m.e(file, "rootDir");
        }
    }

    /* JADX INFO: compiled from: FileTreeWalk.kt */
    private final class b extends i9.a<File> {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final ArrayDeque<c> f34087q;

        /* JADX INFO: compiled from: FileTreeWalk.kt */
        private final class a extends a {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private boolean f34089b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private File[] f34090c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f34091d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private boolean f34092e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ b f34093f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(b bVar, File file) {
                super(file);
                m.e(file, "rootDir");
                this.f34093f = bVar;
            }

            @Override // q9.e.c
            public File b() {
                if (!this.f34092e && this.f34090c == null) {
                    s9.l lVar = e.this.f34083c;
                    boolean z10 = false;
                    if (lVar != null && !((Boolean) lVar.invoke(a())).booleanValue()) {
                        z10 = true;
                    }
                    if (z10) {
                        return null;
                    }
                    File[] fileArrListFiles = a().listFiles();
                    this.f34090c = fileArrListFiles;
                    if (fileArrListFiles == null) {
                        p pVar = e.this.f34085e;
                        if (pVar != null) {
                            pVar.invoke(a(), new q9.a(a(), null, "Cannot list files in a directory", 2, null));
                        }
                        this.f34092e = true;
                    }
                }
                File[] fileArr = this.f34090c;
                if (fileArr != null) {
                    int i10 = this.f34091d;
                    m.b(fileArr);
                    if (i10 < fileArr.length) {
                        File[] fileArr2 = this.f34090c;
                        m.b(fileArr2);
                        int i11 = this.f34091d;
                        this.f34091d = i11 + 1;
                        return fileArr2[i11];
                    }
                }
                if (!this.f34089b) {
                    this.f34089b = true;
                    return a();
                }
                s9.l lVar2 = e.this.f34084d;
                if (lVar2 != null) {
                    lVar2.invoke(a());
                }
                return null;
            }
        }

        /* JADX INFO: renamed from: q9.e$b$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: FileTreeWalk.kt */
        private final class C0223b extends c {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private boolean f34094b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ b f34095c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0223b(b bVar, File file) {
                super(file);
                m.e(file, "rootFile");
                this.f34095c = bVar;
            }

            @Override // q9.e.c
            public File b() {
                if (this.f34094b) {
                    return null;
                }
                this.f34094b = true;
                return a();
            }
        }

        /* JADX INFO: compiled from: FileTreeWalk.kt */
        private final class c extends a {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private boolean f34096b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private File[] f34097c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f34098d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ b f34099e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(b bVar, File file) {
                super(file);
                m.e(file, "rootDir");
                this.f34099e = bVar;
            }

            /* JADX WARN: Code restructure failed: missing block: B:32:0x0083, code lost:
            
                if (r0.length == 0) goto L33;
             */
            @Override // q9.e.c
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public java.io.File b() {
                /*
                    r10 = this;
                    boolean r0 = r10.f34096b
                    r1 = 0
                    if (r0 != 0) goto L2c
                    q9.e$b r0 = r10.f34099e
                    q9.e r0 = q9.e.this
                    s9.l r0 = q9.e.c(r0)
                    r2 = 0
                    r3 = 1
                    if (r0 == 0) goto L22
                    java.io.File r4 = r10.a()
                    java.lang.Object r0 = r0.invoke(r4)
                    java.lang.Boolean r0 = (java.lang.Boolean) r0
                    boolean r0 = r0.booleanValue()
                    if (r0 != 0) goto L22
                    r2 = 1
                L22:
                    if (r2 == 0) goto L25
                    return r1
                L25:
                    r10.f34096b = r3
                    java.io.File r0 = r10.a()
                    return r0
                L2c:
                    java.io.File[] r0 = r10.f34097c
                    if (r0 == 0) goto L4b
                    int r2 = r10.f34098d
                    t9.m.b(r0)
                    int r0 = r0.length
                    if (r2 >= r0) goto L39
                    goto L4b
                L39:
                    q9.e$b r0 = r10.f34099e
                    q9.e r0 = q9.e.this
                    s9.l r0 = q9.e.e(r0)
                    if (r0 == 0) goto L4a
                    java.io.File r2 = r10.a()
                    r0.invoke(r2)
                L4a:
                    return r1
                L4b:
                    java.io.File[] r0 = r10.f34097c
                    if (r0 != 0) goto L97
                    java.io.File r0 = r10.a()
                    java.io.File[] r0 = r0.listFiles()
                    r10.f34097c = r0
                    if (r0 != 0) goto L7b
                    q9.e$b r0 = r10.f34099e
                    q9.e r0 = q9.e.this
                    s9.p r0 = q9.e.d(r0)
                    if (r0 == 0) goto L7b
                    java.io.File r2 = r10.a()
                    q9.a r9 = new q9.a
                    java.io.File r4 = r10.a()
                    r5 = 0
                    r7 = 2
                    r8 = 0
                    java.lang.String r6 = "Cannot list files in a directory"
                    r3 = r9
                    r3.<init>(r4, r5, r6, r7, r8)
                    r0.invoke(r2, r9)
                L7b:
                    java.io.File[] r0 = r10.f34097c
                    if (r0 == 0) goto L85
                    t9.m.b(r0)
                    int r0 = r0.length
                    if (r0 != 0) goto L97
                L85:
                    q9.e$b r0 = r10.f34099e
                    q9.e r0 = q9.e.this
                    s9.l r0 = q9.e.e(r0)
                    if (r0 == 0) goto L96
                    java.io.File r2 = r10.a()
                    r0.invoke(r2)
                L96:
                    return r1
                L97:
                    java.io.File[] r0 = r10.f34097c
                    t9.m.b(r0)
                    int r1 = r10.f34098d
                    int r2 = r1 + 1
                    r10.f34098d = r2
                    r0 = r0[r1]
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: q9.e.b.c.b():java.io.File");
            }
        }

        /* JADX INFO: compiled from: FileTreeWalk.kt */
        public /* synthetic */ class d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f34100a;

            static {
                int[] iArr = new int[f.values().length];
                iArr[f.TOP_DOWN.ordinal()] = 1;
                iArr[f.BOTTOM_UP.ordinal()] = 2;
                f34100a = iArr;
            }
        }

        public b() {
            ArrayDeque<c> arrayDeque = new ArrayDeque<>();
            this.f34087q = arrayDeque;
            if (e.this.f34081a.isDirectory()) {
                arrayDeque.push(f(e.this.f34081a));
            } else if (e.this.f34081a.isFile()) {
                arrayDeque.push(new C0223b(this, e.this.f34081a));
            } else {
                b();
            }
        }

        private final a f(File file) {
            int i10 = d.f34100a[e.this.f34082b.ordinal()];
            if (i10 == 1) {
                return new c(this, file);
            }
            if (i10 == 2) {
                return new a(this, file);
            }
            throw new h9.l();
        }

        private final File g() {
            File fileB;
            while (true) {
                c cVarPeek = this.f34087q.peek();
                if (cVarPeek == null) {
                    return null;
                }
                fileB = cVarPeek.b();
                if (fileB == null) {
                    this.f34087q.pop();
                } else {
                    if (m.a(fileB, cVarPeek.a()) || !fileB.isDirectory() || this.f34087q.size() >= e.this.f34086f) {
                        break;
                    }
                    this.f34087q.push(f(fileB));
                }
            }
            return fileB;
        }

        @Override // i9.a
        protected void a() {
            File fileG = g();
            if (fileG != null) {
                d(fileG);
            } else {
                b();
            }
        }
    }

    /* JADX INFO: compiled from: FileTreeWalk.kt */
    private static abstract class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final File f34101a;

        public c(File file) {
            m.e(file, "root");
            this.f34101a = file;
        }

        public final File a() {
            return this.f34101a;
        }

        public abstract File b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private e(File file, f fVar, s9.l<? super File, Boolean> lVar, s9.l<? super File, t> lVar2, p<? super File, ? super IOException, t> pVar, int i10) {
        this.f34081a = file;
        this.f34082b = fVar;
        this.f34083c = lVar;
        this.f34084d = lVar2;
        this.f34085e = pVar;
        this.f34086f = i10;
    }

    @Override // aa.b
    public Iterator<File> iterator() {
        return new b();
    }

    /* synthetic */ e(File file, f fVar, s9.l lVar, s9.l lVar2, p pVar, int i10, int i11, t9.g gVar) {
        this(file, (i11 & 2) != 0 ? f.TOP_DOWN : fVar, lVar, lVar2, pVar, (i11 & 32) != 0 ? Integer.MAX_VALUE : i10);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public e(File file, f fVar) {
        this(file, fVar, null, null, null, 0, 32, null);
        m.e(file, "start");
        m.e(fVar, "direction");
    }
}
