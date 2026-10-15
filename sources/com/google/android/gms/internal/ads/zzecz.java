package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzecz implements zzdee {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzeyc f16301a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzbpc f16302b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AdFormat f16303c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzcvg f16304d = null;

    zzecz(zzeyc zzeycVar, zzbpc zzbpcVar, AdFormat adFormat) {
        this.f16301a = zzeycVar;
        this.f16302b = zzbpcVar;
        this.f16303c = adFormat;
    }

    @Override // com.google.android.gms.internal.ads.zzdee
    public final void a(boolean z10, Context context, zzcvb zzcvbVar) throws zzded {
        boolean zD6;
        try {
            AdFormat adFormat = AdFormat.BANNER;
            int iOrdinal = this.f16303c.ordinal();
            if (iOrdinal == 1) {
                zD6 = this.f16302b.D6(ObjectWrapper.Q4(context));
            } else {
                if (iOrdinal != 2) {
                    if (iOrdinal == 6) {
                        zD6 = this.f16302b.c0(ObjectWrapper.Q4(context));
                    }
                    throw new zzded("Adapter failed to show.");
                }
                zD6 = this.f16302b.D9(ObjectWrapper.Q4(context));
            }
            if (zD6) {
                if (this.f16304d == null) {
                    return;
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10325p1)).booleanValue() || this.f16301a.Z != 2) {
                    return;
                }
                this.f16304d.zza();
                return;
            }
            throw new zzded("Adapter failed to show.");
        } catch (Throwable th) {
            throw new zzded(th);
        }
    }

    public final void b(zzcvg zzcvgVar) {
        this.f16304d = zzcvgVar;
    }
}
