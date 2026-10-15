package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
public class SaveAccountLinkingTokenResult extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SaveAccountLinkingTokenResult> CREATOR = new zbj();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final PendingIntent f6684o;

    @SafeParcelable.Constructor
    public SaveAccountLinkingTokenResult(@SafeParcelable.Param PendingIntent pendingIntent) {
        this.f6684o = pendingIntent;
    }

    public PendingIntent V3() {
        return this.f6684o;
    }

    public boolean equals(Object obj) {
        if (obj instanceof SaveAccountLinkingTokenResult) {
            return Objects.b(this.f6684o, ((SaveAccountLinkingTokenResult) obj).f6684o);
        }
        return false;
    }

    public int hashCode() {
        return Objects.c(this.f6684o);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 1, V3(), i10, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
