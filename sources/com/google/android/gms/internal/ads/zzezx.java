package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzezx {
    public static com.google.android.gms.ads.internal.client.zze a(Throwable th) {
        if (th instanceof zzeax) {
            zzeax zzeaxVar = (zzeax) th;
            return c(zzeaxVar.a(), zzeaxVar.b());
        }
        if (th instanceof zzdtf) {
            return th.getMessage() == null ? d(((zzdtf) th).a(), null, null) : d(((zzdtf) th).a(), th.getMessage(), null);
        }
        if (!(th instanceof com.google.android.gms.ads.internal.util.zzay)) {
            return d(1, null, null);
        }
        com.google.android.gms.ads.internal.util.zzay zzayVar = (com.google.android.gms.ads.internal.util.zzay) th;
        return new com.google.android.gms.ads.internal.client.zze(zzayVar.a(), zzfoj.c(zzayVar.getMessage()), "com.google.android.gms.ads", null, null);
    }

    public static com.google.android.gms.ads.internal.client.zze b(Throwable th, zzeay zzeayVar) {
        com.google.android.gms.ads.internal.client.zze zzeVar;
        com.google.android.gms.ads.internal.client.zze zzeVarA = a(th);
        int i10 = zzeVarA.f5841o;
        if ((i10 == 3 || i10 == 0) && (zzeVar = zzeVarA.f5844r) != null && !zzeVar.f5843q.equals("com.google.android.gms.ads")) {
            zzeVarA.f5844r = null;
        }
        if (zzeayVar != null) {
            zzeVarA.f5845s = zzeayVar.b();
        }
        return zzeVarA;
    }

    public static com.google.android.gms.ads.internal.client.zze c(int i10, com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (i10 == 0) {
            throw null;
        }
        if (i10 == 8) {
            if (((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.E7)).intValue() > 0) {
                return zzeVar;
            }
            i10 = 8;
        }
        return d(i10, null, zzeVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0096  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.android.gms.ads.internal.client.zze d(int r8, java.lang.String r9, com.google.android.gms.ads.internal.client.zze r10) {
        /*
            Method dump skipped, instruction units count: 348
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzezx.d(int, java.lang.String, com.google.android.gms.ads.internal.client.zze):com.google.android.gms.ads.internal.client.zze");
    }
}
