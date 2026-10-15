package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zznh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f20234a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f20235b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f20236c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzss f20237d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f20238e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f20239f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final /* synthetic */ zzni f20240g;

    public zznh(zzni zzniVar, String str, int i10, zzss zzssVar) {
        this.f20240g = zzniVar;
        this.f20234a = str;
        this.f20235b = i10;
        this.f20236c = zzssVar == null ? -1L : zzssVar.f11013d;
        if (zzssVar == null || !zzssVar.b()) {
            return;
        }
        this.f20237d = zzssVar;
    }

    public final void g(int i10, zzss zzssVar) {
        if (this.f20236c == -1 && i10 == this.f20235b && zzssVar != null) {
            this.f20236c = zzssVar.f11013d;
        }
    }

    public final boolean j(int i10, zzss zzssVar) {
        if (zzssVar == null) {
            return i10 == this.f20235b;
        }
        zzss zzssVar2 = this.f20237d;
        return zzssVar2 == null ? !zzssVar.b() && zzssVar.f11013d == this.f20236c : zzssVar.f11013d == zzssVar2.f11013d && zzssVar.f11011b == zzssVar2.f11011b && zzssVar.f11012c == zzssVar2.f11012c;
    }

    public final boolean k(zzlc zzlcVar) {
        zzss zzssVar = zzlcVar.f20110d;
        if (zzssVar == null) {
            return this.f20235b != zzlcVar.f20109c;
        }
        long j10 = this.f20236c;
        if (j10 == -1) {
            return false;
        }
        if (zzssVar.f11013d > j10) {
            return true;
        }
        if (this.f20237d == null) {
            return false;
        }
        int iA = zzlcVar.f20108b.a(zzssVar.f11010a);
        int iA2 = zzlcVar.f20108b.a(this.f20237d.f11010a);
        zzss zzssVar2 = zzlcVar.f20110d;
        if (zzssVar2.f11013d < this.f20237d.f11013d || iA < iA2) {
            return false;
        }
        if (iA > iA2) {
            return true;
        }
        if (!zzssVar2.b()) {
            int i10 = zzlcVar.f20110d.f11014e;
            return i10 == -1 || i10 > this.f20237d.f11011b;
        }
        zzss zzssVar3 = zzlcVar.f20110d;
        int i11 = zzssVar3.f11011b;
        int i12 = zzssVar3.f11012c;
        zzss zzssVar4 = this.f20237d;
        int i13 = zzssVar4.f11011b;
        if (i11 <= i13) {
            return i11 == i13 && i12 > zzssVar4.f11012c;
        }
        return true;
    }

    public final boolean l(zzcn zzcnVar, zzcn zzcnVar2) {
        int i10 = this.f20235b;
        if (i10 < zzcnVar.c()) {
            zzcnVar.e(i10, this.f20240g.f20243a, 0L);
            for (int i11 = this.f20240g.f20243a.f13474m; i11 <= this.f20240g.f20243a.f13475n; i11++) {
                int iA = zzcnVar2.a(zzcnVar.f(i11));
                if (iA != -1) {
                    i10 = zzcnVar2.d(iA, this.f20240g.f20244b, false).f13166c;
                    break;
                }
            }
            i10 = -1;
        } else if (i10 >= zzcnVar2.c()) {
            i10 = -1;
        }
        this.f20235b = i10;
        if (i10 == -1) {
            return false;
        }
        zzss zzssVar = this.f20237d;
        return zzssVar == null || zzcnVar2.a(zzssVar.f11010a) != -1;
    }
}
