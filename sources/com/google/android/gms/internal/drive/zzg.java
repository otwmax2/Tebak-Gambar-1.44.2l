package com.google.android.gms.internal.drive;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.ICancelToken;
import com.google.android.gms.drive.events.ListenerToken;

/* JADX INFO: loaded from: classes2.dex */
public final class zzg implements ListenerToken {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ListenerHolder.ListenerKey f21990a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ICancelToken f21991b = null;

    public zzg(ListenerHolder.ListenerKey listenerKey) {
        this.f21990a = listenerKey;
    }

    public final boolean a() {
        ICancelToken iCancelToken = this.f21991b;
        if (iCancelToken == null) {
            return false;
        }
        try {
            iCancelToken.cancel();
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public final void b(ICancelToken iCancelToken) {
        this.f21991b = iCancelToken;
    }

    public final ListenerHolder.ListenerKey c() {
        return this.f21990a;
    }
}
