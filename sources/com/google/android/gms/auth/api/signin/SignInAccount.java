package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public class SignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<SignInAccount> CREATOR = new zbc();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    @Deprecated
    String f6757o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private GoogleSignInAccount f6758p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    @Deprecated
    String f6759q;

    @SafeParcelable.Constructor
    SignInAccount(@SafeParcelable.Param String str, @SafeParcelable.Param GoogleSignInAccount googleSignInAccount, @SafeParcelable.Param String str2) {
        this.f6758p = googleSignInAccount;
        this.f6757o = Preconditions.h(str, "8.3 and 8.4 SDKs require non-null email");
        this.f6759q = Preconditions.h(str2, "8.3 and 8.4 SDKs require non-null userId");
    }

    public final GoogleSignInAccount V3() {
        return this.f6758p;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 4, this.f6757o, false);
        SafeParcelWriter.s(parcel, 7, this.f6758p, i10, false);
        SafeParcelWriter.t(parcel, 8, this.f6759q, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
