package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes2.dex */
final class zzbl implements ResultCallback<Status> {
    @Override // com.google.android.gms.common.api.ResultCallback
    public final /* synthetic */ void a(Result result) {
        Status status = (Status) result;
        if (status.a4()) {
            return;
        }
        zzbi.f21835e.e("DriveContentsImpl", "Error discarding contents, status: %s", status);
    }
}
