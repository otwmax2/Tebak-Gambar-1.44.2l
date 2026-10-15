package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgll extends zzgqm implements zzgrx {
    private static final zzgll zzb;
    private int zzd;
    private zzgqv zze = zzgqm.u();

    static {
        zzgll zzgllVar = new zzgll();
        zzb = zzgllVar;
        zzgqm.A(zzgll.class, zzgllVar);
    }

    private zzgll() {
    }

    public static zzgli K() {
        return (zzgli) zzb.h();
    }

    public static zzgll N(InputStream inputStream, zzgpy zzgpyVar) throws IOException {
        return (zzgll) zzgqm.o(zzb, inputStream, zzgpyVar);
    }

    public static zzgll O(byte[] bArr, zzgpy zzgpyVar) throws zzgqy {
        return (zzgll) zzgqm.p(zzb, bArr, zzgpyVar);
    }

    static /* synthetic */ void R(zzgll zzgllVar, zzglk zzglkVar) {
        zzglkVar.getClass();
        zzgqv zzgqvVar = zzgllVar.zze;
        if (!zzgqvVar.a()) {
            zzgllVar.zze = zzgqm.v(zzgqvVar);
        }
        zzgllVar.zze.add(zzglkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgqm
    protected final Object F(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzgqm.x(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zzd", "zze", zzglk.class});
        }
        if (i11 == 3) {
            return new zzgll();
        }
        zzglh zzglhVar = null;
        if (i11 == 4) {
            return new zzgli(zzglhVar);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final int I() {
        return this.zze.size();
    }

    public final int J() {
        return this.zzd;
    }

    public final zzglk L(int i10) {
        return (zzglk) this.zze.get(i10);
    }

    public final List P() {
        return this.zze;
    }
}
