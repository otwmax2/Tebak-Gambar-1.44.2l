package com.google.android.gms.internal.ads;

import android.location.Location;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzboj implements NativeMediationAdRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Date f11066a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f11067b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set f11068c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f11069d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Location f11070e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f11071f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzbdl f11072g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f11074i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final String f11076k;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List f11073h = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Map f11075j = new HashMap();

    public zzboj(Date date, int i10, Set set, Location location, boolean z10, int i11, zzbdl zzbdlVar, List list, boolean z11, int i12, String str) {
        this.f11066a = date;
        this.f11067b = i10;
        this.f11068c = set;
        this.f11070e = location;
        this.f11069d = z10;
        this.f11071f = i11;
        this.f11072g = zzbdlVar;
        this.f11074i = z11;
        this.f11076k = str;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                if (str2.startsWith("custom:")) {
                    String[] strArrSplit = str2.split(CertificateUtil.DELIMITER, 3);
                    if (strArrSplit.length == 3) {
                        if (ServerProtocol.DIALOG_RETURN_SCOPES_TRUE.equals(strArrSplit[2])) {
                            this.f11075j.put(strArrSplit[1], Boolean.TRUE);
                        } else if ("false".equals(strArrSplit[2])) {
                            this.f11075j.put(strArrSplit[1], Boolean.FALSE);
                        }
                    }
                } else {
                    this.f11073h.add(str2);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final NativeAdOptions a() {
        return zzbdl.V3(this.f11072g);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final int b() {
        return this.f11071f;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean c() {
        return this.f11073h.contains("6");
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final boolean d() {
        return this.f11074i;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final Date e() {
        return this.f11066a;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final boolean f() {
        return this.f11069d;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Set<String> g() {
        return this.f11068c;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final com.google.android.gms.ads.formats.NativeAdOptions h() {
        zzbdl zzbdlVar = this.f11072g;
        NativeAdOptions.Builder builder = new NativeAdOptions.Builder();
        if (zzbdlVar == null) {
            return builder.a();
        }
        int i10 = zzbdlVar.f10645o;
        if (i10 == 2) {
            builder.b(zzbdlVar.f10649s);
        } else {
            if (i10 != 3) {
                if (i10 == 4) {
                    builder.e(zzbdlVar.f10651u);
                    builder.d(zzbdlVar.f10652v);
                }
            }
            com.google.android.gms.ads.internal.client.zzfl zzflVar = zzbdlVar.f10650t;
            if (zzflVar != null) {
                builder.h(new VideoOptions(zzflVar));
            }
            builder.b(zzbdlVar.f10649s);
        }
        builder.g(zzbdlVar.f10646p);
        builder.c(zzbdlVar.f10647q);
        builder.f(zzbdlVar.f10648r);
        return builder.a();
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final int i() {
        return this.f11067b;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final Map zza() {
        return this.f11075j;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean zzb() {
        return this.f11073h.contains("3");
    }
}
