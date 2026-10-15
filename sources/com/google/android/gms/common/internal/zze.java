package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
public final class zze implements ServiceConnection {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f7513o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ BaseGmsClient f7514p;

    public zze(BaseGmsClient baseGmsClient, int i10) {
        this.f7514p = baseGmsClient;
        this.f7513o = i10;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        BaseGmsClient baseGmsClient = this.f7514p;
        if (iBinder == null) {
            BaseGmsClient.i0(baseGmsClient, 16);
            return;
        }
        synchronized (baseGmsClient.B) {
            BaseGmsClient baseGmsClient2 = this.f7514p;
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            baseGmsClient2.C = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IGmsServiceBroker)) ? new i(iBinder) : (IGmsServiceBroker) iInterfaceQueryLocalInterface;
        }
        this.f7514p.j0(0, null, this.f7513o);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.f7514p.B) {
            this.f7514p.C = null;
        }
        Handler handler = this.f7514p.f7357z;
        handler.sendMessage(handler.obtainMessage(6, this.f7513o, 1));
    }
}
