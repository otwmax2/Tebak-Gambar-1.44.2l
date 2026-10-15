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
public class SavePasswordRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SavePasswordRequest> CREATOR = new zbk();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final SignInPassword f6685o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6686p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f6687q;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
    public static final class Builder {
    }

    @SafeParcelable.Constructor
    SavePasswordRequest(@SafeParcelable.Param SignInPassword signInPassword, @SafeParcelable.Param String str, @SafeParcelable.Param int i10) {
        this.f6685o = (SignInPassword) Preconditions.k(signInPassword);
        this.f6686p = str;
        this.f6687q = i10;
    }

    public SignInPassword V3() {
        return this.f6685o;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SavePasswordRequest)) {
            return false;
        }
        SavePasswordRequest savePasswordRequest = (SavePasswordRequest) obj;
        return Objects.b(this.f6685o, savePasswordRequest.f6685o) && Objects.b(this.f6686p, savePasswordRequest.f6686p) && this.f6687q == savePasswordRequest.f6687q;
    }

    public int hashCode() {
        return Objects.c(this.f6685o, this.f6686p);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 1, V3(), i10, false);
        SafeParcelWriter.t(parcel, 2, this.f6686p, false);
        SafeParcelWriter.l(parcel, 3, this.f6687q);
        SafeParcelWriter.b(parcel, iA);
    }
}
