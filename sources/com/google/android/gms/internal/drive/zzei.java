package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.FileUploadPreferences;
import com.google.android.gms.drive.TransferPreferences;

/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
@Deprecated
public final class zzei extends AbstractSafeParcelable implements FileUploadPreferences {
    public static final Parcelable.Creator<zzei> CREATOR = new zzej();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private int f21950o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private int f21951p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private boolean f21952q;

    @SafeParcelable.Constructor
    public zzei(@SafeParcelable.Param int i10, @SafeParcelable.Param int i11, @SafeParcelable.Param boolean z10) {
        this.f21950o = i10;
        this.f21951p = i11;
        this.f21952q = z10;
    }

    private static boolean V3(int i10) {
        return i10 == 1 || i10 == 2;
    }

    private static boolean W3(int i10) {
        return i10 == 256 || i10 == 257;
    }

    @Override // com.google.android.gms.drive.FileUploadPreferences
    public final boolean H() {
        return this.f21952q;
    }

    @Override // com.google.android.gms.drive.FileUploadPreferences
    public final int S() {
        if (W3(this.f21951p)) {
            return this.f21951p;
        }
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 2, this.f21950o);
        SafeParcelWriter.l(parcel, 3, this.f21951p);
        SafeParcelWriter.c(parcel, 4, this.f21952q);
        SafeParcelWriter.b(parcel, iA);
    }

    @Override // com.google.android.gms.drive.FileUploadPreferences
    public final int y0() {
        if (V3(this.f21950o)) {
            return this.f21950o;
        }
        return 0;
    }

    public zzei(TransferPreferences transferPreferences) {
        this(transferPreferences.w1(), transferPreferences.S(), transferPreferences.H());
    }
}
