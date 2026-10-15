package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzase extends zzasm {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final StackTraceElement[] f9841i;

    public zzase(zzaqx zzaqxVar, String str, String str2, zzamv zzamvVar, int i10, int i11, StackTraceElement[] stackTraceElementArr) {
        super(zzaqxVar, "mI62XAU6hkSJHBt5knDDlPT1Fqr4dlfaZ+n4XjM0AiKKuoUuq7VAlzpsb6e8DhEf", "XDZeV64PENx+9tx6tUBxGqpVXuPWj1qf1leYJ9jGf1Q=", zzamvVar, i10, 45);
        this.f9841i = stackTraceElementArr;
    }

    @Override // com.google.android.gms.internal.ads.zzasm
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        StackTraceElement[] stackTraceElementArr = this.f9841i;
        if (stackTraceElementArr != null) {
            zzaqo zzaqoVar = new zzaqo((String) this.f9859f.invoke(null, stackTraceElementArr));
            synchronized (this.f9858e) {
                this.f9858e.u(zzaqoVar.f9728b.longValue());
                if (zzaqoVar.f9729c.booleanValue()) {
                    this.f9858e.T(true != zzaqoVar.f9730d.booleanValue() ? 2 : 1);
                } else {
                    this.f9858e.T(3);
                }
            }
        }
    }
}
