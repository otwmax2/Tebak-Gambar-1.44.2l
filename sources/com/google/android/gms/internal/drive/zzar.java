package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveApi;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzar extends zzau<DriveApi.MetadataBufferResult> {
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public /* synthetic */ Result f(Status status) {
        return new zzaq(status, null, false);
    }
}
