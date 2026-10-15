package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.drive.ExecutionOptions;
import com.google.android.gms.drive.MetadataChangeSet;

/* JADX INFO: loaded from: classes2.dex */
final class zzbt extends zzby {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final /* synthetic */ MetadataChangeSet f21851t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final /* synthetic */ int f21852u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final /* synthetic */ int f21853v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final /* synthetic */ ExecutionOptions f21854w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final /* synthetic */ zzbs f21855x;

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* synthetic */ void s(Api.AnyClient anyClient) throws RemoteException {
        zzaw zzawVar = (zzaw) anyClient;
        this.f21851t.a().W3(zzawVar.D());
        ((zzeo) zzawVar.I()).Na(new zzw(this.f21855x.a(), this.f21851t.a(), this.f21852u, this.f21853v, this.f21854w), new zzbv(this));
    }
}
