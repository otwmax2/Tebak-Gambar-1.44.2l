package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzaw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final List f23293a = new ArrayList();

    protected zzaw() {
    }

    public abstract zzap a(String str, zzg zzgVar, List list);

    final zzap b(String str) {
        if (this.f23293a.contains(zzh.e(str))) {
            throw new UnsupportedOperationException("Command not implemented: ".concat(String.valueOf(str)));
        }
        throw new IllegalArgumentException("Command not supported");
    }
}
