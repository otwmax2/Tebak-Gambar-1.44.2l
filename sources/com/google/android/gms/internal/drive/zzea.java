package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveResource;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzea extends zzau<DriveResource.MetadataResult> {
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public /* synthetic */ Result f(Status status) {
        return new zzdz(status, null);
    }
}
