package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzako implements Comparable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzakz f9437o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f9438p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final String f9439q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f9440r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Object f9441s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final zzaks f9442t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private Integer f9443u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private zzakr f9444v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f9445w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private zzajx f9446x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private zzakn f9447y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final zzakc f9448z;

    public zzako(int i10, String str, zzaks zzaksVar) {
        Uri uri;
        String host;
        this.f9437o = zzakz.f9468c ? new zzakz() : null;
        this.f9441s = new Object();
        int iHashCode = 0;
        this.f9445w = false;
        this.f9446x = null;
        this.f9438p = i10;
        this.f9439q = str;
        this.f9442t = zzaksVar;
        this.f9448z = new zzakc();
        if (!TextUtils.isEmpty(str) && (uri = Uri.parse(str)) != null && (host = uri.getHost()) != null) {
            iHashCode = host.hashCode();
        }
        this.f9440r = iHashCode;
    }

    final void I() {
        zzakn zzaknVar;
        synchronized (this.f9441s) {
            zzaknVar = this.f9447y;
        }
        if (zzaknVar != null) {
            zzaknVar.a(this);
        }
    }

    final void J(zzaku zzakuVar) {
        zzakn zzaknVar;
        synchronized (this.f9441s) {
            zzaknVar = this.f9447y;
        }
        if (zzaknVar != null) {
            zzaknVar.b(this, zzakuVar);
        }
    }

    final void K(int i10) {
        zzakr zzakrVar = this.f9444v;
        if (zzakrVar != null) {
            zzakrVar.c(this, i10);
        }
    }

    final void L(zzakn zzaknVar) {
        synchronized (this.f9441s) {
            this.f9447y = zzaknVar;
        }
    }

    public final boolean M() {
        boolean z10;
        synchronized (this.f9441s) {
            z10 = this.f9445w;
        }
        return z10;
    }

    public final boolean N() {
        synchronized (this.f9441s) {
        }
        return false;
    }

    public byte[] O() throws zzajw {
        return null;
    }

    public final zzakc P() {
        return this.f9448z;
    }

    public final int c() {
        return this.f9448z.b();
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.f9443u.intValue() - ((zzako) obj).f9443u.intValue();
    }

    public final int e() {
        return this.f9440r;
    }

    public final zzajx f() {
        return this.f9446x;
    }

    public final zzako g(zzajx zzajxVar) {
        this.f9446x = zzajxVar;
        return this;
    }

    public final zzako i(zzakr zzakrVar) {
        this.f9444v = zzakrVar;
        return this;
    }

    public final zzako j(int i10) {
        this.f9443u = Integer.valueOf(i10);
        return this;
    }

    protected abstract zzaku k(zzakk zzakkVar);

    public final String m() {
        String str = this.f9439q;
        if (this.f9438p == 0) {
            return str;
        }
        return Integer.toString(1) + "-" + str;
    }

    public final String n() {
        return this.f9439q;
    }

    public Map o() throws zzajw {
        return Collections.emptyMap();
    }

    public final void p(String str) {
        if (zzakz.f9468c) {
            this.f9437o.a(str, Thread.currentThread().getId());
        }
    }

    public final void q(zzakx zzakxVar) {
        zzaks zzaksVar;
        synchronized (this.f9441s) {
            zzaksVar = this.f9442t;
        }
        if (zzaksVar != null) {
            zzaksVar.a(zzakxVar);
        }
    }

    protected abstract void r(Object obj);

    final void s(String str) {
        zzakr zzakrVar = this.f9444v;
        if (zzakrVar != null) {
            zzakrVar.b(this);
        }
        if (zzakz.f9468c) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new zzakm(this, str, id));
            } else {
                this.f9437o.a(str, id);
                this.f9437o.b(toString());
            }
        }
    }

    public final String toString() {
        String strValueOf = String.valueOf(Integer.toHexString(this.f9440r));
        N();
        return "[ ] " + this.f9439q + " " + "0x".concat(strValueOf) + " NORMAL " + this.f9443u;
    }

    public final void u() {
        synchronized (this.f9441s) {
            this.f9445w = true;
        }
    }

    public final int zza() {
        return this.f9438p;
    }
}
