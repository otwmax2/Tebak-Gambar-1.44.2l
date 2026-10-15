package com.google.android.gms.drive;

import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.drive.Drive;
import com.google.android.gms.drive.events.ListenerToken;
import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class DriveResourceClient extends GoogleApi<Drive.zza> {
    @Deprecated
    public abstract Task<Boolean> z(ListenerToken listenerToken);
}
