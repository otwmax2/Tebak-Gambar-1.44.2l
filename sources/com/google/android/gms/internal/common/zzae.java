package com.google.android.gms.internal.common;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzae extends zzz {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzag f21679q;

    zzae(zzag zzagVar, int i10) {
        super(zzagVar.size(), i10);
        this.f21679q = zzagVar;
    }

    @Override // com.google.android.gms.internal.common.zzz
    protected final Object a(int i10) {
        return this.f21679q.get(i10);
    }
}
