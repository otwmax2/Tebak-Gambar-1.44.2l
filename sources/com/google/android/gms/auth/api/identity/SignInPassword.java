package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
public class SignInPassword extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SignInPassword> CREATOR = new zbo();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6697o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6698p;

    @SafeParcelable.Constructor
    public SignInPassword(@SafeParcelable.Param String str, @SafeParcelable.Param String str2) {
        this.f6697o = Preconditions.h(((String) Preconditions.l(str, "Account identifier cannot be null")).trim(), "Account identifier cannot be empty");
        this.f6698p = Preconditions.g(str2);
    }

    public String V3() {
        return this.f6697o;
    }

    public String W3() {
        return this.f6698p;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SignInPassword)) {
            return false;
        }
        SignInPassword signInPassword = (SignInPassword) obj;
        return Objects.b(this.f6697o, signInPassword.f6697o) && Objects.b(this.f6698p, signInPassword.f6698p);
    }

    public int hashCode() {
        return Objects.c(this.f6697o, this.f6698p);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, V3(), false);
        SafeParcelWriter.t(parcel, 2, W3(), false);
        SafeParcelWriter.b(parcel, iA);
    }
}
