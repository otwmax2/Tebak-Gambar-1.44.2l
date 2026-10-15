package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfoe implements Iterable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ CharSequence f18498o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzfoh f18499p;

    zzfoe(zzfoh zzfohVar, CharSequence charSequence) {
        this.f18499p = zzfohVar;
        this.f18498o = charSequence;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.f18499p.g(this.f18498o);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        zzfnk.b(sb, this, ", ");
        sb.append(']');
        return sb.toString();
    }
}
