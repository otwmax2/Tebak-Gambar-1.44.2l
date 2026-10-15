package com.google.android.gms.auth.api.identity;

import android.net.Uri;
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
public final class SignInCredential extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SignInCredential> CREATOR = new zbm();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6689o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6690p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6691q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6692r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final Uri f6693s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6694t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6695u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6696v;

    @SafeParcelable.Constructor
    public SignInCredential(@SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param String str3, @SafeParcelable.Param String str4, @SafeParcelable.Param Uri uri, @SafeParcelable.Param String str5, @SafeParcelable.Param String str6, @SafeParcelable.Param String str7) {
        this.f6689o = Preconditions.g(str);
        this.f6690p = str2;
        this.f6691q = str3;
        this.f6692r = str4;
        this.f6693s = uri;
        this.f6694t = str5;
        this.f6695u = str6;
        this.f6696v = str7;
    }

    public String V3() {
        return this.f6692r;
    }

    public String W3() {
        return this.f6691q;
    }

    public String X3() {
        return this.f6695u;
    }

    public String Y3() {
        return this.f6689o;
    }

    public String Z3() {
        return this.f6694t;
    }

    public Uri a4() {
        return this.f6693s;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SignInCredential)) {
            return false;
        }
        SignInCredential signInCredential = (SignInCredential) obj;
        return Objects.b(this.f6689o, signInCredential.f6689o) && Objects.b(this.f6690p, signInCredential.f6690p) && Objects.b(this.f6691q, signInCredential.f6691q) && Objects.b(this.f6692r, signInCredential.f6692r) && Objects.b(this.f6693s, signInCredential.f6693s) && Objects.b(this.f6694t, signInCredential.f6694t) && Objects.b(this.f6695u, signInCredential.f6695u) && Objects.b(this.f6696v, signInCredential.f6696v);
    }

    public int hashCode() {
        return Objects.c(this.f6689o, this.f6690p, this.f6691q, this.f6692r, this.f6693s, this.f6694t, this.f6695u, this.f6696v);
    }

    public String s() {
        return this.f6690p;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, Y3(), false);
        SafeParcelWriter.t(parcel, 2, s(), false);
        SafeParcelWriter.t(parcel, 3, W3(), false);
        SafeParcelWriter.t(parcel, 4, V3(), false);
        SafeParcelWriter.s(parcel, 5, a4(), i10, false);
        SafeParcelWriter.t(parcel, 6, Z3(), false);
        SafeParcelWriter.t(parcel, 7, X3(), false);
        SafeParcelWriter.t(parcel, 8, this.f6696v, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
