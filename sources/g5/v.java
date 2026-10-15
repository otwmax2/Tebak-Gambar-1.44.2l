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
public class v extends d {
    public static final Parcelable.Creator<v> CREATOR = new t0();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private String f29899o;

    @SafeParcelable.Constructor
    v(@SafeParcelable.Param String str) {
        this.f29899o = Preconditions.g(str);
    }

    public static zzfy Y3(v vVar, String str) {
        Preconditions.k(vVar);
        return new zzfy(null, vVar.f29899o, vVar.V3(), null, null, null, str, null, null);
    }

    @Override // g5.d
    public String V3() {
        return "github.com";
    }

    @Override // g5.d
    public String W3() {
        return "github.com";
    }

    @Override // g5.d
    public final d X3() {
        return new v(this.f29899o);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, this.f29899o, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
