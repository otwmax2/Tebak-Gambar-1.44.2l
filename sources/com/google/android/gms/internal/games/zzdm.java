package com.google.android.gms.internal.games;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.games.snapshot.Snapshot;
import com.google.android.gms.games.snapshot.SnapshotMetadataChange;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zzdm implements RemoteCall {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Snapshot f23139a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SnapshotMetadataChange f23140b;

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void a(Object obj, Object obj2) throws RemoteException {
        ((com.google.android.gms.games.internal.zzf) obj).W0((TaskCompletionSource) obj2, this.f23139a, this.f23140b);
    }
}
