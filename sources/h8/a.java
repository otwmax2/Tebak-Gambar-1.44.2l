package h8;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: TGAppReview.java */
/* JADX INFO: loaded from: classes2.dex */
public class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new C0174a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f30284o;

    /* JADX INFO: renamed from: h8.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: TGAppReview.java */
    class C0174a implements Parcelable.Creator<a> {
        C0174a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public a[] newArray(int i10) {
            return new a[i10];
        }
    }

    public a(boolean z10) {
        this.f30284o = z10;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeByte(this.f30284o ? (byte) 1 : (byte) 0);
    }

    protected a(Parcel parcel) {
        this.f30284o = parcel.readByte() != 0;
    }
}
