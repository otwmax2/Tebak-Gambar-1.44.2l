package com.google.android.gms.internal.auth;

import android.net.Uri;
import o.a;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final a<String, Uri> f21417a = new a<>();

    public static synchronized Uri a(String str) {
        Uri uri;
        a<String, Uri> aVar = f21417a;
        uri = aVar.get("com.google.android.gms.auth_account");
        if (uri == null) {
            String strValueOf = String.valueOf(Uri.encode("com.google.android.gms.auth_account"));
            uri = Uri.parse(strValueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(strValueOf) : new String("content://com.google.android.gms.phenotype/"));
            aVar.put("com.google.android.gms.auth_account", uri);
        }
        return uri;
    }
}
