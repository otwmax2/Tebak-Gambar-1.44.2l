package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
@SafeParcelable.Class
public final class StringToIntConverter extends AbstractSafeParcelable implements FastJsonResponse.FieldConverter<String, Integer> {
    public static final Parcelable.Creator<StringToIntConverter> CREATOR = new zad();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.VersionField
    final int f7561o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final HashMap<String, Integer> f7562p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final SparseArray<String> f7563q;

    @KeepForSdk
    public StringToIntConverter() {
        this.f7561o = 1;
        this.f7562p = new HashMap<>();
        this.f7563q = new SparseArray<>();
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.FieldConverter
    public final /* bridge */ /* synthetic */ String E0(Integer num) {
        String str = this.f7563q.get(num.intValue());
        return (str == null && this.f7562p.containsKey("gms_unknown")) ? "gms_unknown" : str;
    }

    @KeepForSdk
    public StringToIntConverter V3(String str, int i10) {
        this.f7562p.put(str, Integer.valueOf(i10));
        this.f7563q.put(i10, str);
        return this;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f7561o);
        ArrayList arrayList = new ArrayList();
        for (String str : this.f7562p.keySet()) {
            arrayList.add(new zac(str, this.f7562p.get(str).intValue()));
        }
        SafeParcelWriter.x(parcel, 2, arrayList, false);
        SafeParcelWriter.b(parcel, iA);
    }

    @SafeParcelable.Constructor
    StringToIntConverter(@SafeParcelable.Param int i10, @SafeParcelable.Param ArrayList<zac> arrayList) {
        this.f7561o = i10;
        this.f7562p = new HashMap<>();
        this.f7563q = new SparseArray<>();
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            zac zacVar = arrayList.get(i11);
            V3(zacVar.f7567p, zacVar.f7568q);
        }
    }
}
