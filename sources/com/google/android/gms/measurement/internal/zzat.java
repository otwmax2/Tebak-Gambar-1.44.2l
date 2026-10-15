package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzat extends AbstractSafeParcelable implements Iterable<String> {
    public static final Parcelable.Creator<zzat> CREATOR = new zzau();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final Bundle f24453o;

    @SafeParcelable.Constructor
    zzat(@SafeParcelable.Param Bundle bundle) {
        this.f24453o = bundle;
    }

    public final int V3() {
        return this.f24453o.size();
    }

    public final Bundle X3() {
        return new Bundle(this.f24453o);
    }

    final Double Y3(String str) {
        return Double.valueOf(this.f24453o.getDouble(SDKConstants.PARAM_VALUE));
    }

    final Long Z3(String str) {
        return Long.valueOf(this.f24453o.getLong(SDKConstants.PARAM_VALUE));
    }

    final Object a4(String str) {
        return this.f24453o.get(str);
    }

    final String b4(String str) {
        return this.f24453o.getString(str);
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        return new i(this);
    }

    public final String toString() {
        return this.f24453o.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.f(parcel, 2, X3(), false);
        SafeParcelWriter.b(parcel, iA);
    }
}
