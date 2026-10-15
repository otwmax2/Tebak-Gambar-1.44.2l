package g5;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public class e0 extends AbstractSafeParcelable {
    public static final Parcelable.Creator<e0> CREATOR = new p0();

    @SafeParcelable.Constructor
    e0() {
    }

    public static e0 V3() {
        return new e0();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        SafeParcelWriter.b(parcel, SafeParcelWriter.a(parcel));
    }
}
