package com.google.android.gms.internal.firebase_auth;

import java.util.List;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzkx extends RuntimeException {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final List<String> f22870o;

    public zzkx(zzjn zzjnVar) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
        this.f22870o = null;
    }
}
