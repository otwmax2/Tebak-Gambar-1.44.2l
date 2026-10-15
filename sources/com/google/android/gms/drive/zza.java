package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.drive.zzez;
import com.google.android.gms.internal.drive.zzkk;

/* JADX INFO: loaded from: classes.dex */
@ShowFirstParty
@SafeParcelable.Class
@SafeParcelable.Reserved
public class zza extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zza> CREATOR = new zzb();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final long f7889o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final long f7890p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final long f7891q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private volatile String f7892r = null;

    @SafeParcelable.Constructor
    public zza(@SafeParcelable.Param long j10, @SafeParcelable.Param long j11, @SafeParcelable.Param long j12) {
        Preconditions.a(j10 != -1);
        Preconditions.a(j11 != -1);
        Preconditions.a(j12 != -1);
        this.f7889o = j10;
        this.f7890p = j11;
        this.f7891q = j12;
    }

    public boolean equals(Object obj) {
        if (obj != null && obj.getClass() == zza.class) {
            zza zzaVar = (zza) obj;
            if (zzaVar.f7890p == this.f7890p && zzaVar.f7891q == this.f7891q && zzaVar.f7889o == this.f7889o) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        String strValueOf = String.valueOf(this.f7889o);
        String strValueOf2 = String.valueOf(this.f7890p);
        String strValueOf3 = String.valueOf(this.f7891q);
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + String.valueOf(strValueOf2).length() + String.valueOf(strValueOf3).length());
        sb.append(strValueOf);
        sb.append(strValueOf2);
        sb.append(strValueOf3);
        return sb.toString().hashCode();
    }

    public String toString() {
        if (this.f7892r == null) {
            String strValueOf = String.valueOf(Base64.encodeToString(((zzez) ((zzkk) zzez.u().r(1).o(this.f7889o).p(this.f7890p).q(this.f7891q).n1())).c(), 10));
            this.f7892r = strValueOf.length() != 0 ? "ChangeSequenceNumber:".concat(strValueOf) : new String("ChangeSequenceNumber:");
        }
        return this.f7892r;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.p(parcel, 2, this.f7889o);
        SafeParcelWriter.p(parcel, 3, this.f7890p);
        SafeParcelWriter.p(parcel, 4, this.f7891q);
        SafeParcelWriter.b(parcel, iA);
    }
}
