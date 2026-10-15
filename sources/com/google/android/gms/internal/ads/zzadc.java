package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzadc extends zzadp {
    public static final Parcelable.Creator<zzadc> CREATOR = new zzadb();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final byte[] f8576p;

    /* JADX WARN: Illegal instructions before constructor call */
    zzadc(Parcel parcel) {
        String string = parcel.readString();
        int i10 = zzew.f17494a;
        super(string);
        this.f8576p = (byte[]) zzew.h(parcel.createByteArray());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzadc.class == obj.getClass()) {
            zzadc zzadcVar = (zzadc) obj;
            if (this.f8600o.equals(zzadcVar.f8600o) && Arrays.equals(this.f8576p, zzadcVar.f8576p)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f8600o.hashCode() + 527) * 31) + Arrays.hashCode(this.f8576p);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f8600o);
        parcel.writeByteArray(this.f8576p);
    }

    public zzadc(String str, byte[] bArr) {
        super(str);
        this.f8576p = bArr;
    }
}
