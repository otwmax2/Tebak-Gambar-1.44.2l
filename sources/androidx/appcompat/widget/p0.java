package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.appcompat.app.a;
import androidx.appcompat.widget.LinearLayoutCompat;

/* JADX INFO: compiled from: ScrollingTabContainerView.java */
/* JADX INFO: loaded from: classes.dex */
public class p0 extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final Interpolator f1140x = new DecelerateInterpolator();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    Runnable f1141o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private c f1142p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    LinearLayoutCompat f1143q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Spinner f1144r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f1145s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    int f1146t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    int f1147u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f1148v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f1149w;

    /* JADX INFO: compiled from: ScrollingTabContainerView.java */
    class a implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ View f1150o;

        a(View view) {
            this.f1150o = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            p0.this.smoothScrollTo(this.f1150o.getLeft() - ((p0.this.getWidth() - this.f1150o.getWidth()) / 2), 0);
            p0.this.f1141o = null;
        }
    }

    /* JADX INFO: compiled from: ScrollingTabContainerView.java */
    private class b extends BaseAdapter {
        b() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return p0.this.f1143q.getChildCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return ((d) p0.this.f1143q.getChildAt(i10)).b();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return i10;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            if (view == null) {
                return p0.this.c((a.c) getItem(i10), true);
            }
            ((d) view).a((a.c) getItem(i10));
            return view;
        }
    }

    /* JADX INFO: compiled from: ScrollingTabContainerView.java */
    private class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((d) view).b().e();
            int childCount = p0.this.f1143q.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = p0.this.f1143q.getChildAt(i10);
                childAt.setSelected(childAt == view);
            }
        }
    }

    /* JADX INFO: compiled from: ScrollingTabContainerView.java */
    private class d extends LinearLayout {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final int[] f1154o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private a.c f1155p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private TextView f1156q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private ImageView f1157r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private View f1158s;

        /* JADX WARN: Illegal instructions before constructor call */
        public d(Context context, a.c cVar, boolean z10) {
            int i10 = f.a.f28980d;
            super(context, null, i10);
            int[] iArr = {R.attr.background};
            this.f1154o = iArr;
            this.f1155p = cVar;
            w0 w0VarV = w0.v(context, null, iArr, i10, 0);
            if (w0VarV.s(0)) {
                setBackgroundDrawable(w0VarV.g(0));
            }
            w0VarV.w();
            if (z10) {
                setGravity(8388627);
            }
            c();
        }

        public void a(a.c cVar) {
            this.f1155p = cVar;
            c();
        }

        public a.c b() {
            return this.f1155p;
        }

        public void c() {
            a.c cVar = this.f1155p;
            View viewB = cVar.b();
            if (viewB != null) {
                ViewParent parent = viewB.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(viewB);
                    }
                    addView(viewB);
                }
                this.f1158s = viewB;
                TextView textView = this.f1156q;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f1157r;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f1157r.setImageDrawable(null);
                    return;
                }
                return;
            }
            View view = this.f1158s;
            if (view != null) {
                removeView(view);
                this.f1158s = null;
            }
            Drawable drawableC = cVar.c();
            CharSequence charSequenceD = cVar.d();
            if (drawableC != null) {
                if (this.f1157r == null) {
                    AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    appCompatImageView.setLayoutParams(layoutParams);
                    addView(appCompatImageView, 0);
                    this.f1157r = appCompatImageView;
                }
                this.f1157r.setImageDrawable(drawableC);
                this.f1157r.setVisibility(0);
            } else {
                ImageView imageView2 = this.f1157r;
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                    this.f1157r.setImageDrawable(null);
                }
            }
            boolean z10 = !TextUtils.isEmpty(charSequenceD);
            if (z10) {
                if (this.f1156q == null) {
                    AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null, f.a.f28981e);
                    appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    appCompatTextView.setLayoutParams(layoutParams2);
                    addView(appCompatTextView);
                    this.f1156q = appCompatTextView;
                }
                this.f1156q.setText(charSequenceD);
                this.f1156q.setVisibility(0);
            } else {
                TextView textView2 = this.f1156q;
                if (textView2 != null) {
                    textView2.setVisibility(8);
                    this.f1156q.setText((CharSequence) null);
                }
            }
            ImageView imageView3 = this.f1157r;
            if (imageView3 != null) {
                imageView3.setContentDescription(cVar.a());
            }
            z0.a(this, z10 ? null : cVar.a());
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i10, int i11) {
            super.onMeasure(i10, i11);
            if (p0.this.f1146t > 0) {
                int measuredWidth = getMeasuredWidth();
                int i12 = p0.this.f1146t;
                if (measuredWidth > i12) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(i12, 1073741824), i11);
                }
            }
        }

        @Override // android.view.View
        public void setSelected(boolean z10) {
            boolean z11 = isSelected() != z10;
            super.setSelected(z10);
            if (z11 && z10) {
                sendAccessibilityEvent(4);
            }
        }
    }

    private Spinner b() {
        y yVar = new y(getContext(), null, f.a.f28984h);
        yVar.setLayoutParams(new LinearLayoutCompat.a(-2, -1));
        yVar.setOnItemSelectedListener(this);
        return yVar;
    }

    private boolean d() {
        Spinner spinner = this.f1144r;
        return spinner != null && spinner.getParent() == this;
    }

    private void e() {
        if (d()) {
            return;
        }
        if (this.f1144r == null) {
            this.f1144r = b();
        }
        removeView(this.f1143q);
        addView(this.f1144r, new ViewGroup.LayoutParams(-2, -1));
        if (this.f1144r.getAdapter() == null) {
            this.f1144r.setAdapter((SpinnerAdapter) new b());
        }
        Runnable runnable = this.f1141o;
        if (runnable != null) {
            removeCallbacks(runnable);
            this.f1141o = null;
        }
        this.f1144r.setSelection(this.f1149w);
    }

    private boolean f() {
        if (!d()) {
            return false;
        }
        removeView(this.f1144r);
        addView(this.f1143q, new ViewGroup.LayoutParams(-2, -1));
        setTabSelected(this.f1144r.getSelectedItemPosition());
        return false;
    }

    public void a(int i10) {
        View childAt = this.f1143q.getChildAt(i10);
        Runnable runnable = this.f1141o;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        a aVar = new a(childAt);
        this.f1141o = aVar;
        post(aVar);
    }

    d c(a.c cVar, boolean z10) {
        d dVar = new d(getContext(), cVar, z10);
        if (z10) {
            dVar.setBackgroundDrawable(null);
            dVar.setLayoutParams(new AbsListView.LayoutParams(-1, this.f1148v));
        } else {
            dVar.setFocusable(true);
            if (this.f1142p == null) {
                this.f1142p = new c();
            }
            dVar.setOnClickListener(this.f1142p);
        }
        return dVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f1141o;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        androidx.appcompat.view.a aVarB = androidx.appcompat.view.a.b(getContext());
        setContentHeight(aVarB.f());
        this.f1147u = aVarB.e();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f1141o;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i10, long j10) {
        ((d) view).b().e();
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        boolean z10 = mode == 1073741824;
        setFillViewport(z10);
        int childCount = this.f1143q.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            this.f1146t = -1;
        } else {
            if (childCount > 2) {
                this.f1146t = (int) (View.MeasureSpec.getSize(i10) * 0.4f);
            } else {
                this.f1146t = View.MeasureSpec.getSize(i10) / 2;
            }
            this.f1146t = Math.min(this.f1146t, this.f1147u);
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f1148v, 1073741824);
        if (!z10 && this.f1145s) {
            this.f1143q.measure(0, iMakeMeasureSpec);
            if (this.f1143q.getMeasuredWidth() > View.MeasureSpec.getSize(i10)) {
                e();
            } else {
                f();
            }
        } else {
            f();
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i10, iMakeMeasureSpec);
        int measuredWidth2 = getMeasuredWidth();
        if (!z10 || measuredWidth == measuredWidth2) {
            return;
        }
        setTabSelected(this.f1149w);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public void setAllowCollapse(boolean z10) {
        this.f1145s = z10;
    }

    public void setContentHeight(int i10) {
        this.f1148v = i10;
        requestLayout();
    }

    public void setTabSelected(int i10) {
        this.f1149w = i10;
        int childCount = this.f1143q.getChildCount();
        int i11 = 0;
        while (i11 < childCount) {
            View childAt = this.f1143q.getChildAt(i11);
            boolean z10 = i11 == i10;
            childAt.setSelected(z10);
            if (z10) {
                a(i10);
            }
            i11++;
        }
        Spinner spinner = this.f1144r;
        if (spinner == null || i10 < 0) {
            return;
        }
        spinner.setSelection(i10);
    }
}
