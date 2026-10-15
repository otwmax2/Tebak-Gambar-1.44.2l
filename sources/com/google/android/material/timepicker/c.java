package com.google.android.material.timepicker;

import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: TimeModel.java */
/* JADX INFO: loaded from: classes2.dex */
class c implements Parcelable {
    public static final Parcelable.Creator<c> CREATOR = new a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final com.google.android.material.timepicker.a f25765o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final com.google.android.material.timepicker.a f25766p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final int f25767q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int f25768r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f25769s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    int f25770t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    int f25771u;

    /* JADX INFO: compiled from: TimeModel.java */
    static class a implements Parcelable.Creator<c> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public c createFromParcel(Parcel parcel) {
            return new c(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public c[] newArray(int i10) {
            return new c[i10];
        }
    }

    public c() {
        this(0);
    }

    public static String h(Resources resources, CharSequence charSequence) {
        return t(resources, charSequence, "%02d");
    }

    public static String t(Resources resources, CharSequence charSequence, String str) {
        return String.format(resources.getConfiguration().locale, str, Integer.valueOf(Integer.parseInt(String.valueOf(charSequence))));
    }

    private static int v(int i10) {
        return i10 >= 12 ? 1 : 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f25768r == cVar.f25768r && this.f25769s == cVar.f25769s && this.f25767q == cVar.f25767q && this.f25770t == cVar.f25770t;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f25767q), Integer.valueOf(this.f25768r), Integer.valueOf(this.f25769s), Integer.valueOf(this.f25770t)});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f25768r);
        parcel.writeInt(this.f25769s);
        parcel.writeInt(this.f25770t);
        parcel.writeInt(this.f25767q);
    }

    public c(int i10) {
        this(0, 0, 10, i10);
    }

    public c(int i10, int i11, int i12, int i13) {
        this.f25768r = i10;
        this.f25769s = i11;
        this.f25770t = i12;
        this.f25767q = i13;
        this.f25771u = v(i10);
        this.f25765o = new com.google.android.material.timepicker.a(59);
        this.f25766p = new com.google.android.material.timepicker.a(i13 == 1 ? 24 : 12);
    }

    protected c(Parcel parcel) {
        this(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
    }
}
