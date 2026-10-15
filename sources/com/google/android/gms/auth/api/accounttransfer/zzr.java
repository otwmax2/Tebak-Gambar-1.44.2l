package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.GraphResponse;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzbz;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
public final class zzr extends zzbz {
    public static final Parcelable.Creator<zzr> CREATOR = new zzs();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final o.a<String, FastJsonResponse.Field<?, ?>> f6586u;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.VersionField
    final int f6587o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private List<String> f6588p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private List<String> f6589q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private List<String> f6590r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private List<String> f6591s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private List<String> f6592t;

    static {
        o.a<String, FastJsonResponse.Field<?, ?>> aVar = new o.a<>();
        f6586u = aVar;
        aVar.put("registered", FastJsonResponse.Field.a4("registered", 2));
        aVar.put("in_progress", FastJsonResponse.Field.a4("in_progress", 3));
        aVar.put(GraphResponse.SUCCESS_KEY, FastJsonResponse.Field.a4(GraphResponse.SUCCESS_KEY, 4));
        aVar.put("failed", FastJsonResponse.Field.a4("failed", 5));
        aVar.put("escrowed", FastJsonResponse.Field.a4("escrowed", 6));
    }

    public zzr() {
        this.f6587o = 1;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final Map<String, FastJsonResponse.Field<?, ?>> h() {
        return f6586u;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final Object t(FastJsonResponse.Field field) {
        switch (field.b4()) {
            case 1:
                return Integer.valueOf(this.f6587o);
            case 2:
                return this.f6588p;
            case 3:
                return this.f6589q;
            case 4:
                return this.f6590r;
            case 5:
                return this.f6591s;
            case 6:
                return this.f6592t;
            default:
                int iB4 = field.b4();
                StringBuilder sb = new StringBuilder(37);
                sb.append("Unknown SafeParcelable id=");
                sb.append(iB4);
                throw new IllegalStateException(sb.toString());
        }
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final boolean w(FastJsonResponse.Field field) {
        return true;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f6587o);
        SafeParcelWriter.v(parcel, 2, this.f6588p, false);
        SafeParcelWriter.v(parcel, 3, this.f6589q, false);
        SafeParcelWriter.v(parcel, 4, this.f6590r, false);
        SafeParcelWriter.v(parcel, 5, this.f6591s, false);
        SafeParcelWriter.v(parcel, 6, this.f6592t, false);
        SafeParcelWriter.b(parcel, iA);
    }

    @SafeParcelable.Constructor
    zzr(@SafeParcelable.Param int i10, @SafeParcelable.Param List<String> list, @SafeParcelable.Param List<String> list2, @SafeParcelable.Param List<String> list3, @SafeParcelable.Param List<String> list4, @SafeParcelable.Param List<String> list5) {
        this.f6587o = i10;
        this.f6588p = list;
        this.f6589q = list2;
        this.f6590r = list3;
        this.f6591s = list4;
        this.f6592t = list5;
    }
}
