package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import com.facebook.appevents.AppEventsConstants;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdka {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f14960a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzcnq f14961b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzdbw f14962c;

    zzdka(Executor executor, zzcnq zzcnqVar, zzdbw zzdbwVar) {
        this.f14960a = executor;
        this.f14962c = zzdbwVar;
        this.f14961b = zzcnqVar;
    }

    public final void a(final zzcei zzceiVar) {
        if (zzceiVar == null) {
            return;
        }
        this.f14962c.Y0(zzceiVar.L());
        this.f14962c.L0(new zzatf() { // from class: com.google.android.gms.internal.ads.zzdjw
            @Override // com.google.android.gms.internal.ads.zzatf
            public final void H0(zzate zzateVar) {
                zzcfv zzcfvVarJ = zzceiVar.J();
                Rect rect = zzateVar.f9880d;
                zzcfvVarJ.T0(rect.left, rect.top, false);
            }
        }, this.f14960a);
        this.f14962c.L0(new zzatf() { // from class: com.google.android.gms.internal.ads.zzdjx
            @Override // com.google.android.gms.internal.ads.zzatf
            public final void H0(zzate zzateVar) {
                zzcei zzceiVar2 = zzceiVar;
                HashMap map = new HashMap();
                map.put("isVisible", true != zzateVar.f9886j ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES);
                zzceiVar2.v0("onAdVisibilityChanged", map);
            }
        }, this.f14960a);
        this.f14962c.L0(this.f14961b, this.f14960a);
        this.f14961b.e(zzceiVar);
        zzceiVar.c0("/trackActiveViewUnit", new zzbhp() { // from class: com.google.android.gms.internal.ads.zzdjy
            @Override // com.google.android.gms.internal.ads.zzbhp
            public final void a(Object obj, Map map) {
                this.f14953a.b((zzcei) obj, map);
            }
        });
        zzceiVar.c0("/untrackActiveViewUnit", new zzbhp() { // from class: com.google.android.gms.internal.ads.zzdjz
            @Override // com.google.android.gms.internal.ads.zzbhp
            public final void a(Object obj, Map map) {
                this.f14954a.c((zzcei) obj, map);
            }
        });
    }

    final /* synthetic */ void b(zzcei zzceiVar, Map map) {
        this.f14961b.b();
    }

    final /* synthetic */ void c(zzcei zzceiVar, Map map) {
        this.f14961b.a();
    }
}
