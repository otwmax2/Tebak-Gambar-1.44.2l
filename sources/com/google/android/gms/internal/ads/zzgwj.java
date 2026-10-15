package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzgwj implements Iterator, Closeable, zzamc {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final zzamb f19694u = new zzgwi("eof ");

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final zzgwq f19695v = zzgwq.b(zzgwj.class);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected zzaly f19696o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected zzgwk f19697p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    zzamb f19698q = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    long f19699r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    long f19700s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final List f19701t = new ArrayList();

    public void close() throws IOException {
    }

    @Override // java.util.Iterator
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public final zzamb next() {
        zzamb zzambVarA;
        zzamb zzambVar = this.f19698q;
        if (zzambVar != null && zzambVar != f19694u) {
            this.f19698q = null;
            return zzambVar;
        }
        zzgwk zzgwkVar = this.f19697p;
        if (zzgwkVar == null || this.f19699r >= this.f19700s) {
            this.f19698q = f19694u;
            throw new NoSuchElementException();
        }
        try {
            synchronized (zzgwkVar) {
                this.f19697p.D(this.f19699r);
                zzambVarA = this.f19696o.a(this.f19697p, this);
                this.f19699r = this.f19697p.zzb();
            }
            return zzambVarA;
        } catch (EOFException unused) {
            throw new NoSuchElementException();
        } catch (IOException unused2) {
            throw new NoSuchElementException();
        }
    }

    public final List f() {
        return (this.f19697p == null || this.f19698q == f19694u) ? this.f19701t : new zzgwp(this.f19701t, this);
    }

    public final void g(zzgwk zzgwkVar, long j10, zzaly zzalyVar) throws IOException {
        this.f19697p = zzgwkVar;
        this.f19699r = zzgwkVar.zzb();
        zzgwkVar.D(zzgwkVar.zzb() + j10);
        this.f19700s = zzgwkVar.zzb();
        this.f19696o = zzalyVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        zzamb zzambVar = this.f19698q;
        if (zzambVar == f19694u) {
            return false;
        }
        if (zzambVar != null) {
            return true;
        }
        try {
            this.f19698q = next();
            return true;
        } catch (NoSuchElementException unused) {
            this.f19698q = f19694u;
            return false;
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("[");
        for (int i10 = 0; i10 < this.f19701t.size(); i10++) {
            if (i10 > 0) {
                sb.append(";");
            }
            sb.append(((zzamb) this.f19701t.get(i10)).toString());
        }
        sb.append("]");
        return sb.toString();
    }
}
