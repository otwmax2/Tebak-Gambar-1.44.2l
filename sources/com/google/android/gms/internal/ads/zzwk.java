package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzwk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private zzwj f20948a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private zzws f20949b;

    public void a() {
        this.f20948a = null;
        this.f20949b = null;
    }

    public void b(zzk zzkVar) {
        throw null;
    }

    public boolean c() {
        throw null;
    }

    public abstract zzwl d(zzko[] zzkoVarArr, zzur zzurVar, zzss zzssVar, zzcn zzcnVar) throws zzhj;

    public abstract void e(Object obj);

    protected final zzws f() {
        zzws zzwsVar = this.f20949b;
        zzdl.b(zzwsVar);
        return zzwsVar;
    }

    public final void g(zzwj zzwjVar, zzws zzwsVar) {
        this.f20948a = zzwjVar;
        this.f20949b = zzwsVar;
    }

    protected final void h() {
        zzwj zzwjVar = this.f20948a;
        if (zzwjVar != null) {
            zzwjVar.h();
        }
    }
}
