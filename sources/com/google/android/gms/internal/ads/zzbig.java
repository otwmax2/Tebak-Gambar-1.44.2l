package com.google.android.gms.internal.ads;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbig implements zzbhp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f10769a;

    public zzbig(Context context) {
        this.f10769a = context;
    }

    @Override // com.google.android.gms.internal.ads.zzbhp
    public final void a(Object obj, Map map) {
        if (!map.containsKey("text") || TextUtils.isEmpty((CharSequence) map.get("text"))) {
            return;
        }
        com.google.android.gms.ads.internal.util.zze.k("Opening Share Sheet with text: ".concat(String.valueOf((String) map.get("text"))));
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.TEXT", (String) map.get("text"));
        if (map.containsKey("title")) {
            intent.putExtra("android.intent.extra.TITLE", (String) map.get("title"));
        }
        try {
            com.google.android.gms.ads.internal.zzt.r();
            com.google.android.gms.ads.internal.util.zzs.q(this.f10769a, intent);
        } catch (ActivityNotFoundException e10) {
            com.google.android.gms.ads.internal.zzt.q().u(e10, "ShareSheetGmsgHandler.onGmsg");
        }
    }
}
