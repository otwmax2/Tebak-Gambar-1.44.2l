package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaz extends zzaw {
    protected zzaz() {
        this.f23293a.add(zzbl.APPLY);
        this.f23293a.add(zzbl.BLOCK);
        this.f23293a.add(zzbl.BREAK);
        this.f23293a.add(zzbl.CASE);
        this.f23293a.add(zzbl.DEFAULT);
        this.f23293a.add(zzbl.CONTINUE);
        this.f23293a.add(zzbl.DEFINE_FUNCTION);
        this.f23293a.add(zzbl.FN);
        this.f23293a.add(zzbl.IF);
        this.f23293a.add(zzbl.QUOTE);
        this.f23293a.add(zzbl.RETURN);
        this.f23293a.add(zzbl.SWITCH);
        this.f23293a.add(zzbl.TERNARY);
    }

    private static zzap c(zzg zzgVar, List list) {
        zzh.i(zzbl.FN.name(), 2, list);
        zzap zzapVarB = zzgVar.b((zzap) list.get(0));
        zzap zzapVarB2 = zzgVar.b((zzap) list.get(1));
        if (!(zzapVarB2 instanceof zzae)) {
            throw new IllegalArgumentException(String.format("FN requires an ArrayValue of parameter names found %s", zzapVarB2.getClass().getCanonicalName()));
        }
        List listP = ((zzae) zzapVarB2).p();
        List arrayList = new ArrayList();
        if (list.size() > 2) {
            arrayList = list.subList(2, list.size());
        }
        return new zzao(zzapVarB.g(), listP, arrayList, zzgVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x0129, code lost:
    
        if (r8.equals("continue") == false) goto L64;
     */
    @Override // com.google.android.gms.internal.measurement.zzaw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.internal.measurement.zzap a(java.lang.String r8, com.google.android.gms.internal.measurement.zzg r9, java.util.List r10) {
        /*
            Method dump skipped, instruction units count: 638
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzaz.a(java.lang.String, com.google.android.gms.internal.measurement.zzg, java.util.List):com.google.android.gms.internal.measurement.zzap");
    }
}
