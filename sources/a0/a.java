package a0;

import a0.b;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;

/* JADX INFO: compiled from: CursorAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a extends BaseAdapter implements Filterable, b.a {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected boolean f3o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected boolean f4p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected Cursor f5q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected Context f6r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected int f7s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected C0002a f8t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected DataSetObserver f9u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    protected a0.b f10v;

    /* JADX INFO: renamed from: a0.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CursorAdapter.java */
    private class C0002a extends ContentObserver {
        C0002a() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z10) {
            a.this.s();
        }
    }

    /* JADX INFO: compiled from: CursorAdapter.java */
    private class b extends DataSetObserver {
        b() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            a aVar = a.this;
            aVar.f3o = true;
            aVar.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            a aVar = a.this;
            aVar.f3o = false;
            aVar.notifyDataSetInvalidated();
        }
    }

    public a(Context context, Cursor cursor, boolean z10) {
        p(context, cursor, z10 ? 1 : 2);
    }

    @Override // a0.b.a
    public void a(Cursor cursor) {
        Cursor cursorT = t(cursor);
        if (cursorT != null) {
            cursorT.close();
        }
    }

    @Override // a0.b.a
    public Cursor b() {
        return this.f5q;
    }

    @Override // a0.b.a
    public abstract CharSequence d(Cursor cursor);

    @Override // android.widget.Adapter
    public int getCount() {
        Cursor cursor;
        if (!this.f3o || (cursor = this.f5q) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i10, View view, ViewGroup viewGroup) {
        if (!this.f3o) {
            return null;
        }
        this.f5q.moveToPosition(i10);
        if (view == null) {
            view = q(this.f6r, this.f5q, viewGroup);
        }
        o(view, this.f6r, this.f5q);
        return view;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.f10v == null) {
            this.f10v = new a0.b(this);
        }
        return this.f10v;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i10) {
        Cursor cursor;
        if (!this.f3o || (cursor = this.f5q) == null) {
            return null;
        }
        cursor.moveToPosition(i10);
        return this.f5q;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        Cursor cursor;
        if (this.f3o && (cursor = this.f5q) != null && cursor.moveToPosition(i10)) {
            return this.f5q.getLong(this.f7s);
        }
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        if (!this.f3o) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        }
        if (this.f5q.moveToPosition(i10)) {
            if (view == null) {
                view = r(this.f6r, this.f5q, viewGroup);
            }
            o(view, this.f6r, this.f5q);
            return view;
        }
        throw new IllegalStateException("couldn't move cursor to position " + i10);
    }

    public abstract void o(View view, Context context, Cursor cursor);

    void p(Context context, Cursor cursor, int i10) {
        if ((i10 & 1) == 1) {
            i10 |= 2;
            this.f4p = true;
        } else {
            this.f4p = false;
        }
        boolean z10 = cursor != null;
        this.f5q = cursor;
        this.f3o = z10;
        this.f6r = context;
        this.f7s = z10 ? cursor.getColumnIndexOrThrow("_id") : -1;
        if ((i10 & 2) == 2) {
            this.f8t = new C0002a();
            this.f9u = new b();
        } else {
            this.f8t = null;
            this.f9u = null;
        }
        if (z10) {
            C0002a c0002a = this.f8t;
            if (c0002a != null) {
                cursor.registerContentObserver(c0002a);
            }
            DataSetObserver dataSetObserver = this.f9u;
            if (dataSetObserver != null) {
                cursor.registerDataSetObserver(dataSetObserver);
            }
        }
    }

    public abstract View q(Context context, Cursor cursor, ViewGroup viewGroup);

    public abstract View r(Context context, Cursor cursor, ViewGroup viewGroup);

    protected void s() {
        Cursor cursor;
        if (!this.f4p || (cursor = this.f5q) == null || cursor.isClosed()) {
            return;
        }
        this.f3o = this.f5q.requery();
    }

    public Cursor t(Cursor cursor) {
        Cursor cursor2 = this.f5q;
        if (cursor == cursor2) {
            return null;
        }
        if (cursor2 != null) {
            C0002a c0002a = this.f8t;
            if (c0002a != null) {
                cursor2.unregisterContentObserver(c0002a);
            }
            DataSetObserver dataSetObserver = this.f9u;
            if (dataSetObserver != null) {
                cursor2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f5q = cursor;
        if (cursor != null) {
            C0002a c0002a2 = this.f8t;
            if (c0002a2 != null) {
                cursor.registerContentObserver(c0002a2);
            }
            DataSetObserver dataSetObserver2 = this.f9u;
            if (dataSetObserver2 != null) {
                cursor.registerDataSetObserver(dataSetObserver2);
            }
            this.f7s = cursor.getColumnIndexOrThrow("_id");
            this.f3o = true;
            notifyDataSetChanged();
        } else {
            this.f7s = -1;
            this.f3o = false;
            notifyDataSetInvalidated();
        }
        return cursor2;
    }
}
