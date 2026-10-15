package com.google.android.gms.drive;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public interface DriveFile extends DriveResource {

    @Deprecated
    public interface DownloadProgressListener {
        void onProgress(long j10, long j11);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface OpenMode {
    }
}
