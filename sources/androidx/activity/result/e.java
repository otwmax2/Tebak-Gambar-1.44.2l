package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: IntentSenderRequest.java */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
public final class e implements Parcelable {
    public static final Parcelable.Creator<e> CREATOR = new a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final IntentSender f250o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Intent f251p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f252q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f253r;

    /* JADX INFO: compiled from: IntentSenderRequest.java */
    class a implements Parcelable.Creator<e> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public e createFromParcel(Parcel parcel) {
            return new e(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public e[] newArray(int i10) {
            return new e[i10];
        }
    }

    /* JADX INFO: compiled from: IntentSenderRequest.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private IntentSender f254a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Intent f255b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f256c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f257d;

        public b(IntentSender intentSender) {
            this.f254a = intentSender;
        }

        public e a() {
            return new e(this.f254a, this.f255b, this.f256c, this.f257d);
        }

        public b b(Intent intent) {
            this.f255b = intent;
            return this;
        }

        public b c(int i10, int i11) {
            this.f257d = i10;
            this.f256c = i11;
            return this;
        }
    }

    e(IntentSender intentSender, Intent intent, int i10, int i11) {
        this.f250o = intentSender;
        this.f251p = intent;
        this.f252q = i10;
        this.f253r = i11;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Intent h() {
        return this.f251p;
    }

    public int t() {
        return this.f252q;
    }

    public int v() {
        return this.f253r;
    }

    public IntentSender w() {
        return this.f250o;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(this.f250o, i10);
        parcel.writeParcelable(this.f251p, i10);
        parcel.writeInt(this.f252q);
        parcel.writeInt(this.f253r);
    }

    e(Parcel parcel) {
        this.f250o = (IntentSender) parcel.readParcelable(IntentSender.class.getClassLoader());
        this.f251p = (Intent) parcel.readParcelable(Intent.class.getClassLoader());
        this.f252q = parcel.readInt();
        this.f253r = parcel.readInt();
    }
}
