package com.google.android.gms.internal.firebase_messaging;

import d6.b;
import d6.c;
import d6.g;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaf implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f22988a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f22989b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f22990c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzab f22991d;

    zzaf(zzab zzabVar) {
        this.f22991d = zzabVar;
    }

    private final void b() {
        if (this.f22988a) {
            throw new b("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f22988a = true;
    }

    final void a(c cVar, boolean z10) {
        this.f22988a = false;
        this.f22990c = cVar;
        this.f22989b = z10;
    }

    @Override // d6.g
    public final g f(String str) throws IOException {
        b();
        this.f22991d.f(this.f22990c, str, this.f22989b);
        return this;
    }

    @Override // d6.g
    public final g g(boolean z10) throws IOException {
        b();
        this.f22991d.i(this.f22990c, z10 ? 1 : 0, this.f22989b);
        return this;
    }
}
