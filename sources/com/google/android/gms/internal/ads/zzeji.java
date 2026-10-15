package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeji implements zzepm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final zzeyx f16775a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f16776b;

    public zzeji(zzeyx zzeyxVar, long j10) {
        Preconditions.l(zzeyxVar, "the targeting must not be null");
        this.f16775a = zzeyxVar;
        this.f16776b = j10;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        Bundle bundle = (Bundle) obj;
        com.google.android.gms.ads.internal.client.zzl zzlVar = this.f16775a.f17731d;
        bundle.putInt("http_timeout_millis", zzlVar.K);
        bundle.putString("slotname", this.f16775a.f17733f);
        int i10 = this.f16775a.f17742o.f17695a;
        int i11 = i10 - 1;
        if (i10 == 0) {
            throw null;
        }
        if (i11 == 1) {
            bundle.putBoolean("is_new_rewarded", true);
        } else if (i11 == 2) {
            bundle.putBoolean("is_rewarded_interstitial", true);
        }
        bundle.putLong("start_signals_timestamp", this.f16776b);
        zzezi.f(bundle, "cust_age", new SimpleDateFormat("yyyyMMdd", Locale.US).format(new Date(zzlVar.f5907p)), zzlVar.f5907p != -1);
        zzezi.b(bundle, "extras", zzlVar.f5908q);
        int i12 = zzlVar.f5909r;
        zzezi.e(bundle, "cust_gender", i12, i12 != -1);
        zzezi.d(bundle, "kw", zzlVar.f5910s);
        int i13 = zzlVar.f5912u;
        zzezi.e(bundle, "tag_for_child_directed_treatment", i13, i13 != -1);
        if (zzlVar.f5911t) {
            bundle.putBoolean("test_request", true);
        }
        zzezi.e(bundle, "d_imp_hdr", 1, zzlVar.f5906o >= 2 && zzlVar.f5913v);
        String str = zzlVar.f5914w;
        zzezi.f(bundle, "ppid", str, zzlVar.f5906o >= 2 && !TextUtils.isEmpty(str));
        Location location = zzlVar.f5916y;
        if (location != null) {
            float accuracy = location.getAccuracy() * 1000.0f;
            long time = location.getTime() * 1000;
            double latitude = location.getLatitude() * 1.0E7d;
            double longitude = 1.0E7d * location.getLongitude();
            Bundle bundle2 = new Bundle();
            bundle2.putFloat("radius", accuracy);
            bundle2.putLong("lat", (long) latitude);
            bundle2.putLong("long", (long) longitude);
            bundle2.putLong("time", time);
            bundle.putBundle("uule", bundle2);
        }
        zzezi.c(bundle, "url", zzlVar.f5917z);
        zzezi.d(bundle, "neighboring_content_urls", zzlVar.J);
        zzezi.b(bundle, "custom_targeting", zzlVar.B);
        zzezi.d(bundle, "category_exclusions", zzlVar.C);
        zzezi.c(bundle, "request_agent", zzlVar.D);
        zzezi.c(bundle, "request_pkg", zzlVar.E);
        zzezi.g(bundle, "is_designed_for_families", zzlVar.F, zzlVar.f5906o >= 7);
        if (zzlVar.f5906o >= 8) {
            int i14 = zzlVar.H;
            zzezi.e(bundle, "tag_for_under_age_of_consent", i14, i14 != -1);
            zzezi.c(bundle, "max_ad_content_rating", zzlVar.I);
        }
    }
}
