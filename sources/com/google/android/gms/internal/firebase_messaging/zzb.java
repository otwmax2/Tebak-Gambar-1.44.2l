package com.google.android.gms.internal.firebase_messaging;

import d6.c;
import d6.d;
import d6.e;
import java.io.IOException;
import s6.b;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzb implements d<b> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final zzb f22992a = new zzb();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final c f22993b;

    static {
        c.b bVarA = c.a("messagingClientEvent");
        zzv zzvVar = new zzv();
        zzvVar.a(1);
        f22993b = bVarA.b(zzvVar.b()).a();
    }

    private zzb() {
    }

    @Override // d6.d
    public final /* bridge */ /* synthetic */ void a(Object obj, Object obj2) throws IOException {
        ((e) obj2).e(f22993b, ((b) obj).a());
    }
}
