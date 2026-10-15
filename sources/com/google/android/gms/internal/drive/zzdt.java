package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.drive.MetadataChangeSet;

/* JADX INFO: loaded from: classes2.dex */
final class zzdt extends zzea {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final /* synthetic */ MetadataChangeSet f21930t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final /* synthetic */ zzdp f21931u;

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* synthetic */ void s(Api.AnyClient anyClient) throws RemoteException {
        zzaw zzawVar = (zzaw) anyClient;
        this.f21930t.a().W3(zzawVar.D());
        ((zzeo) zzawVar.I()).F3(new zzhf(this.f21931u.f21924a, this.f21930t.a()), new zzdy(this));
    }
}
