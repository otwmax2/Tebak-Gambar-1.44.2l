package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
@SafeParcelable.Class
public final class zzs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzs> CREATOR = new zzt();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f5943o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f5944p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f5945q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    public final long f5946r;

    @SafeParcelable.Constructor
    public zzs(@SafeParcelable.Param int i10, @SafeParcelable.Param int i11, @SafeParcelable.Param String str, @SafeParcelable.Param long j10) {
        this.f5943o = i10;
        this.f5944p = i11;
        this.f5945q = str;
        this.f5946r = j10;
    }

    public static zzs V3(JSONObject jSONObject) throws JSONException {
        return new zzs(jSONObject.getInt("type_num"), jSONObject.getInt("precision_num"), jSONObject.getString("currency"), jSONObject.getLong(SDKConstants.PARAM_VALUE));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f5943o);
        SafeParcelWriter.l(parcel, 2, this.f5944p);
        SafeParcelWriter.t(parcel, 3, this.f5945q, false);
        SafeParcelWriter.p(parcel, 4, this.f5946r);
        SafeParcelWriter.b(parcel, iA);
    }
}
