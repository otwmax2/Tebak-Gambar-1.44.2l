package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzada extends zzadp {
    public static final Parcelable.Creator<zzada> CREATOR = new zzacz();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final String f8572p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final String f8573q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f8574r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final byte[] f8575s;

    zzada(Parcel parcel) {
        super("APIC");
        String string = parcel.readString();
        int i10 = zzew.f17494a;
        this.f8572p = string;
        this.f8573q = parcel.readString();
        this.f8574r = parcel.readInt();
        this.f8575s = (byte[]) zzew.h(parcel.createByteArray());
    }

    @Override // com.google.android.gms.internal.ads.zzadp, com.google.android.gms.internal.ads.zzbp
    public final void d2(zzbk zzbkVar) {
        zzbkVar.s(this.f8575s, this.f8574r);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzada.class == obj.getClass()) {
            zzada zzadaVar = (zzada) obj;
            if (this.f8574r == zzadaVar.f8574r && zzew.u(this.f8572p, zzadaVar.f8572p) && zzew.u(this.f8573q, zzadaVar.f8573q) && Arrays.equals(this.f8575s, zzadaVar.f8575s)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10 = this.f8574r + 527;
        String str = this.f8572p;
        int iHashCode = str != null ? str.hashCode() : 0;
        int i11 = i10 * 31;
        String str2 = this.f8573q;
        return ((((i11 + iHashCode) * 31) + (str2 != null ? str2.hashCode() : 0)) * 31) + Arrays.hashCode(this.f8575s);
    }

    @Override // com.google.android.gms.internal.ads.zzadp
    public final String toString() {
        return this.f8600o + ": mimeType=" + this.f8572p + ", description=" + this.f8573q;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f8572p);
        parcel.writeString(this.f8573q);
        parcel.writeInt(this.f8574r);
        parcel.writeByteArray(this.f8575s);
    }

    public zzada(String str, String str2, int i10, byte[] bArr) {
        super("APIC");
        this.f8572p = str;
        this.f8573q = str2;
        this.f8574r = i10;
        this.f8575s = bArr;
    }
}
