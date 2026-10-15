package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes.dex */
public class ContentFrameLayout extends FrameLayout {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private TypedValue f821o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private TypedValue f822p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private TypedValue f823q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private TypedValue f824r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private TypedValue f825s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private TypedValue f826t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final Rect f827u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private a f828v;

    public interface a {
        void a();

        void onDetachedFromWindow();
    }

    public ContentFrameLayout(Context context) {
        this(context, null);
    }

    public void a(Rect rect) {
        fitSystemWindows(rect);
    }

    public void b(int i10, int i11, int i12, int i13) {
        this.f827u.set(i10, i11, i12, i13);
        if (androidx.core.view.a0.U(this)) {
            requestLayout();
        }
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f825s == null) {
            this.f825s = new TypedValue();
        }
        return this.f825s;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f826t == null) {
            this.f826t = new TypedValue();
        }
        return this.f826t;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f823q == null) {
            this.f823q = new TypedValue();
        }
        return this.f823q;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f824r == null) {
            this.f824r = new TypedValue();
        }
        return this.f824r;
    }

    public TypedValue getMinWidthMajor() {
        if (this.f821o == null) {
            this.f821o = new TypedValue();
        }
        return this.f821o;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f822p == null) {
            this.f822p = new TypedValue();
        }
        return this.f822p;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        a aVar = this.f828v;
        if (aVar != null) {
            aVar.a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a aVar = this.f828v;
        if (aVar != null) {
            aVar.onDetachedFromWindow();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00db  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onMeasure(int r14, int r15) {
        /*
            Method dump skipped, instruction units count: 226
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ContentFrameLayout.onMeasure(int, int):void");
    }

    public void setAttachListener(a aVar) {
        this.f828v = aVar;
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f827u = new Rect();
    }
}
