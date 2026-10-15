package com.google.android.gms.internal.games;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.games.snapshot.SnapshotContents;
import com.google.android.gms.games.snapshot.SnapshotMetadataChange;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdx extends zzec {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final /* synthetic */ String f23157t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final /* synthetic */ String f23158u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final /* synthetic */ SnapshotMetadataChange f23159v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final /* synthetic */ SnapshotContents f23160w;

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* synthetic */ void s(Api.AnyClient anyClient) throws RemoteException {
        ((com.google.android.gms.games.internal.zzf) anyClient).L0(this, this.f23157t, this.f23158u, this.f23159v, this.f23160w);
    }
}
