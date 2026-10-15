package g5;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public class k0 extends AbstractSafeParcelable {
    public static final Parcelable.Creator<k0> CREATOR = new m0();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private String f29880o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private String f29881p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private boolean f29882q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private boolean f29883r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Uri f29884s;

    @SafeParcelable.Constructor
    k0(@SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param boolean z10, @SafeParcelable.Param boolean z11) {
        this.f29880o = str;
        this.f29881p = str2;
        this.f29882q = z10;
        this.f29883r = z11;
        this.f29884s = TextUtils.isEmpty(str2) ? null : Uri.parse(str2);
    }

    public String s() {
        return this.f29880o;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 2, s(), false);
        SafeParcelWriter.t(parcel, 3, this.f29881p, false);
        SafeParcelWriter.c(parcel, 4, this.f29882q);
        SafeParcelWriter.c(parcel, 5, this.f29883r);
        SafeParcelWriter.b(parcel, iA);
    }
}
