package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzadr extends zzadp {
    public static final Parcelable.Creator<zzadr> CREATOR = new zzadq();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final String f8601p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final String f8602q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final String f8603r;

    zzadr(Parcel parcel) {
        super("----");
        String string = parcel.readString();
        int i10 = zzew.f17494a;
        this.f8601p = string;
        this.f8602q = parcel.readString();
        this.f8603r = parcel.readString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzadr.class == obj.getClass()) {
            zzadr zzadrVar = (zzadr) obj;
            if (zzew.u(this.f8602q, zzadrVar.f8602q) && zzew.u(this.f8601p, zzadrVar.f8601p) && zzew.u(this.f8603r, zzadrVar.f8603r)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f8601p;
        int iHashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f8602q;
        int iHashCode2 = str2 != null ? str2.hashCode() : 0;
        int i10 = iHashCode + 527;
        String str3 = this.f8603r;
        return (((i10 * 31) + iHashCode2) * 31) + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // com.google.android.gms.internal.ads.zzadp
    public final String toString() {
        return this.f8600o + ": domain=" + this.f8601p + ", description=" + this.f8602q;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f8600o);
        parcel.writeString(this.f8601p);
        parcel.writeString(this.f8603r);
    }

    public zzadr(String str, String str2, String str3) {
        super("----");
        this.f8601p = str;
        this.f8602q = str2;
        this.f8603r = str3;
    }
}
