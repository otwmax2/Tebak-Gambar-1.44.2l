package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhl extends zzhh<DriveId> {
    public zzhl(TaskCompletionSource<DriveId> taskCompletionSource) {
        super(taskCompletionSource);
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void l9(zzfn zzfnVar) throws RemoteException {
        X0().c(zzfnVar.V3());
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void p5(zzfy zzfyVar) throws RemoteException {
        X0().c(new zzaa(zzfyVar.V3()).h());
    }
}
