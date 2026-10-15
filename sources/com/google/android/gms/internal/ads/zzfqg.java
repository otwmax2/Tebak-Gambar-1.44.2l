package com.google.android.gms.internal.ads;

import java.io.Serializable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfqg extends zzfpg implements Serializable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final Object f18597o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final Object f18598p;

    zzfqg(Object obj, Object obj2) {
        this.f18597o = obj;
        this.f18598p = obj2;
    }

    @Override // com.google.android.gms.internal.ads.zzfpg, java.util.Map.Entry
    public final Object getKey() {
        return this.f18597o;
    }

    @Override // com.google.android.gms.internal.ads.zzfpg, java.util.Map.Entry
    public final Object getValue() {
        return this.f18598p;
    }

    @Override // com.google.android.gms.internal.ads.zzfpg, java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException();
    }
}
