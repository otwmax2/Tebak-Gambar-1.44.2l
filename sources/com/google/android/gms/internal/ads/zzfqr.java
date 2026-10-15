package com.google.android.gms.internal.ads;

import java.util.Iterator;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfqr extends zzfon {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ Iterator f18616q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final /* synthetic */ zzfnv f18617r;

    zzfqr(Iterator it, zzfnv zzfnvVar) {
        this.f18616q = it;
        this.f18617r = zzfnvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfon
    @CheckForNull
    protected final Object a() {
        while (this.f18616q.hasNext()) {
            Object next = this.f18616q.next();
            if (this.f18617r.a(next)) {
                return next;
            }
        }
        b();
        return null;
    }
}
