package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbwd implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f11417a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SharedPreferences f11418b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.util.zzg f11419c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzbxf f11420d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f11421e = "-1";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f11422f = -1;

    zzbwd(Context context, com.google.android.gms.ads.internal.util.zzg zzgVar, zzbxf zzbxfVar) {
        this.f11418b = PreferenceManager.getDefaultSharedPreferences(context);
        this.f11419c = zzgVar;
        this.f11417a = context;
        this.f11420d = zzbxfVar;
    }

    private final void b(String str, int i10) {
        Context context;
        boolean z10 = false;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10368t0)).booleanValue() ? str.isEmpty() || str.charAt(0) != '1' : i10 == 0 || str.isEmpty() || (str.charAt(0) != '1' && !str.equals("-1"))) {
            z10 = true;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10346r0)).booleanValue()) {
            this.f11419c.B0(z10);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.L5)).booleanValue() && z10 && (context = this.f11417a) != null) {
                context.deleteDatabase("OfflineUpload.db");
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10291m0)).booleanValue()) {
            this.f11420d.y();
        }
    }

    final void a() {
        this.f11418b.registerOnSharedPreferenceChangeListener(this);
        onSharedPreferenceChanged(this.f11418b, "gad_has_consent_for_cookies");
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10390v0)).booleanValue()) {
            onSharedPreferenceChanged(this.f11418b, "IABTCF_PurposeConsents");
        } else {
            onSharedPreferenceChanged(this.f11418b, "IABTCF_gdprApplies");
            onSharedPreferenceChanged(this.f11418b, "IABTCF_TCString");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00a8  */
    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onSharedPreferenceChanged(android.content.SharedPreferences r9, java.lang.String r10) {
        /*
            Method dump skipped, instruction units count: 224
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbwd.onSharedPreferenceChanged(android.content.SharedPreferences, java.lang.String):void");
    }
}
