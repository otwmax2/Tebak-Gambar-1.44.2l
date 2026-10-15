package v1;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.widget.ImageView;
import g2.l;
import g2.m;
import h2.a;
import h2.b;
import h2.c;
import h2.d;
import i2.a;
import i2.b;
import i2.c;
import i2.d;
import i2.e;
import i2.f;
import i2.g;
import java.io.File;
import java.io.InputStream;
import java.net.URL;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import k2.n;
import k2.p;
import q2.k;

/* JADX INFO: compiled from: Glide.java */
/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static volatile g f35728o = null;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static boolean f35729p = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g2.c f35730a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b2.c f35731b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c2.c f35732c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d2.h f35733d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final z1.a f35734e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final v2.f f35735f = new v2.f();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final p2.d f35736g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final s2.c f35737h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final k2.e f35738i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final o2.f f35739j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final k2.i f35740k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final o2.f f35741l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Handler f35742m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final f2.a f35743n;

    g(b2.c cVar, d2.h hVar, c2.c cVar2, Context context, z1.a aVar) {
        p2.d dVar = new p2.d();
        this.f35736g = dVar;
        this.f35731b = cVar;
        this.f35732c = cVar2;
        this.f35733d = hVar;
        this.f35734e = aVar;
        this.f35730a = new g2.c(context);
        this.f35742m = new Handler(Looper.getMainLooper());
        this.f35743n = new f2.a(hVar, cVar2, aVar);
        s2.c cVar3 = new s2.c();
        this.f35737h = cVar3;
        p pVar = new p(cVar2, aVar);
        cVar3.b(InputStream.class, Bitmap.class, pVar);
        k2.g gVar = new k2.g(cVar2, aVar);
        cVar3.b(ParcelFileDescriptor.class, Bitmap.class, gVar);
        n nVar = new n(pVar, gVar);
        cVar3.b(g2.g.class, Bitmap.class, nVar);
        n2.c cVar4 = new n2.c(context, cVar2);
        cVar3.b(InputStream.class, n2.b.class, cVar4);
        cVar3.b(g2.g.class, o2.a.class, new o2.g(nVar, cVar4, cVar2));
        cVar3.b(InputStream.class, File.class, new m2.d());
        t(File.class, ParcelFileDescriptor.class, new a.C0172a());
        t(File.class, InputStream.class, new c.a());
        Class cls = Integer.TYPE;
        t(cls, ParcelFileDescriptor.class, new b.a());
        t(cls, InputStream.class, new d.a());
        t(Integer.class, ParcelFileDescriptor.class, new b.a());
        t(Integer.class, InputStream.class, new d.a());
        t(String.class, ParcelFileDescriptor.class, new c.a());
        t(String.class, InputStream.class, new e.a());
        t(Uri.class, ParcelFileDescriptor.class, new d.a());
        t(Uri.class, InputStream.class, new f.a());
        t(URL.class, InputStream.class, new g.a());
        t(g2.d.class, InputStream.class, new a.C0176a());
        t(byte[].class, InputStream.class, new b.a());
        dVar.b(Bitmap.class, k2.j.class, new p2.b(context.getResources(), cVar2));
        dVar.b(o2.a.class, l2.b.class, new p2.a(new p2.b(context.getResources(), cVar2)));
        k2.e eVar = new k2.e(cVar2);
        this.f35738i = eVar;
        this.f35739j = new o2.f(cVar2, eVar);
        k2.i iVar = new k2.i(cVar2);
        this.f35740k = iVar;
        this.f35741l = new o2.f(cVar2, iVar);
    }

    public static <T> l<T, ParcelFileDescriptor> b(Class<T> cls, Context context) {
        return d(cls, ParcelFileDescriptor.class, context);
    }

    public static <T, Y> l<T, Y> d(Class<T> cls, Class<Y> cls2, Context context) {
        if (cls != null) {
            return i(context).q().a(cls, cls2);
        }
        if (!Log.isLoggable("Glide", 3)) {
            return null;
        }
        Log.d("Glide", "Unable to load null model, setting placeholder only");
        return null;
    }

    public static <T> l<T, InputStream> e(Class<T> cls, Context context) {
        return d(cls, InputStream.class, context);
    }

    public static void g(v2.j<?> jVar) {
        x2.h.b();
        t2.c cVarK = jVar.k();
        if (cVarK != null) {
            cVarK.clear();
            jVar.m(null);
        }
    }

    public static g i(Context context) {
        if (f35728o == null) {
            synchronized (g.class) {
                if (f35728o == null) {
                    Context applicationContext = context.getApplicationContext();
                    h hVar = new h(applicationContext);
                    List<r2.a> listS = s(applicationContext);
                    Iterator<r2.a> it = listS.iterator();
                    while (it.hasNext()) {
                        it.next().b(applicationContext, hVar);
                    }
                    f35728o = hVar.a();
                    Iterator<r2.a> it2 = listS.iterator();
                    while (it2.hasNext()) {
                        it2.next().a(applicationContext, f35728o);
                    }
                }
            }
        }
        return f35728o;
    }

    private g2.c q() {
        return this.f35730a;
    }

    private static List<r2.a> s(Context context) {
        return f35729p ? new r2.b(context).a() : Collections.emptyList();
    }

    public static j v(Context context) {
        return k.c().e(context);
    }

    public static j w(androidx.fragment.app.e eVar) {
        return k.c().f(eVar);
    }

    <T, Z> s2.b<T, Z> a(Class<T> cls, Class<Z> cls2) {
        return this.f35737h.a(cls, cls2);
    }

    <R> v2.j<R> c(ImageView imageView, Class<R> cls) {
        return this.f35735f.a(imageView, cls);
    }

    <Z, R> p2.c<Z, R> f(Class<Z> cls, Class<R> cls2) {
        return this.f35736g.a(cls, cls2);
    }

    public void h() {
        x2.h.b();
        this.f35733d.d();
        this.f35732c.d();
    }

    k2.e j() {
        return this.f35738i;
    }

    k2.i k() {
        return this.f35740k;
    }

    public c2.c l() {
        return this.f35732c;
    }

    z1.a m() {
        return this.f35734e;
    }

    o2.f n() {
        return this.f35739j;
    }

    o2.f o() {
        return this.f35741l;
    }

    b2.c p() {
        return this.f35731b;
    }

    Handler r() {
        return this.f35742m;
    }

    public <T, Y> void t(Class<T> cls, Class<Y> cls2, m<T, Y> mVar) {
        m<T, Y> mVarF = this.f35730a.f(cls, cls2, mVar);
        if (mVarF != null) {
            mVarF.b();
        }
    }

    public void u(int i10) {
        x2.h.b();
        this.f35733d.c(i10);
        this.f35732c.c(i10);
    }
}
