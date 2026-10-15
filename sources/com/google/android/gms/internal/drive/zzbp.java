package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.drive.DriveFile;

/* JADX INFO: loaded from: classes2.dex */
final class zzbp implements DriveFile.DownloadProgressListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ListenerHolder<DriveFile.DownloadProgressListener> f21848a;

    @Override // com.google.android.gms.drive.DriveFile.DownloadProgressListener
    public final void onProgress(long j10, long j11) {
        this.f21848a.c(new zzbq(this, j10, j11));
    }
}
