package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class c0 {
    private long A;
    private long B;
    private String C;
    private boolean D;
    private long E;
    private long F;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzgi f24004a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f24005b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f24006c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f24007d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f24008e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f24009f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f24010g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f24011h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f24012i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f24013j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f24014k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f24015l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f24016m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f24017n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f24018o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f24019p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f24020q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f24021r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Boolean f24022s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long f24023t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private List f24024u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f24025v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private long f24026w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private long f24027x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private long f24028y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private long f24029z;

    c0(zzgi zzgiVar, String str) {
        Preconditions.k(zzgiVar);
        Preconditions.g(str);
        this.f24004a = zzgiVar;
        this.f24005b = str;
        zzgiVar.B().c();
    }

    public final long A() {
        this.f24004a.B().c();
        return this.f24019p;
    }

    public final void B(long j10) {
        this.f24004a.B().c();
        this.D |= this.f24012i != j10;
        this.f24012i = j10;
    }

    public final void C(long j10) {
        Preconditions.a(j10 >= 0);
        this.f24004a.B().c();
        this.D = (this.f24010g != j10) | this.D;
        this.f24010g = j10;
    }

    public final void D(long j10) {
        this.f24004a.B().c();
        this.D |= this.f24011h != j10;
        this.f24011h = j10;
    }

    public final void E(boolean z10) {
        this.f24004a.B().c();
        this.D |= this.f24018o != z10;
        this.f24018o = z10;
    }

    public final void F(Boolean bool) {
        this.f24004a.B().c();
        boolean z10 = this.D;
        Boolean bool2 = this.f24022s;
        int i10 = zzlp.f24874i;
        this.D = z10 | (!((bool2 == null && bool == null) ? true : bool2 == null ? false : bool2.equals(bool)));
        this.f24022s = bool;
    }

    public final void G(String str) {
        this.f24004a.B().c();
        this.D |= !zzlp.Z(this.f24008e, str);
        this.f24008e = str;
    }

    public final void H(List list) {
        this.f24004a.B().c();
        List list2 = this.f24024u;
        int i10 = zzlp.f24874i;
        if (list2 == null && list == null) {
            return;
        }
        if (list2 != null && list2.equals(list)) {
            return;
        }
        this.D = true;
        this.f24024u = list != null ? new ArrayList(list) : null;
    }

    public final void I(String str) {
        this.f24004a.B().c();
        this.D |= !zzlp.Z(this.f24025v, str);
        this.f24025v = str;
    }

    public final boolean J() {
        this.f24004a.B().c();
        return this.f24020q;
    }

    public final boolean K() {
        this.f24004a.B().c();
        return this.f24018o;
    }

    public final boolean L() {
        this.f24004a.B().c();
        return this.D;
    }

    public final long M() {
        this.f24004a.B().c();
        return this.f24014k;
    }

    public final long N() {
        this.f24004a.B().c();
        return this.E;
    }

    public final long O() {
        this.f24004a.B().c();
        return this.f24029z;
    }

    public final long P() {
        this.f24004a.B().c();
        return this.A;
    }

    public final long Q() {
        this.f24004a.B().c();
        return this.f24028y;
    }

    public final long R() {
        this.f24004a.B().c();
        return this.f24027x;
    }

    public final long S() {
        this.f24004a.B().c();
        return this.B;
    }

    public final long T() {
        this.f24004a.B().c();
        return this.f24026w;
    }

    public final long U() {
        this.f24004a.B().c();
        return this.f24017n;
    }

    public final long V() {
        this.f24004a.B().c();
        return this.f24023t;
    }

    public final long W() {
        this.f24004a.B().c();
        return this.F;
    }

    public final long X() {
        this.f24004a.B().c();
        return this.f24016m;
    }

    public final long Y() {
        this.f24004a.B().c();
        return this.f24012i;
    }

    public final long Z() {
        this.f24004a.B().c();
        return this.f24010g;
    }

    public final String a() {
        this.f24004a.B().c();
        return this.f24008e;
    }

    public final long a0() {
        this.f24004a.B().c();
        return this.f24011h;
    }

    public final String b() {
        this.f24004a.B().c();
        return this.f24025v;
    }

    public final Boolean b0() {
        this.f24004a.B().c();
        return this.f24022s;
    }

    public final List c() {
        this.f24004a.B().c();
        return this.f24024u;
    }

    public final String c0() {
        this.f24004a.B().c();
        return this.f24021r;
    }

    public final void d() {
        this.f24004a.B().c();
        this.D = false;
    }

    public final String d0() {
        this.f24004a.B().c();
        String str = this.C;
        z(null);
        return str;
    }

    public final void e() {
        this.f24004a.B().c();
        long j10 = this.f24010g + 1;
        if (j10 > 2147483647L) {
            this.f24004a.U().r().b("Bundle index overflow. appId", zzey.v(this.f24005b));
            j10 = 0;
        }
        this.D = true;
        this.f24010g = j10;
    }

    public final String e0() {
        this.f24004a.B().c();
        return this.f24005b;
    }

    public final void f(String str) {
        this.f24004a.B().c();
        if (true == TextUtils.isEmpty(str)) {
            str = null;
        }
        this.D |= true ^ zzlp.Z(this.f24021r, str);
        this.f24021r = str;
    }

    public final String f0() {
        this.f24004a.B().c();
        return this.f24006c;
    }

    public final void g(boolean z10) {
        this.f24004a.B().c();
        this.D |= this.f24020q != z10;
        this.f24020q = z10;
    }

    public final String g0() {
        this.f24004a.B().c();
        return this.f24015l;
    }

    public final void h(long j10) {
        this.f24004a.B().c();
        this.D |= this.f24019p != j10;
        this.f24019p = j10;
    }

    public final String h0() {
        this.f24004a.B().c();
        return this.f24013j;
    }

    public final void i(String str) {
        this.f24004a.B().c();
        this.D |= !zzlp.Z(this.f24006c, str);
        this.f24006c = str;
    }

    public final String i0() {
        this.f24004a.B().c();
        return this.f24009f;
    }

    public final void j(String str) {
        this.f24004a.B().c();
        this.D |= !zzlp.Z(this.f24015l, str);
        this.f24015l = str;
    }

    public final String j0() {
        this.f24004a.B().c();
        return this.f24007d;
    }

    public final void k(String str) {
        this.f24004a.B().c();
        this.D |= !zzlp.Z(this.f24013j, str);
        this.f24013j = str;
    }

    public final String k0() {
        this.f24004a.B().c();
        return this.C;
    }

    public final void l(long j10) {
        this.f24004a.B().c();
        this.D |= this.f24014k != j10;
        this.f24014k = j10;
    }

    public final void m(long j10) {
        this.f24004a.B().c();
        this.D |= this.E != j10;
        this.E = j10;
    }

    public final void n(long j10) {
        this.f24004a.B().c();
        this.D |= this.f24029z != j10;
        this.f24029z = j10;
    }

    public final void o(long j10) {
        this.f24004a.B().c();
        this.D |= this.A != j10;
        this.A = j10;
    }

    public final void p(long j10) {
        this.f24004a.B().c();
        this.D |= this.f24028y != j10;
        this.f24028y = j10;
    }

    public final void q(long j10) {
        this.f24004a.B().c();
        this.D |= this.f24027x != j10;
        this.f24027x = j10;
    }

    public final void r(long j10) {
        this.f24004a.B().c();
        this.D |= this.B != j10;
        this.B = j10;
    }

    public final void s(long j10) {
        this.f24004a.B().c();
        this.D |= this.f24026w != j10;
        this.f24026w = j10;
    }

    public final void t(long j10) {
        this.f24004a.B().c();
        this.D |= this.f24017n != j10;
        this.f24017n = j10;
    }

    public final void u(long j10) {
        this.f24004a.B().c();
        this.D |= this.f24023t != j10;
        this.f24023t = j10;
    }

    public final void v(long j10) {
        this.f24004a.B().c();
        this.D |= this.F != j10;
        this.F = j10;
    }

    public final void w(String str) {
        this.f24004a.B().c();
        this.D |= !zzlp.Z(this.f24009f, str);
        this.f24009f = str;
    }

    public final void x(String str) {
        this.f24004a.B().c();
        if (true == TextUtils.isEmpty(str)) {
            str = null;
        }
        this.D |= true ^ zzlp.Z(this.f24007d, str);
        this.f24007d = str;
    }

    public final void y(long j10) {
        this.f24004a.B().c();
        this.D |= this.f24016m != j10;
        this.f24016m = j10;
    }

    public final void z(String str) {
        this.f24004a.B().c();
        this.D |= !zzlp.Z(this.C, str);
        this.C = str;
    }
}
