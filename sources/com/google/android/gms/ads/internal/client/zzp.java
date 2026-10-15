package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzbyt;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzp f5930a = new zzp();

    @VisibleForTesting
    protected zzp() {
    }

    public final zzl a(Context context, zzdx zzdxVar) {
        Context context2;
        List listUnmodifiableList;
        String strW;
        Date dateL = zzdxVar.l();
        long time = dateL != null ? dateL.getTime() : -1L;
        String strI = zzdxVar.i();
        int iA = zzdxVar.a();
        Set setO = zzdxVar.o();
        if (setO.isEmpty()) {
            context2 = context;
            listUnmodifiableList = null;
        } else {
            listUnmodifiableList = Collections.unmodifiableList(new ArrayList(setO));
            context2 = context;
        }
        boolean zQ = zzdxVar.q(context2);
        Bundle bundleE = zzdxVar.e(AdMobAdapter.class);
        String strJ = zzdxVar.j();
        SearchAdRequest searchAdRequestG = zzdxVar.g();
        zzfh zzfhVar = searchAdRequestG != null ? new zzfh(searchAdRequestG) : null;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            String packageName = applicationContext.getPackageName();
            zzay.b();
            strW = zzbyt.w(Thread.currentThread().getStackTrace(), packageName);
        } else {
            strW = null;
        }
        boolean zP = zzdxVar.p();
        RequestConfiguration requestConfigurationB = zzej.e().b();
        return new zzl(8, time, bundleE, iA, listUnmodifiableList, zQ, Math.max(zzdxVar.c(), requestConfigurationB.b()), false, strJ, zzfhVar, null, strI, zzdxVar.f(), zzdxVar.d(), Collections.unmodifiableList(new ArrayList(zzdxVar.n())), zzdxVar.k(), strW, zP, null, Math.max(-1, requestConfigurationB.c()), (String) Collections.max(Arrays.asList(null, requestConfigurationB.a()), new Comparator() { // from class: com.google.android.gms.ads.internal.client.zzo
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                List list = RequestConfiguration.f5611e;
                return list.indexOf((String) obj) - list.indexOf((String) obj2);
            }
        }), zzdxVar.m(), zzdxVar.b(), zzdxVar.h());
    }
}
