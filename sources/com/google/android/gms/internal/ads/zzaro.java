package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaro extends zzasm {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static volatile Long f9821i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Object f9822j = new Object();

    public zzaro(zzaqx zzaqxVar, String str, String str2, zzamv zzamvVar, int i10, int i11) {
        super(zzaqxVar, "IGEgHKB/MIXVrIwjsdJywrnrloRmyYIq/vBgAhtfd4dogeVW5FuA76GSnZhGb7Ph", "q1ESzGxy3mMibo5bvVHy9HD4wURWKxH/5T27mG6V0M4=", zzamvVar, i10, 44);
    }

    @Override // com.google.android.gms.internal.ads.zzasm
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        if (f9821i == null) {
            synchronized (f9822j) {
                if (f9821i == null) {
                    f9821i = (Long) this.f9859f.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.f9858e) {
            this.f9858e.o0(f9821i.longValue());
        }
    }
}
