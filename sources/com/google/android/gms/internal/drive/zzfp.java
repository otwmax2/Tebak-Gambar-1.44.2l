package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.events.ChangeEvent;
import com.google.android.gms.drive.events.CompletionEvent;
import com.google.android.gms.drive.events.DriveEvent;

/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzfp extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfp> CREATOR = new zzfq();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f21977o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final ChangeEvent f21978p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final CompletionEvent f21979q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final com.google.android.gms.drive.events.zzo f21980r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final com.google.android.gms.drive.events.zzb f21981s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private final com.google.android.gms.drive.events.zzv f21982t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    private final com.google.android.gms.drive.events.zzr f21983u;

    @SafeParcelable.Constructor
    zzfp(@SafeParcelable.Param int i10, @SafeParcelable.Param ChangeEvent changeEvent, @SafeParcelable.Param CompletionEvent completionEvent, @SafeParcelable.Param com.google.android.gms.drive.events.zzo zzoVar, @SafeParcelable.Param com.google.android.gms.drive.events.zzb zzbVar, @SafeParcelable.Param com.google.android.gms.drive.events.zzv zzvVar, @SafeParcelable.Param com.google.android.gms.drive.events.zzr zzrVar) {
        this.f21977o = i10;
        this.f21978p = changeEvent;
        this.f21979q = completionEvent;
        this.f21980r = zzoVar;
        this.f21981s = zzbVar;
        this.f21982t = zzvVar;
        this.f21983u = zzrVar;
    }

    public final DriveEvent V3() {
        int i10 = this.f21977o;
        if (i10 == 1) {
            return this.f21978p;
        }
        if (i10 == 2) {
            return this.f21979q;
        }
        if (i10 == 3) {
            return this.f21980r;
        }
        if (i10 == 4) {
            return this.f21981s;
        }
        if (i10 == 7) {
            return this.f21982t;
        }
        if (i10 == 8) {
            return this.f21983u;
        }
        int i11 = this.f21977o;
        StringBuilder sb = new StringBuilder(33);
        sb.append("Unexpected event type ");
        sb.append(i11);
        throw new IllegalStateException(sb.toString());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 2, this.f21977o);
        SafeParcelWriter.s(parcel, 3, this.f21978p, i10, false);
        SafeParcelWriter.s(parcel, 5, this.f21979q, i10, false);
        SafeParcelWriter.s(parcel, 6, this.f21980r, i10, false);
        SafeParcelWriter.s(parcel, 7, this.f21981s, i10, false);
        SafeParcelWriter.s(parcel, 9, this.f21982t, i10, false);
        SafeParcelWriter.s(parcel, 10, this.f21983u, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
