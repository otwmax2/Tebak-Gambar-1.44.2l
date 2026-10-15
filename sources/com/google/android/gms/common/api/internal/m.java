package com.google.android.gms.common.api.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class m extends r {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zaaw f7124b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.signin.internal.zak f7125c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    m(n nVar, zabf zabfVar, zaaw zaawVar, com.google.android.gms.signin.internal.zak zakVar) {
        super(zabfVar);
        this.f7124b = zaawVar;
        this.f7125c = zakVar;
    }

    @Override // com.google.android.gms.common.api.internal.r
    public final void a() {
        zaaw.B(this.f7124b, this.f7125c);
    }
}
