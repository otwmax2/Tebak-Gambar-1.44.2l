package n2;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.util.Objects;
import java.util.UUID;

/* JADX INFO: compiled from: GifFrameLoader.java */
/* JADX INFO: loaded from: classes.dex */
class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f32401a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final x1.a f32402b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Handler f32403c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f32404d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f32405e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private v1.e<x1.a, x1.a, Bitmap, Bitmap> f32406f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private b f32407g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f32408h;

    /* JADX INFO: compiled from: GifFrameLoader.java */
    static class b extends v2.g<Bitmap> {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private final Handler f32409r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private final int f32410s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private final long f32411t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private Bitmap f32412u;

        public b(Handler handler, int i10, long j10) {
            this.f32409r = handler;
            this.f32410s = i10;
            this.f32411t = j10;
        }

        public Bitmap n() {
            return this.f32412u;
        }

        @Override // v2.j
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public void c(Bitmap bitmap, u2.c<? super Bitmap> cVar) {
            this.f32412u = bitmap;
            this.f32409r.sendMessageAtTime(this.f32409r.obtainMessage(1, this), this.f32411t);
        }
    }

    /* JADX INFO: compiled from: GifFrameLoader.java */
    public interface c {
        void a(int i10);
    }

    /* JADX INFO: compiled from: GifFrameLoader.java */
    private class d implements Handler.Callback {
        private d() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == 1) {
                f.this.e((b) message.obj);
                return true;
            }
            if (i10 != 2) {
                return false;
            }
            v1.g.g((b) message.obj);
            return false;
        }
    }

    /* JADX INFO: compiled from: GifFrameLoader.java */
    static class e implements z1.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final UUID f32414a;

        public e() {
            this(UUID.randomUUID());
        }

        @Override // z1.c
        public void a(MessageDigest messageDigest) throws UnsupportedEncodingException {
            throw new UnsupportedOperationException("Not implemented");
        }

        @Override // z1.c
        public boolean equals(Object obj) {
            if (obj instanceof e) {
                return ((e) obj).f32414a.equals(this.f32414a);
            }
            return false;
        }

        @Override // z1.c
        public int hashCode() {
            return this.f32414a.hashCode();
        }

        e(UUID uuid) {
            this.f32414a = uuid;
        }
    }

    public f(Context context, c cVar, x1.a aVar, int i10, int i11) {
        this(cVar, aVar, null, c(context, aVar, i10, i11, v1.g.i(context).l()));
    }

    private static v1.e<x1.a, x1.a, Bitmap, Bitmap> c(Context context, x1.a aVar, int i10, int i11, c2.c cVar) {
        h hVar = new h(cVar);
        g gVar = new g();
        return v1.g.v(context).E(gVar, x1.a.class).c(aVar).a(Bitmap.class).A(j2.a.c()).i(hVar).z(true).j(b2.b.NONE).u(i10, i11);
    }

    private void d() {
        if (!this.f32404d || this.f32405e) {
            return;
        }
        this.f32405e = true;
        long jUptimeMillis = SystemClock.uptimeMillis() + ((long) this.f32402b.h());
        this.f32402b.a();
        this.f32406f.y(new e()).q(new b(this.f32403c, this.f32402b.d(), jUptimeMillis));
    }

    public void a() {
        h();
        b bVar = this.f32407g;
        if (bVar != null) {
            v1.g.g(bVar);
            this.f32407g = null;
        }
        this.f32408h = true;
    }

    public Bitmap b() {
        b bVar = this.f32407g;
        if (bVar != null) {
            return bVar.n();
        }
        return null;
    }

    void e(b bVar) {
        if (this.f32408h) {
            this.f32403c.obtainMessage(2, bVar).sendToTarget();
            return;
        }
        b bVar2 = this.f32407g;
        this.f32407g = bVar;
        this.f32401a.a(bVar.f32410s);
        if (bVar2 != null) {
            this.f32403c.obtainMessage(2, bVar2).sendToTarget();
        }
        this.f32405e = false;
        d();
    }

    public void f(z1.g<Bitmap> gVar) {
        Objects.requireNonNull(gVar, "Transformation must not be null");
        this.f32406f = this.f32406f.B(gVar);
    }

    public void g() {
        if (this.f32404d) {
            return;
        }
        this.f32404d = true;
        this.f32408h = false;
        d();
    }

    public void h() {
        this.f32404d = false;
    }

    f(c cVar, x1.a aVar, Handler handler, v1.e<x1.a, x1.a, Bitmap, Bitmap> eVar) {
        this.f32404d = false;
        this.f32405e = false;
        handler = handler == null ? new Handler(Looper.getMainLooper(), new d()) : handler;
        this.f32401a = cVar;
        this.f32402b = aVar;
        this.f32403c = handler;
        this.f32406f = eVar;
    }
}
