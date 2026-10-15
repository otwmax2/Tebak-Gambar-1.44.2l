package com.google.android.gms.measurement.internal;

import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class a0 implements com.google.android.gms.internal.measurement.zzr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzfz f23976a;

    a0(zzfz zzfzVar) {
        this.f23976a = zzfzVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzr
    public final void a(int i10, String str, List list, boolean z10, boolean z11) {
        int i11 = i10 - 1;
        zzew zzewVarP = i11 != 0 ? i11 != 1 ? i11 != 3 ? i11 != 4 ? this.f23976a.f24394a.U().p() : z10 ? this.f23976a.f24394a.U().u() : !z11 ? this.f23976a.f24394a.U().s() : this.f23976a.f24394a.U().r() : this.f23976a.f24394a.U().q() : z10 ? this.f23976a.f24394a.U().o() : !z11 ? this.f23976a.f24394a.U().n() : this.f23976a.f24394a.U().m() : this.f23976a.f24394a.U().l();
        int size = list.size();
        if (size == 1) {
            zzewVarP.b(str, list.get(0));
            return;
        }
        if (size == 2) {
            zzewVarP.c(str, list.get(0), list.get(1));
        } else if (size != 3) {
            zzewVarP.a(str);
        } else {
            zzewVarP.d(str, list.get(0), list.get(1), list.get(2));
        }
    }
}
