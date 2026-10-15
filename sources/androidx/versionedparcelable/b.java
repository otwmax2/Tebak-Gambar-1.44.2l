package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;
import com.vungle.mediation.BuildConfig;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: VersionedParcelParcel.java */
/* JADX INFO: loaded from: classes.dex */
class b extends a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SparseIntArray f4325d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Parcel f4326e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f4327f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f4328g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f4329h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f4330i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f4331j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f4332k;

    b(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), BuildConfig.FLAVOR, new o.a(), new o.a(), new o.a());
    }

    @Override // androidx.versionedparcelable.a
    public void A(byte[] bArr) {
        if (bArr == null) {
            this.f4326e.writeInt(-1);
        } else {
            this.f4326e.writeInt(bArr.length);
            this.f4326e.writeByteArray(bArr);
        }
    }

    @Override // androidx.versionedparcelable.a
    protected void C(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.f4326e, 0);
    }

    @Override // androidx.versionedparcelable.a
    public void E(int i10) {
        this.f4326e.writeInt(i10);
    }

    @Override // androidx.versionedparcelable.a
    public void G(Parcelable parcelable) {
        this.f4326e.writeParcelable(parcelable, 0);
    }

    @Override // androidx.versionedparcelable.a
    public void I(String str) {
        this.f4326e.writeString(str);
    }

    @Override // androidx.versionedparcelable.a
    public void a() {
        int i10 = this.f4330i;
        if (i10 >= 0) {
            int i11 = this.f4325d.get(i10);
            int iDataPosition = this.f4326e.dataPosition();
            this.f4326e.setDataPosition(i11);
            this.f4326e.writeInt(iDataPosition - i11);
            this.f4326e.setDataPosition(iDataPosition);
        }
    }

    @Override // androidx.versionedparcelable.a
    protected a b() {
        Parcel parcel = this.f4326e;
        int iDataPosition = parcel.dataPosition();
        int i10 = this.f4331j;
        if (i10 == this.f4327f) {
            i10 = this.f4328g;
        }
        return new b(parcel, iDataPosition, i10, this.f4329h + "  ", this.f4322a, this.f4323b, this.f4324c);
    }

    @Override // androidx.versionedparcelable.a
    public boolean g() {
        return this.f4326e.readInt() != 0;
    }

    @Override // androidx.versionedparcelable.a
    public byte[] i() {
        int i10 = this.f4326e.readInt();
        if (i10 < 0) {
            return null;
        }
        byte[] bArr = new byte[i10];
        this.f4326e.readByteArray(bArr);
        return bArr;
    }

    @Override // androidx.versionedparcelable.a
    protected CharSequence k() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.f4326e);
    }

    @Override // androidx.versionedparcelable.a
    public boolean m(int i10) {
        while (this.f4331j < this.f4328g) {
            int i11 = this.f4332k;
            if (i11 == i10) {
                return true;
            }
            if (String.valueOf(i11).compareTo(String.valueOf(i10)) > 0) {
                return false;
            }
            this.f4326e.setDataPosition(this.f4331j);
            int i12 = this.f4326e.readInt();
            this.f4332k = this.f4326e.readInt();
            this.f4331j += i12;
        }
        return this.f4332k == i10;
    }

    @Override // androidx.versionedparcelable.a
    public int o() {
        return this.f4326e.readInt();
    }

    @Override // androidx.versionedparcelable.a
    public <T extends Parcelable> T q() {
        return (T) this.f4326e.readParcelable(getClass().getClassLoader());
    }

    @Override // androidx.versionedparcelable.a
    public String s() {
        return this.f4326e.readString();
    }

    @Override // androidx.versionedparcelable.a
    public void w(int i10) {
        a();
        this.f4330i = i10;
        this.f4325d.put(i10, this.f4326e.dataPosition());
        E(0);
        E(i10);
    }

    @Override // androidx.versionedparcelable.a
    public void y(boolean z10) {
        this.f4326e.writeInt(z10 ? 1 : 0);
    }

    private b(Parcel parcel, int i10, int i11, String str, o.a<String, Method> aVar, o.a<String, Method> aVar2, o.a<String, Class> aVar3) {
        super(aVar, aVar2, aVar3);
        this.f4325d = new SparseIntArray();
        this.f4330i = -1;
        this.f4331j = 0;
        this.f4332k = -1;
        this.f4326e = parcel;
        this.f4327f = i10;
        this.f4328g = i11;
        this.f4331j = i10;
        this.f4329h = str;
    }
}
