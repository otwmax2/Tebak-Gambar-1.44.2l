package j5;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
public final class x implements g5.c {
    public static final Parcelable.Creator<x> CREATOR = new z();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f30735o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f30736p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Map<String, Object> f30737q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private boolean f30738r;

    @SafeParcelable.Constructor
    public x(@SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param boolean z10) {
        Preconditions.g(str);
        Preconditions.g(str2);
        this.f30735o = str;
        this.f30736p = str2;
        this.f30737q = k.d(str2);
        this.f30738r = z10;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Nullable
    public final String h() {
        return this.f30735o;
    }

    public final boolean t() {
        return this.f30738r;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, h(), false);
        SafeParcelWriter.t(parcel, 2, this.f30736p, false);
        SafeParcelWriter.c(parcel, 3, t());
        SafeParcelWriter.b(parcel, iA);
    }

    public x(boolean z10) {
        this.f30738r = z10;
        this.f30736p = null;
        this.f30735o = null;
        this.f30737q = null;
    }
}
