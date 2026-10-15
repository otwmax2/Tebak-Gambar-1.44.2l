package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzt extends zzai {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzr f23952q;

    public zzt(zzr zzrVar) {
        super("internal.logger");
        this.f23952q = zzrVar;
        this.f23272p.put("log", new zzs(this, false, true));
        this.f23272p.put("silent", new zzp(this, "silent"));
        ((zzai) this.f23272p.get("silent")).i("log", new zzs(this, true, true));
        this.f23272p.put("unmonitored", new zzq(this, "unmonitored"));
        ((zzai) this.f23272p.get("unmonitored")).i("log", new zzs(this, false, false));
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzap a(zzg zzgVar, List list) {
        return zzap.f23278d;
    }
}
