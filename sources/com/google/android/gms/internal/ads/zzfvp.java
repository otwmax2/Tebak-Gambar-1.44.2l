package com.google.android.gms.internal.ads;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfvp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final InputStream f18762a;

    private zzfvp(InputStream inputStream) {
        this.f18762a = inputStream;
    }

    public static zzfvp b(byte[] bArr) {
        return new zzfvp(new ByteArrayInputStream(bArr));
    }

    public final zzgll a() throws IOException {
        try {
            return zzgll.N(this.f18762a, zzgpy.a());
        } finally {
            this.f18762a.close();
        }
    }
}
