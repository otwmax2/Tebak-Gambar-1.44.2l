package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Message;
import android.util.Log;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
final class m implements Handler.Callback {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ n f7458o;

    /* synthetic */ m(n nVar, zzp zzpVar) {
        this.f7458o = nVar;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i10 = message.what;
        if (i10 == 0) {
            synchronized (this.f7458o.f7459f) {
                zzn zznVar = (zzn) message.obj;
                l lVar = (l) this.f7458o.f7459f.get(zznVar);
                if (lVar != null && lVar.i()) {
                    if (lVar.j()) {
                        lVar.g("GmsClientSupervisor");
                    }
                    this.f7458o.f7459f.remove(zznVar);
                }
            }
            return true;
        }
        if (i10 != 1) {
            return false;
        }
        synchronized (this.f7458o.f7459f) {
            zzn zznVar2 = (zzn) message.obj;
            l lVar2 = (l) this.f7458o.f7459f.get(zznVar2);
            if (lVar2 != null && lVar2.a() == 3) {
                Log.e("GmsClientSupervisor", "Timeout waiting for ServiceConnection callback " + String.valueOf(zznVar2), new Exception());
                ComponentName componentNameB = lVar2.b();
                if (componentNameB == null) {
                    componentNameB = zznVar2.b();
                }
                if (componentNameB == null) {
                    String strD = zznVar2.d();
                    Preconditions.k(strD);
                    componentNameB = new ComponentName(strD, "unknown");
                }
                lVar2.onServiceDisconnected(componentNameB);
            }
        }
        return true;
    }
}
