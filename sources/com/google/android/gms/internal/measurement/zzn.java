package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzn extends zzai {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzo f23776q;

    public zzn(String str, zzo zzoVar) {
        super("internal.remoteConfig");
        this.f23776q = zzoVar;
        this.f23272p.put("getValue", new zzm(this, "getValue", zzoVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzap a(zzg zzgVar, List list) {
        return zzap.f23278d;
    }
}
