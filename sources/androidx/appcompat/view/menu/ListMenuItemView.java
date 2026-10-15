package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.widget.w0;
import androidx.core.view.a0;

/* JADX INFO: loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements n.a, AbsListView.SelectionBoundsAdjuster {
    private boolean A;
    private Drawable B;
    private boolean C;
    private LayoutInflater D;
    private boolean E;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private i f587o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private ImageView f588p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private RadioButton f589q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private TextView f590r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private CheckBox f591s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private TextView f592t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ImageView f593u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private ImageView f594v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private LinearLayout f595w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Drawable f596x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f597y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private Context f598z;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, f.a.D);
    }

    private void a(View view) {
        b(view, -1);
    }

    private void b(View view, int i10) {
        LinearLayout linearLayout = this.f595w;
        if (linearLayout != null) {
            linearLayout.addView(view, i10);
        } else {
            addView(view, i10);
        }
    }

    private void c() {
        CheckBox checkBox = (CheckBox) getInflater().inflate(f.g.f29086h, (ViewGroup) this, false);
        this.f591s = checkBox;
        a(checkBox);
    }

    private void f() {
        ImageView imageView = (ImageView) getInflater().inflate(f.g.f29087i, (ViewGroup) this, false);
        this.f588p = imageView;
        b(imageView, 0);
    }

    private void g() {
        RadioButton radioButton = (RadioButton) getInflater().inflate(f.g.f29089k, (ViewGroup) this, false);
        this.f589q = radioButton;
        a(radioButton);
    }

    private LayoutInflater getInflater() {
        if (this.D == null) {
            this.D = LayoutInflater.from(getContext());
        }
        return this.D;
    }

    private void setSubMenuArrowVisible(boolean z10) {
        ImageView imageView = this.f593u;
        if (imageView != null) {
            imageView.setVisibility(z10 ? 0 : 8);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f594v;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f594v.getLayoutParams();
        rect.top += this.f594v.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    @Override // androidx.appcompat.view.menu.n.a
    public boolean d() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.n.a
    public void e(i iVar, int i10) {
        this.f587o = iVar;
        setVisibility(iVar.isVisible() ? 0 : 8);
        setTitle(iVar.i(this));
        setCheckable(iVar.isCheckable());
        h(iVar.A(), iVar.g());
        setIcon(iVar.getIcon());
        setEnabled(iVar.isEnabled());
        setSubMenuArrowVisible(iVar.hasSubMenu());
        setContentDescription(iVar.getContentDescription());
    }

    @Override // androidx.appcompat.view.menu.n.a
    public i getItemData() {
        return this.f587o;
    }

    public void h(boolean z10, char c10) {
        int i10 = (z10 && this.f587o.A()) ? 0 : 8;
        if (i10 == 0) {
            this.f592t.setText(this.f587o.h());
        }
        if (this.f592t.getVisibility() != i10) {
            this.f592t.setVisibility(i10);
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        a0.u0(this, this.f596x);
        TextView textView = (TextView) findViewById(f.f.M);
        this.f590r = textView;
        int i10 = this.f597y;
        if (i10 != -1) {
            textView.setTextAppearance(this.f598z, i10);
        }
        this.f592t = (TextView) findViewById(f.f.F);
        ImageView imageView = (ImageView) findViewById(f.f.I);
        this.f593u = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.B);
        }
        this.f594v = (ImageView) findViewById(f.f.f29070r);
        this.f595w = (LinearLayout) findViewById(f.f.f29064l);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        if (this.f588p != null && this.A) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f588p.getLayoutParams();
            int i12 = layoutParams.height;
            if (i12 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i12;
            }
        }
        super.onMeasure(i10, i11);
    }

    public void setCheckable(boolean z10) {
        CompoundButton compoundButton;
        CompoundButton compoundButton2;
        if (!z10 && this.f589q == null && this.f591s == null) {
            return;
        }
        if (this.f587o.m()) {
            if (this.f589q == null) {
                g();
            }
            compoundButton = this.f589q;
            compoundButton2 = this.f591s;
        } else {
            if (this.f591s == null) {
                c();
            }
            compoundButton = this.f591s;
            compoundButton2 = this.f589q;
        }
        if (z10) {
            compoundButton.setChecked(this.f587o.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (compoundButton2 == null || compoundButton2.getVisibility() == 8) {
                return;
            }
            compoundButton2.setVisibility(8);
            return;
        }
        CheckBox checkBox = this.f591s;
        if (checkBox != null) {
            checkBox.setVisibility(8);
        }
        RadioButton radioButton = this.f589q;
        if (radioButton != null) {
            radioButton.setVisibility(8);
        }
    }

    public void setChecked(boolean z10) {
        CompoundButton compoundButton;
        if (this.f587o.m()) {
            if (this.f589q == null) {
                g();
            }
            compoundButton = this.f589q;
        } else {
            if (this.f591s == null) {
                c();
            }
            compoundButton = this.f591s;
        }
        compoundButton.setChecked(z10);
    }

    public void setForceShowIcon(boolean z10) {
        this.E = z10;
        this.A = z10;
    }

    public void setGroupDividerEnabled(boolean z10) {
        ImageView imageView = this.f594v;
        if (imageView != null) {
            imageView.setVisibility((this.C || !z10) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        boolean z10 = this.f587o.z() || this.E;
        if (z10 || this.A) {
            ImageView imageView = this.f588p;
            if (imageView == null && drawable == null && !this.A) {
                return;
            }
            if (imageView == null) {
                f();
            }
            if (drawable == null && !this.A) {
                this.f588p.setVisibility(8);
                return;
            }
            ImageView imageView2 = this.f588p;
            if (!z10) {
                drawable = null;
            }
            imageView2.setImageDrawable(drawable);
            if (this.f588p.getVisibility() != 0) {
                this.f588p.setVisibility(0);
            }
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence == null) {
            if (this.f590r.getVisibility() != 8) {
                this.f590r.setVisibility(8);
            }
        } else {
            this.f590r.setText(charSequence);
            if (this.f590r.getVisibility() != 0) {
                this.f590r.setVisibility(0);
            }
        }
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet);
        w0 w0VarV = w0.v(getContext(), attributeSet, f.j.T1, i10, 0);
        this.f596x = w0VarV.g(f.j.V1);
        this.f597y = w0VarV.n(f.j.U1, -1);
        this.A = w0VarV.a(f.j.W1, false);
        this.f598z = context;
        this.B = w0VarV.g(f.j.X1);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{R.attr.divider}, f.a.A, 0);
        this.C = typedArrayObtainStyledAttributes.hasValue(0);
        w0VarV.w();
        typedArrayObtainStyledAttributes.recycle();
    }
}
