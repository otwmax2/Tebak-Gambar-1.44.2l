package com.google.android.gms.internal.ads;

import android.net.Network;
import java.net.URL;
import java.net.URLConnection;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class zzfkg implements zzfkl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Network f18340a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ URL f18341b;

    @Override // com.google.android.gms.internal.ads.zzfkl
    public final URLConnection zza() {
        return this.f18340a.openConnection(this.f18341b);
    }
}
