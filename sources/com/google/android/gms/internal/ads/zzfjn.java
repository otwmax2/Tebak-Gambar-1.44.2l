package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.security.GeneralSecurityException;
import java.util.HashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfjn {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final HashMap f18320g = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f18321a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfjo f18322b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzfhp f18323c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzfhk f18324d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private zzfjc f18325e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Object f18326f = new Object();

    public zzfjn(Context context, zzfjo zzfjoVar, zzfhp zzfhpVar, zzfhk zzfhkVar) {
        this.f18321a = context;
        this.f18322b = zzfjoVar;
        this.f18323c = zzfhpVar;
        this.f18324d = zzfhkVar;
    }

    private final synchronized Class d(zzfjd zzfjdVar) throws zzfjm {
        String strR = zzfjdVar.a().R();
        HashMap map = f18320g;
        Class cls = (Class) map.get(strR);
        if (cls != null) {
            return cls;
        }
        try {
            if (!this.f18324d.a(zzfjdVar.c())) {
                throw new zzfjm(2026, "VM did not pass signature verification");
            }
            try {
                File fileB = zzfjdVar.b();
                if (!fileB.exists()) {
                    fileB.mkdirs();
                }
                Class clsLoadClass = new DexClassLoader(zzfjdVar.c().getAbsolutePath(), fileB.getAbsolutePath(), null, this.f18321a.getClassLoader()).loadClass("com.google.ccc.abuse.droidguard.DroidGuard");
                map.put(strR, clsLoadClass);
                return clsLoadClass;
            } catch (ClassNotFoundException | IllegalArgumentException | SecurityException e10) {
                throw new zzfjm(2008, e10);
            }
        } catch (GeneralSecurityException e11) {
            throw new zzfjm(2026, e11);
        }
    }

    public final zzfhs a() {
        zzfjc zzfjcVar;
        synchronized (this.f18326f) {
            zzfjcVar = this.f18325e;
        }
        return zzfjcVar;
    }

    public final zzfjd b() {
        synchronized (this.f18326f) {
            zzfjc zzfjcVar = this.f18325e;
            if (zzfjcVar == null) {
                return null;
            }
            return zzfjcVar.f();
        }
    }

    public final boolean c(zzfjd zzfjdVar) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            try {
                zzfjc zzfjcVar = new zzfjc(d(zzfjdVar).getDeclaredConstructor(Context.class, String.class, byte[].class, Object.class, Bundle.class, Integer.TYPE).newInstance(this.f18321a, "msa-r", zzfjdVar.e(), null, new Bundle(), 2), zzfjdVar, this.f18322b, this.f18323c);
                if (!zzfjcVar.h()) {
                    throw new zzfjm(4000, "init failed");
                }
                int iE = zzfjcVar.e();
                if (iE != 0) {
                    throw new zzfjm(4001, "ci: " + iE);
                }
                synchronized (this.f18326f) {
                    zzfjc zzfjcVar2 = this.f18325e;
                    if (zzfjcVar2 != null) {
                        try {
                            zzfjcVar2.g();
                        } catch (zzfjm e10) {
                            this.f18323c.c(e10.a(), -1L, e10);
                        }
                        this.f18325e = zzfjcVar;
                    } else {
                        this.f18325e = zzfjcVar;
                    }
                }
                this.f18323c.d(3000, System.currentTimeMillis() - jCurrentTimeMillis);
                return true;
            } catch (Exception e11) {
                throw new zzfjm(2004, e11);
            }
        } catch (zzfjm e12) {
            this.f18323c.c(e12.a(), System.currentTimeMillis() - jCurrentTimeMillis, e12);
            return false;
        } catch (Exception e13) {
            this.f18323c.c(4010, System.currentTimeMillis() - jCurrentTimeMillis, e13);
            return false;
        }
    }
}
