package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.drive.DriveResourceClient;
import com.google.android.gms.drive.events.ListenerToken;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public final class zzch extends DriveResourceClient {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final AtomicInteger f21872k = new AtomicInteger();

    static final /* synthetic */ ListenerToken A(ListenerHolder listenerHolder, Task task) throws Exception {
        if (task.t()) {
            return new zzg(listenerHolder.b());
        }
        throw task.o();
    }

    static final /* synthetic */ ListenerToken B(zzg zzgVar, Task task) throws Exception {
        if (task.t()) {
            return zzgVar;
        }
        throw task.o();
    }

    @Override // com.google.android.gms.drive.DriveResourceClient
    public final Task<Boolean> z(ListenerToken listenerToken) {
        if (listenerToken instanceof zzg) {
            return l(((zzg) listenerToken).c());
        }
        throw new IllegalArgumentException("Unrecognized ListenerToken");
    }
}
