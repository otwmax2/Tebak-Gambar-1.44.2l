package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
public class AccountChangeEvent extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AccountChangeEvent> CREATOR = new zza();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.VersionField
    final int f6509o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    final long f6510p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    final String f6511q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    final int f6512r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    final int f6513s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    final String f6514t;

    @SafeParcelable.Constructor
    AccountChangeEvent(@SafeParcelable.Param int i10, @SafeParcelable.Param long j10, @SafeParcelable.Param String str, @SafeParcelable.Param int i11, @SafeParcelable.Param int i12, @SafeParcelable.Param String str2) {
        this.f6509o = i10;
        this.f6510p = j10;
        this.f6511q = (String) Preconditions.k(str);
        this.f6512r = i11;
        this.f6513s = i12;
        this.f6514t = str2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AccountChangeEvent)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        AccountChangeEvent accountChangeEvent = (AccountChangeEvent) obj;
        return this.f6509o == accountChangeEvent.f6509o && this.f6510p == accountChangeEvent.f6510p && Objects.b(this.f6511q, accountChangeEvent.f6511q) && this.f6512r == accountChangeEvent.f6512r && this.f6513s == accountChangeEvent.f6513s && Objects.b(this.f6514t, accountChangeEvent.f6514t);
    }

    public int hashCode() {
        return Objects.c(Integer.valueOf(this.f6509o), Long.valueOf(this.f6510p), this.f6511q, Integer.valueOf(this.f6512r), Integer.valueOf(this.f6513s), this.f6514t);
    }

    public String toString() {
        int i10 = this.f6512r;
        String str = i10 != 1 ? i10 != 2 ? i10 != 3 ? i10 != 4 ? "UNKNOWN" : "RENAMED_TO" : "RENAMED_FROM" : "REMOVED" : "ADDED";
        String str2 = this.f6511q;
        String str3 = this.f6514t;
        int i11 = this.f6513s;
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 91 + str.length() + String.valueOf(str3).length());
        sb.append("AccountChangeEvent {accountName = ");
        sb.append(str2);
        sb.append(", changeType = ");
        sb.append(str);
        sb.append(", changeData = ");
        sb.append(str3);
        sb.append(", eventIndex = ");
        sb.append(i11);
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f6509o);
        SafeParcelWriter.p(parcel, 2, this.f6510p);
        SafeParcelWriter.t(parcel, 3, this.f6511q, false);
        SafeParcelWriter.l(parcel, 4, this.f6512r);
        SafeParcelWriter.l(parcel, 5, this.f6513s);
        SafeParcelWriter.t(parcel, 6, this.f6514t, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
