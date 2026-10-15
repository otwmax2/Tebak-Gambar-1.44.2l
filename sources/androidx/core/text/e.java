package androidx.core.text;

import java.util.Locale;

/* JADX INFO: compiled from: TextDirectionHeuristicsCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final androidx.core.text.d f2368a = new C0037e(null, false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final androidx.core.text.d f2369b = new C0037e(null, true);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final androidx.core.text.d f2370c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final androidx.core.text.d f2371d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final androidx.core.text.d f2372e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final androidx.core.text.d f2373f;

    /* JADX INFO: compiled from: TextDirectionHeuristicsCompat.java */
    private static class a implements c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final a f2374b = new a(true);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final boolean f2375a;

        private a(boolean z10) {
            this.f2375a = z10;
        }

        @Override // androidx.core.text.e.c
        public int a(CharSequence charSequence, int i10, int i11) {
            int i12 = i11 + i10;
            boolean z10 = false;
            while (i10 < i12) {
                int iA = e.a(Character.getDirectionality(charSequence.charAt(i10)));
                if (iA != 0) {
                    if (iA != 1) {
                        continue;
                        i10++;
                    } else if (!this.f2375a) {
                        return 1;
                    }
                } else if (this.f2375a) {
                    return 0;
                }
                z10 = true;
                i10++;
            }
            if (z10) {
                return this.f2375a ? 1 : 0;
            }
            return 2;
        }
    }

    /* JADX INFO: compiled from: TextDirectionHeuristicsCompat.java */
    private static class b implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final b f2376a = new b();

        private b() {
        }

        @Override // androidx.core.text.e.c
        public int a(CharSequence charSequence, int i10, int i11) {
            int i12 = i11 + i10;
            int iB = 2;
            while (i10 < i12 && iB == 2) {
                iB = e.b(Character.getDirectionality(charSequence.charAt(i10)));
                i10++;
            }
            return iB;
        }
    }

    /* JADX INFO: compiled from: TextDirectionHeuristicsCompat.java */
    private interface c {
        int a(CharSequence charSequence, int i10, int i11);
    }

    /* JADX INFO: compiled from: TextDirectionHeuristicsCompat.java */
    private static abstract class d implements androidx.core.text.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c f2377a;

        d(c cVar) {
            this.f2377a = cVar;
        }

        private boolean c(CharSequence charSequence, int i10, int i11) {
            int iA = this.f2377a.a(charSequence, i10, i11);
            if (iA == 0) {
                return true;
            }
            if (iA != 1) {
                return b();
            }
            return false;
        }

        @Override // androidx.core.text.d
        public boolean a(CharSequence charSequence, int i10, int i11) {
            if (charSequence == null || i10 < 0 || i11 < 0 || charSequence.length() - i11 < i10) {
                throw new IllegalArgumentException();
            }
            return this.f2377a == null ? b() : c(charSequence, i10, i11);
        }

        protected abstract boolean b();
    }

    /* JADX INFO: renamed from: androidx.core.text.e$e, reason: collision with other inner class name */
    /* JADX INFO: compiled from: TextDirectionHeuristicsCompat.java */
    private static class C0037e extends d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f2378b;

        C0037e(c cVar, boolean z10) {
            super(cVar);
            this.f2378b = z10;
        }

        @Override // androidx.core.text.e.d
        protected boolean b() {
            return this.f2378b;
        }
    }

    /* JADX INFO: compiled from: TextDirectionHeuristicsCompat.java */
    private static class f extends d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final f f2379b = new f();

        f() {
            super(null);
        }

        @Override // androidx.core.text.e.d
        protected boolean b() {
            return androidx.core.text.f.b(Locale.getDefault()) == 1;
        }
    }

    static {
        b bVar = b.f2376a;
        f2370c = new C0037e(bVar, false);
        f2371d = new C0037e(bVar, true);
        f2372e = new C0037e(a.f2374b, false);
        f2373f = f.f2379b;
    }

    static int a(int i10) {
        if (i10 != 0) {
            return (i10 == 1 || i10 == 2) ? 0 : 2;
        }
        return 1;
    }

    static int b(int i10) {
        if (i10 != 0) {
            if (i10 == 1 || i10 == 2) {
                return 0;
            }
            switch (i10) {
                case 14:
                case 15:
                    break;
                case 16:
                case 17:
                    return 0;
                default:
                    return 2;
            }
        }
        return 1;
    }
}
