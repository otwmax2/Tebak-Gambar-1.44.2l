package com.google.android.gms.auth.api.accounttransfer;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzbz;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
public final class zzv extends zzbz {
    public static final Parcelable.Creator<zzv> CREATOR = new zzw();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final HashMap<String, FastJsonResponse.Field<?, ?>> f6600v;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Indicator
    final Set<Integer> f6601o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.VersionField
    final int f6602p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private String f6603q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private int f6604r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private byte[] f6605s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private PendingIntent f6606t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    private DeviceMetaData f6607u;

    static {
        HashMap<String, FastJsonResponse.Field<?, ?>> map = new HashMap<>();
        f6600v = map;
        map.put("accountType", FastJsonResponse.Field.Z3("accountType", 2));
        map.put("status", FastJsonResponse.Field.Y3("status", 3));
        map.put("transferBytes", FastJsonResponse.Field.V3("transferBytes", 4));
    }

    public zzv() {
        this.f6601o = new o.b(3);
        this.f6602p = 1;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final /* bridge */ /* synthetic */ Map h() {
        return f6600v;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final Object t(FastJsonResponse.Field field) {
        int iB4 = field.b4();
        if (iB4 == 1) {
            return Integer.valueOf(this.f6602p);
        }
        if (iB4 == 2) {
            return this.f6603q;
        }
        if (iB4 == 3) {
            return Integer.valueOf(this.f6604r);
        }
        if (iB4 == 4) {
            return this.f6605s;
        }
        int iB42 = field.b4();
        StringBuilder sb = new StringBuilder(37);
        sb.append("Unknown SafeParcelable id=");
        sb.append(iB42);
        throw new IllegalStateException(sb.toString());
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final boolean w(FastJsonResponse.Field field) {
        return this.f6601o.contains(Integer.valueOf(field.b4()));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        Set<Integer> set = this.f6601o;
        if (set.contains(1)) {
            SafeParcelWriter.l(parcel, 1, this.f6602p);
        }
        if (set.contains(2)) {
            SafeParcelWriter.t(parcel, 2, this.f6603q, true);
        }
        if (set.contains(3)) {
            SafeParcelWriter.l(parcel, 3, this.f6604r);
        }
        if (set.contains(4)) {
            SafeParcelWriter.g(parcel, 4, this.f6605s, true);
        }
        if (set.contains(5)) {
            SafeParcelWriter.s(parcel, 5, this.f6606t, i10, true);
        }
        if (set.contains(6)) {
            SafeParcelWriter.s(parcel, 6, this.f6607u, i10, true);
        }
        SafeParcelWriter.b(parcel, iA);
    }

    @SafeParcelable.Constructor
    zzv(@SafeParcelable.Indicator Set<Integer> set, @SafeParcelable.Param int i10, @SafeParcelable.Param String str, @SafeParcelable.Param int i11, @SafeParcelable.Param byte[] bArr, @SafeParcelable.Param PendingIntent pendingIntent, @SafeParcelable.Param DeviceMetaData deviceMetaData) {
        this.f6601o = set;
        this.f6602p = i10;
        this.f6603q = str;
        this.f6604r = i11;
        this.f6605s = bArr;
        this.f6606t = pendingIntent;
        this.f6607u = deviceMetaData;
    }
}
