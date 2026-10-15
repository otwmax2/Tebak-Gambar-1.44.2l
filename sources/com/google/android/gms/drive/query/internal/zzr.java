package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzr extends zza {
    public static final Parcelable.Creator<zzr> CREATOR = new zzs();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final zzx f7869o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final List<FilterHolder> f7870p;

    @SafeParcelable.Constructor
    zzr(@SafeParcelable.Param zzx zzxVar, @SafeParcelable.Param List<FilterHolder> list) {
        this.f7869o = zzxVar;
        this.f7870p = list;
    }

    @Override // com.google.android.gms.drive.query.Filter
    public final <T> T r1(zzj<T> zzjVar) {
        ArrayList arrayList = new ArrayList();
        Iterator<FilterHolder> it = this.f7870p.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().V3().r1(zzjVar));
        }
        return zzjVar.d(this.f7869o, arrayList);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 1, this.f7869o, i10, false);
        SafeParcelWriter.x(parcel, 2, this.f7870p, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
