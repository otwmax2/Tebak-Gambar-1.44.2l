package com.google.android.gms.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public class BlockingServiceConnection implements ServiceConnection {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    boolean f6896o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final BlockingQueue f6897p = new LinkedBlockingQueue();

    @KeepForSdk
    public IBinder a(long j10, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        Preconditions.j("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
        if (this.f6896o) {
            throw new IllegalStateException("Cannot call get on this connection more than once");
        }
        this.f6896o = true;
        IBinder iBinder = (IBinder) this.f6897p.poll(j10, timeUnit);
        if (iBinder != null) {
            return iBinder;
        }
        throw new TimeoutException("Timed out waiting for the service connection");
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f6897p.add(iBinder);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
