package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class zzll extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzll> CREATOR = new zzlm();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f24865o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f24866p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    public final long f24867q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    public final Long f24868r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f24869s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f24870t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    public final Double f24871u;

    @SafeParcelable.Constructor
    zzll(@SafeParcelable.Param int i10, @SafeParcelable.Param String str, @SafeParcelable.Param long j10, @SafeParcelable.Param Long l10, @SafeParcelable.Param Float f10, @SafeParcelable.Param String str2, @SafeParcelable.Param String str3, @SafeParcelable.Param Double d10) {
        this.f24865o = i10;
        this.f24866p = str;
        this.f24867q = j10;
        this.f24868r = l10;
        if (i10 == 1) {
            this.f24871u = f10 != null ? Double.valueOf(f10.doubleValue()) : null;
        } else {
            this.f24871u = d10;
        }
        this.f24869s = str2;
        this.f24870t = str3;
    }

    public final Object V3() {
        Long l10 = this.f24868r;
        if (l10 != null) {
            return l10;
        }
        Double d10 = this.f24871u;
        if (d10 != null) {
            return d10;
        }
        String str = this.f24869s;
        if (str != null) {
            return str;
        }
        return null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        zzlm.a(this, parcel, i10);
    }

    zzll(b4 b4Var) {
        this(b4Var.f23998c, b4Var.f23999d, b4Var.f24000e, b4Var.f23997b);
    }

    zzll(String str, long j10, Object obj, String str2) {
        Preconditions.g(str);
        this.f24865o = 2;
        this.f24866p = str;
        this.f24867q = j10;
        this.f24870t = str2;
        if (obj == null) {
            this.f24868r = null;
            this.f24871u = null;
            this.f24869s = null;
            return;
        }
        if (obj instanceof Long) {
            this.f24868r = (Long) obj;
            this.f24871u = null;
            this.f24869s = null;
        } else if (obj instanceof String) {
            this.f24868r = null;
            this.f24871u = null;
            this.f24869s = (String) obj;
        } else {
            if (obj instanceof Double) {
                this.f24868r = null;
                this.f24871u = (Double) obj;
                this.f24869s = null;
                return;
            }
            throw new IllegalArgumentException("User attribute given of un-supported type");
        }
    }
}
