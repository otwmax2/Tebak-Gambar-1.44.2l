package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveApi;
import com.google.android.gms.drive.MetadataBuffer;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaq implements DriveApi.MetadataBufferResult {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Status f21814o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final MetadataBuffer f21815p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final boolean f21816q;

    public zzaq(Status status, MetadataBuffer metadataBuffer, boolean z10) {
        this.f21814o = status;
        this.f21815p = metadataBuffer;
        this.f21816q = z10;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status V2() {
        return this.f21814o;
    }

    @Override // com.google.android.gms.common.api.Releasable
    public final void c() {
        MetadataBuffer metadataBuffer = this.f21815p;
        if (metadataBuffer != null) {
            metadataBuffer.c();
        }
    }
}
