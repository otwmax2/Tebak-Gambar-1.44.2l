package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveApi;
import com.google.android.gms.drive.DriveContents;

/* JADX INFO: loaded from: classes2.dex */
final class zzal implements Releasable, DriveApi.DriveContentsResult {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Status f21809o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final DriveContents f21810p;

    public zzal(Status status, DriveContents driveContents) {
        this.f21809o = status;
        this.f21810p = driveContents;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status V2() {
        return this.f21809o;
    }

    @Override // com.google.android.gms.common.api.Releasable
    public final void c() {
        DriveContents driveContents = this.f21810p;
        if (driveContents != null) {
            driveContents.h();
        }
    }
}
