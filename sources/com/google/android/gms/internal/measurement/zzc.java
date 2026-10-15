package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final zzf f23353a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    zzg f23354b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final zzab f23355c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzz f23356d;

    public zzc() {
        zzf zzfVar = new zzf();
        this.f23353a = zzfVar;
        this.f23354b = zzfVar.f23492b.a();
        this.f23355c = new zzab();
        this.f23356d = new zzz();
        zzfVar.f23494d.a("internal.registerCallback", new Callable() { // from class: com.google.android.gms.internal.measurement.zza
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f23254a.b();
            }
        });
        zzfVar.f23494d.a("internal.eventLogger", new Callable() { // from class: com.google.android.gms.internal.measurement.zzb
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzk(this.f23296a.f23355c);
            }
        });
    }

    public final zzab a() {
        return this.f23355c;
    }

    final /* synthetic */ zzai b() throws Exception {
        return new zzv(this.f23356d);
    }

    public final void c(zzgs zzgsVar) throws zzd {
        zzai zzaiVar;
        try {
            this.f23354b = this.f23353a.f23492b.a();
            if (this.f23353a.a(this.f23354b, (zzgx[]) zzgsVar.w().toArray(new zzgx[0])) instanceof zzag) {
                throw new IllegalStateException("Program loading failed");
            }
            for (zzgq zzgqVar : zzgsVar.u().x()) {
                List listW = zzgqVar.w();
                String strV = zzgqVar.v();
                Iterator it = listW.iterator();
                while (it.hasNext()) {
                    zzap zzapVarA = this.f23353a.a(this.f23354b, (zzgx) it.next());
                    if (!(zzapVarA instanceof zzam)) {
                        throw new IllegalArgumentException("Invalid rule definition");
                    }
                    zzg zzgVar = this.f23354b;
                    if (zzgVar.h(strV)) {
                        zzap zzapVarD = zzgVar.d(strV);
                        if (!(zzapVarD instanceof zzai)) {
                            throw new IllegalStateException("Invalid function name: ".concat(String.valueOf(strV)));
                        }
                        zzaiVar = (zzai) zzapVarD;
                    } else {
                        zzaiVar = null;
                    }
                    if (zzaiVar == null) {
                        throw new IllegalStateException("Rule function is undefined: ".concat(String.valueOf(strV)));
                    }
                    zzaiVar.a(this.f23354b, Collections.singletonList(zzapVarA));
                }
            }
        } catch (Throwable th) {
            throw new zzd(th);
        }
    }

    public final void d(String str, Callable callable) {
        this.f23353a.f23494d.a(str, callable);
    }

    public final boolean e(zzaa zzaaVar) throws zzd {
        try {
            this.f23355c.d(zzaaVar);
            this.f23353a.f23493c.g("runtime.counter", new zzah(Double.valueOf(0.0d)));
            this.f23356d.b(this.f23354b.a(), this.f23355c);
            if (g()) {
                return true;
            }
            return f();
        } catch (Throwable th) {
            throw new zzd(th);
        }
    }

    public final boolean f() {
        return !this.f23355c.c().isEmpty();
    }

    public final boolean g() {
        zzab zzabVar = this.f23355c;
        return !zzabVar.b().equals(zzabVar.a());
    }
}
