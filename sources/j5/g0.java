package j5;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class g0 implements g5.t {
    public static final Parcelable.Creator<g0> CREATOR = new j0();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private long f30701o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private long f30702p;

    @SafeParcelable.Constructor
    public g0(@SafeParcelable.Param long j10, @SafeParcelable.Param long j11) {
        this.f30701o = j10;
        this.f30702p = j11;
    }

    public static g0 v(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            return new g0(jSONObject.getLong("lastSignInTimestamp"), jSONObject.getLong("creationTimestamp"));
        } catch (JSONException unused) {
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final long h() {
        return this.f30702p;
    }

    public final long t() {
        return this.f30701o;
    }

    public final JSONObject w() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("lastSignInTimestamp", this.f30701o);
            jSONObject.put("creationTimestamp", this.f30702p);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.p(parcel, 1, t());
        SafeParcelWriter.p(parcel, 2, h());
        SafeParcelWriter.b(parcel, iA);
    }
}
