package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzalz extends zzgwj {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final zzgwq f9512w = zzgwq.b(zzalz.class);

    public zzalz(zzgwk zzgwkVar, zzaly zzalyVar) throws IOException {
        g(zzgwkVar, zzgwkVar.a(), zzalyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgwj, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
    }

    @Override // com.google.android.gms.internal.ads.zzgwj
    public final String toString() {
        String string = this.f19697p.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 7);
        sb.append("model(");
        sb.append(string);
        sb.append(")");
        return sb.toString();
    }
}
