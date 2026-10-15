package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbgj implements zzbhp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzbgk f10700a;

    public zzbgj(zzbgk zzbgkVar) {
        this.f10700a = zzbgkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    public final void a(Object obj, Map map) {
        String str = (String) map.get("name");
        if (str == null) {
            zzbza.g("App event with no name parameter.");
        } else {
            this.f10700a.m(str, (String) map.get("info"));
        }
    }
}
