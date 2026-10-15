package com.google.android.gms.internal.games;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.event.Events;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzap implements Events.LoadEventsResult {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final /* synthetic */ Status f23032o;

    zzap(zzam zzamVar, Status status) {
        this.f23032o = status;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status V2() {
        return this.f23032o;
    }

    @Override // com.google.android.gms.common.api.Releasable
    public final void c() {
    }
}
