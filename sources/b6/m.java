package b6;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

/* JADX INFO: compiled from: com.google.firebase:firebase-dynamic-links@@19.1.0 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public final class m extends AbstractSafeParcelable {
    public static final Parcelable.Creator<m> CREATOR = new o();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final Uri f4697o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final Uri f4698p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final List<p> f4699q;

    @SafeParcelable.Constructor
    public m(@SafeParcelable.Param Uri uri, @SafeParcelable.Param Uri uri2, @SafeParcelable.Param List<p> list) {
        this.f4697o = uri;
        this.f4698p = uri2;
        this.f4699q = list;
    }

    public final Uri V3() {
        return this.f4698p;
    }

    public final Uri W3() {
        return this.f4697o;
    }

    public final List<p> X3() {
        return this.f4699q;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 1, W3(), i10, false);
        SafeParcelWriter.s(parcel, 2, V3(), i10, false);
        SafeParcelWriter.x(parcel, 3, X3(), false);
        SafeParcelWriter.b(parcel, iA);
    }
}
