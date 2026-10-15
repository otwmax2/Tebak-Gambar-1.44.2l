package com.google.android.gms.internal.auth;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzhi extends zzeq<zzhi, zzhh> implements zzfr {
    private static final zzhi zzb;
    private zzeu<String> zzd = zzeq.g();

    static {
        zzhi zzhiVar = new zzhi();
        zzb = zzhiVar;
        zzeq.j(zzhi.class, zzhiVar);
    }

    private zzhi() {
    }

    public static zzhi m(byte[] bArr) throws zzew {
        return (zzhi) zzeq.c(zzb, bArr);
    }

    @Override // com.google.android.gms.internal.auth.zzeq
    protected final Object k(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzeq.i(zzb, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a", new Object[]{"zzd"});
        }
        if (i11 == 3) {
            return new zzhi();
        }
        zzhg zzhgVar = null;
        if (i11 == 4) {
            return new zzhh(zzhgVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
