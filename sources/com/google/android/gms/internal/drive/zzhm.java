package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.drive.TransferPreferences;
import com.google.android.gms.drive.TransferPreferencesBuilder;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhm extends zzhh<TransferPreferences> {
    public zzhm(TaskCompletionSource<TransferPreferences> taskCompletionSource) {
        super(taskCompletionSource);
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void v7(zzfj zzfjVar) throws RemoteException {
        X0().c(new TransferPreferencesBuilder(zzfjVar.V3()).a());
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void y3(zzga zzgaVar) throws RemoteException {
        X0().c(zzgaVar.V3());
    }
}
