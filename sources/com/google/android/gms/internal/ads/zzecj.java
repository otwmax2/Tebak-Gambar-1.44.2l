package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.browser.customtabs.d;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzecj implements zzeat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f16238a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzddw f16239b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f16240c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzeyb f16241d;

    public zzecj(Context context, Executor executor, zzddw zzddwVar, zzeyb zzeybVar) {
        this.f16238a = context;
        this.f16239b = zzddwVar;
        this.f16240c = executor;
        this.f16241d = zzeybVar;
    }

    private static String d(zzeyc zzeycVar) {
        try {
            return zzeycVar.f17670w.getString("tab_url");
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeat
    public final boolean a(zzeyo zzeyoVar, zzeyc zzeycVar) {
        Context context = this.f16238a;
        return (context instanceof Activity) && zzbbs.g(context) && !TextUtils.isEmpty(d(zzeycVar));
    }

    @Override // com.google.android.gms.internal.ads.zzeat
    public final zzfut b(final zzeyo zzeyoVar, final zzeyc zzeycVar) {
        String strD = d(zzeycVar);
        final Uri uri = strD != null ? Uri.parse(strD) : null;
        return zzfuj.m(zzfuj.h(null), new zzftq() { // from class: com.google.android.gms.internal.ads.zzech
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return this.f16233a.c(uri, zzeyoVar, zzeycVar, obj);
            }
        }, this.f16240c);
    }

    final /* synthetic */ zzfut c(Uri uri, zzeyo zzeyoVar, zzeyc zzeycVar, Object obj) throws Exception {
        try {
            d dVarA = new d.a().a();
            dVarA.f1276a.setData(uri);
            com.google.android.gms.ads.internal.overlay.zzc zzcVar = new com.google.android.gms.ads.internal.overlay.zzc(dVarA.f1276a, null);
            final zzbzs zzbzsVar = new zzbzs();
            zzdcw zzdcwVarC = this.f16239b.c(new zzcrb(zzeyoVar, zzeycVar, null), new zzdcz(new zzdee() { // from class: com.google.android.gms.internal.ads.zzeci
                @Override // com.google.android.gms.internal.ads.zzdee
                public final void a(boolean z10, Context context, zzcvb zzcvbVar) {
                    zzbzs zzbzsVar2 = zzbzsVar;
                    try {
                        com.google.android.gms.ads.internal.zzt.k();
                        com.google.android.gms.ads.internal.overlay.zzm.a(context, (AdOverlayInfoParcel) zzbzsVar2.get(), true);
                    } catch (Exception unused) {
                    }
                }
            }, null));
            zzbzsVar.c(new AdOverlayInfoParcel(zzcVar, null, zzdcwVarC.h(), null, new zzbzg(0, 0, false, false, false), null, null));
            this.f16241d.a();
            return zzfuj.h(zzdcwVarC.i());
        } catch (Throwable th) {
            zzbza.e("Error in CustomTabsAdRenderer", th);
            throw th;
        }
    }
}
