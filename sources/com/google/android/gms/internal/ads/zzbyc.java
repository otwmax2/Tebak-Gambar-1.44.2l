package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbyc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Clock f11513a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzbyn f11514b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f11517e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f11518f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f11516d = new Object();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @GuardedBy("lock")
    private long f11519g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @GuardedBy("lock")
    private long f11520h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @GuardedBy("lock")
    private long f11521i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @GuardedBy("lock")
    private long f11522j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @GuardedBy("lock")
    private long f11523k = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("lock")
    private final LinkedList f11515c = new LinkedList();

    zzbyc(Clock clock, zzbyn zzbynVar, String str, String str2) {
        this.f11513a = clock;
        this.f11514b = zzbynVar;
        this.f11517e = str;
        this.f11518f = str2;
    }

    public final Bundle a() {
        Bundle bundle;
        synchronized (this.f11516d) {
            bundle = new Bundle();
            bundle.putString("seq_num", this.f11517e);
            bundle.putString("slotid", this.f11518f);
            bundle.putBoolean("ismediation", false);
            bundle.putLong("treq", this.f11522j);
            bundle.putLong("tresponse", this.f11523k);
            bundle.putLong("timp", this.f11519g);
            bundle.putLong("tload", this.f11520h);
            bundle.putLong("pcc", this.f11521i);
            bundle.putLong("tfetch", -1L);
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            Iterator it = this.f11515c.iterator();
            while (it.hasNext()) {
                arrayList.add(((zzbyb) it.next()).b());
            }
            bundle.putParcelableArrayList("tclick", arrayList);
        }
        return bundle;
    }

    public final String c() {
        return this.f11517e;
    }

    public final void d() {
        synchronized (this.f11516d) {
            if (this.f11523k != -1) {
                zzbyb zzbybVar = new zzbyb(this);
                zzbybVar.d();
                this.f11515c.add(zzbybVar);
                this.f11521i++;
                this.f11514b.c();
                this.f11514b.b(this);
            }
        }
    }

    public final void e() {
        synchronized (this.f11516d) {
            if (this.f11523k != -1 && !this.f11515c.isEmpty()) {
                zzbyb zzbybVar = (zzbyb) this.f11515c.getLast();
                if (zzbybVar.a() == -1) {
                    zzbybVar.c();
                    this.f11514b.b(this);
                }
            }
        }
    }

    public final void f() {
        synchronized (this.f11516d) {
            if (this.f11523k != -1 && this.f11519g == -1) {
                this.f11519g = this.f11513a.b();
                this.f11514b.b(this);
            }
            this.f11514b.d();
        }
    }

    public final void g() {
        synchronized (this.f11516d) {
            this.f11514b.e();
        }
    }

    public final void h(boolean z10) {
        synchronized (this.f11516d) {
            if (this.f11523k != -1) {
                this.f11520h = this.f11513a.b();
            }
        }
    }

    public final void i() {
        synchronized (this.f11516d) {
            this.f11514b.f();
        }
    }

    public final void j(com.google.android.gms.ads.internal.client.zzl zzlVar) {
        synchronized (this.f11516d) {
            long jB = this.f11513a.b();
            this.f11522j = jB;
            this.f11514b.g(zzlVar, jB);
        }
    }

    public final void k(long j10) {
        synchronized (this.f11516d) {
            this.f11523k = j10;
            if (j10 != -1) {
                this.f11514b.b(this);
            }
        }
    }
}
