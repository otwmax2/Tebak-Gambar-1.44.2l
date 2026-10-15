package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzbup extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbup> CREATOR = new zzbuq();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f11356o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f11357p;

    @SafeParcelable.Constructor
    public zzbup(@SafeParcelable.Param String str, @SafeParcelable.Param int i10) {
        this.f11356o = str;
        this.f11357p = i10;
    }

    public static zzbup V3(JSONArray jSONArray) throws JSONException {
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        return new zzbup(jSONArray.getJSONObject(0).optString("rb_type"), jSONArray.getJSONObject(0).optInt("rb_amount"));
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzbup)) {
            zzbup zzbupVar = (zzbup) obj;
            if (Objects.b(this.f11356o, zzbupVar.f11356o) && Objects.b(Integer.valueOf(this.f11357p), Integer.valueOf(zzbupVar.f11357p))) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.c(this.f11356o, Integer.valueOf(this.f11357p));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 2, this.f11356o, false);
        SafeParcelWriter.l(parcel, 3, this.f11357p);
        SafeParcelWriter.b(parcel, iA);
    }
}
