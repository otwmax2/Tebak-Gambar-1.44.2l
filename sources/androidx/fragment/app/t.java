package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: FragmentState.java */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
final class t implements Parcelable {
    public static final Parcelable.Creator<t> CREATOR = new a();
    Bundle A;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final String f3336o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final String f3337p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final boolean f3338q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final int f3339r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final int f3340s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final String f3341t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final boolean f3342u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    final boolean f3343v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    final boolean f3344w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    final Bundle f3345x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    final boolean f3346y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    final int f3347z;

    /* JADX INFO: compiled from: FragmentState.java */
    class a implements Parcelable.Creator<t> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public t createFromParcel(Parcel parcel) {
            return new t(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public t[] newArray(int i10) {
            return new t[i10];
        }
    }

    t(Fragment fragment) {
        this.f3336o = fragment.getClass().getName();
        this.f3337p = fragment.mWho;
        this.f3338q = fragment.mFromLayout;
        this.f3339r = fragment.mFragmentId;
        this.f3340s = fragment.mContainerId;
        this.f3341t = fragment.mTag;
        this.f3342u = fragment.mRetainInstance;
        this.f3343v = fragment.mRemoving;
        this.f3344w = fragment.mDetached;
        this.f3345x = fragment.mArguments;
        this.f3346y = fragment.mHidden;
        this.f3347z = fragment.mMaxState.ordinal();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.f3336o);
        sb.append(" (");
        sb.append(this.f3337p);
        sb.append(")}:");
        if (this.f3338q) {
            sb.append(" fromLayout");
        }
        if (this.f3340s != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.f3340s));
        }
        String str = this.f3341t;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(this.f3341t);
        }
        if (this.f3342u) {
            sb.append(" retainInstance");
        }
        if (this.f3343v) {
            sb.append(" removing");
        }
        if (this.f3344w) {
            sb.append(" detached");
        }
        if (this.f3346y) {
            sb.append(" hidden");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f3336o);
        parcel.writeString(this.f3337p);
        parcel.writeInt(this.f3338q ? 1 : 0);
        parcel.writeInt(this.f3339r);
        parcel.writeInt(this.f3340s);
        parcel.writeString(this.f3341t);
        parcel.writeInt(this.f3342u ? 1 : 0);
        parcel.writeInt(this.f3343v ? 1 : 0);
        parcel.writeInt(this.f3344w ? 1 : 0);
        parcel.writeBundle(this.f3345x);
        parcel.writeInt(this.f3346y ? 1 : 0);
        parcel.writeBundle(this.A);
        parcel.writeInt(this.f3347z);
    }

    t(Parcel parcel) {
        this.f3336o = parcel.readString();
        this.f3337p = parcel.readString();
        this.f3338q = parcel.readInt() != 0;
        this.f3339r = parcel.readInt();
        this.f3340s = parcel.readInt();
        this.f3341t = parcel.readString();
        this.f3342u = parcel.readInt() != 0;
        this.f3343v = parcel.readInt() != 0;
        this.f3344w = parcel.readInt() != 0;
        this.f3345x = parcel.readBundle();
        this.f3346y = parcel.readInt() != 0;
        this.A = parcel.readBundle();
        this.f3347z = parcel.readInt();
    }
}
