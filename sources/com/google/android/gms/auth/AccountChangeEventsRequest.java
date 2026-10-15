package com.google.android.gms.auth;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
public class AccountChangeEventsRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AccountChangeEventsRequest> CREATOR = new zzb();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.VersionField
    final int f6515o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    int f6516p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    @Deprecated
    String f6517q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    Account f6518r;

    public AccountChangeEventsRequest() {
        this.f6515o = 1;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f6515o);
        SafeParcelWriter.l(parcel, 2, this.f6516p);
        SafeParcelWriter.t(parcel, 3, this.f6517q, false);
        SafeParcelWriter.s(parcel, 4, this.f6518r, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }

    @SafeParcelable.Constructor
    AccountChangeEventsRequest(@SafeParcelable.Param int i10, @SafeParcelable.Param int i11, @SafeParcelable.Param String str, @SafeParcelable.Param Account account) {
        this.f6515o = i10;
        this.f6516p = i11;
        this.f6517q = str;
        if (account != null || TextUtils.isEmpty(str)) {
            this.f6518r = account;
        } else {
            this.f6518r = new Account(str, "com.google");
        }
    }
}
