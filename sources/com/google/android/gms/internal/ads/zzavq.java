package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.vungle.mediation.BuildConfig;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzavq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzavq> CREATOR = new zzavr();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f10024o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final long f10025p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f10026q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f10027r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f10028s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    public final Bundle f10029t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f10030u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    public long f10031v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SafeParcelable.Field
    public String f10032w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @SafeParcelable.Field
    public int f10033x;

    @SafeParcelable.Constructor
    zzavq(@SafeParcelable.Param String str, @SafeParcelable.Param long j10, @SafeParcelable.Param String str2, @SafeParcelable.Param String str3, @SafeParcelable.Param String str4, @SafeParcelable.Param Bundle bundle, @SafeParcelable.Param boolean z10, @SafeParcelable.Param long j11, @SafeParcelable.Param String str5, @SafeParcelable.Param int i10) {
        this.f10024o = str;
        this.f10025p = j10;
        this.f10026q = str2 == null ? BuildConfig.FLAVOR : str2;
        this.f10027r = str3 == null ? BuildConfig.FLAVOR : str3;
        this.f10028s = str4 == null ? BuildConfig.FLAVOR : str4;
        this.f10029t = bundle == null ? new Bundle() : bundle;
        this.f10030u = z10;
        this.f10031v = j11;
        this.f10032w = str5;
        this.f10033x = i10;
    }

    public static zzavq V3(Uri uri) {
        try {
            if (!"gcache".equals(uri.getScheme())) {
                return null;
            }
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments.size() != 2) {
                zzbza.g("Expected 2 path parts for namespace and id, found :" + pathSegments.size());
                return null;
            }
            String str = pathSegments.get(0);
            String str2 = pathSegments.get(1);
            String host = uri.getHost();
            String queryParameter = uri.getQueryParameter("url");
            boolean zEquals = AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(uri.getQueryParameter("read_only"));
            String queryParameter2 = uri.getQueryParameter("expiration");
            long j10 = queryParameter2 == null ? 0L : Long.parseLong(queryParameter2);
            Bundle bundle = new Bundle();
            for (String str3 : uri.getQueryParameterNames()) {
                if (str3.startsWith("tag.")) {
                    bundle.putString(str3.substring(4), uri.getQueryParameter(str3));
                }
            }
            return new zzavq(queryParameter, j10, host, str, str2, bundle, zEquals, 0L, BuildConfig.FLAVOR, 0);
        } catch (NullPointerException | NumberFormatException e10) {
            zzbza.h("Unable to parse Uri into cache offering.", e10);
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 2, this.f10024o, false);
        SafeParcelWriter.p(parcel, 3, this.f10025p);
        SafeParcelWriter.t(parcel, 4, this.f10026q, false);
        SafeParcelWriter.t(parcel, 5, this.f10027r, false);
        SafeParcelWriter.t(parcel, 6, this.f10028s, false);
        SafeParcelWriter.f(parcel, 7, this.f10029t, false);
        SafeParcelWriter.c(parcel, 8, this.f10030u);
        SafeParcelWriter.p(parcel, 9, this.f10031v);
        SafeParcelWriter.t(parcel, 10, this.f10032w, false);
        SafeParcelWriter.l(parcel, 11, this.f10033x);
        SafeParcelWriter.b(parcel, iA);
    }
}
