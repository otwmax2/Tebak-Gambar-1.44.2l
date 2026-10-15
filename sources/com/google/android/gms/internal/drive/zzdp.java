package com.google.android.gms.internal.drive;

import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.DriveResource;

/* JADX INFO: loaded from: classes2.dex */
public class zzdp implements DriveResource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final DriveId f21924a;

    public zzdp(DriveId driveId) {
        this.f21924a = driveId;
    }

    @Override // com.google.android.gms.drive.DriveResource
    public DriveId a() {
        return this.f21924a;
    }
}
