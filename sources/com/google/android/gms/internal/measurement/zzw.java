package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzw extends zzai {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzj f23955q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final Map f23956r;

    public zzw(zzj zzjVar) {
        super("require");
        this.f23956r = new HashMap();
        this.f23955q = zzjVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzap a(zzg zzgVar, List list) {
        zzap zzapVar;
        zzh.h("require", 1, list);
        String strG = zzgVar.b((zzap) list.get(0)).g();
        if (this.f23956r.containsKey(strG)) {
            return (zzap) this.f23956r.get(strG);
        }
        zzj zzjVar = this.f23955q;
        if (zzjVar.f23588a.containsKey(strG)) {
            try {
                zzapVar = (zzap) ((Callable) zzjVar.f23588a.get(strG)).call();
            } catch (Exception unused) {
                throw new IllegalStateException("Failed to create API implementation: ".concat(String.valueOf(strG)));
            }
        } else {
            zzapVar = zzap.f23278d;
        }
        if (zzapVar instanceof zzai) {
            this.f23956r.put(strG, (zzai) zzapVar);
        }
        return zzapVar;
    }
}
