package com.google.android.gms.internal.drive;

/* JADX INFO: loaded from: classes2.dex */
public class zzkx {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final zzjx f22213d = zzjx.b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private zzjc f22214a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile zzlq f22215b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile zzjc f22216c;

    private final zzlq c(zzlq zzlqVar) {
        if (this.f22215b == null) {
            synchronized (this) {
                if (this.f22215b == null) {
                    try {
                        this.f22215b = zzlqVar;
                        this.f22216c = zzjc.f22078p;
                    } catch (zzkq unused) {
                        this.f22215b = zzlqVar;
                        this.f22216c = zzjc.f22078p;
                    }
                }
            }
        }
        return this.f22215b;
    }

    public final zzjc a() {
        if (this.f22216c != null) {
            return this.f22216c;
        }
        synchronized (this) {
            if (this.f22216c != null) {
                return this.f22216c;
            }
            if (this.f22215b == null) {
                this.f22216c = zzjc.f22078p;
            } else {
                this.f22216c = this.f22215b.b();
            }
            return this.f22216c;
        }
    }

    public final int b() {
        if (this.f22216c != null) {
            return this.f22216c.size();
        }
        if (this.f22215b != null) {
            return this.f22215b.f();
        }
        return 0;
    }

    public final zzlq d(zzlq zzlqVar) {
        zzlq zzlqVar2 = this.f22215b;
        this.f22214a = null;
        this.f22216c = null;
        this.f22215b = zzlqVar;
        return zzlqVar2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzkx)) {
            return false;
        }
        zzkx zzkxVar = (zzkx) obj;
        zzlq zzlqVar = this.f22215b;
        zzlq zzlqVar2 = zzkxVar.f22215b;
        return (zzlqVar == null && zzlqVar2 == null) ? a().equals(zzkxVar.a()) : (zzlqVar == null || zzlqVar2 == null) ? zzlqVar != null ? zzlqVar.equals(zzkxVar.c(zzlqVar.a())) : c(zzlqVar2.a()).equals(zzlqVar2) : zzlqVar.equals(zzlqVar2);
    }

    public int hashCode() {
        return 1;
    }
}
