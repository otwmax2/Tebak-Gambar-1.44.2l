package com.google.android.gms.auth.api.proxy;

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
public class ProxyRequest extends AbstractSafeParcelable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f6708o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f6709p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    public final long f6710q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    public final byte[] f6711r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.VersionField
    final int f6712s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    Bundle f6713t;
    public static final Parcelable.Creator<ProxyRequest> CREATOR = new zza();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f6702u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int f6703v = 1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int f6704w = 2;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int f6705x = 3;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int f6706y = 4;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int f6707z = 5;
    public static final int A = 6;
    public static final int B = 7;
    public static final int C = 7;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
    @ShowFirstParty
    @KeepForSdkWithMembers
    public static class Builder {
    }

    @SafeParcelable.Constructor
    ProxyRequest(@SafeParcelable.Param int i10, @SafeParcelable.Param String str, @SafeParcelable.Param int i11, @SafeParcelable.Param long j10, @SafeParcelable.Param byte[] bArr, @SafeParcelable.Param Bundle bundle) {
        this.f6712s = i10;
        this.f6708o = str;
        this.f6709p = i11;
        this.f6710q = j10;
        this.f6711r = bArr;
        this.f6713t = bundle;
    }

    public String toString() {
        String str = this.f6708o;
        int i10 = this.f6709p;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 42);
        sb.append("ProxyRequest[ url: ");
        sb.append(str);
        sb.append(", method: ");
        sb.append(i10);
        sb.append(" ]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, this.f6708o, false);
        SafeParcelWriter.l(parcel, 2, this.f6709p);
        SafeParcelWriter.p(parcel, 3, this.f6710q);
        SafeParcelWriter.g(parcel, 4, this.f6711r, false);
        SafeParcelWriter.f(parcel, 5, this.f6713t, false);
        SafeParcelWriter.l(parcel, 1000, this.f6712s);
        SafeParcelWriter.b(parcel, iA);
    }
}
