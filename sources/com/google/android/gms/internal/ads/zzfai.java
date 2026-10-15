package com.google.android.gms.internal.ads;

import java.util.LinkedList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfai {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f17802b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f17803c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinkedList f17801a = new LinkedList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzfbh f17804d = new zzfbh();

    public zzfai(int i10, int i11) {
        this.f17802b = i10;
        this.f17803c = i11;
    }

    private final void i() {
        while (!this.f17801a.isEmpty()) {
            if (com.google.android.gms.ads.internal.zzt.b().a() - ((zzfas) this.f17801a.getFirst()).f17835d < this.f17803c) {
                return;
            }
            this.f17804d.g();
            this.f17801a.remove();
        }
    }

    public final int a() {
        return this.f17804d.a();
    }

    public final int b() {
        i();
        return this.f17801a.size();
    }

    public final long c() {
        return this.f17804d.b();
    }

    public final long d() {
        return this.f17804d.c();
    }

    public final zzfas e() {
        this.f17804d.f();
        i();
        if (this.f17801a.isEmpty()) {
            return null;
        }
        zzfas zzfasVar = (zzfas) this.f17801a.remove();
        if (zzfasVar != null) {
            this.f17804d.h();
        }
        return zzfasVar;
    }

    public final zzfbg f() {
        return this.f17804d.d();
    }

    public final String g() {
        return this.f17804d.e();
    }

    public final boolean h(zzfas zzfasVar) {
        this.f17804d.f();
        i();
        if (this.f17801a.size() == this.f17802b) {
            return false;
        }
        this.f17801a.add(zzfasVar);
        return true;
    }
}
