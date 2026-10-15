package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzadg extends zzadp {
    public static final Parcelable.Creator<zzadg> CREATOR = new zzadf();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final String f8583p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final boolean f8584q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final boolean f8585r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final String[] f8586s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final zzadp[] f8587t;

    zzadg(Parcel parcel) {
        super("CTOC");
        String string = parcel.readString();
        int i10 = zzew.f17494a;
        this.f8583p = string;
        this.f8584q = parcel.readByte() != 0;
        this.f8585r = parcel.readByte() != 0;
        this.f8586s = (String[]) zzew.h(parcel.createStringArray());
        int i11 = parcel.readInt();
        this.f8587t = new zzadp[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            this.f8587t[i12] = (zzadp) parcel.readParcelable(zzadp.class.getClassLoader());
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzadg.class == obj.getClass()) {
            zzadg zzadgVar = (zzadg) obj;
            if (this.f8584q == zzadgVar.f8584q && this.f8585r == zzadgVar.f8585r && zzew.u(this.f8583p, zzadgVar.f8583p) && Arrays.equals(this.f8586s, zzadgVar.f8586s) && Arrays.equals(this.f8587t, zzadgVar.f8587t)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10 = (((this.f8584q ? 1 : 0) + 527) * 31) + (this.f8585r ? 1 : 0);
        String str = this.f8583p;
        return (i10 * 31) + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f8583p);
        parcel.writeByte(this.f8584q ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f8585r ? (byte) 1 : (byte) 0);
        parcel.writeStringArray(this.f8586s);
        parcel.writeInt(this.f8587t.length);
        for (zzadp zzadpVar : this.f8587t) {
            parcel.writeParcelable(zzadpVar, 0);
        }
    }

    public zzadg(String str, boolean z10, boolean z11, String[] strArr, zzadp[] zzadpVarArr) {
        super("CTOC");
        this.f8583p = str;
        this.f8584q = z10;
        this.f8585r = z11;
        this.f8586s = strArr;
        this.f8587t = zzadpVarArr;
    }
}
