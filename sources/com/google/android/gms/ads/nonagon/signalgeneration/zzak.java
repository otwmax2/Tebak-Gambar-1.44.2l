package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzctu;
import com.google.android.gms.internal.ads.zzfcu;
import com.google.android.gms.internal.ads.zzfda;
import com.google.android.gms.internal.ads.zzgwy;
import com.google.android.gms.internal.ads.zzgxl;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzak implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgxl f6402a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgxl f6403b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgxl f6404c;

    public zzak(zzgxl zzgxlVar, zzgxl zzgxlVar2, zzgxl zzgxlVar3) {
        this.f6402a = zzgxlVar;
        this.f6403b = zzgxlVar2;
        this.f6404c = zzgxlVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final /* bridge */ /* synthetic */ Object zzb() {
        return ((zzfda) this.f6402a.zzb()).b(zzfcu.GENERATE_SIGNALS, ((zzctu) this.f6404c).zzb().c()).f(((zzan) this.f6403b).zzb()).i(((Integer) zzba.c().b(zzbar.f10186c5)).intValue(), TimeUnit.SECONDS).a();
    }
}
