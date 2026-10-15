package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;

/* JADX INFO: loaded from: classes.dex */
public class Barrier extends b {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f1455x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f1456y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private s.a f1457z;

    public Barrier(Context context) {
        super(context);
        super.setVisibility(8);
    }

    private void t(s.e eVar, int i10, boolean z10) {
        this.f1456y = i10;
        if (Build.VERSION.SDK_INT < 17) {
            int i11 = this.f1455x;
            if (i11 == 5) {
                this.f1456y = 0;
            } else if (i11 == 6) {
                this.f1456y = 1;
            }
        } else if (z10) {
            int i12 = this.f1455x;
            if (i12 == 5) {
                this.f1456y = 1;
            } else if (i12 == 6) {
                this.f1456y = 0;
            }
        } else {
            int i13 = this.f1455x;
            if (i13 == 5) {
                this.f1456y = 0;
            } else if (i13 == 6) {
                this.f1456y = 1;
            }
        }
        if (eVar instanceof s.a) {
            ((s.a) eVar).x1(this.f1456y);
        }
    }

    public boolean getAllowsGoneWidget() {
        return this.f1457z.r1();
    }

    public int getMargin() {
        return this.f1457z.t1();
    }

    public int getType() {
        return this.f1455x;
    }

    @Override // androidx.constraintlayout.widget.b
    protected void m(AttributeSet attributeSet) {
        super.m(attributeSet);
        this.f1457z = new s.a();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, i.f1805n1);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == i.f1886w1) {
                    setType(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == i.f1877v1) {
                    this.f1457z.w1(typedArrayObtainStyledAttributes.getBoolean(index, true));
                } else if (index == i.f1895x1) {
                    this.f1457z.y1(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.f1550r = this.f1457z;
        s();
    }

    @Override // androidx.constraintlayout.widget.b
    public void n(s.e eVar, boolean z10) {
        t(eVar, this.f1455x, z10);
    }

    public void setAllowsGoneWidget(boolean z10) {
        this.f1457z.w1(z10);
    }

    public void setDpMargin(int i10) {
        this.f1457z.y1((int) ((i10 * getResources().getDisplayMetrics().density) + 0.5f));
    }

    public void setMargin(int i10) {
        this.f1457z.y1(i10);
    }

    public void setType(int i10) {
        this.f1455x = i10;
    }

    public Barrier(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }
}
