package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzd extends l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f24513b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f24514c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f24515d;

    public zzd(zzgi zzgiVar) {
        super(zzgiVar);
        this.f24514c = new o.a();
        this.f24513b = new o.a();
    }

    static /* synthetic */ void d(zzd zzdVar, String str, long j10) {
        zzdVar.c();
        Preconditions.g(str);
        if (zzdVar.f24514c.isEmpty()) {
            zzdVar.f24515d = j10;
        }
        Integer num = (Integer) zzdVar.f24514c.get(str);
        if (num != null) {
            zzdVar.f24514c.put(str, Integer.valueOf(num.intValue() + 1));
        } else if (zzdVar.f24514c.size() >= 100) {
            zzdVar.f24394a.U().r().a("Too many ads visible");
        } else {
            zzdVar.f24514c.put(str, 1);
            zzdVar.f24513b.put(str, Long.valueOf(j10));
        }
    }

    static /* synthetic */ void e(zzd zzdVar, String str, long j10) {
        zzdVar.c();
        Preconditions.g(str);
        Integer num = (Integer) zzdVar.f24514c.get(str);
        if (num == null) {
            zzdVar.f24394a.U().m().b("Call to endAdUnitExposure for unknown ad unit id", str);
            return;
        }
        zziu zziuVarO = zzdVar.f24394a.I().o(false);
        int iIntValue = num.intValue() - 1;
        if (iIntValue != 0) {
            zzdVar.f24514c.put(str, Integer.valueOf(iIntValue));
            return;
        }
        zzdVar.f24514c.remove(str);
        Long l10 = (Long) zzdVar.f24513b.get(str);
        if (l10 == null) {
            zzdVar.f24394a.U().m().a("First ad unit exposure time was never set");
        } else {
            long jLongValue = l10.longValue();
            zzdVar.f24513b.remove(str);
            zzdVar.k(str, j10 - jLongValue, zziuVarO);
        }
        if (zzdVar.f24514c.isEmpty()) {
            long j11 = zzdVar.f24515d;
            if (j11 == 0) {
                zzdVar.f24394a.U().m().a("First ad exposure time was never set");
            } else {
                zzdVar.j(j10 - j11, zziuVarO);
                zzdVar.f24515d = 0L;
            }
        }
    }

    private final void j(long j10, zziu zziuVar) {
        if (zziuVar == null) {
            this.f24394a.U().q().a("Not logging ad exposure. No active activity");
            return;
        }
        if (j10 < 1000) {
            this.f24394a.U().q().b("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(j10));
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putLong("_xt", j10);
        zzlp.u(zziuVar, bundle, true);
        this.f24394a.G().q("am", "_xa", bundle);
    }

    private final void k(String str, long j10, zziu zziuVar) {
        if (zziuVar == null) {
            this.f24394a.U().q().a("Not logging ad unit exposure. No active activity");
            return;
        }
        if (j10 < 1000) {
            this.f24394a.U().q().b("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(j10));
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("_ai", str);
        bundle.putLong("_xt", j10);
        zzlp.u(zziuVar, bundle, true);
        this.f24394a.G().q("am", "_xu", bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l(long j10) {
        Iterator it = this.f24513b.keySet().iterator();
        while (it.hasNext()) {
            this.f24513b.put((String) it.next(), Long.valueOf(j10));
        }
        if (this.f24513b.isEmpty()) {
            return;
        }
        this.f24515d = j10;
    }

    public final void g(String str, long j10) {
        if (str == null || str.length() == 0) {
            this.f24394a.U().m().a("Ad unit id must be a non-empty string");
        } else {
            this.f24394a.B().v(new a(this, str, j10));
        }
    }

    public final void h(String str, long j10) {
        if (str == null || str.length() == 0) {
            this.f24394a.U().m().a("Ad unit id must be a non-empty string");
        } else {
            this.f24394a.B().v(new j(this, str, j10));
        }
    }

    public final void i(long j10) {
        zziu zziuVarO = this.f24394a.I().o(false);
        for (String str : this.f24513b.keySet()) {
            k(str, j10 - ((Long) this.f24513b.get(str)).longValue(), zziuVarO);
        }
        if (!this.f24513b.isEmpty()) {
            j(j10 - this.f24515d, zziuVarO);
        }
        l(j10);
    }
}
