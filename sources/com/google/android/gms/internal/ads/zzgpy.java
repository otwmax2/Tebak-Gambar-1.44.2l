package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgpy {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile zzgpy f19436b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final zzgpy f19437c = new zzgpy(true);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f19438d = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f19439a;

    zzgpy() {
        this.f19439a = new HashMap();
    }

    public static zzgpy a() {
        return f19437c;
    }

    public static zzgpy b() {
        zzgpy zzgpyVar = f19436b;
        if (zzgpyVar != null) {
            return zzgpyVar;
        }
        synchronized (zzgpy.class) {
            zzgpy zzgpyVar2 = f19436b;
            if (zzgpyVar2 != null) {
                return zzgpyVar2;
            }
            zzgpy zzgpyVarB = zzgqg.b(zzgpy.class);
            f19436b = zzgpyVarB;
            return zzgpyVarB;
        }
    }

    public final zzgqk c(zzgrw zzgrwVar, int i10) {
        return (zzgqk) this.f19439a.get(new zzgpx(zzgrwVar, i10));
    }

    zzgpy(boolean z10) {
        this.f19439a = Collections.emptyMap();
    }
}
