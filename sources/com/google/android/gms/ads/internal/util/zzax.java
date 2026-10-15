package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.internal.ads.zzakk;
import com.google.android.gms.internal.ads.zzako;
import com.google.android.gms.internal.ads.zzakr;
import com.google.android.gms.internal.ads.zzakx;
import com.google.android.gms.internal.ads.zzalc;
import com.google.android.gms.internal.ads.zzald;
import com.google.android.gms.internal.ads.zzalk;
import com.google.android.gms.internal.ads.zzalp;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbjk;
import com.google.android.gms.internal.ads.zzbyt;
import java.io.File;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzax extends zzald {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f6101d;

    private zzax(Context context, zzalc zzalcVar) {
        super(zzalcVar);
        this.f6101d = context;
    }

    public static zzakr b(Context context) {
        zzakr zzakrVar = new zzakr(new zzalk(new File(context.getCacheDir(), "admob_volley"), 20971520), new zzax(context, new zzalp(null, null)), 4);
        zzakrVar.d();
        return zzakrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzald, com.google.android.gms.internal.ads.zzakh
    public final zzakk a(zzako zzakoVar) throws zzakx {
        if (zzakoVar.zza() == 0) {
            if (Pattern.matches((String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.Z3), zzakoVar.n())) {
                com.google.android.gms.ads.internal.client.zzay.b();
                if (zzbyt.y(this.f6101d, 13400000)) {
                    zzakk zzakkVarA = new zzbjk(this.f6101d).a(zzakoVar);
                    if (zzakkVarA != null) {
                        zze.k("Got gmscore asset response: ".concat(String.valueOf(zzakoVar.n())));
                        return zzakkVarA;
                    }
                    zze.k("Failed to get gmscore asset response: ".concat(String.valueOf(zzakoVar.n())));
                }
            }
        }
        return super.a(zzakoVar);
    }
}
