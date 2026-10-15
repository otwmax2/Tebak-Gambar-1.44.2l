package g5;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import javax.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
public class g0 extends z {
    public static final Parcelable.Creator<g0> CREATOR = new w0();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f29872o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field
    private final String f29873p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final long f29874q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f29875r;

    @SafeParcelable.Constructor
    public g0(@SafeParcelable.Param String str, @SafeParcelable.Param @Nullable String str2, @SafeParcelable.Param long j10, @SafeParcelable.Param String str3) {
        this.f29872o = Preconditions.g(str);
        this.f29873p = str2;
        this.f29874q = j10;
        this.f29875r = Preconditions.g(str3);
    }

    public static g0 Z3(JSONObject jSONObject) {
        if (jSONObject.has("enrollmentTimestamp")) {
            return new g0(jSONObject.optString("uid"), jSONObject.optString("displayName"), jSONObject.optLong("enrollmentTimestamp"), jSONObject.optString("phoneNumber"));
        }
        throw new IllegalArgumentException("An enrollment timestamp in seconds of UTC time since Unix epoch is required to build a PhoneMultiFactorInfo instance.");
    }

    @Override // g5.z
    public long V3() {
        return this.f29874q;
    }

    @Override // g5.z
    public String W3() {
        return this.f29872o;
    }

    @Override // g5.z
    @Nullable
    public JSONObject X3() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("factorIdKey", "phone");
            jSONObject.putOpt("uid", this.f29872o);
            jSONObject.putOpt("displayName", this.f29873p);
            jSONObject.putOpt("enrollmentTimestamp", Long.valueOf(this.f29874q));
            jSONObject.putOpt("phoneNumber", this.f29875r);
            return jSONObject;
        } catch (JSONException e10) {
            Log.d("PhoneMultiFactorInfo", "Failed to jsonify this object");
            throw new h5.a(e10);
        }
    }

    public String Y3() {
        return this.f29875r;
    }

    @Override // g5.z
    @Nullable
    public String s() {
        return this.f29873p;
    }

    @Override // android.os.Parcelable
    @SuppressLint({"FirebaseUnknownNullness"})
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, W3(), false);
        SafeParcelWriter.t(parcel, 2, s(), false);
        SafeParcelWriter.p(parcel, 3, V3());
        SafeParcelWriter.t(parcel, 4, Y3(), false);
        SafeParcelWriter.b(parcel, iA);
    }
}
