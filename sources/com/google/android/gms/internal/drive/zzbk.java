package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.drive.MetadataChangeSet;

/* JADX INFO: loaded from: classes2.dex */
final class zzbk extends zzav {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final /* synthetic */ MetadataChangeSet f21841t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final /* synthetic */ com.google.android.gms.drive.zzn f21842u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final /* synthetic */ zzbi f21843v;

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* synthetic */ void s(Api.AnyClient anyClient) throws RemoteException {
        zzaw zzawVar = (zzaw) anyClient;
        this.f21841t.a().W3(zzawVar.D());
        ((zzeo) zzawVar.I()).r7(new zzm(this.f21843v.f21836a.V3(), this.f21841t.a(), this.f21843v.f21836a.X3(), this.f21843v.f21836a.Y3(), this.f21842u), new zzgy(this));
    }
}
