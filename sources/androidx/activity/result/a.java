package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: ActivityResult.java */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new C0010a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f248o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Intent f249p;

    /* JADX INFO: renamed from: androidx.activity.result.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ActivityResult.java */
    class C0010a implements Parcelable.Creator<a> {
        C0010a() {
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

    public a(int i10, Intent intent) {
        this.f248o = i10;
        this.f249p = intent;
    }

    public static String v(int i10) {
        return i10 != -1 ? i10 != 0 ? String.valueOf(i10) : "RESULT_CANCELED" : "RESULT_OK";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Intent h() {
        return this.f249p;
    }

    public int t() {
        return this.f248o;
    }

    public String toString() {
        return "ActivityResult{resultCode=" + v(this.f248o) + ", data=" + this.f249p + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f248o);
        parcel.writeInt(this.f249p == null ? 0 : 1);
        Intent intent = this.f249p;
        if (intent != null) {
            intent.writeToParcel(parcel, i10);
        }
    }

    a(Parcel parcel) {
        this.f248o = parcel.readInt();
        this.f249p = parcel.readInt() == 0 ? null : (Intent) Intent.CREATOR.createFromParcel(parcel);
    }
}
