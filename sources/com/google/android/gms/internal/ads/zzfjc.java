package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.vungle.warren.ui.JavascriptBridge;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfjc implements zzfhs {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f18292a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfjd f18293b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzfjo f18294c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzfhp f18295d;

    zzfjc(Object obj, zzfjd zzfjdVar, zzfjo zzfjoVar, zzfhp zzfhpVar) {
        this.f18292a = obj;
        this.f18293b = zzfjdVar;
        this.f18294c = zzfjoVar;
        this.f18295d = zzfhpVar;
    }

    private static String i(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        zzaoe zzaoeVarI = zzaof.I();
        zzaoeVarI.q(5);
        zzaoeVarI.o(zzgpe.J(bArr));
        return Base64.encodeToString(((zzaof) zzaoeVarI.k()).t(), 11);
    }

    private final synchronized byte[] j(Map map, Map map2) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
        } catch (Exception e10) {
            this.f18295d.c(2007, System.currentTimeMillis() - jCurrentTimeMillis, e10);
            return null;
        }
        return (byte[]) this.f18292a.getClass().getDeclaredMethod("xss", Map.class, Map.class).invoke(this.f18292a, null, map2);
    }

    @Override // com.google.android.gms.internal.ads.zzfhs
    public final synchronized String a(Context context, String str) {
        Map mapZzb;
        mapZzb = this.f18294c.zzb();
        mapZzb.put("f", "q");
        mapZzb.put("ctx", context);
        mapZzb.put("aid", null);
        return i(j(null, mapZzb));
    }

    @Override // com.google.android.gms.internal.ads.zzfhs
    public final synchronized void b(String str, MotionEvent motionEvent) throws zzfjm {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            HashMap map = new HashMap();
            map.put("t", new Throwable());
            map.put("aid", null);
            map.put("evt", motionEvent);
            this.f18292a.getClass().getDeclaredMethod("he", Map.class).invoke(this.f18292a, map);
            this.f18295d.d(3003, System.currentTimeMillis() - jCurrentTimeMillis);
        } catch (Exception e10) {
            throw new zzfjm(2005, e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfhs
    public final synchronized String c(Context context, String str, String str2, View view, Activity activity) {
        Map mapZza;
        mapZza = this.f18294c.zza();
        mapZza.put("f", "c");
        mapZza.put("ctx", context);
        mapZza.put("cs", str2);
        mapZza.put("aid", null);
        mapZza.put(ViewHierarchyConstants.VIEW_KEY, view);
        mapZza.put("act", activity);
        return i(j(null, mapZza));
    }

    @Override // com.google.android.gms.internal.ads.zzfhs
    public final synchronized String d(Context context, String str, View view, Activity activity) {
        Map mapA;
        mapA = this.f18294c.a();
        mapA.put("f", "v");
        mapA.put("ctx", context);
        mapA.put("aid", null);
        mapA.put(ViewHierarchyConstants.VIEW_KEY, view);
        mapA.put("act", activity);
        return i(j(null, mapA));
    }

    public final synchronized int e() throws zzfjm {
        try {
        } catch (Exception e10) {
            throw new zzfjm(2006, e10);
        }
        return ((Integer) this.f18292a.getClass().getDeclaredMethod("lcs", new Class[0]).invoke(this.f18292a, new Object[0])).intValue();
    }

    final zzfjd f() {
        return this.f18293b;
    }

    public final synchronized void g() throws zzfjm {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.f18292a.getClass().getDeclaredMethod(JavascriptBridge.MraidHandler.CLOSE_ACTION, new Class[0]).invoke(this.f18292a, new Object[0]);
            this.f18295d.d(3001, System.currentTimeMillis() - jCurrentTimeMillis);
        } catch (Exception e10) {
            throw new zzfjm(2003, e10);
        }
    }

    final synchronized boolean h() throws zzfjm {
        try {
        } catch (Exception e10) {
            throw new zzfjm(2001, e10);
        }
        return ((Boolean) this.f18292a.getClass().getDeclaredMethod("init", new Class[0]).invoke(this.f18292a, new Object[0])).booleanValue();
    }
}
