package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
public final class zzq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzq> CREATOR = new zzr();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f7683o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field
    private final String f7684p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f7685q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f7686r;

    @SafeParcelable.Constructor
    zzq(@SafeParcelable.Param boolean z10, @SafeParcelable.Param String str, @SafeParcelable.Param int i10, @SafeParcelable.Param int i11) {
        this.f7683o = z10;
        this.f7684p = str;
        this.f7685q = o.a(i10) - 1;
        this.f7686r = c.a(i11) - 1;
    }

    @Nullable
    public final String V3() {
        return this.f7684p;
    }

    public final boolean W3() {
        return this.f7683o;
    }

    public final int X3() {
        return c.a(this.f7686r);
    }

    public final int Y3() {
        return o.a(this.f7685q);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.c(parcel, 1, this.f7683o);
        SafeParcelWriter.t(parcel, 2, this.f7684p, false);
        SafeParcelWriter.l(parcel, 3, this.f7685q);
        SafeParcelWriter.l(parcel, 4, this.f7686r);
        SafeParcelWriter.b(parcel, iA);
    }
}
