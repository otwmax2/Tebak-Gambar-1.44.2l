package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@ShowFirstParty
@SafeParcelable.Class
public final class zan extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zan> CREATOR = new zao();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.VersionField
    final int f7613o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> f7614p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f7615q;

    @SafeParcelable.Constructor
    zan(@SafeParcelable.Param int i10, @SafeParcelable.Param ArrayList<zal> arrayList, @SafeParcelable.Param String str) {
        this.f7613o = i10;
        HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> map = new HashMap<>();
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            zal zalVar = arrayList.get(i11);
            String str2 = zalVar.f7608p;
            HashMap map2 = new HashMap();
            int size2 = ((ArrayList) Preconditions.k(zalVar.f7609q)).size();
            for (int i12 = 0; i12 < size2; i12++) {
                zam zamVar = zalVar.f7609q.get(i12);
                map2.put(zamVar.f7611p, zamVar.f7612q);
            }
            map.put(str2, map2);
        }
        this.f7614p = map;
        this.f7615q = (String) Preconditions.k(str);
        X3();
    }

    public final String V3() {
        return this.f7615q;
    }

    public final Map<String, FastJsonResponse.Field<?, ?>> W3(String str) {
        return this.f7614p.get(str);
    }

    public final void X3() {
        Iterator<String> it = this.f7614p.keySet().iterator();
        while (it.hasNext()) {
            Map<String, FastJsonResponse.Field<?, ?>> map = this.f7614p.get(it.next());
            Iterator<String> it2 = map.keySet().iterator();
            while (it2.hasNext()) {
                map.get(it2.next()).h4(this);
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        for (String str : this.f7614p.keySet()) {
            sb.append(str);
            sb.append(":\n");
            Map<String, FastJsonResponse.Field<?, ?>> map = this.f7614p.get(str);
            for (String str2 : map.keySet()) {
                sb.append("  ");
                sb.append(str2);
                sb.append(": ");
                sb.append(map.get(str2));
            }
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f7613o);
        ArrayList arrayList = new ArrayList();
        for (String str : this.f7614p.keySet()) {
            arrayList.add(new zal(str, this.f7614p.get(str)));
        }
        SafeParcelWriter.x(parcel, 2, arrayList, false);
        SafeParcelWriter.t(parcel, 3, this.f7615q, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
