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
public class GetSignInIntentRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GetSignInIntentRequest> CREATOR = new zbf();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6671o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6672p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private String f6673q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6674r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f6675s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f6676t;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
    public static final class Builder {
    }

    @SafeParcelable.Constructor
    GetSignInIntentRequest(@SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param String str3, @SafeParcelable.Param String str4, @SafeParcelable.Param boolean z10, @SafeParcelable.Param int i10) {
        Preconditions.k(str);
        this.f6671o = str;
        this.f6672p = str2;
        this.f6673q = str3;
        this.f6674r = str4;
        this.f6675s = z10;
        this.f6676t = i10;
    }

    public String V3() {
        return this.f6672p;
    }

    public String W3() {
        return this.f6674r;
    }

    public String X3() {
        return this.f6671o;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GetSignInIntentRequest)) {
            return false;
        }
        GetSignInIntentRequest getSignInIntentRequest = (GetSignInIntentRequest) obj;
        return Objects.b(this.f6671o, getSignInIntentRequest.f6671o) && Objects.b(this.f6674r, getSignInIntentRequest.f6674r) && Objects.b(this.f6672p, getSignInIntentRequest.f6672p) && Objects.b(Boolean.valueOf(this.f6675s), Boolean.valueOf(getSignInIntentRequest.f6675s)) && this.f6676t == getSignInIntentRequest.f6676t;
    }

    public int hashCode() {
        return Objects.c(this.f6671o, this.f6672p, this.f6674r, Boolean.valueOf(this.f6675s), Integer.valueOf(this.f6676t));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, X3(), false);
        SafeParcelWriter.t(parcel, 2, V3(), false);
        SafeParcelWriter.t(parcel, 3, this.f6673q, false);
        SafeParcelWriter.t(parcel, 4, W3(), false);
        SafeParcelWriter.c(parcel, 5, this.f6675s);
        SafeParcelWriter.l(parcel, 6, this.f6676t);
        SafeParcelWriter.b(parcel, iA);
    }
}
