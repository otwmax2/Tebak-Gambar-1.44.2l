package androidx.core.provider;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import androidx.core.provider.g;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: FontRequestWorker.java */
/* JADX INFO: loaded from: classes.dex */
class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final o.e<String, Typeface> f2304a = new o.e<>(16);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ExecutorService f2305b = h.a("fonts-androidx", 10, 10000);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final Object f2306c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final o.g<String, ArrayList<androidx.core.util.a<e>>> f2307d = new o.g<>();

    /* JADX INFO: compiled from: FontRequestWorker.java */
    class a implements Callable<e> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f2308a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f2309b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ androidx.core.provider.e f2310c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f2311d;

        a(String str, Context context, androidx.core.provider.e eVar, int i10) {
            this.f2308a = str;
            this.f2309b = context;
            this.f2310c = eVar;
            this.f2311d = i10;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public e call() {
            return f.c(this.f2308a, this.f2309b, this.f2310c, this.f2311d);
        }
    }

    /* JADX INFO: compiled from: FontRequestWorker.java */
    class b implements androidx.core.util.a<e> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ androidx.core.provider.a f2312a;

        b(androidx.core.provider.a aVar) {
            this.f2312a = aVar;
        }

        @Override // androidx.core.util.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(e eVar) {
            if (eVar == null) {
                eVar = new e(-3);
            }
            this.f2312a.b(eVar);
        }
    }

    /* JADX INFO: compiled from: FontRequestWorker.java */
    class c implements Callable<e> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f2313a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f2314b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ androidx.core.provider.e f2315c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f2316d;

        c(String str, Context context, androidx.core.provider.e eVar, int i10) {
            this.f2313a = str;
            this.f2314b = context;
            this.f2315c = eVar;
            this.f2316d = i10;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public e call() {
            try {
                return f.c(this.f2313a, this.f2314b, this.f2315c, this.f2316d);
            } catch (Throwable unused) {
                return new e(-3);
            }
        }
    }

    /* JADX INFO: compiled from: FontRequestWorker.java */
    class d implements androidx.core.util.a<e> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f2317a;

        d(String str) {
            this.f2317a = str;
        }

        @Override // androidx.core.util.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(e eVar) {
            synchronized (f.f2306c) {
                o.g<String, ArrayList<androidx.core.util.a<e>>> gVar = f.f2307d;
                ArrayList<androidx.core.util.a<e>> arrayList = gVar.get(this.f2317a);
                if (arrayList == null) {
                    return;
                }
                gVar.remove(this.f2317a);
                for (int i10 = 0; i10 < arrayList.size(); i10++) {
                    arrayList.get(i10).accept(eVar);
                }
            }
        }
    }

    private static String a(androidx.core.provider.e eVar, int i10) {
        return eVar.d() + "-" + i10;
    }

    @SuppressLint({"WrongConstant"})
    private static int b(g.a aVar) {
        int i10 = 1;
        if (aVar.c() != 0) {
            return aVar.c() != 1 ? -3 : -2;
        }
        g.b[] bVarArrB = aVar.b();
        if (bVarArrB != null && bVarArrB.length != 0) {
            i10 = 0;
            for (g.b bVar : bVarArrB) {
                int iB = bVar.b();
                if (iB != 0) {
                    if (iB < 0) {
                        return -3;
                    }
                    return iB;
                }
            }
        }
        return i10;
    }

    static e c(String str, Context context, androidx.core.provider.e eVar, int i10) {
        o.e<String, Typeface> eVar2 = f2304a;
        Typeface typefaceC = eVar2.c(str);
        if (typefaceC != null) {
            return new e(typefaceC);
        }
        try {
            g.a aVarE = androidx.core.provider.d.e(context, eVar, null);
            int iB = b(aVarE);
            if (iB != 0) {
                return new e(iB);
            }
            Typeface typefaceB = androidx.core.graphics.e.b(context, null, aVarE.b(), i10);
            if (typefaceB == null) {
                return new e(-3);
            }
            eVar2.d(str, typefaceB);
            return new e(typefaceB);
        } catch (PackageManager.NameNotFoundException unused) {
            return new e(-1);
        }
    }

    static Typeface d(Context context, androidx.core.provider.e eVar, int i10, Executor executor, androidx.core.provider.a aVar) {
        String strA = a(eVar, i10);
        Typeface typefaceC = f2304a.c(strA);
        if (typefaceC != null) {
            aVar.b(new e(typefaceC));
            return typefaceC;
        }
        b bVar = new b(aVar);
        synchronized (f2306c) {
            o.g<String, ArrayList<androidx.core.util.a<e>>> gVar = f2307d;
            ArrayList<androidx.core.util.a<e>> arrayList = gVar.get(strA);
            if (arrayList != null) {
                arrayList.add(bVar);
                return null;
            }
            ArrayList<androidx.core.util.a<e>> arrayList2 = new ArrayList<>();
            arrayList2.add(bVar);
            gVar.put(strA, arrayList2);
            c cVar = new c(strA, context, eVar, i10);
            if (executor == null) {
                executor = f2305b;
            }
            h.b(executor, cVar, new d(strA));
            return null;
        }
    }

    static Typeface e(Context context, androidx.core.provider.e eVar, androidx.core.provider.a aVar, int i10, int i11) {
        String strA = a(eVar, i10);
        Typeface typefaceC = f2304a.c(strA);
        if (typefaceC != null) {
            aVar.b(new e(typefaceC));
            return typefaceC;
        }
        if (i11 == -1) {
            e eVarC = c(strA, context, eVar, i10);
            aVar.b(eVarC);
            return eVarC.f2318a;
        }
        try {
            e eVar2 = (e) h.c(f2305b, new a(strA, context, eVar, i10), i11);
            aVar.b(eVar2);
            return eVar2.f2318a;
        } catch (InterruptedException unused) {
            aVar.b(new e(-3));
            return null;
        }
    }

    /* JADX INFO: compiled from: FontRequestWorker.java */
    static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Typeface f2318a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f2319b;

        e(int i10) {
            this.f2318a = null;
            this.f2319b = i10;
        }

        @SuppressLint({"WrongConstant"})
        boolean a() {
            return this.f2319b == 0;
        }

        @SuppressLint({"WrongConstant"})
        e(Typeface typeface) {
            this.f2318a = typeface;
            this.f2319b = 0;
        }
    }
}
