package com.google.android.gms.common;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
final class m extends n {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Callable f7548f;

    /* synthetic */ m(Callable callable, zzu zzuVar) {
        super();
        this.f7548f = callable;
    }

    @Override // com.google.android.gms.common.n
    final String a() {
        try {
            return (String) this.f7548f.call();
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }
}
