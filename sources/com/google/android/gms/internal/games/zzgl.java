package com.google.android.gms.internal.games;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgl extends zzgk {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzgj f23227b = new zzgj();

    zzgl() {
    }

    @Override // com.google.android.gms.internal.games.zzgk
    public final void a(Throwable th, Throwable th2) {
        if (th2 == th) {
            throw new IllegalArgumentException("Self suppression is not allowed.", th2);
        }
        Objects.requireNonNull(th2, "The suppressed exception cannot be null.");
        this.f23227b.a(th, true).add(th2);
    }
}
