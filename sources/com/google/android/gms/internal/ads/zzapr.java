package com.google.android.gms.internal.ads;

import android.os.Build;
import android.os.ConditionVariable;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzapr {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final ConditionVariable f9685c = new ConditionVariable();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected static volatile zzfjr f9686d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile Random f9687e = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzaqx f9688a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected volatile Boolean f9689b;

    public zzapr(zzaqx zzaqxVar) {
        this.f9688a = zzaqxVar;
        zzaqxVar.k().execute(new zzapq(this));
    }

    public static final int d() {
        try {
            return Build.VERSION.SDK_INT >= 21 ? ThreadLocalRandom.current().nextInt() : e().nextInt();
        } catch (RuntimeException unused) {
            return e().nextInt();
        }
    }

    private static Random e() {
        if (f9687e == null) {
            synchronized (zzapr.class) {
                if (f9687e == null) {
                    f9687e = new Random();
                }
            }
        }
        return f9687e;
    }

    public final void c(int i10, int i11, long j10, String str, Exception exc) {
        try {
            f9685c.block();
            if (!this.f9689b.booleanValue() || f9686d == null) {
                return;
            }
            zzamh zzamhVarI = zzaml.I();
            zzamhVarI.o(this.f9688a.f9750a.getPackageName());
            zzamhVarI.s(j10);
            if (str != null) {
                zzamhVarI.p(str);
            }
            if (exc != null) {
                StringWriter stringWriter = new StringWriter();
                exc.printStackTrace(new PrintWriter(stringWriter));
                zzamhVarI.u(stringWriter.toString());
                zzamhVarI.r(exc.getClass().getName());
            }
            zzfjq zzfjqVarA = f9686d.a(((zzaml) zzamhVarI.k()).t());
            zzfjqVarA.a(i10);
            if (i11 != -1) {
                zzfjqVarA.b(i11);
            }
            zzfjqVarA.c();
        } catch (Exception unused) {
        }
    }
}
