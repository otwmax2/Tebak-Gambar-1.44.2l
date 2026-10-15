package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
@ShowFirstParty
@SafeParcelable.Class
@SafeParcelable.Reserved
public class UserMetadata extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<UserMetadata> CREATOR = new zzt();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f7752o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f7753p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f7754q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f7755r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f7756s;

    @SafeParcelable.Constructor
    public UserMetadata(@SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param String str3, @SafeParcelable.Param boolean z10, @SafeParcelable.Param String str4) {
        this.f7752o = str;
        this.f7753p = str2;
        this.f7754q = str3;
        this.f7755r = z10;
        this.f7756s = str4;
    }

    public String toString() {
        return String.format("Permission ID: '%s', Display Name: '%s', Picture URL: '%s', Authenticated User: %b, Email: '%s'", this.f7752o, this.f7753p, this.f7754q, Boolean.valueOf(this.f7755r), this.f7756s);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 2, this.f7752o, false);
        SafeParcelWriter.t(parcel, 3, this.f7753p, false);
        SafeParcelWriter.t(parcel, 4, this.f7754q, false);
        SafeParcelWriter.c(parcel, 5, this.f7755r);
        SafeParcelWriter.t(parcel, 6, this.f7756s, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
