package j5;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.firebase_auth.zzej;
import com.google.firebase.auth.FirebaseAuth;
import g5.o0;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class k0 extends g5.a0 {
    public static final Parcelable.Creator<k0> CREATOR = new l0();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final List<g5.g0> f30710o = new ArrayList();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final n0 f30711p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f30712q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final o0 f30713r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final e0 f30714s;

    @SafeParcelable.Constructor
    public k0(@SafeParcelable.Param List<g5.g0> list, @SafeParcelable.Param n0 n0Var, @SafeParcelable.Param String str, @SafeParcelable.Param o0 o0Var, @SafeParcelable.Param e0 e0Var) {
        for (g5.g0 g0Var : list) {
            if (g0Var instanceof g5.g0) {
                this.f30710o.add(g0Var);
            }
        }
        this.f30711p = (n0) Preconditions.k(n0Var);
        this.f30712q = Preconditions.g(str);
        this.f30713r = o0Var;
        this.f30714s = e0Var;
    }

    public static k0 W3(zzej zzejVar, FirebaseAuth firebaseAuth, g5.s sVar) {
        List<g5.z> listX3 = zzejVar.X3();
        ArrayList arrayList = new ArrayList();
        for (g5.z zVar : listX3) {
            if (zVar instanceof g5.g0) {
                arrayList.add((g5.g0) zVar);
            }
        }
        return new k0(arrayList, n0.V3(zzejVar.X3(), zzejVar.V3()), firebaseAuth.m().o(), zzejVar.W3(), (e0) sVar);
    }

    @Override // g5.a0
    public final g5.b0 V3() {
        return this.f30711p;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.x(parcel, 1, this.f30710o, false);
        SafeParcelWriter.s(parcel, 2, V3(), i10, false);
        SafeParcelWriter.t(parcel, 3, this.f30712q, false);
        SafeParcelWriter.s(parcel, 4, this.f30713r, i10, false);
        SafeParcelWriter.s(parcel, 5, this.f30714s, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
