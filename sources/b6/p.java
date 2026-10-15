package b6;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.firebase:firebase-dynamic-links@@19.1.0 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class p extends AbstractSafeParcelable {
    public static final Parcelable.Creator<p> CREATOR = new q();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    @SafeParcelable.Reserved
    private final String f4700o;

    @SafeParcelable.Constructor
    public p(@SafeParcelable.Param String str) {
        this.f4700o = str;
    }

    public final String V3() {
        return this.f4700o;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 2, V3(), false);
        SafeParcelWriter.b(parcel, iA);
    }
}
