package com.google.android.gms.internal.ads;

import com.facebook.internal.AnalyticsEvents;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcnk implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f13582a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f13583b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f13584c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzgxl f13585d;

    public zzcnk(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3, zzgxl zzgxlVar4) {
        this.f13582a = zzgxlVar;
        this.f13583b = zzgxlVar2;
        this.f13584c = zzgxlVar3;
        this.f13585d = zzgxlVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        ((zzcrc) this.f13582a).a();
        zzbzg zzbzgVarA = ((zzcgu) this.f13583b).a();
        JSONObject jSONObject = (JSONObject) this.f13584c.zzb();
        String str = (String) this.f13585d.zzb();
        boolean zEquals = AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE.equals(str);
        com.google.android.gms.ads.internal.zzt.r();
        return new zzatb(UUID.randomUUID().toString(), zzbzgVarA, str, jSONObject, false, zEquals);
    }
}
