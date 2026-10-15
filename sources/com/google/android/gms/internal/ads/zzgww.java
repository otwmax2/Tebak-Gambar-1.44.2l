package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgww implements zzgwy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private zzgxl f19724a;

    public static void a(zzgxl zzgxlVar, zzgxl zzgxlVar2) {
        zzgww zzgwwVar = (zzgww) zzgxlVar;
        if (zzgwwVar.f19724a != null) {
            throw new IllegalStateException();
        }
        zzgwwVar.f19724a = zzgxlVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxl
    public final Object zzb() {
        zzgxl zzgxlVar = this.f19724a;
        if (zzgxlVar != null) {
            return zzgxlVar.zzb();
        }
        throw new IllegalStateException();
    }
}
