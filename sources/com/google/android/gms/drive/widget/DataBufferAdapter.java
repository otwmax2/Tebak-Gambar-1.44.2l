package com.google.android.gms.drive.widget;

import android.database.CursorIndexOutOfBoundsException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.internal.GmsLogger;
import com.vungle.mediation.BuildConfig;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DataBufferAdapter<T> extends BaseAdapter {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final GmsLogger f7882u = new GmsLogger("DataBufferAdapter", BuildConfig.FLAVOR);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f7883o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f7884p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f7885q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final List<DataBuffer<T>> f7886r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final LayoutInflater f7887s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f7888t;

    private final View a(int i10, View view, ViewGroup viewGroup, int i11) {
        if (view == null) {
            view = this.f7887s.inflate(i11, viewGroup, false);
        }
        try {
            int i12 = this.f7885q;
            TextView textView = i12 == 0 ? (TextView) view : (TextView) view.findViewById(i12);
            T item = getItem(i10);
            if (item instanceof CharSequence) {
                textView.setText((CharSequence) item);
            } else {
                textView.setText(item.toString());
            }
            return view;
        } catch (ClassCastException e10) {
            f7882u.d("DataBufferAdapter", "You must supply a resource ID for a TextView", e10);
            throw new IllegalStateException("DataBufferAdapter requires the resource ID to be a TextView", e10);
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        Iterator<DataBuffer<T>> it = this.f7886r.iterator();
        int count = 0;
        while (it.hasNext()) {
            count += it.next().getCount();
        }
        return count;
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i10, View view, ViewGroup viewGroup) {
        return a(i10, view, viewGroup, this.f7884p);
    }

    @Override // android.widget.Adapter
    public T getItem(int i10) throws CursorIndexOutOfBoundsException {
        int i11 = i10;
        for (DataBuffer<T> dataBuffer : this.f7886r) {
            int count = dataBuffer.getCount();
            if (count > i11) {
                try {
                    return dataBuffer.get(i11);
                } catch (CursorIndexOutOfBoundsException unused) {
                    throw new CursorIndexOutOfBoundsException(i10, getCount());
                }
            }
            i11 -= count;
        }
        throw new CursorIndexOutOfBoundsException(i10, getCount());
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return i10;
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        return a(i10, view, viewGroup, this.f7883o);
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        this.f7888t = true;
    }
}
