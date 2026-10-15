package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzarz extends zzasm {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static volatile String f9836i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Object f9837j = new Object();

    public zzarz(zzaqx zzaqxVar, String str, String str2, zzamv zzamvVar, int i10, int i11) {
        super(zzaqxVar, "yYeL9qjPbrcPTY9ceVqgR0oHzmGoUGEuRTuU4UpOsMR57oewRJ2iJf5VjUsh44nU", "0QJdUleGFbUoMNzD5fazqxL5C8zhAUBMAOlt+v3NY80=", zzamvVar, i10, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzasm
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        this.f9858e.p("E");
        if (f9836i == null) {
            synchronized (f9837j) {
                if (f9836i == null) {
                    f9836i = (String) this.f9859f.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.f9858e) {
            this.f9858e.p(f9836i);
        }
    }
}
