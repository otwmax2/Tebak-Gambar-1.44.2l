package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzs extends zzai {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final boolean f23949q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final boolean f23950r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ zzt f23951s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzs(zzt zztVar, boolean z10, boolean z11) {
        super("log");
        this.f23951s = zztVar;
        this.f23949q = z10;
        this.f23950r = z11;
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzap a(zzg zzgVar, List list) {
        zzh.i("log", 1, list);
        if (list.size() == 1) {
            this.f23951s.f23952q.a(3, zzgVar.b((zzap) list.get(0)).g(), Collections.emptyList(), this.f23949q, this.f23950r);
            return zzap.f23278d;
        }
        int iB = zzh.b(zzgVar.b((zzap) list.get(0)).f().doubleValue());
        int i10 = iB != 2 ? iB != 3 ? iB != 5 ? iB != 6 ? 3 : 2 : 5 : 1 : 4;
        String strG = zzgVar.b((zzap) list.get(1)).g();
        if (list.size() == 2) {
            this.f23951s.f23952q.a(i10, strG, Collections.emptyList(), this.f23949q, this.f23950r);
            return zzap.f23278d;
        }
        ArrayList arrayList = new ArrayList();
        for (int i11 = 2; i11 < Math.min(list.size(), 5); i11++) {
            arrayList.add(zzgVar.b((zzap) list.get(i11)).g());
        }
        this.f23951s.f23952q.a(i10, strG, arrayList, this.f23949q, this.f23950r);
        return zzap.f23278d;
    }
}
