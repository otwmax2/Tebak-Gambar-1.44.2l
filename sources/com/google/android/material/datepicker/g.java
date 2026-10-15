package com.google.android.material.datepicker;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.Calendar;
import java.util.Locale;

/* JADX INFO: compiled from: DaysOfWeekAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
class g extends BaseAdapter {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final int f25334r;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Calendar f25335o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f25336p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f25337q;

    static {
        f25334r = Build.VERSION.SDK_INT >= 26 ? 4 : 1;
    }

    public g() {
        Calendar calendarK = s.k();
        this.f25335o = calendarK;
        this.f25336p = calendarK.getMaximum(7);
        this.f25337q = calendarK.getFirstDayOfWeek();
    }

    private int b(int i10) {
        int i11 = i10 + this.f25337q;
        int i12 = this.f25336p;
        return i11 > i12 ? i11 - i12 : i11;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Integer getItem(int i10) {
        if (i10 >= this.f25336p) {
            return null;
        }
        return Integer.valueOf(b(i10));
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f25336p;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return 0L;
    }

    @Override // android.widget.Adapter
    @SuppressLint({"WrongConstant"})
    public View getView(int i10, View view, ViewGroup viewGroup) {
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(y3.h.f36735l, viewGroup, false);
        }
        this.f25335o.set(7, b(i10));
        textView.setText(this.f25335o.getDisplayName(7, f25334r, textView.getResources().getConfiguration().locale));
        textView.setContentDescription(String.format(viewGroup.getContext().getString(y3.i.f36751j), this.f25335o.getDisplayName(7, 2, Locale.getDefault())));
        return textView;
    }
}
