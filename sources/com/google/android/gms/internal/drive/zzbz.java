package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveFolder;

/* JADX INFO: loaded from: classes2.dex */
final class zzbz implements DriveFolder.DriveFolderResult {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Status f21862o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final DriveFolder f21863p;

    public zzbz(Status status, DriveFolder driveFolder) {
        this.f21862o = status;
        this.f21863p = driveFolder;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status V2() {
        return this.f21862o;
    }
}
