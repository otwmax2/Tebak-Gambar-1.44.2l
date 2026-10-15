package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzjo {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile zzjo f23610b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile zzjo f23611c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final zzjo f23612d = new zzjo(true);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f23613a;

    zzjo() {
        this.f23613a = new HashMap();
    }

    public static zzjo a() {
        zzjo zzjoVar = f23610b;
        if (zzjoVar == null) {
            synchronized (zzjo.class) {
                zzjoVar = f23610b;
                if (zzjoVar == null) {
                    zzjoVar = f23612d;
                    f23610b = zzjoVar;
                }
            }
        }
        return zzjoVar;
    }

    public static zzjo b() {
        zzjo zzjoVar = f23611c;
        if (zzjoVar != null) {
            return zzjoVar;
        }
        synchronized (zzjo.class) {
            zzjo zzjoVar2 = f23611c;
            if (zzjoVar2 != null) {
                return zzjoVar2;
            }
            zzjo zzjoVarB = zzjw.b(zzjo.class);
            f23611c = zzjoVarB;
            return zzjoVarB;
        }
    }

    public final zzka c(zzlj zzljVar, int i10) {
        return (zzka) this.f23613a.get(new zzjn(zzljVar, i10));
    }

    zzjo(boolean z10) {
        this.f23613a = Collections.emptyMap();
    }
}
