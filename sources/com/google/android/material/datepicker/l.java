package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;

/* JADX INFO: compiled from: Month.java */
/* JADX INFO: loaded from: classes2.dex */
final class l implements Comparable<l>, Parcelable {
    public static final Parcelable.Creator<l> CREATOR = new a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Calendar f25388o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final int f25389p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final int f25390q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final int f25391r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final int f25392s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final long f25393t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f25394u;

    /* JADX INFO: compiled from: Month.java */
    static class a implements Parcelable.Creator<l> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public l createFromParcel(Parcel parcel) {
            return l.L(parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public l[] newArray(int i10) {
            return new l[i10];
        }
    }

    private l(Calendar calendar) {
        calendar.set(5, 1);
        Calendar calendarD = s.d(calendar);
        this.f25388o = calendarD;
        this.f25389p = calendarD.get(2);
        this.f25390q = calendarD.get(1);
        this.f25391r = calendarD.getMaximum(7);
        this.f25392s = calendarD.getActualMaximum(5);
        this.f25393t = calendarD.getTimeInMillis();
    }

    static l L(int i10, int i11) {
        Calendar calendarK = s.k();
        calendarK.set(1, i10);
        calendarK.set(2, i11);
        return new l(calendarK);
    }

    static l N(long j10) {
        Calendar calendarK = s.k();
        calendarK.setTimeInMillis(j10);
        return new l(calendarK);
    }

    static l Q() {
        return new l(s.i());
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
    public int compareTo(l lVar) {
        return this.f25388o.compareTo(lVar.f25388o);
    }

    int S() {
        int firstDayOfWeek = this.f25388o.get(7) - this.f25388o.getFirstDayOfWeek();
        return firstDayOfWeek < 0 ? firstDayOfWeek + this.f25391r : firstDayOfWeek;
    }

    long V(int i10) {
        Calendar calendarD = s.d(this.f25388o);
        calendarD.set(5, i10);
        return calendarD.getTimeInMillis();
    }

    int W(long j10) {
        Calendar calendarD = s.d(this.f25388o);
        calendarD.setTimeInMillis(j10);
        return calendarD.get(5);
    }

    String X(Context context) {
        if (this.f25394u == null) {
            this.f25394u = e.c(context, this.f25388o.getTimeInMillis());
        }
        return this.f25394u;
    }

    long Z() {
        return this.f25388o.getTimeInMillis();
    }

    l b0(int i10) {
        Calendar calendarD = s.d(this.f25388o);
        calendarD.add(2, i10);
        return new l(calendarD);
    }

    int c0(l lVar) {
        if (this.f25388o instanceof GregorianCalendar) {
            return ((lVar.f25390q - this.f25390q) * 12) + (lVar.f25389p - this.f25389p);
        }
        throw new IllegalArgumentException("Only Gregorian calendars are supported.");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return this.f25389p == lVar.f25389p && this.f25390q == lVar.f25390q;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f25389p), Integer.valueOf(this.f25390q)});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f25390q);
        parcel.writeInt(this.f25389p);
    }
}
