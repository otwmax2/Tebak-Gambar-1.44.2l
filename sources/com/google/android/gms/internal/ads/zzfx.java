package com.google.android.gms.internal.ads;

import android.text.TextUtils;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class zzfx implements zzfnv {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final /* synthetic */ zzfx f18810o = new zzfx();

    private /* synthetic */ zzfx() {
    }

    @Override // com.google.android.gms.internal.ads.zzfnv
    public final boolean a(Object obj) {
        String str = (String) obj;
        if (str == null) {
            return false;
        }
        String strA = zzfnb.a(str);
        if (TextUtils.isEmpty(strA)) {
            return false;
        }
        return ((strA.contains("text") && !strA.contains("text/vtt")) || strA.contains("html") || strA.contains("xml")) ? false : true;
    }
}
