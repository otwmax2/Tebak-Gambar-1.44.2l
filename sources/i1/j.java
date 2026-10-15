package i1;

import android.util.Log;

/* JADX INFO: compiled from: Logger.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static j f30352a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f30353b = 20;

    /* JADX INFO: compiled from: Logger.java */
    public static class a extends j {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f30354c;

        public a(int i10) {
            super(i10);
            this.f30354c = i10;
        }

        @Override // i1.j
        public void a(String str, String str2, Throwable... thArr) {
            if (this.f30354c <= 3) {
                if (thArr == null || thArr.length < 1) {
                    Log.d(str, str2);
                } else {
                    Log.d(str, str2, thArr[0]);
                }
            }
        }

        @Override // i1.j
        public void b(String str, String str2, Throwable... thArr) {
            if (this.f30354c <= 6) {
                if (thArr == null || thArr.length < 1) {
                    Log.e(str, str2);
                } else {
                    Log.e(str, str2, thArr[0]);
                }
            }
        }

        @Override // i1.j
        public void d(String str, String str2, Throwable... thArr) {
            if (this.f30354c <= 4) {
                if (thArr == null || thArr.length < 1) {
                    Log.i(str, str2);
                } else {
                    Log.i(str, str2, thArr[0]);
                }
            }
        }

        @Override // i1.j
        public void g(String str, String str2, Throwable... thArr) {
            if (this.f30354c <= 2) {
                if (thArr == null || thArr.length < 1) {
                    Log.v(str, str2);
                } else {
                    Log.v(str, str2, thArr[0]);
                }
            }
        }

        @Override // i1.j
        public void h(String str, String str2, Throwable... thArr) {
            if (this.f30354c <= 5) {
                if (thArr == null || thArr.length < 1) {
                    Log.w(str, str2);
                } else {
                    Log.w(str, str2, thArr[0]);
                }
            }
        }
    }

    public j(int i10) {
    }

    public static synchronized j c() {
        if (f30352a == null) {
            f30352a = new a(3);
        }
        return f30352a;
    }

    public static synchronized void e(j jVar) {
        f30352a = jVar;
    }

    public static String f(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(23);
        sb.append("WM-");
        int i10 = f30353b;
        if (length >= i10) {
            sb.append(str.substring(0, i10));
        } else {
            sb.append(str);
        }
        return sb.toString();
    }

    public abstract void a(String str, String str2, Throwable... thArr);

    public abstract void b(String str, String str2, Throwable... thArr);

    public abstract void d(String str, String str2, Throwable... thArr);

    public abstract void g(String str, String str2, Throwable... thArr);

    public abstract void h(String str, String str2, Throwable... thArr);
}
