package androidx.constraintlayout.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import s.e;

/* JADX INFO: compiled from: Placeholder.java */
/* JADX INFO: loaded from: classes.dex */
public class g extends View {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f1683o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private View f1684p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f1685q;

    public void a(ConstraintLayout constraintLayout) {
        if (this.f1684p == null) {
            return;
        }
        ConstraintLayout.b bVar = (ConstraintLayout.b) getLayoutParams();
        ConstraintLayout.b bVar2 = (ConstraintLayout.b) this.f1684p.getLayoutParams();
        bVar2.f1514v0.g1(0);
        e.b bVarY = bVar.f1514v0.y();
        e.b bVar3 = e.b.FIXED;
        if (bVarY != bVar3) {
            bVar.f1514v0.h1(bVar2.f1514v0.U());
        }
        if (bVar.f1514v0.R() != bVar3) {
            bVar.f1514v0.I0(bVar2.f1514v0.v());
        }
        bVar2.f1514v0.g1(8);
    }

    public void b(ConstraintLayout constraintLayout) {
        if (this.f1683o == -1 && !isInEditMode()) {
            setVisibility(this.f1685q);
        }
        View viewFindViewById = constraintLayout.findViewById(this.f1683o);
        this.f1684p = viewFindViewById;
        if (viewFindViewById != null) {
            ((ConstraintLayout.b) viewFindViewById.getLayoutParams()).f1490j0 = true;
            this.f1684p.setVisibility(0);
            setVisibility(0);
        }
    }

    public View getContent() {
        return this.f1684p;
    }

    public int getEmptyVisibility() {
        return this.f1685q;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (isInEditMode()) {
            canvas.drawRGB(223, 223, 223);
            Paint paint = new Paint();
            paint.setARGB(255, 210, 210, 210);
            paint.setTextAlign(Paint.Align.CENTER);
            paint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
            Rect rect = new Rect();
            canvas.getClipBounds(rect);
            paint.setTextSize(rect.height());
            int iHeight = rect.height();
            int iWidth = rect.width();
            paint.setTextAlign(Paint.Align.LEFT);
            paint.getTextBounds("?", 0, 1, rect);
            canvas.drawText("?", ((iWidth / 2.0f) - (rect.width() / 2.0f)) - rect.left, ((iHeight / 2.0f) + (rect.height() / 2.0f)) - rect.bottom, paint);
        }
    }

    public void setContentId(int i10) {
        View viewFindViewById;
        if (this.f1683o == i10) {
            return;
        }
        View view = this.f1684p;
        if (view != null) {
            view.setVisibility(0);
            ((ConstraintLayout.b) this.f1684p.getLayoutParams()).f1490j0 = false;
            this.f1684p = null;
        }
        this.f1683o = i10;
        if (i10 == -1 || (viewFindViewById = ((View) getParent()).findViewById(i10)) == null) {
            return;
        }
        viewFindViewById.setVisibility(8);
    }

    public void setEmptyVisibility(int i10) {
        this.f1685q = i10;
    }
}
