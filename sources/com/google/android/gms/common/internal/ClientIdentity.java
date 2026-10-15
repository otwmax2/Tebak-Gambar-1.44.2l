package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
@SafeParcelable.Class
@SafeParcelable.Reserved
public class ClientIdentity extends AbstractSafeParcelable {

    @KeepForSdk
    public static final Parcelable.Creator<ClientIdentity> CREATOR = new zaa();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @KeepForSdk
    @SafeParcelable.Field
    public final int f7360o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @KeepForSdk
    @SafeParcelable.Field
    public final String f7361p;

    @SafeParcelable.Constructor
    public ClientIdentity(@SafeParcelable.Param int i10, @SafeParcelable.Param String str) {
        this.f7360o = i10;
        this.f7361p = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ClientIdentity)) {
            return false;
        }
        ClientIdentity clientIdentity = (ClientIdentity) obj;
        return clientIdentity.f7360o == this.f7360o && Objects.b(clientIdentity.f7361p, this.f7361p);
    }

    public final int hashCode() {
        return this.f7360o;
    }

    public final String toString() {
        int i10 = this.f7360o;
        String str = this.f7361p;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
        sb.append(i10);
        sb.append(CertificateUtil.DELIMITER);
        sb.append(str);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f7360o);
        SafeParcelWriter.t(parcel, 2, this.f7361p, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
