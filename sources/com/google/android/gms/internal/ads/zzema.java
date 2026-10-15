package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import com.vungle.mediation.BuildConfig;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzema implements zzepn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f16942a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfuu f16943b;

    zzema(Context context, zzfuu zzfuuVar) {
        this.f16942a = context;
        this.f16943b = zzfuuVar;
    }

    final /* synthetic */ zzelz a() throws Exception {
        Bundle bundle;
        com.google.android.gms.ads.internal.zzt.r();
        Context context = this.f16942a;
        boolean zBooleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.E5)).booleanValue();
        String string = BuildConfig.FLAVOR;
        String string2 = !zBooleanValue ? BuildConfig.FLAVOR : context.getSharedPreferences("mobileads_consent", 0).getString("consent_string", BuildConfig.FLAVOR);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.G5)).booleanValue()) {
            string = this.f16942a.getSharedPreferences("mobileads_consent", 0).getString("fc_consent", BuildConfig.FLAVOR);
        }
        com.google.android.gms.ads.internal.zzt.r();
        Context context2 = this.f16942a;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.F5)).booleanValue()) {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context2);
            bundle = new Bundle();
            if (defaultSharedPreferences.contains("IABConsent_CMPPresent")) {
                bundle.putBoolean("IABConsent_CMPPresent", defaultSharedPreferences.getBoolean("IABConsent_CMPPresent", false));
            }
            String[] strArr = {"IABConsent_SubjectToGDPR", "IABConsent_ConsentString", "IABConsent_ParsedPurposeConsents", "IABConsent_ParsedVendorConsents"};
            for (int i10 = 0; i10 < 4; i10++) {
                String str = strArr[i10];
                if (defaultSharedPreferences.contains(str)) {
                    bundle.putString(str, defaultSharedPreferences.getString(str, null));
                }
            }
        } else {
            bundle = null;
        }
        return new zzelz(string2, string, bundle, null);
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int zza() {
        return 18;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final zzfut zzb() {
        return this.f16943b.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzelx
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f16934a.a();
            }
        });
    }
}
