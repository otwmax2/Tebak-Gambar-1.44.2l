package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class b implements PendingResult.StatusListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ BasePendingResult f7082a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zaad f7083b;

    b(zaad zaadVar, BasePendingResult basePendingResult) {
        this.f7083b = zaadVar;
        this.f7082a = basePendingResult;
    }

    @Override // com.google.android.gms.common.api.PendingResult.StatusListener
    public final void a(Status status) {
        this.f7083b.f7156a.remove(this.f7082a);
    }
}
