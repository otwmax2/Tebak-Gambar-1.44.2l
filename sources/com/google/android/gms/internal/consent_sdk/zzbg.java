package com.google.android.gms.internal.consent_sdk;

import android.os.Handler;
import android.webkit.WebView;

/* JADX INFO: compiled from: com.google.android.ump:user-messaging-platform@@2.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbg extends WebView {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Handler f21735o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzbm f21736p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f21737q;

    static /* synthetic */ boolean c(zzbg zzbgVar, String str) {
        return str != null && str.startsWith("consent://");
    }

    static /* synthetic */ boolean e(zzbg zzbgVar, boolean z10) {
        zzbgVar.f21737q = true;
        return true;
    }

    public final void b(String str, String str2) {
        StringBuilder sb = new StringBuilder(str.length() + 3 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("(");
        sb.append(str2);
        sb.append(");");
        final String string = sb.toString();
        this.f21735o.post(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzbd
            @Override // java.lang.Runnable
            public final void run() {
                zzce.a(this.f21732o, string);
            }
        });
    }
}
