package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
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
public class SavePasswordResult extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SavePasswordResult> CREATOR = new zbl();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final PendingIntent f6688o;

    @SafeParcelable.Constructor
    public SavePasswordResult(@SafeParcelable.Param PendingIntent pendingIntent) {
        this.f6688o = (PendingIntent) Preconditions.k(pendingIntent);
    }

    public PendingIntent V3() {
        return this.f6688o;
    }

    public boolean equals(Object obj) {
        if (obj instanceof SavePasswordResult) {
            return Objects.b(this.f6688o, ((SavePasswordResult) obj).f6688o);
        }
        return false;
    }

    public int hashCode() {
        return Objects.c(this.f6688o);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 1, V3(), i10, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
