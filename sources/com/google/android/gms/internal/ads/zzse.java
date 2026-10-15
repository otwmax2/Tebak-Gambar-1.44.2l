package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzaab f20601a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f20602b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set f20603c = new HashSet();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f20604d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private zzff f20605e;

    public zzse(zzaab zzaabVar) {
        this.f20601a = zzaabVar;
    }

    public final void a(zzff zzffVar) {
        if (zzffVar != this.f20605e) {
            this.f20605e = zzffVar;
            this.f20602b.clear();
            this.f20604d.clear();
        }
    }
}
