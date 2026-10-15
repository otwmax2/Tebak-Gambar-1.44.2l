package com.google.android.gms.common;

import android.content.Context;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
public final class zzo extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzo> CREATOR = new zzp();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f7678o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f7679p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f7680q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final Context f7681r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f7682s;

    @SafeParcelable.Constructor
    zzo(@SafeParcelable.Param String str, @SafeParcelable.Param boolean z10, @SafeParcelable.Param boolean z11, @SafeParcelable.Param IBinder iBinder, @SafeParcelable.Param boolean z12) {
        this.f7678o = str;
        this.f7679p = z10;
        this.f7680q = z11;
        this.f7681r = (Context) ObjectWrapper.t1(IObjectWrapper.Stub.X0(iBinder));
        this.f7682s = z12;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [android.os.IBinder, com.google.android.gms.dynamic.IObjectWrapper] */
    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, this.f7678o, false);
        SafeParcelWriter.c(parcel, 2, this.f7679p);
        SafeParcelWriter.c(parcel, 3, this.f7680q);
        SafeParcelWriter.k(parcel, 4, ObjectWrapper.Q4(this.f7681r), false);
        SafeParcelWriter.c(parcel, 5, this.f7682s);
        SafeParcelWriter.b(parcel, iA);
    }
}
