package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.ViewGroup;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdhh implements zzbdk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzdie f14731a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ ViewGroup f14732b;

    zzdhh(zzdie zzdieVar, ViewGroup viewGroup) {
        this.f14731a = zzdieVar;
        this.f14732b = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.zzbdk
    public final void a() {
        zzdie zzdieVar = this.f14731a;
        zzfqk zzfqkVar = zzdhe.C;
        Map mapL = zzdieVar.l();
        if (mapL == null) {
            return;
        }
        int size = zzfqkVar.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = mapL.get((String) zzfqkVar.get(i10));
            i10++;
            if (obj != null) {
                this.f14731a.onClick(this.f14732b);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdk
    public final void b(MotionEvent motionEvent) {
        this.f14731a.onTouch(null, motionEvent);
    }

    @Override // com.google.android.gms.internal.ads.zzbdk
    public final JSONObject zza() {
        return this.f14731a.m();
    }

    @Override // com.google.android.gms.internal.ads.zzbdk
    public final JSONObject zzb() {
        return this.f14731a.n();
    }
}
