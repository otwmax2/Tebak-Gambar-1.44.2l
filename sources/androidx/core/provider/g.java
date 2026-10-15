package androidx.core.provider;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.Handler;

/* JADX INFO: compiled from: FontsContractCompat.java */
/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: compiled from: FontsContractCompat.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f2320a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final b[] f2321b;

        @Deprecated
        public a(int i10, b[] bVarArr) {
            this.f2320a = i10;
            this.f2321b = bVarArr;
        }

        static a a(int i10, b[] bVarArr) {
            return new a(i10, bVarArr);
        }

        public b[] b() {
            return this.f2321b;
        }

        public int c() {
            return this.f2320a;
        }
    }

    /* JADX INFO: compiled from: FontsContractCompat.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Uri f2322a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f2323b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f2324c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f2325d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f2326e;

        @Deprecated
        public b(Uri uri, int i10, int i11, boolean z10, int i12) {
            this.f2322a = (Uri) androidx.core.util.h.f(uri);
            this.f2323b = i10;
            this.f2324c = i11;
            this.f2325d = z10;
            this.f2326e = i12;
        }

        static b a(Uri uri, int i10, int i11, boolean z10, int i12) {
            return new b(uri, i10, i11, z10, i12);
        }

        public int b() {
            return this.f2326e;
        }

        public int c() {
            return this.f2323b;
        }

        public Uri d() {
            return this.f2322a;
        }

        public int e() {
            return this.f2324c;
        }

        public boolean f() {
            return this.f2325d;
        }
    }

    /* JADX INFO: compiled from: FontsContractCompat.java */
    public static class c {
        public void a(int i10) {
            throw null;
        }

        public void b(Typeface typeface) {
            throw null;
        }
    }

    public static Typeface a(Context context, CancellationSignal cancellationSignal, b[] bVarArr) {
        return androidx.core.graphics.e.b(context, cancellationSignal, bVarArr, 0);
    }

    public static a b(Context context, CancellationSignal cancellationSignal, e eVar) throws PackageManager.NameNotFoundException {
        return d.e(context, eVar, cancellationSignal);
    }

    public static Typeface c(Context context, e eVar, int i10, boolean z10, int i11, Handler handler, c cVar) {
        androidx.core.provider.a aVar = new androidx.core.provider.a(cVar, handler);
        return z10 ? f.e(context, eVar, aVar, i10, i11) : f.d(context, eVar, i10, null, aVar);
    }
}
