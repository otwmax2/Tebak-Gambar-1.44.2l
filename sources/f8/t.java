package f8;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.widget.ImageView;
import f8.a;
import java.lang.ref.ReferenceQueue;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: Picasso.java */
/* JADX INFO: loaded from: classes2.dex */
public class t {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    static final Handler f29415p = new a(Looper.getMainLooper());

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    static volatile t f29416q = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f29417a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f29418b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f29419c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<y> f29420d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final Context f29421e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final i f29422f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final f8.d f29423g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final a0 f29424h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final Map<Object, f8.a> f29425i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final Map<ImageView, h> f29426j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final ReferenceQueue<Object> f29427k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    final Bitmap.Config f29428l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    boolean f29429m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    volatile boolean f29430n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    boolean f29431o;

    /* JADX INFO: compiled from: Picasso.java */
    static class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == 3) {
                f8.a aVar = (f8.a) message.obj;
                if (aVar.g().f29430n) {
                    e0.v("Main", "canceled", aVar.f29283b.d(), "target got garbage collected");
                }
                aVar.f29282a.b(aVar.k());
                return;
            }
            int i11 = 0;
            if (i10 == 8) {
                List list = (List) message.obj;
                int size = list.size();
                while (i11 < size) {
                    f8.c cVar = (f8.c) list.get(i11);
                    cVar.f29329p.d(cVar);
                    i11++;
                }
                return;
            }
            if (i10 != 13) {
                throw new AssertionError("Unknown handler message received: " + message.what);
            }
            List list2 = (List) message.obj;
            int size2 = list2.size();
            while (i11 < size2) {
                f8.a aVar2 = (f8.a) list2.get(i11);
                aVar2.f29282a.l(aVar2);
                i11++;
            }
        }
    }

    /* JADX INFO: compiled from: Picasso.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f29432a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private j f29433b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private ExecutorService f29434c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private f8.d f29435d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private d f29436e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private g f29437f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private List<y> f29438g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private Bitmap.Config f29439h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private boolean f29440i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private boolean f29441j;

        public b(Context context) {
            if (context == null) {
                throw new IllegalArgumentException("Context must not be null.");
            }
            this.f29432a = context.getApplicationContext();
        }

        public t a() {
            Context context = this.f29432a;
            if (this.f29433b == null) {
                this.f29433b = e0.g(context);
            }
            if (this.f29435d == null) {
                this.f29435d = new m(context);
            }
            if (this.f29434c == null) {
                this.f29434c = new v();
            }
            if (this.f29437f == null) {
                this.f29437f = g.f29455a;
            }
            a0 a0Var = new a0(this.f29435d);
            return new t(context, new i(context, this.f29434c, t.f29415p, this.f29433b, this.f29435d, a0Var), this.f29435d, this.f29436e, this.f29437f, this.f29438g, a0Var, this.f29439h, this.f29440i, this.f29441j);
        }
    }

    /* JADX INFO: compiled from: Picasso.java */
    private static class c extends Thread {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final ReferenceQueue<Object> f29442o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final Handler f29443p;

        /* JADX INFO: compiled from: Picasso.java */
        class a implements Runnable {

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            final /* synthetic */ Exception f29444o;

            a(Exception exc) {
                this.f29444o = exc;
            }

            @Override // java.lang.Runnable
            public void run() {
                throw new RuntimeException(this.f29444o);
            }
        }

        c(ReferenceQueue<Object> referenceQueue, Handler handler) {
            this.f29442o = referenceQueue;
            this.f29443p = handler;
            setDaemon(true);
            setName("Picasso-refQueue");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            while (true) {
                try {
                    a.C0156a c0156a = (a.C0156a) this.f29442o.remove(1000L);
                    Message messageObtainMessage = this.f29443p.obtainMessage();
                    if (c0156a != null) {
                        messageObtainMessage.what = 3;
                        messageObtainMessage.obj = c0156a.f29294a;
                        this.f29443p.sendMessage(messageObtainMessage);
                    } else {
                        messageObtainMessage.recycle();
                    }
                } catch (InterruptedException unused) {
                    return;
                } catch (Exception e10) {
                    this.f29443p.post(new a(e10));
                    return;
                }
            }
        }
    }

    /* JADX INFO: compiled from: Picasso.java */
    public interface d {
        void a(t tVar, Uri uri, Exception exc);
    }

    /* JADX INFO: compiled from: Picasso.java */
    public enum e {
        MEMORY(-16711936),
        DISK(-16776961),
        NETWORK(-65536);


        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final int f29450o;

        e(int i10) {
            this.f29450o = i10;
        }
    }

    /* JADX INFO: compiled from: Picasso.java */
    public enum f {
        LOW,
        NORMAL,
        HIGH
    }

    /* JADX INFO: compiled from: Picasso.java */
    public interface g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final g f29455a = new a();

        /* JADX INFO: compiled from: Picasso.java */
        static class a implements g {
            a() {
            }

            @Override // f8.t.g
            public w a(w wVar) {
                return wVar;
            }
        }

        w a(w wVar);
    }

    t(Context context, i iVar, f8.d dVar, d dVar2, g gVar, List<y> list, a0 a0Var, Bitmap.Config config, boolean z10, boolean z11) {
        this.f29421e = context;
        this.f29422f = iVar;
        this.f29423g = dVar;
        this.f29417a = dVar2;
        this.f29418b = gVar;
        this.f29428l = config;
        ArrayList arrayList = new ArrayList((list != null ? list.size() : 0) + 7);
        arrayList.add(new z(context));
        if (list != null) {
            arrayList.addAll(list);
        }
        arrayList.add(new f8.f(context));
        arrayList.add(new o(context));
        arrayList.add(new f8.g(context));
        arrayList.add(new f8.b(context));
        arrayList.add(new k(context));
        arrayList.add(new r(iVar.f29359d, a0Var));
        this.f29420d = Collections.unmodifiableList(arrayList);
        this.f29424h = a0Var;
        this.f29425i = new WeakHashMap();
        this.f29426j = new WeakHashMap();
        this.f29429m = z10;
        this.f29430n = z11;
        ReferenceQueue<Object> referenceQueue = new ReferenceQueue<>();
        this.f29427k = referenceQueue;
        c cVar = new c(referenceQueue, f29415p);
        this.f29419c = cVar;
        cVar.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Object obj) {
        e0.c();
        f8.a aVarRemove = this.f29425i.remove(obj);
        if (aVarRemove != null) {
            aVarRemove.a();
            this.f29422f.c(aVarRemove);
        }
        if (obj instanceof ImageView) {
            h hVarRemove = this.f29426j.remove((ImageView) obj);
            if (hVarRemove != null) {
                hVarRemove.a();
            }
        }
    }

    private void f(Bitmap bitmap, e eVar, f8.a aVar) {
        if (aVar.l()) {
            return;
        }
        if (!aVar.m()) {
            this.f29425i.remove(aVar.k());
        }
        if (bitmap == null) {
            aVar.c();
            if (this.f29430n) {
                e0.u("Main", "errored", aVar.f29283b.d());
                return;
            }
            return;
        }
        if (eVar == null) {
            throw new AssertionError("LoadedFrom cannot be null.");
        }
        aVar.b(bitmap, eVar);
        if (this.f29430n) {
            e0.v("Main", "completed", aVar.f29283b.d(), "from " + eVar);
        }
    }

    public static t o(Context context) {
        if (f29416q == null) {
            synchronized (t.class) {
                if (f29416q == null) {
                    f29416q = new b(context).a();
                }
            }
        }
        return f29416q;
    }

    public void c(ImageView imageView) {
        b(imageView);
    }

    void d(f8.c cVar) {
        f8.a aVarH = cVar.h();
        List<f8.a> listI = cVar.i();
        boolean z10 = true;
        boolean z11 = (listI == null || listI.isEmpty()) ? false : true;
        if (aVarH == null && !z11) {
            z10 = false;
        }
        if (z10) {
            Uri uri = cVar.j().f29469d;
            Exception excK = cVar.k();
            Bitmap bitmapQ = cVar.q();
            e eVarM = cVar.m();
            if (aVarH != null) {
                f(bitmapQ, eVarM, aVarH);
            }
            if (z11) {
                int size = listI.size();
                for (int i10 = 0; i10 < size; i10++) {
                    f(bitmapQ, eVarM, listI.get(i10));
                }
            }
            d dVar = this.f29417a;
            if (dVar == null || excK == null) {
                return;
            }
            dVar.a(this, uri, excK);
        }
    }

    void e(ImageView imageView, h hVar) {
        this.f29426j.put(imageView, hVar);
    }

    void g(f8.a aVar) {
        Object objK = aVar.k();
        if (objK != null && this.f29425i.get(objK) != aVar) {
            b(objK);
            this.f29425i.put(objK, aVar);
        }
        m(aVar);
    }

    List<y> h() {
        return this.f29420d;
    }

    public x i(Uri uri) {
        return new x(this, uri, 0);
    }

    public x j(String str) {
        if (str == null) {
            return new x(this, null, 0);
        }
        if (str.trim().length() != 0) {
            return i(Uri.parse(str));
        }
        throw new IllegalArgumentException("Path must not be empty.");
    }

    Bitmap k(String str) {
        Bitmap bitmapA = this.f29423g.a(str);
        if (bitmapA != null) {
            this.f29424h.d();
        } else {
            this.f29424h.e();
        }
        return bitmapA;
    }

    void l(f8.a aVar) {
        Bitmap bitmapK = p.c(aVar.f29286e) ? k(aVar.d()) : null;
        if (bitmapK == null) {
            g(aVar);
            if (this.f29430n) {
                e0.u("Main", "resumed", aVar.f29283b.d());
                return;
            }
            return;
        }
        e eVar = e.MEMORY;
        f(bitmapK, eVar, aVar);
        if (this.f29430n) {
            e0.v("Main", "completed", aVar.f29283b.d(), "from " + eVar);
        }
    }

    void m(f8.a aVar) {
        this.f29422f.h(aVar);
    }

    w n(w wVar) {
        w wVarA = this.f29418b.a(wVar);
        if (wVarA != null) {
            return wVarA;
        }
        throw new IllegalStateException("Request transformer " + this.f29418b.getClass().getCanonicalName() + " returned null for " + wVar);
    }
}
