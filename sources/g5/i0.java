package g5;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.firebase_auth.zzfy;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public class i0 extends d {
    public static final Parcelable.Creator<i0> CREATOR = new l0();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private String f29877o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private String f29878p;

    @SafeParcelable.Constructor
    i0(@SafeParcelable.Param String str, @SafeParcelable.Param String str2) {
        this.f29877o = Preconditions.g(str);
        this.f29878p = Preconditions.g(str2);
    }

    public static zzfy Y3(i0 i0Var, String str) {
        Preconditions.k(i0Var);
        return new zzfy(null, i0Var.f29877o, i0Var.V3(), null, i0Var.f29878p, null, str, null, null);
    }

    @Override // g5.d
    public String V3() {
        return "twitter.com";
    }

    @Override // g5.d
    public String W3() {
        return "twitter.com";
    }

    @Override // g5.d
    public final d X3() {
        return new i0(this.f29877o, this.f29878p);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, this.f29877o, false);
        SafeParcelWriter.t(parcel, 2, this.f29878p, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
