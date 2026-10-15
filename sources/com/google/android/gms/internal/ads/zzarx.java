package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzarx extends zzasm {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzaqa f9833i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final long f9834j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final long f9835k;

    public zzarx(zzaqx zzaqxVar, String str, String str2, zzamv zzamvVar, int i10, int i11, zzaqa zzaqaVar, long j10, long j11) {
        super(zzaqxVar, "CchySZwZp0zgVfg6SBe+R4XjFGRJyETMFDNmz2TJwAQ/SC/95iAQtXV4Kn3jVqOs", "8/+tyWwCNq6PB0rUMhC29myQhViveTsZErWXCGX5t00=", zzamvVar, i10, 11);
        this.f9833i = zzaqaVar;
        this.f9834j = j10;
        this.f9835k = j11;
    }

    @Override // com.google.android.gms.internal.ads.zzasm
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        zzaqa zzaqaVar = this.f9833i;
        if (zzaqaVar != null) {
            zzapy zzapyVar = new zzapy((String) this.f9859f.invoke(null, zzaqaVar.b(), Long.valueOf(this.f9834j), Long.valueOf(this.f9835k)));
            synchronized (this.f9858e) {
                this.f9858e.A0(zzapyVar.f9706b.longValue());
                if (zzapyVar.f9707c.longValue() >= 0) {
                    this.f9858e.F(zzapyVar.f9707c.longValue());
                }
                if (zzapyVar.f9708d.longValue() >= 0) {
                    this.f9858e.e0(zzapyVar.f9708d.longValue());
                }
            }
        }
    }
}
