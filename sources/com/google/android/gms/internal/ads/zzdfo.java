package com.google.android.gms.internal.ads;

import com.facebook.internal.AnalyticsEvents;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdfo implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f14539a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f14540b;

    public zzdfo(zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        this.f14539a = zzgxlVar;
        this.f14540b = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzbzg zzbzgVarA = ((zzcgu) this.f14539a).a();
        com.google.android.gms.ads.internal.zzt.r();
        return new zzatb(UUID.randomUUID().toString(), zzbzgVarA, AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE, new JSONObject(), false, true);
    }
}
