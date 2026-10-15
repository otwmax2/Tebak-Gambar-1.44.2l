package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzrz implements zztc, zzpu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f20589a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private zztb f20590b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private zzpt f20591c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ zzsb f20592d;

    public zzrz(zzsb zzsbVar, Object obj) {
        this.f20592d = zzsbVar;
        this.f20590b = zzsbVar.o(null);
        this.f20591c = zzsbVar.m(null);
        this.f20589a = obj;
    }

    private final zzso n(zzso zzsoVar) {
        zzsb zzsbVar = this.f20592d;
        Object obj = this.f20589a;
        long j10 = zzsoVar.f20639c;
        zzsbVar.z(obj, j10);
        zzsb zzsbVar2 = this.f20592d;
        Object obj2 = this.f20589a;
        long j11 = zzsoVar.f20640d;
        zzsbVar2.z(obj2, j11);
        return (j10 == zzsoVar.f20639c && j11 == zzsoVar.f20640d) ? zzsoVar : new zzso(1, zzsoVar.f20637a, zzsoVar.f20638b, 0, null, j10, j11);
    }

    private final boolean s(int i10, zzss zzssVar) {
        zzss zzssVarA;
        if (zzssVar != null) {
            zzssVarA = this.f20592d.A(this.f20589a, zzssVar);
            if (zzssVarA == null) {
                return false;
            }
        } else {
            zzssVarA = null;
        }
        this.f20592d.y(this.f20589a, 0);
        zztb zztbVar = this.f20590b;
        int i11 = zztbVar.f20672a;
        if (!zzew.u(zztbVar.f20673b, zzssVarA)) {
            this.f20590b = this.f20592d.p(0, zzssVarA, 0L);
        }
        zzpt zzptVar = this.f20591c;
        int i12 = zzptVar.f20434a;
        if (zzew.u(zzptVar.f20435b, zzssVarA)) {
            return true;
        }
        this.f20591c = this.f20592d.n(0, zzssVarA);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zztc
    public final void B(int i10, zzss zzssVar, zzsj zzsjVar, zzso zzsoVar, IOException iOException, boolean z10) {
        if (s(0, zzssVar)) {
            this.f20590b.i(zzsjVar, n(zzsoVar), iOException, z10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zztc
    public final void b(int i10, zzss zzssVar, zzsj zzsjVar, zzso zzsoVar) {
        if (s(0, zzssVar)) {
            this.f20590b.g(zzsjVar, n(zzsoVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zztc
    public final void i(int i10, zzss zzssVar, zzsj zzsjVar, zzso zzsoVar) {
        if (s(0, zzssVar)) {
            this.f20590b.e(zzsjVar, n(zzsoVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zztc
    public final void p(int i10, zzss zzssVar, zzso zzsoVar) {
        if (s(0, zzssVar)) {
            this.f20590b.c(n(zzsoVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zztc
    public final void v(int i10, zzss zzssVar, zzsj zzsjVar, zzso zzsoVar) {
        if (s(0, zzssVar)) {
            this.f20590b.k(zzsjVar, n(zzsoVar));
        }
    }
}
