package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.drive.DriveFile;

/* JADX INFO: loaded from: classes2.dex */
final class zzbq implements ListenerHolder.Notifier<DriveFile.DownloadProgressListener> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ long f21849a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ long f21850b;

    zzbq(zzbp zzbpVar, long j10, long j11) {
        this.f21849a = j10;
        this.f21850b = j11;
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final /* synthetic */ void a(DriveFile.DownloadProgressListener downloadProgressListener) {
        downloadProgressListener.onProgress(this.f21849a, this.f21850b);
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final void b() {
    }
}
