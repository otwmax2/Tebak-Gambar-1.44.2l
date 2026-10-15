package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdui implements zzfuf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzduj f15686a;

    zzdui(zzduj zzdujVar) {
        this.f15686a = zzdujVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final void a(Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.L5)).booleanValue()) {
            Matcher matcher = zzduj.f15687h.matcher(th.getMessage());
            if (matcher.matches()) {
                this.f15686a.f15692e.i(Integer.parseInt(matcher.group(1)));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final /* bridge */ /* synthetic */ void c(Object obj) {
        zzeyo zzeyoVar = (zzeyo) obj;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.L5)).booleanValue()) {
            this.f15686a.f15692e.i(zzeyoVar.f17703b.f17700b.f17682e);
            this.f15686a.f15692e.j(zzeyoVar.f17703b.f17700b.f17683f);
        }
    }
}
