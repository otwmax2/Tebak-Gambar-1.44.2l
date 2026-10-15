package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.n;
import java.util.ArrayList;

/* JADX INFO: compiled from: ListMenuPresenter.java */
/* JADX INFO: loaded from: classes.dex */
public class e implements m, AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    Context f653o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    LayoutInflater f654p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    g f655q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    ExpandedMenuView f656r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f657s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    int f658t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    int f659u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private m.a f660v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    a f661w;

    /* JADX INFO: compiled from: ListMenuPresenter.java */
    private class a extends BaseAdapter {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private int f662o = -1;

        public a() {
            a();
        }

        void a() {
            i iVarV = e.this.f655q.v();
            if (iVarV != null) {
                ArrayList<i> arrayListZ = e.this.f655q.z();
                int size = arrayListZ.size();
                for (int i10 = 0; i10 < size; i10++) {
                    if (arrayListZ.get(i10) == iVarV) {
                        this.f662o = i10;
                        return;
                    }
                }
            }
            this.f662o = -1;
        }

        @Override // android.widget.Adapter
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public i getItem(int i10) {
            ArrayList<i> arrayListZ = e.this.f655q.z();
            int i11 = i10 + e.this.f657s;
            int i12 = this.f662o;
            if (i12 >= 0 && i11 >= i12) {
                i11++;
            }
            return arrayListZ.get(i11);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int size = e.this.f655q.z().size() - e.this.f657s;
            return this.f662o < 0 ? size : size - 1;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return i10;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            if (view == null) {
                e eVar = e.this;
                view = eVar.f654p.inflate(eVar.f659u, viewGroup, false);
            }
            ((n.a) view).e(getItem(i10), 0);
            return view;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            a();
            super.notifyDataSetChanged();
        }
    }

    public e(Context context, int i10) {
        this(i10, 0);
        this.f653o = context;
        this.f654p = LayoutInflater.from(context);
    }

    public ListAdapter a() {
        if (this.f661w == null) {
            this.f661w = new a();
        }
        return this.f661w;
    }

    @Override // androidx.appcompat.view.menu.m
    public void b(g gVar, boolean z10) {
        m.a aVar = this.f660v;
        if (aVar != null) {
            aVar.b(gVar, z10);
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void c(boolean z10) {
        a aVar = this.f661w;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean d() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean e(g gVar, i iVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean f(g gVar, i iVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public void g(m.a aVar) {
        this.f660v = aVar;
    }

    public n h(ViewGroup viewGroup) {
        if (this.f656r == null) {
            this.f656r = (ExpandedMenuView) this.f654p.inflate(f.g.f29085g, viewGroup, false);
            if (this.f661w == null) {
                this.f661w = new a();
            }
            this.f656r.setAdapter((ListAdapter) this.f661w);
            this.f656r.setOnItemClickListener(this);
        }
        return this.f656r;
    }

    @Override // androidx.appcompat.view.menu.m
    public void i(Context context, g gVar) {
        if (this.f658t != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, this.f658t);
            this.f653o = contextThemeWrapper;
            this.f654p = LayoutInflater.from(contextThemeWrapper);
        } else if (this.f653o != null) {
            this.f653o = context;
            if (this.f654p == null) {
                this.f654p = LayoutInflater.from(context);
            }
        }
        this.f655q = gVar;
        a aVar = this.f661w;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean k(r rVar) {
        if (!rVar.hasVisibleItems()) {
            return false;
        }
        new h(rVar).d(null);
        m.a aVar = this.f660v;
        if (aVar == null) {
            return true;
        }
        aVar.c(rVar);
        return true;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
        this.f655q.M(this.f661w.getItem(i10), this, 0);
    }

    public e(int i10, int i11) {
        this.f659u = i10;
        this.f658t = i11;
    }
}
