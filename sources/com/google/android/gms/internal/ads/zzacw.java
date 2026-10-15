package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class zzacw implements zzbp {
    public static final Parcelable.Creator<zzacw> CREATOR = new zzacv();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final String f8538o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final String f8539p;

    protected zzacw(Parcel parcel) {
        String string = parcel.readString();
        int i10 = zzew.f17494a;
        this.f8538o = string;
        this.f8539p = parcel.readString();
    }

    public zzacw(String str, String str2) {
        this.f8538o = str;
        this.f8539p = str2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0040  */
    @Override // com.google.android.gms.internal.ads.zzbp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void d2(com.google.android.gms.internal.ads.zzbk r7) {
        /*
            r6 = this;
            java.lang.String r0 = r6.f8538o
            int r1 = r0.hashCode()
            r2 = 4
            r3 = 3
            r4 = 2
            r5 = 1
            switch(r1) {
                case 62359119: goto L36;
                case 79833656: goto L2c;
                case 428414940: goto L22;
                case 1746739798: goto L18;
                case 1939198791: goto Le;
                default: goto Ld;
            }
        Ld:
            goto L40
        Le:
            java.lang.String r1 = "ARTIST"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L40
            r0 = 1
            goto L41
        L18:
            java.lang.String r1 = "ALBUMARTIST"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L40
            r0 = 3
            goto L41
        L22:
            java.lang.String r1 = "DESCRIPTION"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L40
            r0 = 4
            goto L41
        L2c:
            java.lang.String r1 = "TITLE"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L40
            r0 = 0
            goto L41
        L36:
            java.lang.String r1 = "ALBUM"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L40
            r0 = 2
            goto L41
        L40:
            r0 = -1
        L41:
            if (r0 == 0) goto L64
            if (r0 == r5) goto L5e
            if (r0 == r4) goto L58
            if (r0 == r3) goto L52
            if (r0 == r2) goto L4c
            return
        L4c:
            java.lang.String r0 = r6.f8539p
            r7.z(r0)
            return
        L52:
            java.lang.String r0 = r6.f8539p
            r7.u(r0)
            return
        L58:
            java.lang.String r0 = r6.f8539p
            r7.v(r0)
            return
        L5e:
            java.lang.String r0 = r6.f8539p
            r7.w(r0)
            return
        L64:
            java.lang.String r0 = r6.f8539p
            r7.I(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzacw.d2(com.google.android.gms.internal.ads.zzbk):void");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzacw zzacwVar = (zzacw) obj;
            if (this.f8538o.equals(zzacwVar.f8538o) && this.f8539p.equals(zzacwVar.f8539p)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f8538o.hashCode() + 527) * 31) + this.f8539p.hashCode();
    }

    public final String toString() {
        return "VC: " + this.f8538o + "=" + this.f8539p;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f8538o);
        parcel.writeString(this.f8539p);
    }
}
