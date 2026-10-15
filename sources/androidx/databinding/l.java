package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

/* JADX INFO: compiled from: ObservableBoolean.java */
/* JADX INFO: loaded from: classes.dex */
public class l extends b implements Parcelable, Serializable {
    public static final Parcelable.Creator<l> CREATOR = new a();
    static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f2638p;

    /* JADX INFO: compiled from: ObservableBoolean.java */
    class a implements Parcelable.Creator<l> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public l createFromParcel(Parcel parcel) {
            return new l(parcel.readInt() == 1);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public l[] newArray(int i10) {
            return new l[i10];
        }
    }

    public l(boolean z10) {
        this.f2638p = z10;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f2638p ? 1 : 0);
    }

    public boolean y() {
        return this.f2638p;
    }

    public void z(boolean z10) {
        if (z10 != this.f2638p) {
            this.f2638p = z10;
            w();
        }
    }

    public l() {
    }
}
