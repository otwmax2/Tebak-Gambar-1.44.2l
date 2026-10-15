package com.google.android.gms.internal.firebase_messaging;

import d6.b;
import d6.d;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zzac implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final d f22979a = new zzac();

    private zzac() {
    }

    @Override // d6.d
    public final void a(Object obj, Object obj2) {
        int i10 = zzad.f22981e;
        String strValueOf = String.valueOf(obj.getClass().getCanonicalName());
        throw new b(strValueOf.length() != 0 ? "Couldn't find encoder for type ".concat(strValueOf) : new String("Couldn't find encoder for type "));
    }
}
