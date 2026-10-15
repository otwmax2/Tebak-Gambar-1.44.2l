package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DrivePreferencesApi;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzcg extends zzau<DrivePreferencesApi.FileUploadPreferencesResult> {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final /* synthetic */ zzcb f21871t;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    protected /* synthetic */ Result f(Status status) {
        return new zzcf(this.f21871t, status, null, 0 == true ? 1 : 0);
    }
}
