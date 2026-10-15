package g5;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.FacebookSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.firebase_auth.zzfy;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public class f extends d {
    public static final Parcelable.Creator<f> CREATOR = new s0();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f29870o;

    @SafeParcelable.Constructor
    f(@SafeParcelable.Param String str) {
        this.f29870o = Preconditions.g(str);
    }

    public static zzfy Y3(f fVar, String str) {
        Preconditions.k(fVar);
        return new zzfy(null, fVar.f29870o, fVar.V3(), null, null, null, str, null, null);
    }

    @Override // g5.d
    public String V3() {
        return FacebookSdk.FACEBOOK_COM;
    }

    @Override // g5.d
    public String W3() {
        return FacebookSdk.FACEBOOK_COM;
    }

    @Override // g5.d
    public final d X3() {
        return new f(this.f29870o);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, this.f29870o, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
