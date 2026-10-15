package com.google.android.gms.internal.firebase_auth;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public class zziw {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final zzhs f22787d = zzhs.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private zzgv f22788a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile zzjn f22789b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile zzgv f22790c;

    private final zzjn c(zzjn zzjnVar) {
        if (this.f22789b == null) {
            synchronized (this) {
                if (this.f22789b == null) {
                    try {
                        this.f22789b = zzjnVar;
                        this.f22790c = zzgv.f22647p;
                    } catch (zzin unused) {
                        this.f22789b = zzjnVar;
                        this.f22790c = zzgv.f22647p;
                    }
                }
            }
        }
        return this.f22789b;
    }

    public final zzjn a(zzjn zzjnVar) {
        zzjn zzjnVar2 = this.f22789b;
        this.f22788a = null;
        this.f22790c = null;
        this.f22789b = zzjnVar;
        return zzjnVar2;
    }

    public final int b() {
        if (this.f22790c != null) {
            return this.f22790c.g();
        }
        if (this.f22789b != null) {
            return this.f22789b.A();
        }
        return 0;
    }

    public final zzgv d() {
        if (this.f22790c != null) {
            return this.f22790c;
        }
        synchronized (this) {
            if (this.f22790c != null) {
                return this.f22790c;
            }
            if (this.f22789b == null) {
                this.f22790c = zzgv.f22647p;
            } else {
                this.f22790c = this.f22789b.C();
            }
            return this.f22790c;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zziw)) {
            return false;
        }
        zziw zziwVar = (zziw) obj;
        zzjn zzjnVar = this.f22789b;
        zzjn zzjnVar2 = zziwVar.f22789b;
        return (zzjnVar == null && zzjnVar2 == null) ? d().equals(zziwVar.d()) : (zzjnVar == null || zzjnVar2 == null) ? zzjnVar != null ? zzjnVar.equals(zziwVar.c(zzjnVar.a())) : c(zzjnVar2.a()).equals(zzjnVar2) : zzjnVar.equals(zzjnVar2);
    }

    public int hashCode() {
        return 1;
    }
}
