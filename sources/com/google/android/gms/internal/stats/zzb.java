package com.google.android.gms.internal.stats;

import java.io.Closeable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-stats@@17.0.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzb implements Closeable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final zzb f23959o = new zzb(false, null);

    private zzb(boolean z10, zzd zzdVar) {
    }

    public static zzb b(boolean z10, zzc zzcVar) {
        return f23959o;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
