package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfvq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final OutputStream f18763a;

    private zzfvq(OutputStream outputStream) {
        this.f18763a = outputStream;
    }

    public static zzfvq b(OutputStream outputStream) {
        return new zzfvq(outputStream);
    }

    public final void a(zzgll zzgllVar) throws IOException {
        try {
            zzgllVar.f(this.f18763a);
        } finally {
            this.f18763a.close();
        }
    }
}
