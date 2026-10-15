package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
@Deprecated
public final class IdToken extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<IdToken> CREATOR = new zbf();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6645o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6646p;

    @SafeParcelable.Constructor
    public IdToken(@SafeParcelable.Param String str, @SafeParcelable.Param String str2) {
        Preconditions.b(!TextUtils.isEmpty(str), "account type string cannot be null or empty");
        Preconditions.b(!TextUtils.isEmpty(str2), "id token string cannot be null or empty");
        this.f6645o = str;
        this.f6646p = str2;
    }

    public String V3() {
        return this.f6645o;
    }

    public String W3() {
        return this.f6646p;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IdToken)) {
            return false;
        }
        IdToken idToken = (IdToken) obj;
        return Objects.b(this.f6645o, idToken.f6645o) && Objects.b(this.f6646p, idToken.f6646p);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, V3(), false);
        SafeParcelWriter.t(parcel, 2, W3(), false);
        SafeParcelWriter.b(parcel, iA);
    }
}
