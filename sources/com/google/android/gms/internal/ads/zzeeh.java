package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeeh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Clock f16418a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzeei f16419b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzfff f16420c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f16421d = Collections.synchronizedList(new ArrayList());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f16422e = ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10385u6)).booleanValue();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzeay f16423f;

    public zzeeh(Clock clock, zzeei zzeeiVar, zzeay zzeayVar, zzfff zzfffVar) {
        this.f16418a = clock;
        this.f16419b = zzeeiVar;
        this.f16423f = zzeayVar;
        this.f16420c = zzfffVar;
    }

    static /* bridge */ /* synthetic */ void g(zzeeh zzeehVar, String str, int i10, long j10, String str2, Integer num) {
        String str3 = str + "." + i10 + "." + j10;
        if (!TextUtils.isEmpty(str2)) {
            str3 = str3 + "." + str2;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10391v1)).booleanValue() && num != null && !TextUtils.isEmpty(str2)) {
            str3 = str3 + "." + num;
        }
        zzeehVar.f16421d.add(str3);
    }

    final zzfut e(zzeyo zzeyoVar, zzeyc zzeycVar, zzfut zzfutVar, zzffb zzffbVar) {
        zzeyf zzeyfVar = zzeyoVar.f17703b.f17700b;
        long jB = this.f16418a.b();
        String str = zzeycVar.f17671x;
        if (str != null) {
            zzfuj.q(zzfutVar, new zzeeg(this, jB, str, zzeycVar, zzeyfVar, zzffbVar, zzeyoVar), zzbzn.f11619f);
        }
        return zzfutVar;
    }

    public final String f() {
        return TextUtils.join("_", this.f16421d);
    }
}
