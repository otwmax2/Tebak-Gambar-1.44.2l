package com.google.android.gms.auth.api.proxy;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdkWithMembers;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes.dex */
@ShowFirstParty
@KeepForSdkWithMembers
@SafeParcelable.Class
public class ProxyResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ProxyResponse> CREATOR = new zzb();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f6714o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final PendingIntent f6715p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f6716q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    public final byte[] f6717r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.VersionField
    final int f6718s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    final Bundle f6719t;

    @SafeParcelable.Constructor
    ProxyResponse(@SafeParcelable.Param int i10, @SafeParcelable.Param int i11, @SafeParcelable.Param PendingIntent pendingIntent, @SafeParcelable.Param int i12, @SafeParcelable.Param Bundle bundle, @SafeParcelable.Param byte[] bArr) {
        this.f6718s = i10;
        this.f6714o = i11;
        this.f6716q = i12;
        this.f6719t = bundle;
        this.f6717r = bArr;
        this.f6715p = pendingIntent;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f6714o);
        SafeParcelWriter.s(parcel, 2, this.f6715p, i10, false);
        SafeParcelWriter.l(parcel, 3, this.f6716q);
        SafeParcelWriter.f(parcel, 4, this.f6719t, false);
        SafeParcelWriter.g(parcel, 5, this.f6717r, false);
        SafeParcelWriter.l(parcel, 1000, this.f6718s);
        SafeParcelWriter.b(parcel, iA);
    }
}
