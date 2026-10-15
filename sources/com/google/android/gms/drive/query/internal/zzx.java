package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzx> CREATOR = new zzy();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final zzx f7872p = new zzx("=");

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final zzx f7873q = new zzx("<");

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final zzx f7874r = new zzx("<=");

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final zzx f7875s = new zzx(">");

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final zzx f7876t = new zzx(">=");

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final zzx f7877u = new zzx("and");

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final zzx f7878v = new zzx("or");

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final zzx f7879w = new zzx("not");

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final zzx f7880x = new zzx("contains");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f7881o;

    @SafeParcelable.Constructor
    zzx(@SafeParcelable.Param String str) {
        this.f7881o = str;
    }

    public final String V3() {
        return this.f7881o;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzx.class != obj.getClass()) {
            return false;
        }
        zzx zzxVar = (zzx) obj;
        String str = this.f7881o;
        if (str == null) {
            if (zzxVar.f7881o != null) {
                return false;
            }
        } else if (!str.equals(zzxVar.f7881o)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.f7881o;
        return (str == null ? 0 : str.hashCode()) + 31;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, this.f7881o, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
