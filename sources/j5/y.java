package j5;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import g5.o0;
import java.util.List;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class y implements SafeParcelable {
    public static final Parcelable.Creator<y> CREATOR = new b0();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private e0 f30739o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private x f30740p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private o0 f30741q;

    @SafeParcelable.Constructor
    y(@SafeParcelable.Param e0 e0Var, @SafeParcelable.Param x xVar, @SafeParcelable.Param o0 o0Var) {
        this.f30739o = e0Var;
        this.f30740p = xVar;
        this.f30741q = o0Var;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final g5.c h() {
        return this.f30740p;
    }

    public final g5.s t() {
        return this.f30739o;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 1, t(), i10, false);
        SafeParcelWriter.s(parcel, 2, h(), i10, false);
        SafeParcelWriter.s(parcel, 3, this.f30741q, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }

    public y(e0 e0Var) {
        e0 e0Var2 = (e0) Preconditions.k(e0Var);
        this.f30739o = e0Var2;
        List<a0> listF = e0Var2.f();
        this.f30740p = null;
        for (int i10 = 0; i10 < listF.size(); i10++) {
            if (!TextUtils.isEmpty(listF.get(i10).b4())) {
                this.f30740p = new x(listF.get(i10).O1(), listF.get(i10).b4(), e0Var.s4());
            }
        }
        if (this.f30740p == null) {
            this.f30740p = new x(e0Var.s4());
        }
        this.f30741q = e0Var.t4();
    }
}
