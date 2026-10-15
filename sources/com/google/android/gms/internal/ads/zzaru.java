package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaru extends zzasm {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static volatile Long f9830i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Object f9831j = new Object();

    public zzaru(zzaqx zzaqxVar, String str, String str2, zzamv zzamvVar, int i10, int i11) {
        super(zzaqxVar, "YqTS1o+C7XbcWZ1ePdCg6lS0vIYMM7HzMu7AOHCWvWhuNgyk3szL95200diFQtk9", "HoawD5bopn0ma7odT68Aadbw04A5xMOxr41zcgTyqd8=", zzamvVar, i10, 22);
    }

    @Override // com.google.android.gms.internal.ads.zzasm
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        if (f9830i == null) {
            synchronized (f9831j) {
                if (f9830i == null) {
                    f9830i = (Long) this.f9859f.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.f9858e) {
            this.f9858e.y0(f9830i.longValue());
        }
    }
}
