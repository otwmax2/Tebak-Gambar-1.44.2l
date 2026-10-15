package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import androidx.core.content.res.e;
import androidx.core.content.res.h;
import androidx.core.provider.g;

/* JADX INFO: compiled from: TypefaceCompat.java */
/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final k f2245a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final o.e<String, Typeface> f2246b;

    /* JADX INFO: compiled from: TypefaceCompat.java */
    public static class a extends g.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private h.f f2247a;

        public a(h.f fVar) {
            this.f2247a = fVar;
        }

        @Override // androidx.core.provider.g.c
        public void a(int i10) {
            h.f fVar = this.f2247a;
            if (fVar != null) {
                fVar.f(i10);
            }
        }

        @Override // androidx.core.provider.g.c
        public void b(Typeface typeface) {
            h.f fVar = this.f2247a;
            if (fVar != null) {
                fVar.g(typeface);
            }
        }
    }

    static {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 29) {
            f2245a = new j();
        } else if (i10 >= 28) {
            f2245a = new i();
        } else if (i10 >= 26) {
            f2245a = new h();
        } else if (i10 >= 24 && g.m()) {
            f2245a = new g();
        } else if (i10 >= 21) {
            f2245a = new f();
        } else {
            f2245a = new k();
        }
        f2246b = new o.e<>(16);
    }

    public static Typeface a(Context context, Typeface typeface, int i10) {
        Typeface typefaceG;
        if (context != null) {
            return (Build.VERSION.SDK_INT >= 21 || (typefaceG = g(context, typeface, i10)) == null) ? Typeface.create(typeface, i10) : typefaceG;
        }
        throw new IllegalArgumentException("Context cannot be null");
    }

    public static Typeface b(Context context, CancellationSignal cancellationSignal, g.b[] bVarArr, int i10) {
        return f2245a.c(context, cancellationSignal, bVarArr, i10);
    }

    public static Typeface c(Context context, e.b bVar, Resources resources, int i10, String str, int i11, int i12, h.f fVar, Handler handler, boolean z10) {
        Typeface typefaceB;
        if (bVar instanceof e.C0029e) {
            e.C0029e c0029e = (e.C0029e) bVar;
            Typeface typefaceH = h(c0029e.c());
            if (typefaceH != null) {
                if (fVar != null) {
                    fVar.d(typefaceH, handler);
                }
                return typefaceH;
            }
            typefaceB = androidx.core.provider.g.c(context, c0029e.b(), i12, !z10 ? fVar != null : c0029e.a() != 0, z10 ? c0029e.d() : -1, h.f.e(handler), new a(fVar));
        } else {
            typefaceB = f2245a.b(context, (e.c) bVar, resources, i12);
            if (fVar != null) {
                if (typefaceB != null) {
                    fVar.d(typefaceB, handler);
                } else {
                    fVar.c(-3, handler);
                }
            }
        }
        if (typefaceB != null) {
            f2246b.d(e(resources, i10, str, i11, i12), typefaceB);
        }
        return typefaceB;
    }

    public static Typeface d(Context context, Resources resources, int i10, String str, int i11, int i12) {
        Typeface typefaceE = f2245a.e(context, resources, i10, str, i12);
        if (typefaceE != null) {
            f2246b.d(e(resources, i10, str, i11, i12), typefaceE);
        }
        return typefaceE;
    }

    private static String e(Resources resources, int i10, String str, int i11, int i12) {
        return resources.getResourcePackageName(i10) + '-' + str + '-' + i11 + '-' + i10 + '-' + i12;
    }

    public static Typeface f(Resources resources, int i10, String str, int i11, int i12) {
        return f2246b.c(e(resources, i10, str, i11, i12));
    }

    private static Typeface g(Context context, Typeface typeface, int i10) {
        k kVar = f2245a;
        e.c cVarI = kVar.i(typeface);
        if (cVarI == null) {
            return null;
        }
        return kVar.b(context, cVarI, context.getResources(), i10);
    }

    private static Typeface h(String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        Typeface typefaceCreate = Typeface.create(str, 0);
        Typeface typefaceCreate2 = Typeface.create(Typeface.DEFAULT, 0);
        if (typefaceCreate == null || typefaceCreate.equals(typefaceCreate2)) {
            return null;
        }
        return typefaceCreate;
    }
}
