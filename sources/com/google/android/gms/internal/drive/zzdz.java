package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveResource;
import com.google.android.gms.drive.Metadata;

/* JADX INFO: loaded from: classes2.dex */
final class zzdz implements DriveResource.MetadataResult {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Status f21937o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Metadata f21938p;

    public zzdz(Status status, Metadata metadata) {
        this.f21937o = status;
        this.f21938p = metadata;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status V2() {
        return this.f21937o;
    }
}
