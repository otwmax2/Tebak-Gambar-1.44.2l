package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzkc implements zztc, zzpu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzke f20017a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzkg f20018b;

    public zzkc(zzkg zzkgVar, zzke zzkeVar) {
        this.f20018b = zzkgVar;
        this.f20017a = zzkeVar;
    }

    private final Pair n(int i10, zzss zzssVar) {
        zzss zzssVarC;
        zzss zzssVar2 = null;
        if (zzssVar != null) {
            zzke zzkeVar = this.f20017a;
            int i11 = 0;
            while (true) {
                if (i11 >= zzkeVar.f20024c.size()) {
                    zzssVarC = null;
                    break;
                }
                if (((zzss) zzkeVar.f20024c.get(i11)).f11013d == zzssVar.f11013d) {
                    zzssVarC = zzssVar.c(Pair.create(zzkeVar.f20023b, zzssVar.f11010a));
                    break;
                }
                i11++;
            }
            if (zzssVarC == null) {
                return null;
            }
            zzssVar2 = zzssVarC;
        }
        return Pair.create(Integer.valueOf(this.f20017a.f20025d), zzssVar2);
    }

    @Override // com.google.android.gms.internal.ads.zztc
    public final void B(int i10, zzss zzssVar, final zzsj zzsjVar, final zzso zzsoVar, final IOException iOException, final boolean z10) {
        final Pair pairN = n(0, zzssVar);
        if (pairN != null) {
            this.f20018b.f20035i.i(new Runnable() { // from class: com.google.android.gms.internal.ads.zzjx
                @Override // java.lang.Runnable
                public final void run() {
                    zzkc zzkcVar = this.f19987o;
                    Pair pair = pairN;
                    zzkcVar.f20018b.f20034h.B(((Integer) pair.first).intValue(), (zzss) pair.second, zzsjVar, zzsoVar, iOException, z10);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zztc
    public final void b(int i10, zzss zzssVar, final zzsj zzsjVar, final zzso zzsoVar) {
        final Pair pairN = n(0, zzssVar);
        if (pairN != null) {
            this.f20018b.f20035i.i(new Runnable() { // from class: com.google.android.gms.internal.ads.zzjy
                @Override // java.lang.Runnable
                public final void run() {
                    zzkc zzkcVar = this.f19993o;
                    Pair pair = pairN;
                    zzkcVar.f20018b.f20034h.b(((Integer) pair.first).intValue(), (zzss) pair.second, zzsjVar, zzsoVar);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zztc
    public final void i(int i10, zzss zzssVar, final zzsj zzsjVar, final zzso zzsoVar) {
        final Pair pairN = n(0, zzssVar);
        if (pairN != null) {
            this.f20018b.f20035i.i(new Runnable() { // from class: com.google.android.gms.internal.ads.zzjz
                @Override // java.lang.Runnable
                public final void run() {
                    zzkc zzkcVar = this.f19997o;
                    Pair pair = pairN;
                    zzkcVar.f20018b.f20034h.i(((Integer) pair.first).intValue(), (zzss) pair.second, zzsjVar, zzsoVar);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zztc
    public final void p(int i10, zzss zzssVar, final zzso zzsoVar) {
        final Pair pairN = n(0, zzssVar);
        if (pairN != null) {
            this.f20018b.f20035i.i(new Runnable() { // from class: com.google.android.gms.internal.ads.zzka
                @Override // java.lang.Runnable
                public final void run() {
                    zzkc zzkcVar = this.f20010o;
                    Pair pair = pairN;
                    zzkcVar.f20018b.f20034h.p(((Integer) pair.first).intValue(), (zzss) pair.second, zzsoVar);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zztc
    public final void v(int i10, zzss zzssVar, final zzsj zzsjVar, final zzso zzsoVar) {
        final Pair pairN = n(0, zzssVar);
        if (pairN != null) {
            this.f20018b.f20035i.i(new Runnable() { // from class: com.google.android.gms.internal.ads.zzkb
                @Override // java.lang.Runnable
                public final void run() {
                    zzkc zzkcVar = this.f20013o;
                    Pair pair = pairN;
                    zzkcVar.f20018b.f20034h.v(((Integer) pair.first).intValue(), (zzss) pair.second, zzsjVar, zzsoVar);
                }
            });
        }
    }
}
