package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.fragment.app.w;
import androidx.lifecycle.j;
import java.util.ArrayList;

/* JADX INFO: compiled from: BackStackState.java */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a();
    final ArrayList<String> A;
    final boolean B;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final int[] f3141o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final ArrayList<String> f3142p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final int[] f3143q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final int[] f3144r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final int f3145s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final String f3146t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final int f3147u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    final int f3148v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    final CharSequence f3149w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    final int f3150x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    final CharSequence f3151y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    final ArrayList<String> f3152z;

    /* JADX INFO: compiled from: BackStackState.java */
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

    public b(androidx.fragment.app.a aVar) {
        int size = aVar.f3361c.size();
        this.f3141o = new int[size * 5];
        if (!aVar.f3367i) {
            throw new IllegalStateException("Not on back stack");
        }
        this.f3142p = new ArrayList<>(size);
        this.f3143q = new int[size];
        this.f3144r = new int[size];
        int i10 = 0;
        int i11 = 0;
        while (i10 < size) {
            w.a aVar2 = aVar.f3361c.get(i10);
            int i12 = i11 + 1;
            this.f3141o[i11] = aVar2.f3378a;
            ArrayList<String> arrayList = this.f3142p;
            Fragment fragment = aVar2.f3379b;
            arrayList.add(fragment != null ? fragment.mWho : null);
            int[] iArr = this.f3141o;
            int i13 = i12 + 1;
            iArr[i12] = aVar2.f3380c;
            int i14 = i13 + 1;
            iArr[i13] = aVar2.f3381d;
            int i15 = i14 + 1;
            iArr[i14] = aVar2.f3382e;
            iArr[i15] = aVar2.f3383f;
            this.f3143q[i10] = aVar2.f3384g.ordinal();
            this.f3144r[i10] = aVar2.f3385h.ordinal();
            i10++;
            i11 = i15 + 1;
        }
        this.f3145s = aVar.f3366h;
        this.f3146t = aVar.f3369k;
        this.f3147u = aVar.f3135v;
        this.f3148v = aVar.f3370l;
        this.f3149w = aVar.f3371m;
        this.f3150x = aVar.f3372n;
        this.f3151y = aVar.f3373o;
        this.f3152z = aVar.f3374p;
        this.A = aVar.f3375q;
        this.B = aVar.f3376r;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public androidx.fragment.app.a h(n nVar) {
        androidx.fragment.app.a aVar = new androidx.fragment.app.a(nVar);
        int i10 = 0;
        int i11 = 0;
        while (i10 < this.f3141o.length) {
            w.a aVar2 = new w.a();
            int i12 = i10 + 1;
            aVar2.f3378a = this.f3141o[i10];
            if (n.F0(2)) {
                Log.v("FragmentManager", "Instantiate " + aVar + " op #" + i11 + " base fragment #" + this.f3141o[i12]);
            }
            String str = this.f3142p.get(i11);
            if (str != null) {
                aVar2.f3379b = nVar.g0(str);
            } else {
                aVar2.f3379b = null;
            }
            aVar2.f3384g = j.c.values()[this.f3143q[i11]];
            aVar2.f3385h = j.c.values()[this.f3144r[i11]];
            int[] iArr = this.f3141o;
            int i13 = i12 + 1;
            int i14 = iArr[i12];
            aVar2.f3380c = i14;
            int i15 = i13 + 1;
            int i16 = iArr[i13];
            aVar2.f3381d = i16;
            int i17 = i15 + 1;
            int i18 = iArr[i15];
            aVar2.f3382e = i18;
            int i19 = iArr[i17];
            aVar2.f3383f = i19;
            aVar.f3362d = i14;
            aVar.f3363e = i16;
            aVar.f3364f = i18;
            aVar.f3365g = i19;
            aVar.e(aVar2);
            i11++;
            i10 = i17 + 1;
        }
        aVar.f3366h = this.f3145s;
        aVar.f3369k = this.f3146t;
        aVar.f3135v = this.f3147u;
        aVar.f3367i = true;
        aVar.f3370l = this.f3148v;
        aVar.f3371m = this.f3149w;
        aVar.f3372n = this.f3150x;
        aVar.f3373o = this.f3151y;
        aVar.f3374p = this.f3152z;
        aVar.f3375q = this.A;
        aVar.f3376r = this.B;
        aVar.p(1);
        return aVar;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeIntArray(this.f3141o);
        parcel.writeStringList(this.f3142p);
        parcel.writeIntArray(this.f3143q);
        parcel.writeIntArray(this.f3144r);
        parcel.writeInt(this.f3145s);
        parcel.writeString(this.f3146t);
        parcel.writeInt(this.f3147u);
        parcel.writeInt(this.f3148v);
        TextUtils.writeToParcel(this.f3149w, parcel, 0);
        parcel.writeInt(this.f3150x);
        TextUtils.writeToParcel(this.f3151y, parcel, 0);
        parcel.writeStringList(this.f3152z);
        parcel.writeStringList(this.A);
        parcel.writeInt(this.B ? 1 : 0);
    }

    public b(Parcel parcel) {
        this.f3141o = parcel.createIntArray();
        this.f3142p = parcel.createStringArrayList();
        this.f3143q = parcel.createIntArray();
        this.f3144r = parcel.createIntArray();
        this.f3145s = parcel.readInt();
        this.f3146t = parcel.readString();
        this.f3147u = parcel.readInt();
        this.f3148v = parcel.readInt();
        this.f3149w = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f3150x = parcel.readInt();
        this.f3151y = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f3152z = parcel.createStringArrayList();
        this.A = parcel.createStringArrayList();
        this.B = parcel.readInt() != 0;
    }
}
