package g5;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public class d0 extends d implements Cloneable {
    public static final Parcelable.Creator<d0> CREATOR = new v0();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private String f29858o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private String f29859p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private boolean f29860q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private String f29861r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private boolean f29862s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private String f29863t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    private String f29864u;

    @SafeParcelable.Constructor
    d0(@SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param boolean z10, @SafeParcelable.Param String str3, @SafeParcelable.Param boolean z11, @SafeParcelable.Param String str4, @SafeParcelable.Param String str5) {
        Preconditions.b((z10 && !TextUtils.isEmpty(str3) && TextUtils.isEmpty(str5)) || (z10 && TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str5)) || !((TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) && (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4))), "Cannot create PhoneAuthCredential without either verificationProof, sessionInfo, temporary proof, or enrollment ID.");
        this.f29858o = str;
        this.f29859p = str2;
        this.f29860q = z10;
        this.f29861r = str3;
        this.f29862s = z11;
        this.f29863t = str4;
        this.f29864u = str5;
    }

    @Override // g5.d
    public String V3() {
        return "phone";
    }

    @Override // g5.d
    public String W3() {
        return "phone";
    }

    @Override // g5.d
    public final d X3() {
        return (d0) clone();
    }

    public String Y3() {
        return this.f29859p;
    }

    public final d0 Z3(boolean z10) {
        this.f29862s = false;
        return this;
    }

    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        return new d0(this.f29858o, Y3(), this.f29860q, this.f29861r, this.f29862s, this.f29863t, this.f29864u);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, this.f29858o, false);
        SafeParcelWriter.t(parcel, 2, Y3(), false);
        SafeParcelWriter.c(parcel, 3, this.f29860q);
        SafeParcelWriter.t(parcel, 4, this.f29861r, false);
        SafeParcelWriter.c(parcel, 5, this.f29862s);
        SafeParcelWriter.t(parcel, 6, this.f29863t, false);
        SafeParcelWriter.t(parcel, 7, this.f29864u, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
