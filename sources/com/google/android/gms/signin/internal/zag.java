package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class zag extends AbstractSafeParcelable implements Result {
    public static final Parcelable.Creator<zag> CREATOR = new zah();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final List<String> f24910o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f24911p;

    @SafeParcelable.Constructor
    public zag(@SafeParcelable.Param List<String> list, @SafeParcelable.Param String str) {
        this.f24910o = list;
        this.f24911p = str;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status V2() {
        return this.f24911p != null ? Status.f6973u : Status.f6977y;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.v(parcel, 1, this.f24910o, false);
        SafeParcelWriter.t(parcel, 2, this.f24911p, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
