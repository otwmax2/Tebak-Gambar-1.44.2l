package com.google.android.gms.measurement.internal;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class t3 implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f24299a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzli f24300b;

    t3(zzli zzliVar, String str) {
        this.f24300b = zzliVar;
        this.f24299a = str;
    }

    @Override // com.google.android.gms.measurement.internal.s
    public final void a(String str, int i10, Throwable th, byte[] bArr, Map map) {
        this.f24300b.j(i10, th, bArr, this.f24299a);
    }
}
