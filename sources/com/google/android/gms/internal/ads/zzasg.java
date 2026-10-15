package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzasg extends zzasm {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzarf f9842i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f9843j;

    public zzasg(zzaqx zzaqxVar, String str, String str2, zzamv zzamvVar, int i10, int i11, zzarf zzarfVar) {
        super(zzaqxVar, "5go+5dJzPwtL428hPcvMvoz2IsnUZf/hKfz19p3YdYFOxVa6hNCHvBHHDAKylvFa", "8BESx6lpu/rT8vpssHW7TVG8DbeYQulEHs4g7WxmlH0=", zzamvVar, i10, 53);
        this.f9842i = zzarfVar;
        if (zzarfVar != null) {
            this.f9843j = zzarfVar.a();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzasm
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        if (this.f9842i != null) {
            this.f9858e.E(((Long) this.f9859f.invoke(null, Long.valueOf(this.f9843j))).longValue());
        }
    }
}
