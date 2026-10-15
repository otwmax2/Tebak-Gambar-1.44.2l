package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzezg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzeyc f17761a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzeyf f17762b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzeaf f17763c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzfff f17764d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzfen f17765e;

    @VisibleForTesting
    public zzezg(zzeaf zzeafVar, zzfff zzfffVar, zzeyc zzeycVar, zzeyf zzeyfVar, zzfen zzfenVar) {
        this.f17761a = zzeycVar;
        this.f17762b = zzeyfVar;
        this.f17763c = zzeafVar;
        this.f17764d = zzfffVar;
        this.f17765e = zzfenVar;
    }

    public final void a(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            b((String) it.next(), 2);
        }
    }

    public final void b(String str, int i10) {
        if (!this.f17761a.f17651j0) {
            this.f17764d.c(str, this.f17765e);
        } else {
            this.f17763c.e(new zzeah(com.google.android.gms.ads.internal.zzt.b().a(), this.f17762b.f17679b, str, i10));
        }
    }

    public final void c(List list, int i10) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            b((String) it.next(), i10);
        }
    }
}
