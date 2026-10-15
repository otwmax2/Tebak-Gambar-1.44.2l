package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.facebook.internal.ServerProtocol;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcmk implements zzcls {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdsf f13487a;

    zzcmk(zzdsf zzdsfVar) {
        this.f13487a = zzdsfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcls
    public final void a(Map map) {
        String str = (String) map.get("test_mode_enabled");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f13487a.m(str.equals(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE));
    }
}
