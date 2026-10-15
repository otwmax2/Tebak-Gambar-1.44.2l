package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfqi extends zzfom {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzfqk f18599q;

    zzfqi(zzfqk zzfqkVar, int i10) {
        super(zzfqkVar.size(), i10);
        this.f18599q = zzfqkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfom
    protected final Object a(int i10) {
        return this.f18599q.get(i10);
    }
}
