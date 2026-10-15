package com.google.android.gms.internal.games;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.games.snapshot.SnapshotContents;
import com.google.android.gms.games.snapshot.SnapshotMetadataChange;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zzdr implements RemoteCall {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f23146a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f23147b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final SnapshotMetadataChange f23148c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SnapshotContents f23149d;

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void a(Object obj, Object obj2) throws RemoteException {
        ((com.google.android.gms.games.internal.zzf) obj).e1((TaskCompletionSource) obj2, this.f23146a, this.f23147b, this.f23148c, this.f23149d);
    }
}
