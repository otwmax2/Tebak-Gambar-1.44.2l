package g5;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.firebase_auth.zzfy;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public class w extends d {
    public static final Parcelable.Creator<w> CREATOR = new u0();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f29900o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f29901p;

    @SafeParcelable.Constructor
    w(@SafeParcelable.Param String str, @SafeParcelable.Param String str2) {
        if (str == null && str2 == null) {
            throw new IllegalArgumentException("Must specify an idToken or an accessToken.");
        }
        this.f29900o = Z3(str, "idToken");
        this.f29901p = Z3(str2, SDKConstants.PARAM_ACCESS_TOKEN);
    }

    public static zzfy Y3(w wVar, String str) {
        Preconditions.k(wVar);
        return new zzfy(wVar.f29900o, wVar.f29901p, wVar.V3(), null, null, null, str, null, null);
    }

    private static String Z3(String str, String str2) {
        if (str == null || !TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException(String.valueOf(str2).concat(" must not be empty"));
    }

    @Override // g5.d
    public String V3() {
        return "google.com";
    }

    @Override // g5.d
    public String W3() {
        return "google.com";
    }

    @Override // g5.d
    public final d X3() {
        return new w(this.f29900o, this.f29901p);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, this.f29900o, false);
        SafeParcelWriter.t(parcel, 2, this.f29901p, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
