package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzel extends zzcv {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f5876o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final String f5877p;

    public zzel(String str, String str2) {
        this.f5876o = str;
        this.f5877p = str2;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcw
    public final String b() throws RemoteException {
        return this.f5876o;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcw
    public final String c() throws RemoteException {
        return this.f5877p;
    }
}
