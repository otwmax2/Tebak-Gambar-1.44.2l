package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
@SafeParcelable.Class
@SafeParcelable.Reserved
public class GetServiceRequest extends AbstractSafeParcelable {

    @SafeParcelable.Field
    boolean A;

    @SafeParcelable.Field
    private String B;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.VersionField
    final int f7385o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    final int f7386p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    int f7387q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    String f7388r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    IBinder f7389s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    Scope[] f7390t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    Bundle f7391u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    Account f7392v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SafeParcelable.Field
    Feature[] f7393w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @SafeParcelable.Field
    Feature[] f7394x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @SafeParcelable.Field
    boolean f7395y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @SafeParcelable.Field
    int f7396z;
    public static final Parcelable.Creator<GetServiceRequest> CREATOR = new zzm();
    static final Scope[] C = new Scope[0];
    static final Feature[] D = new Feature[0];

    @SafeParcelable.Constructor
    GetServiceRequest(@SafeParcelable.Param int i10, @SafeParcelable.Param int i11, @SafeParcelable.Param int i12, @SafeParcelable.Param String str, @SafeParcelable.Param IBinder iBinder, @SafeParcelable.Param Scope[] scopeArr, @SafeParcelable.Param Bundle bundle, @SafeParcelable.Param Account account, @SafeParcelable.Param Feature[] featureArr, @SafeParcelable.Param Feature[] featureArr2, @SafeParcelable.Param boolean z10, @SafeParcelable.Param int i13, @SafeParcelable.Param boolean z11, @SafeParcelable.Param String str2) {
        scopeArr = scopeArr == null ? C : scopeArr;
        bundle = bundle == null ? new Bundle() : bundle;
        featureArr = featureArr == null ? D : featureArr;
        featureArr2 = featureArr2 == null ? D : featureArr2;
        this.f7385o = i10;
        this.f7386p = i11;
        this.f7387q = i12;
        if ("com.google.android.gms".equals(str)) {
            this.f7388r = "com.google.android.gms";
        } else {
            this.f7388r = str;
        }
        if (i10 < 2) {
            this.f7392v = iBinder != null ? AccountAccessor.t1(IAccountAccessor.Stub.X0(iBinder)) : null;
        } else {
            this.f7389s = iBinder;
            this.f7392v = account;
        }
        this.f7390t = scopeArr;
        this.f7391u = bundle;
        this.f7393w = featureArr;
        this.f7394x = featureArr2;
        this.f7395y = z10;
        this.f7396z = i13;
        this.A = z11;
        this.B = str2;
    }

    public final String V3() {
        return this.B;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        zzm.a(this, parcel, i10);
    }
}
