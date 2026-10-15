package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzei extends zzjy implements zzlk {
    private zzei() {
        super(zzej.zza);
    }

    public final int r() {
        return ((zzej) this.f23657p).u();
    }

    public final zzei s(String str) {
        if (this.f23658q) {
            q();
            this.f23658q = false;
        }
        zzej.C((zzej) this.f23657p, str);
        return this;
    }

    public final zzei t(int i10, zzel zzelVar) {
        if (this.f23658q) {
            q();
            this.f23658q = false;
        }
        zzej.D((zzej) this.f23657p, i10, zzelVar);
        return this;
    }

    public final zzel u(int i10) {
        return ((zzej) this.f23657p).y(i10);
    }

    public final String v() {
        return ((zzej) this.f23657p).A();
    }

    /* synthetic */ zzei(zzef zzefVar) {
        super(zzej.zza);
    }
}
