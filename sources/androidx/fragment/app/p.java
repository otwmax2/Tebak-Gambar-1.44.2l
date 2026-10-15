package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.n;
import java.util.ArrayList;

/* JADX INFO: compiled from: FragmentManagerState.java */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
final class p implements Parcelable {
    public static final Parcelable.Creator<p> CREATOR = new a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    ArrayList<t> f3320o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    ArrayList<String> f3321p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    b[] f3322q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int f3323r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    String f3324s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    ArrayList<String> f3325t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    ArrayList<Bundle> f3326u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    ArrayList<n.m> f3327v;

    /* JADX INFO: compiled from: FragmentManagerState.java */
    class a implements Parcelable.Creator<p> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public p createFromParcel(Parcel parcel) {
            return new p(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public p[] newArray(int i10) {
            return new p[i10];
        }
    }

    public p() {
        this.f3324s = null;
        this.f3325t = new ArrayList<>();
        this.f3326u = new ArrayList<>();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeTypedList(this.f3320o);
        parcel.writeStringList(this.f3321p);
        parcel.writeTypedArray(this.f3322q, i10);
        parcel.writeInt(this.f3323r);
        parcel.writeString(this.f3324s);
        parcel.writeStringList(this.f3325t);
        parcel.writeTypedList(this.f3326u);
        parcel.writeTypedList(this.f3327v);
    }

    public p(Parcel parcel) {
        this.f3324s = null;
        this.f3325t = new ArrayList<>();
        this.f3326u = new ArrayList<>();
        this.f3320o = parcel.createTypedArrayList(t.CREATOR);
        this.f3321p = parcel.createStringArrayList();
        this.f3322q = (b[]) parcel.createTypedArray(b.CREATOR);
        this.f3323r = parcel.readInt();
        this.f3324s = parcel.readString();
        this.f3325t = parcel.createStringArrayList();
        this.f3326u = parcel.createTypedArrayList(Bundle.CREATOR);
        this.f3327v = parcel.createTypedArrayList(n.m.CREATOR);
    }
}
