package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class ParcelableVolumeInfo implements Parcelable {
    public static final Parcelable.Creator<ParcelableVolumeInfo> CREATOR = new a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f151o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f152p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f153q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f154r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f155s;

    static class a implements Parcelable.Creator<ParcelableVolumeInfo> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ParcelableVolumeInfo createFromParcel(Parcel parcel) {
            return new ParcelableVolumeInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ParcelableVolumeInfo[] newArray(int i10) {
            return new ParcelableVolumeInfo[i10];
        }
    }

    public ParcelableVolumeInfo(Parcel parcel) {
        this.f151o = parcel.readInt();
        this.f153q = parcel.readInt();
        this.f154r = parcel.readInt();
        this.f155s = parcel.readInt();
        this.f152p = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f151o);
        parcel.writeInt(this.f153q);
        parcel.writeInt(this.f154r);
        parcel.writeInt(this.f155s);
        parcel.writeInt(this.f152p);
    }
}
