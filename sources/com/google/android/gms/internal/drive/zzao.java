package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveApi;
import com.google.android.gms.drive.DriveId;

/* JADX INFO: loaded from: classes2.dex */
final class zzao implements DriveApi.DriveIdResult {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Status f21812o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final DriveId f21813p;

    public zzao(Status status, DriveId driveId) {
        this.f21812o = status;
        this.f21813p = driveId;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status V2() {
        return this.f21812o;
    }
}
