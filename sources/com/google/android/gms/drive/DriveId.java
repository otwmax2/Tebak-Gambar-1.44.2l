package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.drive.zzbn;
import com.google.android.gms.internal.drive.zzbs;
import com.google.android.gms.internal.drive.zzfb;
import com.google.android.gms.internal.drive.zzkk;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public class DriveId extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<DriveId> CREATOR = new zzk();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f7716o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final long f7717p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final long f7718q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f7719r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private volatile String f7720s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private volatile String f7721t = null;

    @SafeParcelable.Constructor
    public DriveId(@SafeParcelable.Param String str, @SafeParcelable.Param long j10, @SafeParcelable.Param long j11, @SafeParcelable.Param int i10) {
        this.f7716o = str;
        boolean z10 = true;
        Preconditions.a(!BuildConfig.FLAVOR.equals(str));
        if (str == null && j10 == -1) {
            z10 = false;
        }
        Preconditions.a(z10);
        this.f7717p = j10;
        this.f7718q = j11;
        this.f7719r = i10;
    }

    @VisibleForTesting
    public static DriveId Y3(String str) {
        Preconditions.k(str);
        return new DriveId(str, -1L, -1L, -1);
    }

    public DriveFile V3() {
        if (this.f7719r != 1) {
            return new zzbn(this);
        }
        throw new IllegalStateException("This DriveId corresponds to a folder. Call asDriveFolder instead.");
    }

    public DriveFolder W3() {
        if (this.f7719r != 0) {
            return new zzbs(this);
        }
        throw new IllegalStateException("This DriveId corresponds to a file. Call asDriveFile instead.");
    }

    public final String X3() {
        if (this.f7720s == null) {
            zzfb.zza zzaVarR = zzfb.u().r(1);
            String str = this.f7716o;
            if (str == null) {
                str = BuildConfig.FLAVOR;
            }
            String strValueOf = String.valueOf(Base64.encodeToString(((zzfb) ((zzkk) zzaVarR.o(str).p(this.f7717p).q(this.f7718q).s(this.f7719r).n1())).c(), 10));
            this.f7720s = strValueOf.length() != 0 ? "DriveId:".concat(strValueOf) : new String("DriveId:");
        }
        return this.f7720s;
    }

    public boolean equals(Object obj) {
        String str;
        if (obj != null && obj.getClass() == DriveId.class) {
            DriveId driveId = (DriveId) obj;
            if (driveId.f7718q != this.f7718q) {
                return false;
            }
            long j10 = driveId.f7717p;
            if (j10 == -1 && this.f7717p == -1) {
                return driveId.f7716o.equals(this.f7716o);
            }
            String str2 = this.f7716o;
            if (str2 != null && (str = driveId.f7716o) != null) {
                return j10 == this.f7717p && str.equals(str2);
            }
            if (j10 == this.f7717p) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        if (this.f7717p == -1) {
            return this.f7716o.hashCode();
        }
        String strValueOf = String.valueOf(String.valueOf(this.f7718q));
        String strValueOf2 = String.valueOf(String.valueOf(this.f7717p));
        return (strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf)).hashCode();
    }

    public String toString() {
        return X3();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 2, this.f7716o, false);
        SafeParcelWriter.p(parcel, 3, this.f7717p);
        SafeParcelWriter.p(parcel, 4, this.f7718q);
        SafeParcelWriter.l(parcel, 5, this.f7719r);
        SafeParcelWriter.b(parcel, iA);
    }
}
