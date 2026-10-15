package j5;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class n0 extends g5.b0 {
    public static final Parcelable.Creator<n0> CREATOR = new m0();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private String f30717o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private String f30718p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private List<g5.g0> f30719q;

    private n0() {
    }

    public static n0 V3(List<g5.z> list, String str) {
        Preconditions.k(list);
        Preconditions.g(str);
        n0 n0Var = new n0();
        n0Var.f30719q = new ArrayList();
        for (g5.z zVar : list) {
            if (zVar instanceof g5.g0) {
                n0Var.f30719q.add((g5.g0) zVar);
            }
        }
        n0Var.f30718p = str;
        return n0Var;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, this.f30717o, false);
        SafeParcelWriter.t(parcel, 2, this.f30718p, false);
        SafeParcelWriter.x(parcel, 3, this.f30719q, false);
        SafeParcelWriter.b(parcel, iA);
    }

    @SafeParcelable.Constructor
    n0(@SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param List<g5.g0> list) {
        this.f30717o = str;
        this.f30718p = str2;
        this.f30719q = list;
    }
}
