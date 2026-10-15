package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Logger;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzfxf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Logger f18818a = Logger.getLogger(zzfxf.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final AtomicReference f18819b = new AtomicReference(new zzfwf());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final ConcurrentMap f18820c = new ConcurrentHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ConcurrentMap f18821d = new ConcurrentHashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final ConcurrentMap f18822e = new ConcurrentHashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final ConcurrentMap f18823f = new ConcurrentHashMap();

    private zzfxf() {
    }

    @Deprecated
    public static zzfvr a(String str) throws GeneralSecurityException {
        if (str == null) {
            throw new IllegalArgumentException("catalogueName must be non-null.");
        }
        ConcurrentMap concurrentMap = f18822e;
        Locale locale = Locale.US;
        zzfvr zzfvrVar = (zzfvr) concurrentMap.get(str.toLowerCase(locale));
        if (zzfvrVar != null) {
            return zzfvrVar;
        }
        String strConcat = String.format("no catalogue found for %s. ", str);
        if (str.toLowerCase(locale).startsWith("tinkaead")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call AeadConfig.register().");
        }
        if (str.toLowerCase(locale).startsWith("tinkdeterministicaead")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call DeterministicAeadConfig.register().");
        } else if (str.toLowerCase(locale).startsWith("tinkstreamingaead")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call StreamingAeadConfig.register().");
        } else if (str.toLowerCase(locale).startsWith("tinkhybriddecrypt") || str.toLowerCase(locale).startsWith("tinkhybridencrypt")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call HybridConfig.register().");
        } else if (str.toLowerCase(locale).startsWith("tinkmac")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call MacConfig.register().");
        } else if (str.toLowerCase(locale).startsWith("tinkpublickeysign") || str.toLowerCase(locale).startsWith("tinkpublickeyverify")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call SignatureConfig.register().");
        } else if (str.toLowerCase(locale).startsWith("tink")) {
            strConcat = String.valueOf(strConcat).concat("Maybe call TinkConfig.register().");
        }
        throw new GeneralSecurityException(strConcat);
    }

    public static zzfvy b(String str) throws GeneralSecurityException {
        return ((zzfwf) f18819b.get()).b(str);
    }

    public static synchronized zzgky c(zzgld zzgldVar) throws GeneralSecurityException {
        zzfvy zzfvyVarB;
        zzfvyVarB = b(zzgldVar.N());
        if (!((Boolean) f18821d.get(zzgldVar.N())).booleanValue()) {
            throw new GeneralSecurityException("newKey-operation not permitted for key type ".concat(String.valueOf(zzgldVar.N())));
        }
        return zzfvyVarB.b(zzgldVar.M());
    }

    public static synchronized zzgrw d(zzgld zzgldVar) throws GeneralSecurityException {
        zzfvy zzfvyVarB;
        zzfvyVarB = b(zzgldVar.N());
        if (!((Boolean) f18821d.get(zzgldVar.N())).booleanValue()) {
            throw new GeneralSecurityException("newKey-operation not permitted for key type ".concat(String.valueOf(zzgldVar.N())));
        }
        return zzfvyVarB.f(zzgldVar.M());
    }

    @Nullable
    public static Class e(Class cls) {
        try {
            return zzgde.a().b(cls);
        } catch (GeneralSecurityException unused) {
            return null;
        }
    }

    static Object f(zzfvx zzfvxVar, Class cls) throws GeneralSecurityException {
        return zzgde.a().c(zzfvxVar, cls);
    }

    public static Object g(zzgky zzgkyVar, Class cls) throws GeneralSecurityException {
        return h(zzgkyVar.N(), zzgkyVar.M(), cls);
    }

    public static Object h(String str, zzgpe zzgpeVar, Class cls) throws GeneralSecurityException {
        return ((zzfwf) f18819b.get()).a(str, cls).e(zzgpeVar);
    }

    public static Object i(String str, zzgrw zzgrwVar, Class cls) throws GeneralSecurityException {
        return ((zzfwf) f18819b.get()).a(str, cls).d(zzgrwVar);
    }

    public static Object j(String str, byte[] bArr, Class cls) throws GeneralSecurityException {
        return h(str, zzgpe.J(bArr), cls);
    }

    public static Object k(zzfxb zzfxbVar, Class cls) throws GeneralSecurityException {
        return zzgde.a().d(zzfxbVar, cls);
    }

    static synchronized Map l() {
        return Collections.unmodifiableMap(f18823f);
    }

    public static synchronized void m(zzgdy zzgdyVar, zzgcu zzgcuVar, boolean z10) throws GeneralSecurityException {
        AtomicReference atomicReference = f18819b;
        zzfwf zzfwfVar = new zzfwf((zzfwf) atomicReference.get());
        zzfwfVar.c(zzgdyVar, zzgcuVar);
        Map mapC = zzgdyVar.a().c();
        String strD = zzgdyVar.d();
        q(strD, mapC, true);
        String strD2 = zzgcuVar.d();
        q(strD2, Collections.emptyMap(), false);
        if (!((zzfwf) atomicReference.get()).f(strD)) {
            f18820c.put(strD, new zzfxe(zzgdyVar));
            r(zzgdyVar.d(), zzgdyVar.a().c());
        }
        ConcurrentMap concurrentMap = f18821d;
        concurrentMap.put(strD, Boolean.TRUE);
        concurrentMap.put(strD2, Boolean.FALSE);
        atomicReference.set(zzfwfVar);
    }

    public static synchronized void n(zzfvy zzfvyVar, boolean z10) throws GeneralSecurityException {
        try {
            if (zzfvyVar == null) {
                throw new IllegalArgumentException("key manager must be non-null.");
            }
            AtomicReference atomicReference = f18819b;
            zzfwf zzfwfVar = new zzfwf((zzfwf) atomicReference.get());
            zzfwfVar.d(zzfvyVar);
            if (!zzgas.a(1)) {
                throw new GeneralSecurityException("Registering key managers is not supported in FIPS mode");
            }
            String strC = zzfvyVar.c();
            q(strC, Collections.emptyMap(), z10);
            f18821d.put(strC, Boolean.valueOf(z10));
            atomicReference.set(zzfwfVar);
        } catch (Throwable th) {
            throw th;
        }
    }

    public static synchronized void o(zzgcu zzgcuVar, boolean z10) throws GeneralSecurityException {
        AtomicReference atomicReference = f18819b;
        zzfwf zzfwfVar = new zzfwf((zzfwf) atomicReference.get());
        zzfwfVar.e(zzgcuVar);
        Map mapC = zzgcuVar.a().c();
        String strD = zzgcuVar.d();
        q(strD, mapC, true);
        if (!((zzfwf) atomicReference.get()).f(strD)) {
            f18820c.put(strD, new zzfxe(zzgcuVar));
            r(strD, zzgcuVar.a().c());
        }
        f18821d.put(strD, Boolean.TRUE);
        atomicReference.set(zzfwfVar);
    }

    public static synchronized void p(zzfxc zzfxcVar) throws GeneralSecurityException {
        zzgde.a().f(zzfxcVar);
    }

    private static synchronized void q(String str, Map map, boolean z10) throws GeneralSecurityException {
        if (z10) {
            ConcurrentMap concurrentMap = f18821d;
            if (concurrentMap.containsKey(str) && !((Boolean) concurrentMap.get(str)).booleanValue()) {
                throw new GeneralSecurityException("New keys are already disallowed for key type ".concat(str));
            }
            if (((zzfwf) f18819b.get()).f(str)) {
                for (Map.Entry entry : map.entrySet()) {
                    if (!f18823f.containsKey(entry.getKey())) {
                        throw new GeneralSecurityException("Attempted to register a new key template " + ((String) entry.getKey()) + " from an existing key manager of type " + str);
                    }
                }
            } else {
                for (Map.Entry entry2 : map.entrySet()) {
                    if (f18823f.containsKey(entry2.getKey())) {
                        throw new GeneralSecurityException("Attempted overwrite of a registered key template ".concat(String.valueOf((String) entry2.getKey())));
                    }
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [com.google.android.gms.internal.ads.zzgrw, java.lang.Object] */
    private static void r(String str, Map map) {
        for (Map.Entry entry : map.entrySet()) {
            f18823f.put((String) entry.getKey(), zzfwh.e(str, ((zzgcs) entry.getValue()).f19036a.t(), ((zzgcs) entry.getValue()).f19037b));
        }
    }
}
