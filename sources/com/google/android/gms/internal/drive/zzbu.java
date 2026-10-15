package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.drive.MetadataChangeSet;

/* JADX INFO: loaded from: classes2.dex */
final class zzbu extends zzca {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final /* synthetic */ MetadataChangeSet f21856t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final /* synthetic */ zzbs f21857u;

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* synthetic */ void s(Api.AnyClient anyClient) throws RemoteException {
        zzaw zzawVar = (zzaw) anyClient;
        this.f21856t.a().W3(zzawVar.D());
        ((zzeo) zzawVar.I()).k4(new zzy(this.f21857u.a(), this.f21856t.a()), new zzbw(this));
    }
}
