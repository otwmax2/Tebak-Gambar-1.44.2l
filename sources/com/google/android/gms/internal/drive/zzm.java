package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzm extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzm> CREATOR = new zzn();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final DriveId f22259o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final MetadataBundle f22260p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final Contents f22261q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f22262r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f22263s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f22264t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f22265u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f22266v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f22267w;

    @SafeParcelable.Constructor
    zzm(@SafeParcelable.Param DriveId driveId, @SafeParcelable.Param MetadataBundle metadataBundle, @SafeParcelable.Param Contents contents, @SafeParcelable.Param boolean z10, @SafeParcelable.Param String str, @SafeParcelable.Param int i10, @SafeParcelable.Param int i11, @SafeParcelable.Param boolean z11, @SafeParcelable.Param boolean z12) {
        this.f22259o = driveId;
        this.f22260p = metadataBundle;
        this.f22261q = contents;
        this.f22262r = z10;
        this.f22263s = str;
        this.f22264t = i10;
        this.f22265u = i11;
        this.f22266v = z11;
        this.f22267w = z12;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 2, this.f22259o, i10, false);
        SafeParcelWriter.s(parcel, 3, this.f22260p, i10, false);
        SafeParcelWriter.s(parcel, 4, this.f22261q, i10, false);
        SafeParcelWriter.c(parcel, 5, this.f22262r);
        SafeParcelWriter.t(parcel, 6, this.f22263s, false);
        SafeParcelWriter.l(parcel, 7, this.f22264t);
        SafeParcelWriter.l(parcel, 8, this.f22265u);
        SafeParcelWriter.c(parcel, 9, this.f22266v);
        SafeParcelWriter.c(parcel, 10, this.f22267w);
        SafeParcelWriter.b(parcel, iA);
    }

    @VisibleForTesting
    public zzm(DriveId driveId, MetadataBundle metadataBundle, int i10, boolean z10, com.google.android.gms.drive.zzn zznVar) {
        this(driveId, metadataBundle, null, zznVar.c(), zznVar.b(), zznVar.d(), i10, z10, zznVar.e());
    }
}
