package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
@ShowFirstParty
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzr> CREATOR = new zzs();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private String f7897o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private int f7898p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private String f7899q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private String f7900r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private int f7901s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private boolean f7902t;

    @SafeParcelable.Constructor
    public zzr(@SafeParcelable.Param String str, @SafeParcelable.Param int i10, @SafeParcelable.Param String str2, @SafeParcelable.Param String str3, @SafeParcelable.Param int i11, @SafeParcelable.Param boolean z10) {
        this.f7897o = str;
        this.f7898p = i10;
        this.f7899q = str2;
        this.f7900r = str3;
        this.f7901s = i11;
        this.f7902t = z10;
    }

    private static boolean V3(int i10) {
        switch (i10) {
            case 256:
            case 257:
            case 258:
                return true;
            default:
                return false;
        }
    }

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == zzr.class) {
            if (obj == this) {
                return true;
            }
            zzr zzrVar = (zzr) obj;
            if (Objects.b(this.f7897o, zzrVar.f7897o) && this.f7898p == zzrVar.f7898p && this.f7901s == zzrVar.f7901s && this.f7902t == zzrVar.f7902t) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.c(this.f7897o, Integer.valueOf(this.f7898p), Integer.valueOf(this.f7901s), Boolean.valueOf(this.f7902t));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 2, !V3(this.f7898p) ? null : this.f7897o, false);
        SafeParcelWriter.l(parcel, 3, !V3(this.f7898p) ? -1 : this.f7898p);
        SafeParcelWriter.t(parcel, 4, this.f7899q, false);
        SafeParcelWriter.t(parcel, 5, this.f7900r, false);
        int i11 = this.f7901s;
        SafeParcelWriter.l(parcel, 6, i11 == 0 || i11 == 1 || i11 == 2 || i11 == 3 ? i11 : -1);
        SafeParcelWriter.c(parcel, 7, this.f7902t);
        SafeParcelWriter.b(parcel, iA);
    }
}
