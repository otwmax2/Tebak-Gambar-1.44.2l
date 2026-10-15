package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.concurrent.ConcurrentHashMap;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzegt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConcurrentHashMap f16624a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzdnd f16625b;

    public zzegt(zzdnd zzdndVar) {
        this.f16625b = zzdndVar;
    }

    @CheckForNull
    public final zzbpc a(String str) {
        if (this.f16624a.containsKey(str)) {
            return (zzbpc) this.f16624a.get(str);
        }
        return null;
    }

    public final void b(String str) {
        try {
            this.f16624a.put(str, this.f16625b.b(str));
        } catch (RemoteException e10) {
            zzbza.e("Couldn't create RTB adapter : ", e10);
        }
    }
}
