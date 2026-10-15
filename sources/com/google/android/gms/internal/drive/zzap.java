package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveApi;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzap extends zzau<DriveApi.DriveIdResult> {
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public /* synthetic */ Result f(Status status) {
        return new zzao(status, null);
    }
}
