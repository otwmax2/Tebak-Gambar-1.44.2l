package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.CollectionUtils;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbhv implements zzbhp {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final Map f10746d = CollectionUtils.e(new String[]{"resize", "playVideo", "storePicture", "createCalendarEvent", "setOrientationProperties", "closeResizedAd", "unload"}, new Integer[]{1, 2, 3, 4, 5, 6, 7});

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.zzb f10747a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzbpz f10748b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzbqg f10749c;

    public zzbhv(com.google.android.gms.ads.internal.zzb zzbVar, zzbpz zzbpzVar, zzbqg zzbqgVar) {
        this.f10747a = zzbVar;
        this.f10748b = zzbpzVar;
        this.f10749c = zzbqgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    public final /* bridge */ /* synthetic */ void a(Object obj, Map map) {
        zzcei zzceiVar = (zzcei) obj;
        int iIntValue = ((Integer) f10746d.get((String) map.get("a"))).intValue();
        int i10 = 6;
        if (iIntValue != 5) {
            if (iIntValue != 7) {
                if (!this.f10747a.c()) {
                    this.f10747a.b(null);
                    return;
                }
                if (iIntValue == 1) {
                    this.f10748b.i(map);
                    return;
                }
                if (iIntValue == 3) {
                    new zzbqc(zzceiVar, map).i();
                    return;
                }
                if (iIntValue == 4) {
                    new zzbpx(zzceiVar, map).j();
                    return;
                } else if (iIntValue != 5) {
                    if (iIntValue == 6) {
                        this.f10748b.h(true);
                        return;
                    } else if (iIntValue != 7) {
                        zzbza.f("Unknown MRAID command called.");
                        return;
                    }
                }
            }
            this.f10749c.a();
            return;
        }
        String str = (String) map.get("forceOrientation");
        boolean z10 = map.containsKey("allowOrientationChange") ? Boolean.parseBoolean((String) map.get("allowOrientationChange")) : true;
        if (zzceiVar == null) {
            zzbza.g("AdWebView is null");
            return;
        }
        if ("portrait".equalsIgnoreCase(str)) {
            i10 = 7;
        } else if (!"landscape".equalsIgnoreCase(str)) {
            i10 = z10 ? -1 : 14;
        }
        zzceiVar.x0(i10);
    }
}
