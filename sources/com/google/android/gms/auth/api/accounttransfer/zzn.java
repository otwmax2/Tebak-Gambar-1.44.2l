package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzbz;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
public final class zzn extends zzbz {
    public static final Parcelable.Creator<zzn> CREATOR = new zzo();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final HashMap<String, FastJsonResponse.Field<?, ?>> f6578t;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Indicator
    final Set<Integer> f6579o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.VersionField
    final int f6580p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private ArrayList<zzt> f6581q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private int f6582r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private zzr f6583s;

    static {
        HashMap<String, FastJsonResponse.Field<?, ?>> map = new HashMap<>();
        f6578t = map;
        map.put("authenticatorData", FastJsonResponse.Field.X3("authenticatorData", 2, zzt.class));
        map.put("progress", FastJsonResponse.Field.W3("progress", 4, zzr.class));
    }

    public zzn() {
        this.f6579o = new HashSet(1);
        this.f6580p = 1;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final /* bridge */ /* synthetic */ Map h() {
        return f6578t;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final Object t(FastJsonResponse.Field field) {
        int iB4 = field.b4();
        if (iB4 == 1) {
            return Integer.valueOf(this.f6580p);
        }
        if (iB4 == 2) {
            return this.f6581q;
        }
        if (iB4 == 4) {
            return this.f6583s;
        }
        int iB42 = field.b4();
        StringBuilder sb = new StringBuilder(37);
        sb.append("Unknown SafeParcelable id=");
        sb.append(iB42);
        throw new IllegalStateException(sb.toString());
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final boolean w(FastJsonResponse.Field field) {
        return this.f6579o.contains(Integer.valueOf(field.b4()));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        Set<Integer> set = this.f6579o;
        if (set.contains(1)) {
            SafeParcelWriter.l(parcel, 1, this.f6580p);
        }
        if (set.contains(2)) {
            SafeParcelWriter.x(parcel, 2, this.f6581q, true);
        }
        if (set.contains(3)) {
            SafeParcelWriter.l(parcel, 3, this.f6582r);
        }
        if (set.contains(4)) {
            SafeParcelWriter.s(parcel, 4, this.f6583s, i10, true);
        }
        SafeParcelWriter.b(parcel, iA);
    }

    @SafeParcelable.Constructor
    zzn(@SafeParcelable.Indicator Set<Integer> set, @SafeParcelable.Param int i10, @SafeParcelable.Param ArrayList<zzt> arrayList, @SafeParcelable.Param int i11, @SafeParcelable.Param zzr zzrVar) {
        this.f6579o = set;
        this.f6580p = i10;
        this.f6581q = arrayList;
        this.f6582r = i11;
        this.f6583s = zzrVar;
    }
}
