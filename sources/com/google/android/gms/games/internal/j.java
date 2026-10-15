package com.google.android.gms.games.internal;

import com.google.android.gms.games.internal.zzf;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class j extends zzf.x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzf.s f8064a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    j(zzf.s sVar) {
        super(null);
        this.f8064a = sVar;
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final void a(Object obj) {
        this.f8064a.accept(obj);
    }
}
