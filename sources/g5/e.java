package g5;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public class e extends d {
    public static final Parcelable.Creator<e> CREATOR = new r0();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private String f29865o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private String f29866p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f29867q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private String f29868r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private boolean f29869s;

    @SafeParcelable.Constructor
    e(@SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param String str3, @SafeParcelable.Param String str4, @SafeParcelable.Param boolean z10) {
        this.f29865o = Preconditions.g(str);
        if (TextUtils.isEmpty(str2) && TextUtils.isEmpty(str3)) {
            throw new IllegalArgumentException("Cannot create an EmailAuthCredential without a password or emailLink.");
        }
        this.f29866p = str2;
        this.f29867q = str3;
        this.f29868r = str4;
        this.f29869s = z10;
    }

    @Override // g5.d
    public String V3() {
        return "password";
    }

    @Override // g5.d
    public String W3() {
        return !TextUtils.isEmpty(this.f29866p) ? "password" : "emailLink";
    }

    @Override // g5.d
    public final d X3() {
        return new e(this.f29865o, this.f29866p, this.f29867q, this.f29868r, this.f29869s);
    }

    public final e Y3(s sVar) {
        this.f29868r = sVar.c();
        this.f29869s = true;
        return this;
    }

    public final String Z3() {
        return this.f29865o;
    }

    public final String a4() {
        return this.f29866p;
    }

    public final String b4() {
        return this.f29867q;
    }

    public final boolean e() {
        return !TextUtils.isEmpty(this.f29867q);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, this.f29865o, false);
        SafeParcelWriter.t(parcel, 2, this.f29866p, false);
        SafeParcelWriter.t(parcel, 3, this.f29867q, false);
        SafeParcelWriter.t(parcel, 4, this.f29868r, false);
        SafeParcelWriter.c(parcel, 5, this.f29869s);
        SafeParcelWriter.b(parcel, iA);
    }
}
