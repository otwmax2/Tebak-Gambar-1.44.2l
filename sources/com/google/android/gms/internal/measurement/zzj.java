package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Map f23588a = new HashMap();

    public final void a(String str, Callable callable) {
        this.f23588a.put(str, callable);
    }
}
