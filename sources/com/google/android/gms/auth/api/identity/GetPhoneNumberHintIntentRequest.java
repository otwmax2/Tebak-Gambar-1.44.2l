package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
public class GetPhoneNumberHintIntentRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GetPhoneNumberHintIntentRequest> CREATOR = new zbe();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f6670o;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
    public static final class Builder {
        private Builder() {
        }
    }

    @SafeParcelable.Constructor
    GetPhoneNumberHintIntentRequest(@SafeParcelable.Param int i10) {
        this.f6670o = i10;
    }

    public boolean equals(Object obj) {
        if (obj instanceof GetPhoneNumberHintIntentRequest) {
            return Objects.b(Integer.valueOf(this.f6670o), Integer.valueOf(((GetPhoneNumberHintIntentRequest) obj).f6670o));
        }
        return false;
    }

    public int hashCode() {
        return Objects.c(Integer.valueOf(this.f6670o));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f6670o);
        SafeParcelWriter.b(parcel, iA);
    }
}
