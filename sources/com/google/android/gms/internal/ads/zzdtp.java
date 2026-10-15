package com.google.android.gms.internal.ads;

import android.content.Context;
import android.webkit.CookieManager;
import com.vungle.mediation.BuildConfig;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdtp implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f15656a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f15657b;

    public zzdtp(zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f15656a = zzgxlVar;
        this.f15657b = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfda zzfdaVar = (zzfda) this.f15656a.zzb();
        final CookieManager cookieManagerB = com.google.android.gms.ads.internal.zzt.s().b((Context) this.f15657b.zzb());
        zzfcr zzfcrVarI = zzfck.a(new Callable() { // from class: com.google.android.gms.internal.ads.zzdtm
            @Override // java.util.concurrent.Callable
            public final Object call() {
                CookieManager cookieManager = cookieManagerB;
                if (cookieManager == null) {
                    return BuildConfig.FLAVOR;
                }
                return cookieManager.getCookie((String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.H0));
            }
        }, zzfcu.WEBVIEW_COOKIE, zzfdaVar).i(1L, TimeUnit.SECONDS);
        final zzdtn zzdtnVar = new zzfcd() { // from class: com.google.android.gms.internal.ads.zzdtn
            @Override // com.google.android.gms.internal.ads.zzfcd
            public final Object a(Object obj) {
                return BuildConfig.FLAVOR;
            }
        };
        return zzfcrVarI.c(Exception.class, new zzftq() { // from class: com.google.android.gms.internal.ads.zzfcn
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return zzfuj.h(BuildConfig.FLAVOR);
            }
        }).a();
    }
}
