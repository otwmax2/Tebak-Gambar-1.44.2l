package j5;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.firebase_auth.zzbg;
import com.google.android.gms.internal.firebase_auth.zzff;
import com.vungle.mediation.BuildConfig;
import g5.o0;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public class e0 extends g5.s {
    public static final Parcelable.Creator<e0> CREATOR = new h0();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private zzff f30680o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private a0 f30681p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private String f30682q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private String f30683r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private List<a0> f30684s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private List<String> f30685t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    private String f30686u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    private Boolean f30687v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SafeParcelable.Field
    private g0 f30688w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @SafeParcelable.Field
    private boolean f30689x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @SafeParcelable.Field
    private o0 f30690y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @SafeParcelable.Field
    private m f30691z;

    @SafeParcelable.Constructor
    e0(@SafeParcelable.Param zzff zzffVar, @SafeParcelable.Param a0 a0Var, @SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param List<a0> list, @SafeParcelable.Param List<String> list2, @SafeParcelable.Param String str3, @SafeParcelable.Param Boolean bool, @SafeParcelable.Param g0 g0Var, @SafeParcelable.Param boolean z10, @SafeParcelable.Param o0 o0Var, @SafeParcelable.Param m mVar) {
        this.f30680o = zzffVar;
        this.f30681p = a0Var;
        this.f30682q = str;
        this.f30683r = str2;
        this.f30684s = list;
        this.f30685t = list2;
        this.f30686u = str3;
        this.f30687v = bool;
        this.f30688w = g0Var;
        this.f30689x = z10;
        this.f30690y = o0Var;
        this.f30691z = mVar;
    }

    @Override // g5.j0
    public String O1() {
        return this.f30681p.O1();
    }

    @Override // g5.s
    public String V3() {
        return this.f30681p.V3();
    }

    @Override // g5.s
    public g5.t X3() {
        return this.f30688w;
    }

    @Override // g5.s
    public /* synthetic */ g5.y Y3() {
        return new i0(this);
    }

    @Override // g5.s
    public Uri Z3() {
        return this.f30681p.X3();
    }

    @Override // g5.s
    public List<? extends g5.j0> a4() {
        return this.f30684s;
    }

    @Override // g5.s
    public String b4() {
        return this.f30681p.Y3();
    }

    @Override // g5.s
    public final String c() {
        return this.f30680o.c4();
    }

    @Override // g5.s
    public boolean c4() {
        g5.u uVarA;
        Boolean bool = this.f30687v;
        if (bool == null || bool.booleanValue()) {
            zzff zzffVar = this.f30680o;
            String strB = BuildConfig.FLAVOR;
            if (zzffVar != null && (uVarA = l.a(zzffVar.Z3())) != null) {
                strB = uVarA.b();
            }
            boolean z10 = true;
            if (a4().size() > 1 || (strB != null && strB.equals("custom"))) {
                z10 = false;
            }
            this.f30687v = Boolean.valueOf(z10);
        }
        return this.f30687v.booleanValue();
    }

    public final List<a0> f() {
        return this.f30684s;
    }

    @Override // g5.s
    public final g5.s f4(List<? extends g5.j0> list) {
        Preconditions.k(list);
        this.f30684s = new ArrayList(list.size());
        this.f30685t = new ArrayList(list.size());
        for (int i10 = 0; i10 < list.size(); i10++) {
            g5.j0 j0Var = list.get(i10);
            if (j0Var.O1().equals("firebase")) {
                this.f30681p = (a0) j0Var;
            } else {
                this.f30685t.add(j0Var.O1());
            }
            this.f30684s.add((a0) j0Var);
        }
        if (this.f30681p == null) {
            this.f30681p = this.f30684s.get(0);
        }
        return this;
    }

    @Override // g5.s
    public final List<String> g4() {
        return this.f30685t;
    }

    @Override // g5.s
    public final void h4(zzff zzffVar) {
        this.f30680o = (zzff) Preconditions.k(zzffVar);
    }

    @Override // g5.s
    public final /* synthetic */ g5.s i4() {
        this.f30687v = Boolean.FALSE;
        return this;
    }

    @Override // g5.s
    public final void j4(List<g5.z> list) {
        this.f30691z = m.V3(list);
    }

    @Override // g5.s
    public final b5.g k4() {
        return b5.g.n(this.f30682q);
    }

    @Override // g5.s
    public final String l4() {
        Map map;
        zzff zzffVar = this.f30680o;
        if (zzffVar == null || zzffVar.Z3() == null || (map = (Map) l.a(this.f30680o.Z3()).a().get("firebase")) == null) {
            return null;
        }
        return (String) map.get("tenant");
    }

    @Override // g5.s
    public final zzff m4() {
        return this.f30680o;
    }

    @Override // g5.s
    public final String n4() {
        return m4().Z3();
    }

    public final e0 o4(String str) {
        this.f30686u = str;
        return this;
    }

    public final void p4(o0 o0Var) {
        this.f30690y = o0Var;
    }

    public final void q4(g0 g0Var) {
        this.f30688w = g0Var;
    }

    public final void r4(boolean z10) {
        this.f30689x = z10;
    }

    public final boolean s4() {
        return this.f30689x;
    }

    public final o0 t4() {
        return this.f30690y;
    }

    public final List<g5.z> u4() {
        m mVar = this.f30691z;
        return mVar != null ? mVar.W3() : zzbg.m();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 1, m4(), i10, false);
        SafeParcelWriter.s(parcel, 2, this.f30681p, i10, false);
        SafeParcelWriter.t(parcel, 3, this.f30682q, false);
        SafeParcelWriter.t(parcel, 4, this.f30683r, false);
        SafeParcelWriter.x(parcel, 5, this.f30684s, false);
        SafeParcelWriter.v(parcel, 6, g4(), false);
        SafeParcelWriter.t(parcel, 7, this.f30686u, false);
        SafeParcelWriter.e(parcel, 8, Boolean.valueOf(c4()), false);
        SafeParcelWriter.s(parcel, 9, X3(), i10, false);
        SafeParcelWriter.c(parcel, 10, this.f30689x);
        SafeParcelWriter.s(parcel, 11, this.f30690y, i10, false);
        SafeParcelWriter.s(parcel, 12, this.f30691z, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }

    public e0(b5.g gVar, List<? extends g5.j0> list) {
        Preconditions.k(gVar);
        this.f30682q = gVar.o();
        this.f30683r = "com.google.firebase.auth.internal.DefaultFirebaseUser";
        this.f30686u = "2";
        f4(list);
    }
}
