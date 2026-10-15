package ab;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import za.a;

/* JADX INFO: compiled from: MultiTouchView.java */
/* JADX INFO: loaded from: classes2.dex */
public class a extends View implements a.InterfaceC0311a<b> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f97o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private za.a<b> f98p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f99q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f100r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected b f101s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Context f102t;

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f97o = 1;
        this.f98p = new za.a<>(this);
        this.f102t = context;
    }

    @Override // za.a.InterfaceC0311a
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public b b(a.b bVar) {
        if (this.f101s.a(bVar.i(), bVar.j())) {
            return this.f101s;
        }
        return null;
    }

    @Override // za.a.InterfaceC0311a
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public void c(b bVar, a.c cVar) {
        cVar.q(bVar.d(), bVar.e(), (this.f97o & 2) == 0, (bVar.f() + bVar.f()) / 2.0f, (this.f97o & 2) != 0, bVar.f(), bVar.f(), (this.f97o & 1) != 0, bVar.c());
    }

    @Override // za.a.InterfaceC0311a
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public void a(b bVar, a.b bVar2) {
        if (bVar2.k()) {
            this.f101s = bVar;
        }
        invalidate();
    }

    @Override // za.a.InterfaceC0311a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public boolean d(b bVar, a.c cVar, a.b bVar2) {
        boolean zK = bVar.k(cVar, this.f97o, 2, bVar2.l());
        if (zK) {
            invalidate();
        }
        return zK;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f101s.b(canvas);
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        this.f99q = View.resolveSize(getSuggestedMinimumWidth(), i10);
        int iResolveSize = View.resolveSize(getSuggestedMinimumHeight(), i11);
        this.f100r = iResolveSize;
        setMeasuredDimension(this.f99q, iResolveSize);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.f98p.e(motionEvent);
    }

    public void setPinchWidget(Bitmap bitmap) {
        b bVar = new b(bitmap);
        this.f101s = bVar;
        bVar.g(this);
    }
}
