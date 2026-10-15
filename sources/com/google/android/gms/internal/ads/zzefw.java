package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzefw implements zzeat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzeav f16563a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzeba f16564b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzfda f16565c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzfuu f16566d;

    public zzefw(zzfda zzfdaVar, zzfuu zzfuuVar, zzeav zzeavVar, zzeba zzebaVar) {
        this.f16565c = zzfdaVar;
        this.f16566d = zzfuuVar;
        this.f16564b = zzebaVar;
        this.f16563a = zzeavVar;
    }

    @VisibleForTesting
    static final String e(String str, int i10) {
        return "Error from: " + str + ", code: " + i10;
    }

    @Override // com.google.android.gms.internal.ads.zzeat
    public final boolean a(zzeyo zzeyoVar, zzeyc zzeycVar) {
        return !zzeycVar.f17668u.isEmpty();
    }

    @Override // com.google.android.gms.internal.ads.zzeat
    public final zzfut b(final zzeyo zzeyoVar, final zzeyc zzeycVar) {
        final zzeaw zzeawVarA;
        Iterator it = zzeycVar.f17668u.iterator();
        while (true) {
            if (!it.hasNext()) {
                zzeawVarA = null;
                break;
            }
            try {
                zzeawVarA = this.f16563a.a((String) it.next(), zzeycVar.f17670w);
                break;
            } catch (zzezc unused) {
            }
        }
        if (zzeawVarA == null) {
            return zzfuj.g(new zzedw("Unable to instantiate mediation adapter class."));
        }
        zzbzs zzbzsVar = new zzbzs();
        zzeawVarA.f16128c.A9(new zzefv(this, zzeawVarA, zzbzsVar));
        if (zzeycVar.N) {
            Bundle bundle = zzeyoVar.f17702a.f17696a.f17731d.A;
            Bundle bundle2 = bundle.getBundle(AdMobAdapter.class.getName());
            if (bundle2 == null) {
                bundle2 = new Bundle();
                bundle.putBundle(AdMobAdapter.class.getName(), bundle2);
            }
            bundle2.putBoolean("render_test_ad_label", true);
        }
        zzfda zzfdaVar = this.f16565c;
        return zzfck.d(new zzfce() { // from class: com.google.android.gms.internal.ads.zzeft
            @Override // com.google.android.gms.internal.ads.zzfce
            public final void zza() throws Exception {
                this.f16551a.d(zzeyoVar, zzeycVar, zzeawVarA);
            }
        }, this.f16566d, zzfcu.ADAPTER_LOAD_AD_SYN, zzfdaVar).b(zzfcu.ADAPTER_LOAD_AD_ACK).d(zzbzsVar).b(zzfcu.ADAPTER_WRAP_ADAPTER).e(new zzfcd() { // from class: com.google.android.gms.internal.ads.zzefu
            @Override // com.google.android.gms.internal.ads.zzfcd
            public final Object a(Object obj) {
                return this.f16555a.c(zzeyoVar, zzeycVar, zzeawVarA, (Void) obj);
            }
        }).a();
    }

    final /* synthetic */ Object c(zzeyo zzeyoVar, zzeyc zzeycVar, zzeaw zzeawVar, Void r42) throws Exception {
        return this.f16564b.b(zzeyoVar, zzeycVar, zzeawVar);
    }

    final /* synthetic */ void d(zzeyo zzeyoVar, zzeyc zzeycVar, zzeaw zzeawVar) throws Exception {
        this.f16564b.a(zzeyoVar, zzeycVar, zzeawVar);
    }
}
