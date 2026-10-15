package com.google.android.gms.internal.ads;

import android.net.Uri;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbmt extends zzbzf {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzbms f10980b;

    public zzbmt(zzbms zzbmsVar, String str) {
        super(str);
        this.f10980b = zzbmsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbzf, com.google.android.gms.internal.ads.zzbys
    public final boolean o(String str) {
        zzbza.b("LeibnizHttpUrlPinger pinging URL: ".concat(String.valueOf(str)));
        if ("oda".equals(Uri.parse(str).getScheme())) {
            return true;
        }
        zzbza.b("URL does not match oda:// scheme, falling back on HttpUrlPinger");
        return super.o(str);
    }
}
