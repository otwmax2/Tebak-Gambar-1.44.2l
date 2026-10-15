package com.google.android.gms.cloudmessaging;

import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;

/* JADX INFO: compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Messenger f6868a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zza f6869b;

    l(IBinder iBinder) throws RemoteException {
        String interfaceDescriptor = iBinder.getInterfaceDescriptor();
        if ("android.os.IMessenger".equals(interfaceDescriptor)) {
            this.f6868a = new Messenger(iBinder);
            this.f6869b = null;
        } else if ("com.google.android.gms.iid.IMessengerCompat".equals(interfaceDescriptor)) {
            this.f6869b = new zza(iBinder);
            this.f6868a = null;
        } else {
            String strValueOf = String.valueOf(interfaceDescriptor);
            Log.w("MessengerIpcClient", strValueOf.length() != 0 ? "Invalid interface descriptor: ".concat(strValueOf) : new String("Invalid interface descriptor: "));
            throw new RemoteException();
        }
    }

    final void a(Message message) throws RemoteException {
        Messenger messenger = this.f6868a;
        if (messenger != null) {
            messenger.send(message);
            return;
        }
        zza zzaVar = this.f6869b;
        if (zzaVar == null) {
            throw new IllegalStateException("Both messengers are null");
        }
        zzaVar.t(message);
    }
}
