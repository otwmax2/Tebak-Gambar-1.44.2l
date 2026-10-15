package com.google.android.gms.internal.ads;

import android.util.Log;
import com.facebook.internal.security.CertificateUtil;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgwl extends zzgwq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final String f19702a;

    public zzgwl(String str) {
        this.f19702a = str;
    }

    @Override // com.google.android.gms.internal.ads.zzgwq
    public final void a(String str) {
        String str2 = this.f19702a;
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(str).length());
        sb.append(str2);
        sb.append(CertificateUtil.DELIMITER);
        sb.append(str);
        Log.d("isoparser", sb.toString());
    }
}
