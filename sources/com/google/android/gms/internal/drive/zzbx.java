package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.drive.DriveFolder;

/* JADX INFO: loaded from: classes2.dex */
final class zzbx implements DriveFolder.DriveFileResult {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Status f21860o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final DriveFile f21861p;

    public zzbx(Status status, DriveFile driveFile) {
        this.f21860o = status;
        this.f21861p = driveFile;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status V2() {
        return this.f21860o;
    }
}
