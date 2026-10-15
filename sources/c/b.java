package c;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import c.a;

/* JADX INFO: compiled from: ResultReceiver.java */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
public class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final boolean f4742o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final Handler f4743p = null;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    c.a f4744q;

    /* JADX INFO: compiled from: ResultReceiver.java */
    class a implements Parcelable.Creator<b> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public b createFromParcel(Parcel parcel) {
            return new b(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public b[] newArray(int i10) {
            return new b[i10];
        }
    }

    /* JADX INFO: renamed from: c.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ResultReceiver.java */
    class BinderC0084b extends a.AbstractBinderC0082a {
        BinderC0084b() {
        }

        @Override // c.a
        public void Ka(int i10, Bundle bundle) {
            b bVar = b.this;
            Handler handler = bVar.f4743p;
            if (handler != null) {
                handler.post(bVar.new c(i10, bundle));
            } else {
                bVar.h(i10, bundle);
            }
        }
    }

    /* JADX INFO: compiled from: ResultReceiver.java */
    class c implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final int f4746o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final Bundle f4747p;

        c(int i10, Bundle bundle) {
            this.f4746o = i10;
            this.f4747p = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.h(this.f4746o, this.f4747p);
        }
    }

    b(Parcel parcel) {
        this.f4744q = a.AbstractBinderC0082a.P0(parcel.readStrongBinder());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected void h(int i10, Bundle bundle) {
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        synchronized (this) {
            if (this.f4744q == null) {
                this.f4744q = new BinderC0084b();
            }
            parcel.writeStrongBinder(this.f4744q.asBinder());
        }
    }
}
