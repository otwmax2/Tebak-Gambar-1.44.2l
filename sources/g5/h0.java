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
public class h0 extends d {
    public static final Parcelable.Creator<h0> CREATOR = new x0();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f29876o;

    @SafeParcelable.Constructor
    h0(@SafeParcelable.Param String str) {
        this.f29876o = Preconditions.g(str);
    }

    public static zzfy Y3(h0 h0Var, String str) {
        Preconditions.k(h0Var);
        return new zzfy(null, null, h0Var.V3(), null, null, h0Var.f29876o, str, null, null);
    }

    @Override // g5.d
    public String V3() {
        return "playgames.google.com";
    }

    @Override // g5.d
    public String W3() {
        return "playgames.google.com";
    }

    @Override // g5.d
    public final d X3() {
        return new h0(this.f29876o);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, this.f29876o, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
