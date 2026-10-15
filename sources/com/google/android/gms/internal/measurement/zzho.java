package com.google.android.gms.internal.measurement;

import android.net.Uri;
import o.a;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzho {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final a f23539a = new a();

    /* JADX WARN: Multi-variable type inference failed */
    public static synchronized Uri a(String str) {
        a aVar = f23539a;
        Uri uri = (Uri) aVar.get("com.google.android.gms.measurement");
        if (uri != null) {
            return uri;
        }
        Uri uri2 = Uri.parse("content://com.google.android.gms.phenotype/".concat(String.valueOf(Uri.encode("com.google.android.gms.measurement"))));
        aVar.put("com.google.android.gms.measurement", uri2);
        return uri2;
    }
}
