package i1;

import android.annotation.SuppressLint;

/* JADX INFO: compiled from: Operation.java */
/* JADX INFO: loaded from: classes.dex */
public interface m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @SuppressLint({"SyntheticAccessor"})
    public static final b.c f30362a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @SuppressLint({"SyntheticAccessor"})
    public static final b.C0175b f30363b;

    /* JADX INFO: compiled from: Operation.java */
    public static abstract class b {

        /* JADX INFO: compiled from: Operation.java */
        public static final class a extends b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final Throwable f30364a;

            public a(Throwable th) {
                this.f30364a = th;
            }

            public Throwable a() {
                return this.f30364a;
            }

            public String toString() {
                return String.format("FAILURE (%s)", this.f30364a.getMessage());
            }
        }

        /* JADX INFO: renamed from: i1.m$b$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: Operation.java */
        public static final class C0175b extends b {
            public String toString() {
                return "IN_PROGRESS";
            }

            private C0175b() {
            }
        }

        /* JADX INFO: compiled from: Operation.java */
        public static final class c extends b {
            public String toString() {
                return "SUCCESS";
            }

            private c() {
            }
        }

        b() {
        }
    }

    static {
        f30362a = new b.c();
        f30363b = new b.C0175b();
    }
}
