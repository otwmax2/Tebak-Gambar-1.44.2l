package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzash extends zzasm {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static volatile Long f9844i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Object f9845j = new Object();

    public zzash(zzaqx zzaqxVar, String str, String str2, zzamv zzamvVar, int i10, int i11) {
        super(zzaqxVar, "n4163G8iyqIKefOY/uIEeKjctFj1OQ1ggOIXf5yF8QdKTrTHzFKlCjSxQhxSHW08", "ML9A2VCkghGr4j9IIk2plgQeFzpoPp+ogmQdRJzLv80=", zzamvVar, i10, 33);
    }

    @Override // com.google.android.gms.internal.ads.zzasm
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        if (f9844i == null) {
            synchronized (f9845j) {
                if (f9844i == null) {
                    f9844i = (Long) this.f9859f.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.f9858e) {
            this.f9858e.K(f9844i.longValue());
        }
    }
}
