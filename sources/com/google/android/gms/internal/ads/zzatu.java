package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzatu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f9914a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f9915b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f9916c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f9917d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzauj f9918e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzaur f9919f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f9927n;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Object f9920g = new Object();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ArrayList f9921h = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final ArrayList f9922i = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final ArrayList f9923j = new ArrayList();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f9924k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f9925l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f9926m = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f9928o = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f9929p = BuildConfig.FLAVOR;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f9930q = BuildConfig.FLAVOR;

    public zzatu(int i10, int i11, int i12, int i13, int i14, int i15, int i16, boolean z10) {
        this.f9914a = i10;
        this.f9915b = i11;
        this.f9916c = i12;
        this.f9917d = z10;
        this.f9918e = new zzauj(i13);
        this.f9919f = new zzaur(i14, i15, i16);
    }

    private final void p(String str, boolean z10, float f10, float f11, float f12, float f13) {
        if (str != null) {
            if (str.length() < this.f9916c) {
                return;
            }
            synchronized (this.f9920g) {
                this.f9921h.add(str);
                this.f9924k += str.length();
                if (z10) {
                    this.f9922i.add(str);
                    this.f9923j.add(new zzauf(f10, f11, f12, f13, this.f9922i.size() - 1));
                }
            }
        }
    }

    private static final String q(ArrayList arrayList, int i10) {
        if (arrayList.isEmpty()) {
            return BuildConfig.FLAVOR;
        }
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        int i11 = 0;
        while (i11 < size) {
            sb.append((String) arrayList.get(i11));
            sb.append(' ');
            i11++;
            if (sb.length() > 100) {
                break;
            }
        }
        sb.deleteCharAt(sb.length() - 1);
        String string = sb.toString();
        return string.length() < 100 ? string : string.substring(0, 100);
    }

    @VisibleForTesting
    final int a(int i10, int i11) {
        return this.f9917d ? this.f9915b : (i10 * this.f9914a) + (i11 * this.f9915b);
    }

    public final int b() {
        return this.f9927n;
    }

    @VisibleForTesting
    final int c() {
        return this.f9924k;
    }

    public final String d() {
        return this.f9928o;
    }

    public final String e() {
        return this.f9929p;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzatu)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        String str = ((zzatu) obj).f9928o;
        return str != null && str.equals(this.f9928o);
    }

    public final String f() {
        return this.f9930q;
    }

    public final void g() {
        synchronized (this.f9920g) {
            this.f9926m--;
        }
    }

    public final void h() {
        synchronized (this.f9920g) {
            this.f9926m++;
        }
    }

    public final int hashCode() {
        return this.f9928o.hashCode();
    }

    public final void i() {
        synchronized (this.f9920g) {
            this.f9927n -= 100;
        }
    }

    public final void j(int i10) {
        this.f9925l = i10;
    }

    public final void k(String str, boolean z10, float f10, float f11, float f12, float f13) {
        p(str, z10, f10, f11, f12, f13);
    }

    public final void l(String str, boolean z10, float f10, float f11, float f12, float f13) {
        p(str, z10, f10, f11, f12, f13);
        synchronized (this.f9920g) {
            if (this.f9926m < 0) {
                zzbza.b("ActivityContent: negative number of WebViews.");
            }
            m();
        }
    }

    public final void m() {
        synchronized (this.f9920g) {
            int iA = a(this.f9924k, this.f9925l);
            if (iA > this.f9927n) {
                this.f9927n = iA;
                if (!com.google.android.gms.ads.internal.zzt.q().h().Y()) {
                    this.f9928o = this.f9918e.a(this.f9921h);
                    this.f9929p = this.f9918e.a(this.f9922i);
                }
                if (!com.google.android.gms.ads.internal.zzt.q().h().J()) {
                    this.f9930q = this.f9919f.a(this.f9922i, this.f9923j);
                }
            }
        }
    }

    public final void n() {
        synchronized (this.f9920g) {
            int iA = a(this.f9924k, this.f9925l);
            if (iA > this.f9927n) {
                this.f9927n = iA;
            }
        }
    }

    public final boolean o() {
        boolean z10;
        synchronized (this.f9920g) {
            z10 = this.f9926m == 0;
        }
        return z10;
    }

    public final String toString() {
        return "ActivityContent fetchId: " + this.f9925l + " score:" + this.f9927n + " total_length:" + this.f9924k + "\n text: " + q(this.f9921h, 100) + "\n viewableText" + q(this.f9922i, 100) + "\n signture: " + this.f9928o + "\n viewableSignture: " + this.f9929p + "\n viewableSignatureForVertical: " + this.f9930q;
    }
}
