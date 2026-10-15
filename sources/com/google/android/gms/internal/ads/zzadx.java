package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzadx extends zzadp {
    public static final Parcelable.Creator<zzadx> CREATOR = new zzadw();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final String f8611p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Deprecated
    public final String f8612q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final zzfqk f8613r;

    public zzadx(String str, String str2, List list) {
        super(str);
        zzdl.d(!list.isEmpty());
        this.f8611p = str2;
        zzfqk zzfqkVarS = zzfqk.s(list);
        this.f8613r = zzfqkVarS;
        this.f8612q = (String) zzfqkVarS.get(0);
    }

    private static List h(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            if (str.length() >= 10) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(8, 10))));
            } else if (str.length() >= 7) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
            } else if (str.length() >= 4) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
            }
            return arrayList;
        } catch (NumberFormatException unused) {
            return new ArrayList();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0106  */
    @Override // com.google.android.gms.internal.ads.zzadp, com.google.android.gms.internal.ads.zzbp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void d2(com.google.android.gms.internal.ads.zzbk r8) {
        /*
            Method dump skipped, instruction units count: 700
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzadx.d2(com.google.android.gms.internal.ads.zzbk):void");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzadx.class == obj.getClass()) {
            zzadx zzadxVar = (zzadx) obj;
            if (zzew.u(this.f8600o, zzadxVar.f8600o) && zzew.u(this.f8611p, zzadxVar.f8611p) && this.f8613r.equals(zzadxVar.f8613r)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f8600o.hashCode() + 527;
        String str = this.f8611p;
        return (((iHashCode * 31) + (str != null ? str.hashCode() : 0)) * 31) + this.f8613r.hashCode();
    }

    @Override // com.google.android.gms.internal.ads.zzadp
    public final String toString() {
        return this.f8600o + ": description=" + this.f8611p + ": values=" + String.valueOf(this.f8613r);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f8600o);
        parcel.writeString(this.f8611p);
        parcel.writeStringArray((String[]) this.f8613r.toArray(new String[0]));
    }
}
