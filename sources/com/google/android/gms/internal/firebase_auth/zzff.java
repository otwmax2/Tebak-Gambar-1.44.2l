package com.google.android.gms.internal.firebase_auth;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.facebook.AccessToken;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.DefaultClock;
import h5.a;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzff extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzff> CREATOR = new zzfe();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private String f22573o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private String f22574p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private Long f22575q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private String f22576r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private Long f22577s;

    public zzff() {
        this.f22577s = Long.valueOf(System.currentTimeMillis());
    }

    public static zzff W3(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            zzff zzffVar = new zzff();
            zzffVar.f22573o = jSONObject.optString("refresh_token", null);
            zzffVar.f22574p = jSONObject.optString("access_token", null);
            zzffVar.f22575q = Long.valueOf(jSONObject.optLong(AccessToken.EXPIRES_IN_KEY));
            zzffVar.f22576r = jSONObject.optString("token_type", null);
            zzffVar.f22577s = Long.valueOf(jSONObject.optLong("issued_at"));
            return zzffVar;
        } catch (JSONException e10) {
            Log.d("GetTokenResponse", "Failed to read GetTokenResponse from JSONObject");
            throw new a(e10);
        }
    }

    public final void V3(String str) {
        this.f22573o = Preconditions.g(str);
    }

    public final boolean X3() {
        return DefaultClock.d().a() + 300000 < this.f22577s.longValue() + (this.f22575q.longValue() * 1000);
    }

    public final String Y3() {
        return this.f22573o;
    }

    public final String Z3() {
        return this.f22574p;
    }

    public final long a4() {
        Long l10 = this.f22575q;
        if (l10 == null) {
            return 0L;
        }
        return l10.longValue();
    }

    public final long b4() {
        return this.f22577s.longValue();
    }

    public final String c4() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("refresh_token", this.f22573o);
            jSONObject.put("access_token", this.f22574p);
            jSONObject.put(AccessToken.EXPIRES_IN_KEY, this.f22575q);
            jSONObject.put("token_type", this.f22576r);
            jSONObject.put("issued_at", this.f22577s);
            return jSONObject.toString();
        } catch (JSONException e10) {
            Log.d("GetTokenResponse", "Failed to convert GetTokenResponse to JSON");
            throw new a(e10);
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 2, this.f22573o, false);
        SafeParcelWriter.t(parcel, 3, this.f22574p, false);
        SafeParcelWriter.q(parcel, 4, Long.valueOf(a4()), false);
        SafeParcelWriter.t(parcel, 5, this.f22576r, false);
        SafeParcelWriter.q(parcel, 6, Long.valueOf(this.f22577s.longValue()), false);
        SafeParcelWriter.b(parcel, iA);
    }

    @SafeParcelable.Constructor
    zzff(@SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param Long l10, @SafeParcelable.Param String str3, @SafeParcelable.Param Long l11) {
        this.f22573o = str;
        this.f22574p = str2;
        this.f22575q = l10;
        this.f22576r = str3;
        this.f22577s = l11;
    }
}
