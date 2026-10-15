package com.google.android.gms.drive.events;

import com.google.android.gms.drive.DriveContents;

/* JADX INFO: loaded from: classes.dex */
public abstract class OpenFileCallback {
    public abstract void a(DriveContents driveContents);

    public abstract void b(Exception exc);

    public abstract void c(long j10, long j11);
}
