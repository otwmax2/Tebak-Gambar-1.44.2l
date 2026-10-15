package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.datepicker.a;
import java.util.Arrays;

/* JADX INFO: compiled from: DateValidatorPointForward.java */
/* JADX INFO: loaded from: classes2.dex */
public class f implements a.c {
    public static final Parcelable.Creator<f> CREATOR = new a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final long f25333o;

    /* JADX INFO: compiled from: DateValidatorPointForward.java */
    static class a implements Parcelable.Creator<f> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public f createFromParcel(Parcel parcel) {
            return new f(parcel.readLong(), null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public f[] newArray(int i10) {
            return new f[i10];
        }
    }

    /* synthetic */ f(long j10, a aVar) {
        this(j10);
    }

    public static f h(long j10) {
        return new f(j10);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof f) && this.f25333o == ((f) obj).f25333o;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f25333o)});
    }

    @Override // com.google.android.material.datepicker.a.c
    public boolean w2(long j10) {
        return j10 >= this.f25333o;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.f25333o);
    }

    private f(long j10) {
        this.f25333o = j10;
    }
}
