package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzctp implements zzcwc, zzcvj {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f13984o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzeyc f13985p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzbrh f13986q;

    public zzctp(Context context, zzeyc zzeycVar, zzbrh zzbrhVar, byte[] bArr) {
        this.f13984o = context;
        this.f13985p = zzeycVar;
        this.f13986q = zzbrhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcvj
    public final void c(Context context) {
    }

    @Override // com.google.android.gms.internal.ads.zzcwc
    public final void k() {
        zzbri zzbriVar = this.f13985p.f17641e0;
        if (zzbriVar == null || !zzbriVar.f11186a) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (this.f13985p.f17641e0.f11187b.isEmpty()) {
            return;
        }
        arrayList.add(this.f13985p.f17641e0.f11187b);
    }

    @Override // com.google.android.gms.internal.ads.zzcvj
    public final void o(Context context) {
    }

    @Override // com.google.android.gms.internal.ads.zzcvj
    public final void p(Context context) {
    }
}
