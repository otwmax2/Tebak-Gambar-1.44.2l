package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzavx extends PushbackInputStream {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzavy f10041o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzavx(zzavy zzavyVar, InputStream inputStream, int i10) {
        super(inputStream, 1);
        this.f10041o = zzavyVar;
    }

    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() throws IOException {
        zzawa.e(this.f10041o.f10044q);
        super.close();
    }
}
