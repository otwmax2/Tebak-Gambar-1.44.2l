package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzx implements Comparator<zzw>, Parcelable {
    public static final Parcelable.Creator<zzx> CREATOR = new zzu();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzw[] f20982o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f20983p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final String f20984q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f20985r;

    zzx(Parcel parcel) {
        this.f20984q = parcel.readString();
        zzw[] zzwVarArr = (zzw[]) zzew.h((zzw[]) parcel.createTypedArray(zzw.CREATOR));
        this.f20982o = zzwVarArr;
        this.f20985r = zzwVarArr.length;
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(zzw zzwVar, zzw zzwVar2) {
        zzw zzwVar3 = zzwVar;
        zzw zzwVar4 = zzwVar2;
        UUID uuid = zzo.f20296a;
        return uuid.equals(zzwVar3.f20916p) ? !uuid.equals(zzwVar4.f20916p) ? 1 : 0 : zzwVar3.f20916p.compareTo(zzwVar4.f20916p);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzx.class == obj.getClass()) {
            zzx zzxVar = (zzx) obj;
            if (zzew.u(this.f20984q, zzxVar.f20984q) && Arrays.equals(this.f20982o, zzxVar.f20982o)) {
                return true;
            }
        }
        return false;
    }

    public final zzw h(int i10) {
        return this.f20982o[i10];
    }

    public final int hashCode() {
        int i10 = this.f20983p;
        if (i10 != 0) {
            return i10;
        }
        String str = this.f20984q;
        int iHashCode = ((str == null ? 0 : str.hashCode()) * 31) + Arrays.hashCode(this.f20982o);
        this.f20983p = iHashCode;
        return iHashCode;
    }

    public final zzx t(String str) {
        return zzew.u(this.f20984q, str) ? this : new zzx(str, false, this.f20982o);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f20984q);
        parcel.writeTypedArray(this.f20982o, 0);
    }

    private zzx(String str, boolean z10, zzw... zzwVarArr) {
        this.f20984q = str;
        zzwVarArr = z10 ? (zzw[]) zzwVarArr.clone() : zzwVarArr;
        this.f20982o = zzwVarArr;
        this.f20985r = zzwVarArr.length;
        Arrays.sort(zzwVarArr, this);
    }

    public zzx(String str, zzw... zzwVarArr) {
        this(null, true, zzwVarArr);
    }

    public zzx(List list) {
        this(null, false, (zzw[]) list.toArray(new zzw[0]));
    }
}
