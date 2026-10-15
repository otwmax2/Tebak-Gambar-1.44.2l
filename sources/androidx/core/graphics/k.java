package androidx.core.graphics;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.util.Log;
import androidx.core.content.res.e;
import androidx.core.provider.g;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: TypefaceCompatBaseImpl.java */
/* JADX INFO: loaded from: classes.dex */
class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @SuppressLint({"BanConcurrentHashMap"})
    private ConcurrentHashMap<Long, e.c> f2264a = new ConcurrentHashMap<>();

    /* JADX INFO: compiled from: TypefaceCompatBaseImpl.java */
    class a implements c<g.b> {
        a() {
        }

        @Override // androidx.core.graphics.k.c
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public int a(g.b bVar) {
            return bVar.e();
        }

        @Override // androidx.core.graphics.k.c
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean b(g.b bVar) {
            return bVar.f();
        }
    }

    /* JADX INFO: compiled from: TypefaceCompatBaseImpl.java */
    class b implements c<e.d> {
        b() {
        }

        @Override // androidx.core.graphics.k.c
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public int a(e.d dVar) {
            return dVar.e();
        }

        @Override // androidx.core.graphics.k.c
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean b(e.d dVar) {
            return dVar.f();
        }
    }

    /* JADX INFO: compiled from: TypefaceCompatBaseImpl.java */
    private interface c<T> {
        int a(T t10);

        boolean b(T t10);
    }

    k() {
    }

    private void a(Typeface typeface, e.c cVar) {
        long j10 = j(typeface);
        if (j10 != 0) {
            this.f2264a.put(Long.valueOf(j10), cVar);
        }
    }

    private e.d f(e.c cVar, int i10) {
        return (e.d) g(cVar.a(), i10, new b());
    }

    private static <T> T g(T[] tArr, int i10, c<T> cVar) {
        int i11 = (i10 & 1) == 0 ? 400 : 700;
        boolean z10 = (i10 & 2) != 0;
        T t10 = null;
        int i12 = Integer.MAX_VALUE;
        for (T t11 : tArr) {
            int iAbs = (Math.abs(cVar.a(t11) - i11) * 2) + (cVar.b(t11) == z10 ? 0 : 1);
            if (t10 == null || i12 > iAbs) {
                t10 = t11;
                i12 = iAbs;
            }
        }
        return t10;
    }

    private static long j(Typeface typeface) {
        if (typeface == null) {
            return 0L;
        }
        try {
            Field declaredField = Typeface.class.getDeclaredField("native_instance");
            declaredField.setAccessible(true);
            return ((Number) declaredField.get(typeface)).longValue();
        } catch (IllegalAccessException e10) {
            Log.e("TypefaceCompatBaseImpl", "Could not retrieve font from family.", e10);
            return 0L;
        } catch (NoSuchFieldException e11) {
            Log.e("TypefaceCompatBaseImpl", "Could not retrieve font from family.", e11);
            return 0L;
        }
    }

    public Typeface b(Context context, e.c cVar, Resources resources, int i10) {
        e.d dVarF = f(cVar, i10);
        if (dVarF == null) {
            return null;
        }
        Typeface typefaceD = e.d(context, resources, dVarF.b(), dVarF.a(), 0, i10);
        a(typefaceD, cVar);
        return typefaceD;
    }

    public Typeface c(Context context, CancellationSignal cancellationSignal, g.b[] bVarArr, int i10) throws Throwable {
        InputStream inputStreamOpenInputStream;
        InputStream inputStream = null;
        if (bVarArr.length < 1) {
            return null;
        }
        try {
            inputStreamOpenInputStream = context.getContentResolver().openInputStream(h(bVarArr, i10).d());
        } catch (IOException unused) {
            inputStreamOpenInputStream = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            Typeface typefaceD = d(context, inputStreamOpenInputStream);
            l.a(inputStreamOpenInputStream);
            return typefaceD;
        } catch (IOException unused2) {
            l.a(inputStreamOpenInputStream);
            return null;
        } catch (Throwable th2) {
            th = th2;
            inputStream = inputStreamOpenInputStream;
            l.a(inputStream);
            throw th;
        }
    }

    protected Typeface d(Context context, InputStream inputStream) {
        File fileE = l.e(context);
        if (fileE == null) {
            return null;
        }
        try {
            if (l.d(fileE, inputStream)) {
                return Typeface.createFromFile(fileE.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            fileE.delete();
        }
    }

    public Typeface e(Context context, Resources resources, int i10, String str, int i11) {
        File fileE = l.e(context);
        if (fileE == null) {
            return null;
        }
        try {
            if (l.c(fileE, resources, i10)) {
                return Typeface.createFromFile(fileE.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            fileE.delete();
        }
    }

    protected g.b h(g.b[] bVarArr, int i10) {
        return (g.b) g(bVarArr, i10, new a());
    }

    e.c i(Typeface typeface) {
        long j10 = j(typeface);
        if (j10 == 0) {
            return null;
        }
        return this.f2264a.get(Long.valueOf(j10));
    }
}
