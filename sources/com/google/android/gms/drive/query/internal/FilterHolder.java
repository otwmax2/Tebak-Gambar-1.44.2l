package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.query.Filter;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public class FilterHolder extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<FilterHolder> CREATOR = new zzh();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final zzb<?> f7846o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final zzd f7847p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final zzr f7848q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final zzv f7849r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final zzp<?> f7850s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private final zzt f7851t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    private final zzn f7852u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    private final zzl f7853v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SafeParcelable.Field
    private final zzz f7854w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final Filter f7855x;

    @SafeParcelable.Constructor
    FilterHolder(@SafeParcelable.Param zzb<?> zzbVar, @SafeParcelable.Param zzd zzdVar, @SafeParcelable.Param zzr zzrVar, @SafeParcelable.Param zzv zzvVar, @SafeParcelable.Param zzp<?> zzpVar, @SafeParcelable.Param zzt zztVar, @SafeParcelable.Param zzn<?> zznVar, @SafeParcelable.Param zzl zzlVar, @SafeParcelable.Param zzz zzzVar) {
        this.f7846o = zzbVar;
        this.f7847p = zzdVar;
        this.f7848q = zzrVar;
        this.f7849r = zzvVar;
        this.f7850s = zzpVar;
        this.f7851t = zztVar;
        this.f7852u = zznVar;
        this.f7853v = zzlVar;
        this.f7854w = zzzVar;
        if (zzbVar != null) {
            this.f7855x = zzbVar;
            return;
        }
        if (zzdVar != null) {
            this.f7855x = zzdVar;
            return;
        }
        if (zzrVar != null) {
            this.f7855x = zzrVar;
            return;
        }
        if (zzvVar != null) {
            this.f7855x = zzvVar;
            return;
        }
        if (zzpVar != null) {
            this.f7855x = zzpVar;
            return;
        }
        if (zztVar != null) {
            this.f7855x = zztVar;
            return;
        }
        if (zznVar != null) {
            this.f7855x = zznVar;
        } else if (zzlVar != null) {
            this.f7855x = zzlVar;
        } else {
            if (zzzVar == null) {
                throw new IllegalArgumentException("At least one filter must be set.");
            }
            this.f7855x = zzzVar;
        }
    }

    public final Filter V3() {
        return this.f7855x;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 1, this.f7846o, i10, false);
        SafeParcelWriter.s(parcel, 2, this.f7847p, i10, false);
        SafeParcelWriter.s(parcel, 3, this.f7848q, i10, false);
        SafeParcelWriter.s(parcel, 4, this.f7849r, i10, false);
        SafeParcelWriter.s(parcel, 5, this.f7850s, i10, false);
        SafeParcelWriter.s(parcel, 6, this.f7851t, i10, false);
        SafeParcelWriter.s(parcel, 7, this.f7852u, i10, false);
        SafeParcelWriter.s(parcel, 8, this.f7853v, i10, false);
        SafeParcelWriter.s(parcel, 9, this.f7854w, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
