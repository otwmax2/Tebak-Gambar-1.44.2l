package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzbz;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
public final class zzt extends zzbz {
    public static final Parcelable.Creator<zzt> CREATOR = new zzu();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final HashMap<String, FastJsonResponse.Field<?, ?>> f6593u;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Indicator
    final Set<Integer> f6594o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.VersionField
    final int f6595p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private zzv f6596q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private String f6597r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private String f6598s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private String f6599t;

    static {
        HashMap<String, FastJsonResponse.Field<?, ?>> map = new HashMap<>();
        f6593u = map;
        map.put("authenticatorInfo", FastJsonResponse.Field.W3("authenticatorInfo", 2, zzv.class));
        map.put("signature", FastJsonResponse.Field.Z3("signature", 3));
        map.put("package", FastJsonResponse.Field.Z3("package", 4));
    }

    public zzt() {
        this.f6594o = new HashSet(3);
        this.f6595p = 1;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final /* bridge */ /* synthetic */ Map h() {
        return f6593u;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final Object t(FastJsonResponse.Field field) {
        int iB4 = field.b4();
        if (iB4 == 1) {
            return Integer.valueOf(this.f6595p);
        }
        if (iB4 == 2) {
            return this.f6596q;
        }
        if (iB4 == 3) {
            return this.f6597r;
        }
        if (iB4 == 4) {
            return this.f6598s;
        }
        int iB42 = field.b4();
        StringBuilder sb = new StringBuilder(37);
        sb.append("Unknown SafeParcelable id=");
        sb.append(iB42);
        throw new IllegalStateException(sb.toString());
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final boolean w(FastJsonResponse.Field field) {
        return this.f6594o.contains(Integer.valueOf(field.b4()));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        Set<Integer> set = this.f6594o;
        if (set.contains(1)) {
            SafeParcelWriter.l(parcel, 1, this.f6595p);
        }
        if (set.contains(2)) {
            SafeParcelWriter.s(parcel, 2, this.f6596q, i10, true);
        }
        if (set.contains(3)) {
            SafeParcelWriter.t(parcel, 3, this.f6597r, true);
        }
        if (set.contains(4)) {
            SafeParcelWriter.t(parcel, 4, this.f6598s, true);
        }
        if (set.contains(5)) {
            SafeParcelWriter.t(parcel, 5, this.f6599t, true);
        }
        SafeParcelWriter.b(parcel, iA);
    }

    @SafeParcelable.Constructor
    zzt(@SafeParcelable.Indicator Set<Integer> set, @SafeParcelable.Param int i10, @SafeParcelable.Param zzv zzvVar, @SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param String str3) {
        this.f6594o = set;
        this.f6595p = i10;
        this.f6596q = zzvVar;
        this.f6597r = str;
        this.f6598s = str2;
        this.f6599t = str3;
    }
}
