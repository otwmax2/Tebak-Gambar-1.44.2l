package com.google.android.gms.internal.ads;

import android.util.Base64;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import java.util.Random;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzni implements zznm {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final zzfok f20241h = new zzfok() { // from class: com.google.android.gms.internal.ads.zzng
        @Override // com.google.android.gms.internal.ads.zzfok
        public final Object zza() {
            return zzni.l();
        }
    };

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Random f20242i = new Random();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzcm f20243a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzck f20244b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashMap f20245c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzfok f20246d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private zznl f20247e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private zzcn f20248f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f20249g;

    public zzni() {
        throw null;
    }

    private final zznh k(int i10, zzss zzssVar) {
        long j10 = Long.MAX_VALUE;
        zznh zznhVar = null;
        for (zznh zznhVar2 : this.f20245c.values()) {
            zznhVar2.g(i10, zzssVar);
            if (zznhVar2.j(i10, zzssVar)) {
                long j11 = zznhVar2.f20236c;
                if (j11 == -1 || j11 < j10) {
                    zznhVar = zznhVar2;
                    j10 = j11;
                } else if (j11 == j10) {
                    int i11 = zzew.f17494a;
                    if (zznhVar.f20237d != null && zznhVar2.f20237d != null) {
                        zznhVar = zznhVar2;
                    }
                }
            }
        }
        if (zznhVar != null) {
            return zznhVar;
        }
        String strL = l();
        zznh zznhVar3 = new zznh(this, strL, i10, zzssVar);
        this.f20245c.put(strL, zznhVar3);
        return zznhVar3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String l() {
        byte[] bArr = new byte[12];
        f20242i.nextBytes(bArr);
        return Base64.encodeToString(bArr, 10);
    }

    @RequiresNonNull({"listener"})
    private final void m(zzlc zzlcVar) {
        if (zzlcVar.f20108b.o()) {
            this.f20249g = null;
            return;
        }
        zznh zznhVar = (zznh) this.f20245c.get(this.f20249g);
        zznh zznhVarK = k(zzlcVar.f20109c, zzlcVar.f20110d);
        this.f20249g = zznhVarK.f20234a;
        f(zzlcVar);
        zzss zzssVar = zzlcVar.f20110d;
        if (zzssVar == null || !zzssVar.b()) {
            return;
        }
        if (zznhVar != null && zznhVar.f20236c == zzlcVar.f20110d.f11013d && zznhVar.f20237d != null && zznhVar.f20237d.f11011b == zzlcVar.f20110d.f11011b && zznhVar.f20237d.f11012c == zzlcVar.f20110d.f11012c) {
            return;
        }
        zzss zzssVar2 = zzlcVar.f20110d;
        String unused = k(zzlcVar.f20109c, new zzss(zzssVar2.f11010a, zzssVar2.f11013d)).f20234a;
        String unused2 = zznhVarK.f20234a;
    }

    @Override // com.google.android.gms.internal.ads.zznm
    public final synchronized void a(zzlc zzlcVar) {
        Objects.requireNonNull(this.f20247e);
        zzcn zzcnVar = this.f20248f;
        this.f20248f = zzlcVar.f20108b;
        Iterator it = this.f20245c.values().iterator();
        while (it.hasNext()) {
            zznh zznhVar = (zznh) it.next();
            if (!zznhVar.l(zzcnVar, this.f20248f) || zznhVar.k(zzlcVar)) {
                it.remove();
                if (zznhVar.f20238e) {
                    if (zznhVar.f20234a.equals(this.f20249g)) {
                        this.f20249g = null;
                    }
                    this.f20247e.k(zzlcVar, zznhVar.f20234a, false);
                }
            }
        }
        m(zzlcVar);
    }

    @Override // com.google.android.gms.internal.ads.zznm
    public final void b(zznl zznlVar) {
        this.f20247e = zznlVar;
    }

    @Override // com.google.android.gms.internal.ads.zznm
    public final synchronized void c(zzlc zzlcVar, int i10) {
        Objects.requireNonNull(this.f20247e);
        Iterator it = this.f20245c.values().iterator();
        while (it.hasNext()) {
            zznh zznhVar = (zznh) it.next();
            if (zznhVar.k(zzlcVar)) {
                it.remove();
                if (zznhVar.f20238e) {
                    boolean zEquals = zznhVar.f20234a.equals(this.f20249g);
                    boolean z10 = false;
                    if (i10 == 0 && zEquals && zznhVar.f20239f) {
                        z10 = true;
                    }
                    if (zEquals) {
                        this.f20249g = null;
                    }
                    this.f20247e.k(zzlcVar, zznhVar.f20234a, z10);
                }
            }
        }
        m(zzlcVar);
    }

    @Override // com.google.android.gms.internal.ads.zznm
    public final synchronized String d() {
        return this.f20249g;
    }

    @Override // com.google.android.gms.internal.ads.zznm
    public final synchronized void e(zzlc zzlcVar) {
        zznl zznlVar;
        this.f20249g = null;
        Iterator it = this.f20245c.values().iterator();
        while (it.hasNext()) {
            zznh zznhVar = (zznh) it.next();
            it.remove();
            if (zznhVar.f20238e && (zznlVar = this.f20247e) != null) {
                zznlVar.k(zzlcVar, zznhVar.f20234a, false);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x003d, code lost:
    
        if (r10.f20110d.f11013d < r0.f20236c) goto L20;
     */
    @Override // com.google.android.gms.internal.ads.zznm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized void f(com.google.android.gms.internal.ads.zzlc r10) {
        /*
            Method dump skipped, instruction units count: 206
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzni.f(com.google.android.gms.internal.ads.zzlc):void");
    }

    @Override // com.google.android.gms.internal.ads.zznm
    public final synchronized String g(zzcn zzcnVar, zzss zzssVar) {
        return k(zzcnVar.n(zzssVar.f11010a, this.f20244b).f13166c, zzssVar).f20234a;
    }

    public zzni(zzfok zzfokVar) {
        this.f20246d = zzfokVar;
        this.f20243a = new zzcm();
        this.f20244b = new zzck();
        this.f20245c = new HashMap();
        this.f20248f = zzcn.f13536a;
    }
}
