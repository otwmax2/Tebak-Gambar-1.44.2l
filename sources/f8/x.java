package f8;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import f8.t;
import f8.w;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: RequestCreator.java */
/* JADX INFO: loaded from: classes2.dex */
public class x {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final AtomicInteger f29499m = new AtomicInteger();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final t f29500a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final w.b f29501b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f29502c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f29503d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f29504e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f29505f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f29506g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f29507h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f29508i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Drawable f29509j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Drawable f29510k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Object f29511l;

    x(t tVar, Uri uri, int i10) {
        if (tVar.f29431o) {
            throw new IllegalStateException("Picasso instance already shut down. Cannot submit new requests.");
        }
        this.f29500a = tVar;
        this.f29501b = new w.b(uri, i10, tVar.f29428l);
    }

    private w a(long j10) {
        int andIncrement = f29499m.getAndIncrement();
        w wVarA = this.f29501b.a();
        wVarA.f29466a = andIncrement;
        wVarA.f29467b = j10;
        boolean z10 = this.f29500a.f29430n;
        if (z10) {
            e0.v("Main", "created", wVarA.g(), wVarA.toString());
        }
        w wVarN = this.f29500a.n(wVarA);
        if (wVarN != wVarA) {
            wVarN.f29466a = andIncrement;
            wVarN.f29467b = j10;
            if (z10) {
                e0.v("Main", "changed", wVarN.d(), "into " + wVarN);
            }
        }
        return wVarN;
    }

    private Drawable b() {
        return this.f29505f != 0 ? this.f29500a.f29421e.getResources().getDrawable(this.f29505f) : this.f29509j;
    }

    public void c(ImageView imageView) {
        d(imageView, null);
    }

    public void d(ImageView imageView, e eVar) {
        Bitmap bitmapK;
        long jNanoTime = System.nanoTime();
        e0.c();
        if (imageView == null) {
            throw new IllegalArgumentException("Target must not be null.");
        }
        if (!this.f29501b.b()) {
            this.f29500a.c(imageView);
            if (this.f29504e) {
                u.d(imageView, b());
                return;
            }
            return;
        }
        if (this.f29503d) {
            if (this.f29501b.c()) {
                throw new IllegalStateException("Fit cannot be used with resize.");
            }
            int width = imageView.getWidth();
            int height = imageView.getHeight();
            if (width == 0 || height == 0) {
                if (this.f29504e) {
                    u.d(imageView, b());
                }
                this.f29500a.e(imageView, new h(this, imageView, eVar));
                return;
            }
            this.f29501b.d(width, height);
        }
        w wVarA = a(jNanoTime);
        String strH = e0.h(wVarA);
        if (!p.c(this.f29507h) || (bitmapK = this.f29500a.k(strH)) == null) {
            if (this.f29504e) {
                u.d(imageView, b());
            }
            this.f29500a.g(new l(this.f29500a, imageView, wVarA, this.f29507h, this.f29508i, this.f29506g, this.f29510k, strH, this.f29511l, eVar, this.f29502c));
            return;
        }
        this.f29500a.c(imageView);
        t tVar = this.f29500a;
        Context context = tVar.f29421e;
        t.e eVar2 = t.e.MEMORY;
        u.c(imageView, context, bitmapK, eVar2, this.f29502c, tVar.f29429m);
        if (this.f29500a.f29430n) {
            e0.v("Main", "completed", wVarA.g(), "from " + eVar2);
        }
        if (eVar != null) {
            eVar.onSuccess();
        }
    }

    public x e(Drawable drawable) {
        if (!this.f29504e) {
            throw new IllegalStateException("Already explicitly declared as no placeholder.");
        }
        if (this.f29505f != 0) {
            throw new IllegalStateException("Placeholder image already set.");
        }
        this.f29509j = drawable;
        return this;
    }

    public x f(int i10, int i11) {
        this.f29501b.d(i10, i11);
        return this;
    }

    x g() {
        this.f29503d = false;
        return this;
    }
}
