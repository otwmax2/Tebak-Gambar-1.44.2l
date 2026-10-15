package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
public final class Scope extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<Scope> CREATOR = new zza();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.VersionField
    final int f6970o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6971p;

    @SafeParcelable.Constructor
    Scope(@SafeParcelable.Param int i10, @SafeParcelable.Param String str) {
        Preconditions.h(str, "scopeUri must not be null or empty");
        this.f6970o = i10;
        this.f6971p = str;
    }

    @KeepForSdk
    public String V3() {
        return this.f6971p;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Scope) {
            return this.f6971p.equals(((Scope) obj).f6971p);
        }
        return false;
    }

    public int hashCode() {
        return this.f6971p.hashCode();
    }

    public String toString() {
        return this.f6971p;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f6970o);
        SafeParcelWriter.t(parcel, 2, V3(), false);
        SafeParcelWriter.b(parcel, iA);
    }

    public Scope(String str) {
        this(1, str);
    }
}
