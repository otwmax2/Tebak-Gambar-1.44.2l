package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
@SafeParcelable.Class
public class MethodInvocation extends AbstractSafeParcelable {
    public static final Parcelable.Creator<MethodInvocation> CREATOR = new zan();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f7407o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f7408p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f7409q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final long f7410r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final long f7411s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f7412t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f7413u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f7414v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f7415w;

    @SafeParcelable.Constructor
    public MethodInvocation(@SafeParcelable.Param int i10, @SafeParcelable.Param int i11, @SafeParcelable.Param int i12, @SafeParcelable.Param long j10, @SafeParcelable.Param long j11, @SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param int i13, @SafeParcelable.Param int i14) {
        this.f7407o = i10;
        this.f7408p = i11;
        this.f7409q = i12;
        this.f7410r = j10;
        this.f7411s = j11;
        this.f7412t = str;
        this.f7413u = str2;
        this.f7414v = i13;
        this.f7415w = i14;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f7407o);
        SafeParcelWriter.l(parcel, 2, this.f7408p);
        SafeParcelWriter.l(parcel, 3, this.f7409q);
        SafeParcelWriter.p(parcel, 4, this.f7410r);
        SafeParcelWriter.p(parcel, 5, this.f7411s);
        SafeParcelWriter.t(parcel, 6, this.f7412t, false);
        SafeParcelWriter.t(parcel, 7, this.f7413u, false);
        SafeParcelWriter.l(parcel, 8, this.f7414v);
        SafeParcelWriter.l(parcel, 9, this.f7415w);
        SafeParcelWriter.b(parcel, iA);
    }
}
