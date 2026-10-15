package com.google.android.gms.ads.query;

import android.content.Context;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.ads.internal.client.zzem;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbci;
import com.google.android.gms.internal.ads.zzbrt;
import com.google.android.gms.internal.ads.zzbyp;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class QueryInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzem f6464a;

    public QueryInfo(zzem zzemVar) {
        this.f6464a = zzemVar;
    }

    public static void a(final Context context, final AdFormat adFormat, final AdRequest adRequest, final QueryInfoGenerationCallback queryInfoGenerationCallback) {
        zzbar.c(context);
        if (((Boolean) zzbci.f10556k.e()).booleanValue()) {
            if (((Boolean) zzba.c().b(zzbar.f10410w9)).booleanValue()) {
                zzbyp.f11576b.execute(new Runnable() { // from class: com.google.android.gms.ads.query.zza
                    @Override // java.lang.Runnable
                    public final void run() {
                        Context context2 = context;
                        AdFormat adFormat2 = adFormat;
                        AdRequest adRequest2 = adRequest;
                        new zzbrt(context2, adFormat2, adRequest2 == null ? null : adRequest2.a()).b(queryInfoGenerationCallback);
                    }
                });
                return;
            }
        }
        new zzbrt(context, adFormat, adRequest == null ? null : adRequest.a()).b(queryInfoGenerationCallback);
    }

    public String b() {
        return this.f6464a.a();
    }
}
