package com.google.android.gms.internal.measurement;

import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzu extends zzai {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Callable f23953q;

    public zzu(String str, Callable callable) {
        super("internal.appMetadata");
        this.f23953q = callable;
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzap a(zzg zzgVar, List list) {
        try {
            return zzi.b(this.f23953q.call());
        } catch (Exception unused) {
            return zzap.f23278d;
        }
    }
}
