package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

/* JADX INFO: compiled from: ObservableInt.java */
/* JADX INFO: loaded from: classes.dex */
public class n extends b implements Parcelable, Serializable {
    public static final Parcelable.Creator<n> CREATOR = new a();
    static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f2642p;

    /* JADX INFO: compiled from: ObservableInt.java */
    class a implements Parcelable.Creator<n> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public n createFromParcel(Parcel parcel) {
            return new n(parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public n[] newArray(int i10) {
            return new n[i10];
        }
    }

    public n(int i10) {
        this.f2642p = i10;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f2642p);
    }

    public int y() {
        return this.f2642p;
    }

    public void z(int i10) {
        if (i10 != this.f2642p) {
            this.f2642p = i10;
            w();
        }
    }

    public n() {
    }
}
