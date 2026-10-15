package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import android.os.Binder;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.GoogleSignatureVerifier;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.UidVerifier;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzc;
import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzha extends zzen {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzli f24735o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Boolean f24736p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f24737q;

    public zzha(zzli zzliVar, String str) {
        Preconditions.k(zzliVar);
        this.f24735o = zzliVar;
        this.f24737q = null;
    }

    private final void Ta(zzp zzpVar, boolean z10) {
        Preconditions.k(zzpVar);
        Preconditions.g(zzpVar.f24879o);
        Ua(zzpVar.f24879o, false);
        this.f24735o.f0().J(zzpVar.f24880p, zzpVar.E);
    }

    private final void Ua(String str, boolean z10) {
        if (TextUtils.isEmpty(str)) {
            this.f24735o.U().m().a("Measurement Service called without app package");
            throw new SecurityException("Measurement Service called without app package");
        }
        if (z10) {
            try {
                if (this.f24736p == null) {
                    this.f24736p = Boolean.valueOf("com.google.android.gms".equals(this.f24737q) || UidVerifier.a(this.f24735o.N0(), Binder.getCallingUid()) || GoogleSignatureVerifier.a(this.f24735o.N0()).c(Binder.getCallingUid()));
                }
                if (this.f24736p.booleanValue()) {
                    return;
                }
            } catch (SecurityException e10) {
                this.f24735o.U().m().b("Measurement Service called with invalid calling package. appId", zzey.v(str));
                throw e10;
            }
        }
        if (this.f24737q == null && GooglePlayServicesUtilLight.k(this.f24735o.N0(), Binder.getCallingUid(), str)) {
            this.f24737q = str;
        }
        if (str.equals(this.f24737q)) {
        } else {
            throw new SecurityException(String.format("Unknown calling package name '%s'.", str));
        }
    }

    private final void X0(zzav zzavVar, zzp zzpVar) {
        this.f24735o.a();
        this.f24735o.d(zzavVar, zzpVar);
    }

    final void A9(zzav zzavVar, zzp zzpVar) {
        if (!this.f24735o.Y().z(zzpVar.f24879o)) {
            X0(zzavVar, zzpVar);
            return;
        }
        this.f24735o.U().q().b("EES config found for", zzpVar.f24879o);
        zzfz zzfzVarY = this.f24735o.Y();
        String str = zzpVar.f24879o;
        zzc zzcVar = TextUtils.isEmpty(str) ? null : (zzc) zzfzVarY.f24690j.c(str);
        if (zzcVar == null) {
            this.f24735o.U().q().b("EES not loaded for", zzpVar.f24879o);
            X0(zzavVar, zzpVar);
            return;
        }
        try {
            Map mapG = this.f24735o.e0().G(zzavVar.f24455p.X3(), true);
            String strA = zzhf.a(zzavVar.f24454o);
            if (strA == null) {
                strA = zzavVar.f24454o;
            }
            if (zzcVar.e(new com.google.android.gms.internal.measurement.zzaa(strA, zzavVar.f24457r, mapG))) {
                if (zzcVar.g()) {
                    this.f24735o.U().q().b("EES edited event", zzavVar.f24454o);
                    X0(this.f24735o.e0().w(zzcVar.a().b()), zzpVar);
                } else {
                    X0(zzavVar, zzpVar);
                }
                if (zzcVar.f()) {
                    for (com.google.android.gms.internal.measurement.zzaa zzaaVar : zzcVar.a().c()) {
                        this.f24735o.U().q().b("EES logging created event", zzaaVar.d());
                        X0(this.f24735o.e0().w(zzaaVar), zzpVar);
                    }
                    return;
                }
                return;
            }
        } catch (com.google.android.gms.internal.measurement.zzd unused) {
            this.f24735o.U().m().c("EES error. appId, eventName", zzpVar.f24880p, zzavVar.f24454o);
        }
        this.f24735o.U().q().b("EES was not applied to event", zzavVar.f24454o);
        X0(zzavVar, zzpVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void C5(zzp zzpVar) {
        Ta(zzpVar, false);
        Sa(new o0(this, zzpVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List C8(zzp zzpVar, boolean z10) {
        Ta(zzpVar, false);
        String str = zzpVar.f24879o;
        Preconditions.k(str);
        try {
            List<b4> list = (List) this.f24735o.B().n(new u0(this, str)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (b4 b4Var : list) {
                if (z10 || !zzlp.V(b4Var.f23998c)) {
                    arrayList.add(new zzll(b4Var));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e10) {
            this.f24735o.U().m().c("Failed to get user properties. appId", zzey.v(zzpVar.f24879o), e10);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void E6(long j10, String str, String str2, String str3) {
        Sa(new w0(this, str2, str3, str, j10));
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void K5(zzll zzllVar, zzp zzpVar) {
        Preconditions.k(zzllVar);
        Ta(zzpVar, false);
        Sa(new t0(this, zzllVar, zzpVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void M2(zzp zzpVar) {
        Preconditions.g(zzpVar.f24879o);
        Ua(zzpVar.f24879o, false);
        Sa(new n0(this, zzpVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List P6(String str, String str2, boolean z10, zzp zzpVar) {
        Ta(zzpVar, false);
        String str3 = zzpVar.f24879o;
        Preconditions.k(str3);
        try {
            List<b4> list = (List) this.f24735o.B().n(new j0(this, str3, str, str2)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (b4 b4Var : list) {
                if (z10 || !zzlp.V(b4Var.f23998c)) {
                    arrayList.add(new zzll(b4Var));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e10) {
            this.f24735o.U().m().c("Failed to query user properties. appId", zzey.v(zzpVar.f24879o), e10);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void Q1(final Bundle bundle, zzp zzpVar) {
        Ta(zzpVar, false);
        final String str = zzpVar.f24879o;
        Preconditions.k(str);
        Sa(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzgj
            @Override // java.lang.Runnable
            public final void run() {
                this.f24732o.Ra(str, bundle);
            }
        });
    }

    final /* synthetic */ void Ra(String str, Bundle bundle) {
        e eVarT = this.f24735o.T();
        eVarT.c();
        eVarT.d();
        byte[] bArrH = eVarT.f24263b.e0().y(new zzaq(eVarT.f24394a, BuildConfig.FLAVOR, str, "dep", 0L, 0L, bundle)).h();
        eVarT.f24394a.U().q().c("Saving default event parameters, appId, data size", eVarT.f24394a.A().d(str), Integer.valueOf(bArrH.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("parameters", bArrH);
        try {
            if (eVarT.N().insertWithOnConflict("default_event_params", null, contentValues, 5) == -1) {
                eVarT.f24394a.U().m().b("Failed to insert default event parameters (got -1). appId", zzey.v(str));
            }
        } catch (SQLiteException e10) {
            eVarT.f24394a.U().m().c("Error storing default event parameters. appId", zzey.v(str), e10);
        }
    }

    @VisibleForTesting
    final void Sa(Runnable runnable) {
        Preconditions.k(runnable);
        if (this.f24735o.B().z()) {
            runnable.run();
        } else {
            this.f24735o.B().v(runnable);
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void T3(zzab zzabVar) {
        Preconditions.k(zzabVar);
        Preconditions.k(zzabVar.f24417q);
        Preconditions.g(zzabVar.f24415o);
        Ua(zzabVar.f24415o, true);
        Sa(new i0(this, new zzab(zzabVar)));
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void T7(zzav zzavVar, zzp zzpVar) {
        Preconditions.k(zzavVar);
        Ta(zzpVar, false);
        Sa(new q0(this, zzavVar, zzpVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void W4(zzp zzpVar) {
        Ta(zzpVar, false);
        Sa(new v0(this, zzpVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List b5(String str, String str2, zzp zzpVar) {
        Ta(zzpVar, false);
        String str3 = zzpVar.f24879o;
        Preconditions.k(str3);
        try {
            return (List) this.f24735o.B().n(new l0(this, str3, str, str2)).get();
        } catch (InterruptedException | ExecutionException e10) {
            this.f24735o.U().m().b("Failed to get conditional user properties", e10);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List c4(String str, String str2, String str3) {
        Ua(str, true);
        try {
            return (List) this.f24735o.B().n(new m0(this, str, str2, str3)).get();
        } catch (InterruptedException | ExecutionException e10) {
            this.f24735o.U().m().b("Failed to get conditional user properties as", e10);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void i2(zzab zzabVar, zzp zzpVar) {
        Preconditions.k(zzabVar);
        Preconditions.k(zzabVar.f24417q);
        Ta(zzpVar, false);
        zzab zzabVar2 = new zzab(zzabVar);
        zzabVar2.f24415o = zzpVar.f24879o;
        Sa(new h0(this, zzabVar2, zzpVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final String i3(zzp zzpVar) {
        Ta(zzpVar, false);
        return this.f24735o.h0(zzpVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final byte[] q6(zzav zzavVar, String str) {
        Preconditions.g(str);
        Preconditions.k(zzavVar);
        Ua(str, true);
        this.f24735o.U().l().b("Log and bundle. event", this.f24735o.V().d(zzavVar.f24454o));
        long jC = this.f24735o.x().c() / 1000000;
        try {
            byte[] bArr = (byte[]) this.f24735o.B().o(new s0(this, zzavVar, str)).get();
            if (bArr == null) {
                this.f24735o.U().m().b("Log and bundle returned null. appId", zzey.v(str));
                bArr = new byte[0];
            }
            this.f24735o.U().l().d("Log and bundle processed. event, size, time_ms", this.f24735o.V().d(zzavVar.f24454o), Integer.valueOf(bArr.length), Long.valueOf((this.f24735o.x().c() / 1000000) - jC));
            return bArr;
        } catch (InterruptedException | ExecutionException e10) {
            this.f24735o.U().m().d("Failed to log and bundle. appId, event, error", zzey.v(str), this.f24735o.V().d(zzavVar.f24454o), e10);
            return null;
        }
    }

    @VisibleForTesting
    final zzav t1(zzav zzavVar, zzp zzpVar) {
        zzat zzatVar;
        if ("_cmp".equals(zzavVar.f24454o) && (zzatVar = zzavVar.f24455p) != null && zzatVar.V3() != 0) {
            String strB4 = zzavVar.f24455p.b4("_cis");
            if ("referrer broadcast".equals(strB4) || "referrer API".equals(strB4)) {
                this.f24735o.U().p().b("Event has been filtered ", zzavVar.toString());
                return new zzav("_cmpx", zzavVar.f24455p, zzavVar.f24456q, zzavVar.f24457r);
            }
        }
        return zzavVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List x2(String str, String str2, String str3, boolean z10) {
        Ua(str, true);
        try {
            List<b4> list = (List) this.f24735o.B().n(new k0(this, str, str2, str3)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (b4 b4Var : list) {
                if (z10 || !zzlp.V(b4Var.f23998c)) {
                    arrayList.add(new zzll(b4Var));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e10) {
            this.f24735o.U().m().c("Failed to get user properties as. appId", zzey.v(str), e10);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void z4(zzav zzavVar, String str, String str2) {
        Preconditions.k(zzavVar);
        Preconditions.g(str);
        Ua(str, true);
        Sa(new r0(this, zzavVar, str));
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void z6(zzp zzpVar) {
        Preconditions.g(zzpVar.f24879o);
        Preconditions.k(zzpVar.J);
        p0 p0Var = new p0(this, zzpVar);
        Preconditions.k(p0Var);
        if (this.f24735o.B().z()) {
            p0Var.run();
        } else {
            this.f24735o.B().w(p0Var);
        }
    }
}
