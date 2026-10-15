package v2;

import android.widget.ImageView;

/* JADX INFO: compiled from: GlideDrawableImageViewTarget.java */
/* JADX INFO: loaded from: classes.dex */
public class d extends e<l2.b> {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f35777t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private l2.b f35778u;

    public d(ImageView imageView) {
        this(imageView, -1);
    }

    @Override // v2.a, q2.h
    public void b() {
        l2.b bVar = this.f35778u;
        if (bVar != null) {
            bVar.start();
        }
    }

    @Override // v2.a, q2.h
    public void h() {
        l2.b bVar = this.f35778u;
        if (bVar != null) {
            bVar.stop();
        }
    }

    @Override // v2.e, v2.j
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public void c(l2.b bVar, u2.c<? super l2.b> cVar) {
        if (!bVar.b()) {
            float intrinsicWidth = bVar.getIntrinsicWidth() / bVar.getIntrinsicHeight();
            if (Math.abs((((ImageView) this.f35788p).getWidth() / ((ImageView) this.f35788p).getHeight()) - 1.0f) <= 0.05f && Math.abs(intrinsicWidth - 1.0f) <= 0.05f) {
                bVar = new i(bVar, ((ImageView) this.f35788p).getWidth());
            }
        }
        super.c(bVar, cVar);
        this.f35778u = bVar;
        bVar.c(this.f35777t);
        bVar.start();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // v2.e
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public void o(l2.b bVar) {
        ((ImageView) this.f35788p).setImageDrawable(bVar);
    }

    public d(ImageView imageView, int i10) {
        super(imageView);
        this.f35777t = i10;
    }
}
