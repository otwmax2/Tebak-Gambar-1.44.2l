package g5;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.firebase_auth.zzfy;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public class o0 extends c0 {
    public static final Parcelable.Creator<o0> CREATOR = new q0();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f29886o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f29887p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f29888q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final zzfy f29889r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f29890s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f29891t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f29892u;

    @SafeParcelable.Constructor
    o0(@SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param String str3, @SafeParcelable.Param zzfy zzfyVar, @SafeParcelable.Param String str4, @SafeParcelable.Param String str5, @SafeParcelable.Param String str6) {
        this.f29886o = str;
        this.f29887p = str2;
        this.f29888q = str3;
        this.f29889r = zzfyVar;
        this.f29890s = str4;
        this.f29891t = str5;
        this.f29892u = str6;
    }

    public static zzfy b4(o0 o0Var, String str) {
        Preconditions.k(o0Var);
        zzfy zzfyVar = o0Var.f29889r;
        return zzfyVar != null ? zzfyVar : new zzfy(o0Var.Z3(), o0Var.Y3(), o0Var.V3(), null, o0Var.a4(), null, str, o0Var.f29890s, o0Var.f29892u);
    }

    public static o0 c4(zzfy zzfyVar) {
        Preconditions.l(zzfyVar, "Must specify a non-null webSignInCredential");
        return new o0(null, null, null, zzfyVar, null, null, null);
    }

    @Override // g5.d
    public String V3() {
        return this.f29886o;
    }

    @Override // g5.d
    public String W3() {
        return this.f29886o;
    }

    @Override // g5.d
    public final d X3() {
        return new o0(this.f29886o, this.f29887p, this.f29888q, this.f29889r, this.f29890s, this.f29891t, this.f29892u);
    }

    @Override // g5.c0
    public String Y3() {
        return this.f29888q;
    }

    @Override // g5.c0
    public String Z3() {
        return this.f29887p;
    }

    @Override // g5.c0
    public String a4() {
        return this.f29891t;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, V3(), false);
        SafeParcelWriter.t(parcel, 2, Z3(), false);
        SafeParcelWriter.t(parcel, 3, Y3(), false);
        SafeParcelWriter.s(parcel, 4, this.f29889r, i10, false);
        SafeParcelWriter.t(parcel, 5, this.f29890s, false);
        SafeParcelWriter.t(parcel, 6, a4(), false);
        SafeParcelWriter.t(parcel, 7, this.f29892u, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
