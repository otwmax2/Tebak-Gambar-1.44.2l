package com.google.android.gms.internal.ads;

import android.os.Parcelable;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfak implements zzfaj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    private final ConcurrentHashMap f17805a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfaq f17806b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzfam f17807c = new zzfam();

    public zzfak(zzfaq zzfaqVar) {
        this.f17805a = new ConcurrentHashMap(zzfaqVar.f17825t);
        this.f17806b = zzfaqVar;
    }

    private final void e() {
        Parcelable.Creator<zzfaq> creator = zzfaq.CREATOR;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.U5)).booleanValue()) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f17806b.f17823r);
            sb.append(" PoolCollection");
            sb.append(this.f17807c.b());
            int i10 = 0;
            for (Map.Entry entry : this.f17805a.entrySet()) {
                i10++;
                sb.append(i10);
                sb.append(". ");
                sb.append(entry.getValue());
                sb.append("#");
                sb.append(((zzfat) entry.getKey()).hashCode());
                sb.append("    ");
                for (int i11 = 0; i11 < ((zzfai) entry.getValue()).b(); i11++) {
                    sb.append("[O]");
                }
                for (int iB = ((zzfai) entry.getValue()).b(); iB < this.f17806b.f17825t; iB++) {
                    sb.append("[ ]");
                }
                sb.append("\n");
                sb.append(((zzfai) entry.getValue()).g());
                sb.append("\n");
            }
            while (i10 < this.f17806b.f17824s) {
                i10++;
                sb.append(i10);
                sb.append(".\n");
            }
            zzbza.b(sb.toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfaj
    public final synchronized boolean a(zzfat zzfatVar) {
        zzfai zzfaiVar = (zzfai) this.f17805a.get(zzfatVar);
        if (zzfaiVar != null) {
            return zzfaiVar.b() < this.f17806b.f17825t;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzfaj
    public final synchronized zzfas b(zzfat zzfatVar) {
        zzfas zzfasVarE;
        zzfai zzfaiVar = (zzfai) this.f17805a.get(zzfatVar);
        if (zzfaiVar != null) {
            zzfasVarE = zzfaiVar.e();
            if (zzfasVarE == null) {
                this.f17807c.e();
            }
            zzfbg zzfbgVarF = zzfaiVar.f();
            if (zzfasVarE != null) {
                zzawt zzawtVarI = zzawz.I();
                zzawr zzawrVarI = zzaws.I();
                zzawrVarI.r(2);
                zzawv zzawvVarI = zzaww.I();
                zzawvVarI.o(zzfbgVarF.f17858o);
                zzawvVarI.p(zzfbgVarF.f17859p);
                zzawrVarI.o(zzawvVarI);
                zzawtVarI.o(zzawrVarI);
                zzfasVarE.f17832a.zzb().c().f((zzawz) zzawtVarI.k());
            }
            e();
        } else {
            this.f17807c.f();
            e();
            zzfasVarE = null;
        }
        return zzfasVarE;
    }

    @Override // com.google.android.gms.internal.ads.zzfaj
    public final synchronized boolean c(zzfat zzfatVar, zzfas zzfasVar) {
        boolean zH;
        zzfai zzfaiVar = (zzfai) this.f17805a.get(zzfatVar);
        zzfasVar.f17835d = com.google.android.gms.ads.internal.zzt.b().a();
        if (zzfaiVar == null) {
            zzfaq zzfaqVar = this.f17806b;
            zzfaiVar = new zzfai(zzfaqVar.f17825t, zzfaqVar.f17826u * 1000);
            int size = this.f17805a.size();
            zzfaq zzfaqVar2 = this.f17806b;
            if (size == zzfaqVar2.f17824s) {
                int i10 = zzfaqVar2.A;
                int i11 = i10 - 1;
                zzfat zzfatVar2 = null;
                if (i10 == 0) {
                    throw null;
                }
                long jC = Long.MAX_VALUE;
                if (i11 == 0) {
                    for (Map.Entry entry : this.f17805a.entrySet()) {
                        if (((zzfai) entry.getValue()).c() < jC) {
                            jC = ((zzfai) entry.getValue()).c();
                            zzfatVar2 = (zzfat) entry.getKey();
                        }
                    }
                    if (zzfatVar2 != null) {
                        this.f17805a.remove(zzfatVar2);
                    }
                } else if (i11 == 1) {
                    for (Map.Entry entry2 : this.f17805a.entrySet()) {
                        if (((zzfai) entry2.getValue()).d() < jC) {
                            jC = ((zzfai) entry2.getValue()).d();
                            zzfatVar2 = (zzfat) entry2.getKey();
                        }
                    }
                    if (zzfatVar2 != null) {
                        this.f17805a.remove(zzfatVar2);
                    }
                } else if (i11 == 2) {
                    int iA = Integer.MAX_VALUE;
                    for (Map.Entry entry3 : this.f17805a.entrySet()) {
                        if (((zzfai) entry3.getValue()).a() < iA) {
                            iA = ((zzfai) entry3.getValue()).a();
                            zzfatVar2 = (zzfat) entry3.getKey();
                        }
                    }
                    if (zzfatVar2 != null) {
                        this.f17805a.remove(zzfatVar2);
                    }
                }
                this.f17807c.g();
            }
            this.f17805a.put(zzfatVar, zzfaiVar);
            this.f17807c.d();
        }
        zH = zzfaiVar.h(zzfasVar);
        this.f17807c.c();
        zzfal zzfalVarA = this.f17807c.a();
        zzfbg zzfbgVarF = zzfaiVar.f();
        zzawt zzawtVarI = zzawz.I();
        zzawr zzawrVarI = zzaws.I();
        zzawrVarI.r(2);
        zzawx zzawxVarI = zzawy.I();
        zzawxVarI.o(zzfalVarA.f17808o);
        zzawxVarI.p(zzfalVarA.f17809p);
        zzawxVarI.q(zzfbgVarF.f17859p);
        zzawrVarI.q(zzawxVarI);
        zzawtVarI.o(zzawrVarI);
        zzfasVar.f17832a.zzb().c().v0((zzawz) zzawtVarI.k());
        e();
        return zH;
    }

    @Override // com.google.android.gms.internal.ads.zzfaj
    @Deprecated
    public final zzfat d(com.google.android.gms.ads.internal.client.zzl zzlVar, String str, com.google.android.gms.ads.internal.client.zzw zzwVar) {
        return new zzfau(zzlVar, str, new zzbtr(this.f17806b.f17821p).a().f11333k, this.f17806b.f17827v, zzwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfaj
    public final zzfaq zza() {
        return this.f17806b;
    }
}
