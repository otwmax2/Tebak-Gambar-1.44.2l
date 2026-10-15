package androidx.appcompat.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;
import androidx.appcompat.app.b;

/* JADX INFO: compiled from: AppCompatSpinner.java */
/* JADX INFO: loaded from: classes.dex */
public class y extends Spinner implements androidx.core.view.y {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SuppressLint({"ResourceType"})
    private static final int[] f1210w = {R.attr.spinnerMode};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final androidx.appcompat.widget.e f1211o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Context f1212p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private i0 f1213q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private SpinnerAdapter f1214r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final boolean f1215s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private j f1216t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    int f1217u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    final Rect f1218v;

    /* JADX INFO: compiled from: AppCompatSpinner.java */
    class a extends i0 {

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        final /* synthetic */ h f1219x;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(View view, h hVar) {
            super(view);
            this.f1219x = hVar;
        }

        @Override // androidx.appcompat.widget.i0
        public androidx.appcompat.view.menu.p b() {
            return this.f1219x;
        }

        @Override // androidx.appcompat.widget.i0
        @SuppressLint({"SyntheticAccessor"})
        public boolean d() {
            if (y.this.getInternalPopup().a()) {
                return true;
            }
            y.this.b();
            return true;
        }
    }

    /* JADX INFO: compiled from: AppCompatSpinner.java */
    class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!y.this.getInternalPopup().a()) {
                y.this.b();
            }
            ViewTreeObserver viewTreeObserver = y.this.getViewTreeObserver();
            if (viewTreeObserver != null) {
                if (Build.VERSION.SDK_INT >= 16) {
                    c.a(viewTreeObserver, this);
                } else {
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
            }
        }
    }

    /* JADX INFO: compiled from: AppCompatSpinner.java */
    private static final class c {
        static void a(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
            viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
        }
    }

    /* JADX INFO: compiled from: AppCompatSpinner.java */
    private static final class d {
        static int a(View view) {
            return view.getTextAlignment();
        }

        static int b(View view) {
            return view.getTextDirection();
        }

        static void c(View view, int i10) {
            view.setTextAlignment(i10);
        }

        static void d(View view, int i10) {
            view.setTextDirection(i10);
        }
    }

    /* JADX INFO: compiled from: AppCompatSpinner.java */
    private static final class e {
        static void a(ThemedSpinnerAdapter themedSpinnerAdapter, Resources.Theme theme) {
            if (androidx.core.util.c.a(themedSpinnerAdapter.getDropDownViewTheme(), theme)) {
                return;
            }
            themedSpinnerAdapter.setDropDownViewTheme(theme);
        }
    }

    /* JADX INFO: compiled from: AppCompatSpinner.java */
    class f implements j, DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        androidx.appcompat.app.b f1222o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private ListAdapter f1223p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private CharSequence f1224q;

        f() {
        }

        @Override // androidx.appcompat.widget.y.j
        public boolean a() {
            androidx.appcompat.app.b bVar = this.f1222o;
            if (bVar != null) {
                return bVar.isShowing();
            }
            return false;
        }

        @Override // androidx.appcompat.widget.y.j
        public void b(Drawable drawable) {
            Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.y.j
        public int c() {
            return 0;
        }

        @Override // androidx.appcompat.widget.y.j
        public void dismiss() {
            androidx.appcompat.app.b bVar = this.f1222o;
            if (bVar != null) {
                bVar.dismiss();
                this.f1222o = null;
            }
        }

        @Override // androidx.appcompat.widget.y.j
        public void e(int i10) {
            Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.y.j
        public CharSequence f() {
            return this.f1224q;
        }

        @Override // androidx.appcompat.widget.y.j
        public Drawable i() {
            return null;
        }

        @Override // androidx.appcompat.widget.y.j
        public void k(CharSequence charSequence) {
            this.f1224q = charSequence;
        }

        @Override // androidx.appcompat.widget.y.j
        public void l(int i10) {
            Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.y.j
        public void m(int i10) {
            Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.y.j
        public void n(int i10, int i11) {
            if (this.f1223p == null) {
                return;
            }
            b.a aVar = new b.a(y.this.getPopupContext());
            CharSequence charSequence = this.f1224q;
            if (charSequence != null) {
                aVar.h(charSequence);
            }
            androidx.appcompat.app.b bVarA = aVar.g(this.f1223p, y.this.getSelectedItemPosition(), this).a();
            this.f1222o = bVarA;
            ListView listViewI = bVarA.i();
            if (Build.VERSION.SDK_INT >= 17) {
                d.d(listViewI, i10);
                d.c(listViewI, i11);
            }
            this.f1222o.show();
        }

        @Override // androidx.appcompat.widget.y.j
        public int o() {
            return 0;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i10) {
            y.this.setSelection(i10);
            if (y.this.getOnItemClickListener() != null) {
                y.this.performItemClick(null, i10, this.f1223p.getItemId(i10));
            }
            dismiss();
        }

        @Override // androidx.appcompat.widget.y.j
        public void p(ListAdapter listAdapter) {
            this.f1223p = listAdapter;
        }
    }

    /* JADX INFO: compiled from: AppCompatSpinner.java */
    private static class g implements ListAdapter, SpinnerAdapter {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private SpinnerAdapter f1226o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private ListAdapter f1227p;

        public g(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
            this.f1226o = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.f1227p = (ListAdapter) spinnerAdapter;
            }
            if (theme != null) {
                if (Build.VERSION.SDK_INT >= 23 && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                    e.a((ThemedSpinnerAdapter) spinnerAdapter, theme);
                } else if (spinnerAdapter instanceof s0) {
                    s0 s0Var = (s0) spinnerAdapter;
                    if (s0Var.getDropDownViewTheme() == null) {
                        s0Var.setDropDownViewTheme(theme);
                    }
                }
            }
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f1227p;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            SpinnerAdapter spinnerAdapter = this.f1226o;
            if (spinnerAdapter == null) {
                return 0;
            }
            return spinnerAdapter.getCount();
        }

        @Override // android.widget.SpinnerAdapter
        public View getDropDownView(int i10, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.f1226o;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i10, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            SpinnerAdapter spinnerAdapter = this.f1226o;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getItem(i10);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            SpinnerAdapter spinnerAdapter = this.f1226o;
            if (spinnerAdapter == null) {
                return -1L;
            }
            return spinnerAdapter.getItemId(i10);
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int i10) {
            return 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            return getDropDownView(i10, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            SpinnerAdapter spinnerAdapter = this.f1226o;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return getCount() == 0;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            ListAdapter listAdapter = this.f1227p;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i10);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f1226o;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f1226o;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    /* JADX INFO: compiled from: AppCompatSpinner.java */
    class h extends j0 implements j {
        private CharSequence X;
        ListAdapter Y;
        private final Rect Z;

        /* JADX INFO: renamed from: a0, reason: collision with root package name */
        private int f1228a0;

        /* JADX INFO: compiled from: AppCompatSpinner.java */
        class a implements AdapterView.OnItemClickListener {

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            final /* synthetic */ y f1230o;

            a(y yVar) {
                this.f1230o = yVar;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
                y.this.setSelection(i10);
                if (y.this.getOnItemClickListener() != null) {
                    h hVar = h.this;
                    y.this.performItemClick(view, i10, hVar.Y.getItemId(i10));
                }
                h.this.dismiss();
            }
        }

        /* JADX INFO: compiled from: AppCompatSpinner.java */
        class b implements ViewTreeObserver.OnGlobalLayoutListener {
            b() {
            }

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                h hVar = h.this;
                if (!hVar.U(y.this)) {
                    h.this.dismiss();
                } else {
                    h.this.S();
                    h.super.h();
                }
            }
        }

        /* JADX INFO: compiled from: AppCompatSpinner.java */
        class c implements PopupWindow.OnDismissListener {

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f1233o;

            c(ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
                this.f1233o = onGlobalLayoutListener;
            }

            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                ViewTreeObserver viewTreeObserver = y.this.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeGlobalOnLayoutListener(this.f1233o);
                }
            }
        }

        public h(Context context, AttributeSet attributeSet, int i10) {
            super(context, attributeSet, i10);
            this.Z = new Rect();
            D(y.this);
            J(true);
            O(0);
            L(new a(y.this));
        }

        void S() {
            Drawable drawableI = i();
            int i10 = 0;
            if (drawableI != null) {
                drawableI.getPadding(y.this.f1218v);
                i10 = f1.b(y.this) ? y.this.f1218v.right : -y.this.f1218v.left;
            } else {
                Rect rect = y.this.f1218v;
                rect.right = 0;
                rect.left = 0;
            }
            int paddingLeft = y.this.getPaddingLeft();
            int paddingRight = y.this.getPaddingRight();
            int width = y.this.getWidth();
            y yVar = y.this;
            int i11 = yVar.f1217u;
            if (i11 == -2) {
                int iA = yVar.a((SpinnerAdapter) this.Y, i());
                int i12 = y.this.getContext().getResources().getDisplayMetrics().widthPixels;
                Rect rect2 = y.this.f1218v;
                int i13 = (i12 - rect2.left) - rect2.right;
                if (iA > i13) {
                    iA = i13;
                }
                F(Math.max(iA, (width - paddingLeft) - paddingRight));
            } else if (i11 == -1) {
                F((width - paddingLeft) - paddingRight);
            } else {
                F(i11);
            }
            e(f1.b(y.this) ? i10 + (((width - paddingRight) - z()) - T()) : i10 + paddingLeft + T());
        }

        public int T() {
            return this.f1228a0;
        }

        boolean U(View view) {
            return androidx.core.view.a0.T(view) && view.getGlobalVisibleRect(this.Z);
        }

        @Override // androidx.appcompat.widget.y.j
        public CharSequence f() {
            return this.X;
        }

        @Override // androidx.appcompat.widget.y.j
        public void k(CharSequence charSequence) {
            this.X = charSequence;
        }

        @Override // androidx.appcompat.widget.y.j
        public void m(int i10) {
            this.f1228a0 = i10;
        }

        @Override // androidx.appcompat.widget.y.j
        public void n(int i10, int i11) {
            ViewTreeObserver viewTreeObserver;
            boolean zA = a();
            S();
            I(2);
            super.h();
            ListView listViewJ = j();
            listViewJ.setChoiceMode(1);
            if (Build.VERSION.SDK_INT >= 17) {
                d.d(listViewJ, i10);
                d.c(listViewJ, i11);
            }
            P(y.this.getSelectedItemPosition());
            if (zA || (viewTreeObserver = y.this.getViewTreeObserver()) == null) {
                return;
            }
            b bVar = new b();
            viewTreeObserver.addOnGlobalLayoutListener(bVar);
            K(new c(bVar));
        }

        @Override // androidx.appcompat.widget.j0, androidx.appcompat.widget.y.j
        public void p(ListAdapter listAdapter) {
            super.p(listAdapter);
            this.Y = listAdapter;
        }
    }

    /* JADX INFO: compiled from: AppCompatSpinner.java */
    static class i extends View.BaseSavedState {
        public static final Parcelable.Creator<i> CREATOR = new a();

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        boolean f1235o;

        /* JADX INFO: compiled from: AppCompatSpinner.java */
        class a implements Parcelable.Creator<i> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public i createFromParcel(Parcel parcel) {
                return new i(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public i[] newArray(int i10) {
                return new i[i10];
            }
        }

        i(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeByte(this.f1235o ? (byte) 1 : (byte) 0);
        }

        i(Parcel parcel) {
            super(parcel);
            this.f1235o = parcel.readByte() != 0;
        }
    }

    /* JADX INFO: compiled from: AppCompatSpinner.java */
    interface j {
        boolean a();

        void b(Drawable drawable);

        int c();

        void dismiss();

        void e(int i10);

        CharSequence f();

        Drawable i();

        void k(CharSequence charSequence);

        void l(int i10);

        void m(int i10);

        void n(int i10, int i11);

        int o();

        void p(ListAdapter listAdapter);
    }

    public y(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, f.a.K);
    }

    int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i10 = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int iMax = Math.max(0, getSelectedItemPosition());
        int iMin = Math.min(spinnerAdapter.getCount(), iMax + 15);
        View view = null;
        int iMax2 = 0;
        for (int iMax3 = Math.max(0, iMax - (15 - (iMin - iMax))); iMax3 < iMin; iMax3++) {
            int itemViewType = spinnerAdapter.getItemViewType(iMax3);
            if (itemViewType != i10) {
                view = null;
                i10 = itemViewType;
            }
            view = spinnerAdapter.getView(iMax3, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            iMax2 = Math.max(iMax2, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return iMax2;
        }
        drawable.getPadding(this.f1218v);
        Rect rect = this.f1218v;
        return iMax2 + rect.left + rect.right;
    }

    void b() {
        if (Build.VERSION.SDK_INT >= 17) {
            this.f1216t.n(d.b(this), d.a(this));
        } else {
            this.f1216t.n(-1, -1);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        androidx.appcompat.widget.e eVar = this.f1211o;
        if (eVar != null) {
            eVar.b();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        j jVar = this.f1216t;
        if (jVar != null) {
            return jVar.c();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownHorizontalOffset();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        j jVar = this.f1216t;
        if (jVar != null) {
            return jVar.o();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownVerticalOffset();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        if (this.f1216t != null) {
            return this.f1217u;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownWidth();
        }
        return 0;
    }

    final j getInternalPopup() {
        return this.f1216t;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        j jVar = this.f1216t;
        if (jVar != null) {
            return jVar.i();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getPopupBackground();
        }
        return null;
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.f1212p;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        j jVar = this.f1216t;
        return jVar != null ? jVar.f() : super.getPrompt();
    }

    @Override // androidx.core.view.y
    public ColorStateList getSupportBackgroundTintList() {
        androidx.appcompat.widget.e eVar = this.f1211o;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    @Override // androidx.core.view.y
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        androidx.appcompat.widget.e eVar = this.f1211o;
        if (eVar != null) {
            return eVar.d();
        }
        return null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        j jVar = this.f1216t;
        if (jVar == null || !jVar.a()) {
            return;
        }
        this.f1216t.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.f1216t == null || View.MeasureSpec.getMode(i10) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i10)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        i iVar = (i) parcelable;
        super.onRestoreInstanceState(iVar.getSuperState());
        if (!iVar.f1235o || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new b());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public Parcelable onSaveInstanceState() {
        i iVar = new i(super.onSaveInstanceState());
        j jVar = this.f1216t;
        iVar.f1235o = jVar != null && jVar.a();
        return iVar;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        i0 i0Var = this.f1213q;
        if (i0Var == null || !i0Var.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean performClick() {
        j jVar = this.f1216t;
        if (jVar == null) {
            return super.performClick();
        }
        if (jVar.a()) {
            return true;
        }
        b();
        return true;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        androidx.appcompat.widget.e eVar = this.f1211o;
        if (eVar != null) {
            eVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        androidx.appcompat.widget.e eVar = this.f1211o;
        if (eVar != null) {
            eVar.g(i10);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i10) {
        j jVar = this.f1216t;
        if (jVar != null) {
            jVar.m(i10);
            this.f1216t.e(i10);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownHorizontalOffset(i10);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i10) {
        j jVar = this.f1216t;
        if (jVar != null) {
            jVar.l(i10);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownVerticalOffset(i10);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i10) {
        if (this.f1216t != null) {
            this.f1217u = i10;
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownWidth(i10);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        j jVar = this.f1216t;
        if (jVar != null) {
            jVar.b(drawable);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i10) {
        setPopupBackgroundDrawable(g.a.b(getPopupContext(), i10));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        j jVar = this.f1216t;
        if (jVar != null) {
            jVar.k(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    @Override // androidx.core.view.y
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        androidx.appcompat.widget.e eVar = this.f1211o;
        if (eVar != null) {
            eVar.i(colorStateList);
        }
    }

    @Override // androidx.core.view.y
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        androidx.appcompat.widget.e eVar = this.f1211o;
        if (eVar != null) {
            eVar.j(mode);
        }
    }

    public y(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, -1);
    }

    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f1215s) {
            this.f1214r = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.f1216t != null) {
            Context context = this.f1212p;
            if (context == null) {
                context = getContext();
            }
            this.f1216t.p(new g(spinnerAdapter, context.getTheme()));
        }
    }

    public y(Context context, AttributeSet attributeSet, int i10, int i11) {
        this(context, attributeSet, i10, i11, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00d9  */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v7, types: [android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r6v0, types: [android.view.View, android.widget.Spinner, androidx.appcompat.widget.y] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public y(android.content.Context r7, android.util.AttributeSet r8, int r9, int r10, android.content.res.Resources.Theme r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 228
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.y.<init>(android.content.Context, android.util.AttributeSet, int, int, android.content.res.Resources$Theme):void");
    }
}
