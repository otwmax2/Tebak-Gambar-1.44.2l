package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcme implements zzcls {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzeyb f13481a;

    public zzcme(zzeyb zzeybVar) {
        this.f13481a = zzeybVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcls
    public final void a(Map map) {
        String str = (String) map.get("render_in_browser");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.f13481a.b(Boolean.parseBoolean(str));
        } catch (Exception unused) {
            throw new IllegalStateException("Invalid render_in_browser state");
        }
    }
}
