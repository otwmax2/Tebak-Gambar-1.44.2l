package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
public final class zat extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zat> CREATOR = new zau();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.VersionField
    final int f7489o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final Account f7490p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f7491q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final GoogleSignInAccount f7492r;

    @SafeParcelable.Constructor
    zat(@SafeParcelable.Param int i10, @SafeParcelable.Param Account account, @SafeParcelable.Param int i11, @SafeParcelable.Param GoogleSignInAccount googleSignInAccount) {
        this.f7489o = i10;
        this.f7490p = account;
        this.f7491q = i11;
        this.f7492r = googleSignInAccount;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f7489o);
        SafeParcelWriter.s(parcel, 2, this.f7490p, i10, false);
        SafeParcelWriter.l(parcel, 3, this.f7491q);
        SafeParcelWriter.s(parcel, 4, this.f7492r, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }

    public zat(Account account, int i10, GoogleSignInAccount googleSignInAccount) {
        this(2, account, i10, googleSignInAccount);
    }
}
