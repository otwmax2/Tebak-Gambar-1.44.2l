package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.widget.w0;

/* JADX INFO: loaded from: classes.dex */
public final class ExpandedMenuView extends ListView implements g.b, n, AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final int[] f584q = {R.attr.background, R.attr.divider};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private g f585o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f586p;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listViewStyle);
    }

    @Override // androidx.appcompat.view.menu.g.b
    public boolean a(i iVar) {
        return this.f585o.L(iVar, 0);
    }

    @Override // androidx.appcompat.view.menu.n
    public void b(g gVar) {
        this.f585o = gVar;
    }

    public int getWindowAnimations() {
        return this.f586p;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
        a((i) getAdapter().getItem(i10));
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        w0 w0VarV = w0.v(context, attributeSet, f584q, i10, 0);
        if (w0VarV.s(0)) {
            setBackgroundDrawable(w0VarV.g(0));
        }
        if (w0VarV.s(1)) {
            setDivider(w0VarV.g(1));
        }
        w0VarV.w();
    }
}
