package a0;

import android.database.Cursor;
import android.widget.Filter;

/* JADX INFO: compiled from: CursorFilter.java */
/* JADX INFO: loaded from: classes.dex */
class b extends Filter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    a f13a;

    /* JADX INFO: compiled from: CursorFilter.java */
    interface a {
        void a(Cursor cursor);

        Cursor b();

        CharSequence d(Cursor cursor);

        Cursor e(CharSequence charSequence);
    }

    b(a aVar) {
        this.f13a = aVar;
    }

    @Override // android.widget.Filter
    public CharSequence convertResultToString(Object obj) {
        return this.f13a.d((Cursor) obj);
    }

    @Override // android.widget.Filter
    protected Filter.FilterResults performFiltering(CharSequence charSequence) {
        Cursor cursorE = this.f13a.e(charSequence);
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (cursorE != null) {
            filterResults.count = cursorE.getCount();
            filterResults.values = cursorE;
        } else {
            filterResults.count = 0;
            filterResults.values = null;
        }
        return filterResults;
    }

    @Override // android.widget.Filter
    protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        Cursor cursorB = this.f13a.b();
        Object obj = filterResults.values;
        if (obj == null || obj == cursorB) {
            return;
        }
        this.f13a.a((Cursor) obj);
    }
}
