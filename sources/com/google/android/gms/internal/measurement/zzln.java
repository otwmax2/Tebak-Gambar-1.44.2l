package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzln implements zzlu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzlj f23718a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzml f23719b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f23720c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzjp f23721d;

    private zzln(zzml zzmlVar, zzjp zzjpVar, zzlj zzljVar) {
        this.f23719b = zzmlVar;
        this.f23720c = zzjpVar.c(zzljVar);
        this.f23721d = zzjpVar;
        this.f23718a = zzljVar;
    }

    static zzln j(zzml zzmlVar, zzjp zzjpVar, zzlj zzljVar) {
        return new zzln(zzmlVar, zzjpVar, zzljVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final int a(Object obj) {
        zzml zzmlVar = this.f23719b;
        int iB = zzmlVar.b(zzmlVar.c(obj));
        if (!this.f23720c) {
            return iB;
        }
        this.f23721d.a(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final Object b() {
        return this.f23718a.b().m3();
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final int c(Object obj) {
        int iHashCode = this.f23719b.c(obj).hashCode();
        if (!this.f23720c) {
            return iHashCode;
        }
        this.f23721d.a(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final boolean d(Object obj) {
        this.f23721d.a(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final void e(Object obj) {
        this.f23719b.g(obj);
        this.f23721d.b(obj);
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final void f(Object obj, Object obj2) {
        zzlw.f(this.f23719b, obj, obj2);
        if (this.f23720c) {
            zzlw.e(this.f23721d, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final boolean g(Object obj, Object obj2) {
        if (!this.f23719b.c(obj).equals(this.f23719b.c(obj2))) {
            return false;
        }
        if (!this.f23720c) {
            return true;
        }
        this.f23721d.a(obj);
        this.f23721d.a(obj2);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final void h(Object obj, byte[] bArr, int i10, int i11, zzio zzioVar) throws IOException {
        zzkc zzkcVar = (zzkc) obj;
        if (zzkcVar.zzc == zzmm.c()) {
            zzkcVar.zzc = zzmm.e();
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final void i(Object obj, zznd zzndVar) throws IOException {
        this.f23721d.a(obj);
        throw null;
    }
}
