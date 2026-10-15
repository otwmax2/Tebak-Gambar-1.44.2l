package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbif implements zzbhp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzbie f10768a;

    public zzbif(zzbie zzbieVar) {
        this.f10768a = zzbieVar;
    }

    public static void b(zzcei zzceiVar, zzbie zzbieVar) {
        zzceiVar.c0("/reward", new zzbif(zzbieVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    public final void a(Object obj, Map map) {
        String str = (String) map.get("action");
        if (!"grant".equals(str)) {
            if ("video_start".equals(str)) {
                this.f10768a.a();
                return;
            } else {
                if ("video_complete".equals(str)) {
                    this.f10768a.zzb();
                    return;
                }
                return;
            }
        }
        zzbup zzbupVar = null;
        try {
            int i10 = Integer.parseInt((String) map.get("amount"));
            String str2 = (String) map.get("type");
            if (!TextUtils.isEmpty(str2)) {
                zzbupVar = new zzbup(str2, i10);
            }
        } catch (NumberFormatException e10) {
            zzbza.h("Unable to parse reward amount.", e10);
        }
        this.f10768a.I(zzbupVar);
    }
}
