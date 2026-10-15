package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.ads.mediation.AbstractAdViewAdapter;
import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzedz implements zzeat {
    private static Bundle d(Bundle bundle) {
        return bundle == null ? new Bundle() : new Bundle(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzeat
    public final boolean a(zzeyo zzeyoVar, zzeyc zzeycVar) {
        return !TextUtils.isEmpty(zzeycVar.f17670w.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, BuildConfig.FLAVOR));
    }

    @Override // com.google.android.gms.internal.ads.zzeat
    public final zzfut b(zzeyo zzeyoVar, zzeyc zzeycVar) {
        String strOptString = zzeycVar.f17670w.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, BuildConfig.FLAVOR);
        zzeyx zzeyxVar = zzeyoVar.f17702a.f17696a;
        zzeyv zzeyvVar = new zzeyv();
        zzeyvVar.G(zzeyxVar);
        zzeyvVar.J(strOptString);
        Bundle bundleD = d(zzeyxVar.f17731d.A);
        Bundle bundleD2 = d(bundleD.getBundle("com.google.ads.mediation.admob.AdMobAdapter"));
        bundleD2.putInt("gw", 1);
        String strOptString2 = zzeycVar.f17670w.optString("mad_hac", null);
        if (strOptString2 != null) {
            bundleD2.putString("mad_hac", strOptString2);
        }
        String strOptString3 = zzeycVar.f17670w.optString("adJson", null);
        if (strOptString3 != null) {
            bundleD2.putString("_ad", strOptString3);
        }
        bundleD2.putBoolean("_noRefresh", true);
        Iterator<String> itKeys = zzeycVar.E.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            String strOptString4 = zzeycVar.E.optString(next, null);
            if (next != null) {
                bundleD2.putString(next, strOptString4);
            }
        }
        bundleD.putBundle("com.google.ads.mediation.admob.AdMobAdapter", bundleD2);
        com.google.android.gms.ads.internal.client.zzl zzlVar = zzeyxVar.f17731d;
        zzeyvVar.e(new com.google.android.gms.ads.internal.client.zzl(zzlVar.f5906o, zzlVar.f5907p, bundleD2, zzlVar.f5909r, zzlVar.f5910s, zzlVar.f5911t, zzlVar.f5912u, zzlVar.f5913v, zzlVar.f5914w, zzlVar.f5915x, zzlVar.f5916y, zzlVar.f5917z, bundleD, zzlVar.B, zzlVar.C, zzlVar.D, zzlVar.E, zzlVar.F, zzlVar.G, zzlVar.H, zzlVar.I, zzlVar.J, zzlVar.K, zzlVar.L));
        zzeyx zzeyxVarG = zzeyvVar.g();
        Bundle bundle = new Bundle();
        zzeyf zzeyfVar = zzeyoVar.f17703b.f17700b;
        Bundle bundle2 = new Bundle();
        bundle2.putStringArrayList("nofill_urls", new ArrayList<>(zzeyfVar.f17678a));
        bundle2.putInt("refresh_interval", zzeyfVar.f17680c);
        bundle2.putString("gws_query_id", zzeyfVar.f17679b);
        bundle.putBundle("parent_common_config", bundle2);
        String str = zzeyoVar.f17702a.f17696a.f17733f;
        Bundle bundle3 = new Bundle();
        bundle3.putString("initial_ad_unit_id", str);
        bundle3.putString("allocation_id", zzeycVar.f17671x);
        bundle3.putStringArrayList("click_urls", new ArrayList<>(zzeycVar.f17636c));
        bundle3.putStringArrayList("imp_urls", new ArrayList<>(zzeycVar.f17638d));
        bundle3.putStringArrayList("manual_tracking_urls", new ArrayList<>(zzeycVar.f17664q));
        bundle3.putStringArrayList("fill_urls", new ArrayList<>(zzeycVar.f17658n));
        bundle3.putStringArrayList("video_start_urls", new ArrayList<>(zzeycVar.f17646h));
        bundle3.putStringArrayList("video_reward_urls", new ArrayList<>(zzeycVar.f17648i));
        bundle3.putStringArrayList("video_complete_urls", new ArrayList<>(zzeycVar.f17650j));
        bundle3.putString("transaction_id", zzeycVar.f17652k);
        bundle3.putString("valid_from_timestamp", zzeycVar.f17654l);
        bundle3.putBoolean("is_closable_area_disabled", zzeycVar.Q);
        bundle3.putString("recursive_server_response_data", zzeycVar.f17663p0);
        if (zzeycVar.f17656m != null) {
            Bundle bundle4 = new Bundle();
            bundle4.putInt("rb_amount", zzeycVar.f17656m.f11357p);
            bundle4.putString("rb_type", zzeycVar.f17656m.f11356o);
            bundle3.putParcelableArray("rewards", new Bundle[]{bundle4});
        }
        bundle.putBundle("parent_ad_config", bundle3);
        return c(zzeyxVarG, bundle, zzeycVar, zzeyoVar);
    }

    protected abstract zzfut c(zzeyx zzeyxVar, Bundle bundle, zzeyc zzeycVar, zzeyo zzeyoVar);
}
