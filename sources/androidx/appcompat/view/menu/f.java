package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.n;
import java.util.ArrayList;

/* JADX INFO: compiled from: MenuAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public class f extends BaseAdapter {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    g f664o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f665p = -1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f666q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final boolean f667r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final LayoutInflater f668s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final int f669t;

    public f(g gVar, LayoutInflater layoutInflater, boolean z10, int i10) {
        this.f667r = z10;
        this.f668s = layoutInflater;
        this.f664o = gVar;
        this.f669t = i10;
        a();
    }

    void a() {
        i iVarV = this.f664o.v();
        if (iVarV != null) {
            ArrayList<i> arrayListZ = this.f664o.z();
            int size = arrayListZ.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (arrayListZ.get(i10) == iVarV) {
                    this.f665p = i10;
                    return;
                }
            }
        }
        this.f665p = -1;
    }

    public g b() {
        return this.f664o;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public i getItem(int i10) {
        ArrayList<i> arrayListZ = this.f667r ? this.f664o.z() : this.f664o.E();
        int i11 = this.f665p;
        if (i11 >= 0 && i10 >= i11) {
            i10++;
        }
        return arrayListZ.get(i10);
    }

    public void d(boolean z10) {
        this.f666q = z10;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f665p < 0 ? (this.f667r ? this.f664o.z() : this.f664o.E()).size() : r0.size() - 1;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return i10;
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f668s.inflate(this.f669t, viewGroup, false);
        }
        int groupId = getItem(i10).getGroupId();
        int i11 = i10 - 1;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        listMenuItemView.setGroupDividerEnabled(this.f664o.F() && groupId != (i11 >= 0 ? getItem(i11).getGroupId() : groupId));
        n.a aVar = (n.a) view;
        if (this.f666q) {
            listMenuItemView.setForceShowIcon(true);
        }
        aVar.e(getItem(i10), 0);
        return view;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
