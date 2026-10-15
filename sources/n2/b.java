package n2;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.Gravity;
import java.util.Objects;
import n2.f;
import x1.a;

/* JADX INFO: compiled from: GifDrawable.java */
/* JADX INFO: loaded from: classes.dex */
public class b extends l2.b implements f.c {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Paint f32374o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Rect f32375p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final a f32376q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final x1.a f32377r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final f f32378s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f32379t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f32380u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f32381v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f32382w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f32383x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f32384y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f32385z;

    /* JADX INFO: compiled from: GifDrawable.java */
    static class a extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        x1.c f32386a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        byte[] f32387b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Context f32388c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        z1.g<Bitmap> f32389d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f32390e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f32391f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        a.InterfaceC0293a f32392g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        c2.c f32393h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        Bitmap f32394i;

        public a(x1.c cVar, byte[] bArr, Context context, z1.g<Bitmap> gVar, int i10, int i11, a.InterfaceC0293a interfaceC0293a, c2.c cVar2, Bitmap bitmap) {
            Objects.requireNonNull(bitmap, "The first frame of the GIF must not be null");
            this.f32386a = cVar;
            this.f32387b = bArr;
            this.f32393h = cVar2;
            this.f32394i = bitmap;
            this.f32388c = context.getApplicationContext();
            this.f32389d = gVar;
            this.f32390e = i10;
            this.f32391f = i11;
            this.f32392g = interfaceC0293a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return newDrawable();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new b(this);
        }
    }

    public b(Context context, a.InterfaceC0293a interfaceC0293a, c2.c cVar, z1.g<Bitmap> gVar, int i10, int i11, x1.c cVar2, byte[] bArr, Bitmap bitmap) {
        this(new a(cVar2, bArr, context, gVar, i10, i11, interfaceC0293a, cVar, bitmap));
    }

    private void i() {
        this.f32378s.a();
        invalidateSelf();
    }

    private void j() {
        this.f32383x = 0;
    }

    private void k() {
        if (this.f32377r.f() == 1) {
            invalidateSelf();
        } else {
            if (this.f32379t) {
                return;
            }
            this.f32379t = true;
            this.f32378s.g();
            invalidateSelf();
        }
    }

    private void l() {
        this.f32379t = false;
        this.f32378s.h();
    }

    @Override // n2.f.c
    @TargetApi(11)
    public void a(int i10) {
        if (Build.VERSION.SDK_INT >= 11 && getCallback() == null) {
            stop();
            i();
            return;
        }
        invalidateSelf();
        if (i10 == this.f32377r.f() - 1) {
            this.f32383x++;
        }
        int i11 = this.f32384y;
        if (i11 == -1 || this.f32383x < i11) {
            return;
        }
        stop();
    }

    @Override // l2.b
    public boolean b() {
        return true;
    }

    @Override // l2.b
    public void c(int i10) {
        if (i10 <= 0 && i10 != -1 && i10 != 0) {
            throw new IllegalArgumentException("Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC");
        }
        if (i10 != 0) {
            this.f32384y = i10;
        } else {
            int iJ = this.f32377r.j();
            this.f32384y = iJ != 0 ? iJ : -1;
        }
    }

    public byte[] d() {
        return this.f32376q.f32387b;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f32381v) {
            return;
        }
        if (this.f32385z) {
            Gravity.apply(119, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), this.f32375p);
            this.f32385z = false;
        }
        Bitmap bitmapB = this.f32378s.b();
        if (bitmapB == null) {
            bitmapB = this.f32376q.f32394i;
        }
        canvas.drawBitmap(bitmapB, (Rect) null, this.f32375p, this.f32374o);
    }

    public Bitmap e() {
        return this.f32376q.f32394i;
    }

    public int f() {
        return this.f32377r.f();
    }

    public z1.g<Bitmap> g() {
        return this.f32376q.f32389d;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f32376q;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f32376q.f32394i.getHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f32376q.f32394i.getWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    public void h() {
        this.f32381v = true;
        a aVar = this.f32376q;
        aVar.f32393h.a(aVar.f32394i);
        this.f32378s.a();
        this.f32378s.h();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f32379t;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f32385z = true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f32374o.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f32374o.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        this.f32382w = z10;
        if (!z10) {
            l();
        } else if (this.f32380u) {
            k();
        }
        return super.setVisible(z10, z11);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f32380u = true;
        j();
        if (this.f32382w) {
            k();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f32380u = false;
        l();
        if (Build.VERSION.SDK_INT < 11) {
            i();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public b(b bVar, Bitmap bitmap, z1.g<Bitmap> gVar) {
        a aVar = bVar.f32376q;
        this(new a(aVar.f32386a, aVar.f32387b, aVar.f32388c, gVar, aVar.f32390e, aVar.f32391f, aVar.f32392g, aVar.f32393h, bitmap));
    }

    b(a aVar) {
        this.f32375p = new Rect();
        this.f32382w = true;
        this.f32384y = -1;
        Objects.requireNonNull(aVar, "GifState must not be null");
        this.f32376q = aVar;
        x1.a aVar2 = new x1.a(aVar.f32392g);
        this.f32377r = aVar2;
        this.f32374o = new Paint();
        aVar2.n(aVar.f32386a, aVar.f32387b);
        f fVar = new f(aVar.f32388c, this, aVar2, aVar.f32390e, aVar.f32391f);
        this.f32378s = fVar;
        fVar.f(aVar.f32389d);
    }
}
