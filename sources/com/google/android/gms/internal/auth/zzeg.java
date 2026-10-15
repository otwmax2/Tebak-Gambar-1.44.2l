package com.google.android.gms.internal.auth;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeg {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile zzeg f21474b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final zzeg f21475c = new zzeg(true);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f21476a;

    zzeg() {
        this.f21476a = new HashMap();
    }

    public static zzeg a() {
        zzeg zzegVar = f21474b;
        if (zzegVar == null) {
            synchronized (zzeg.class) {
                zzegVar = f21474b;
                if (zzegVar == null) {
                    zzegVar = f21475c;
                    f21474b = zzegVar;
                }
            }
        }
        return zzegVar;
    }

    zzeg(boolean z10) {
        this.f21476a = Collections.emptyMap();
    }
}
