package g5;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public class a extends AbstractSafeParcelable {
    public static final Parcelable.Creator<a> CREATOR = new n0();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f29841o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f29842p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f29843q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f29844r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f29845s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f29846t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f29847u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    private String f29848v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SafeParcelable.Field
    private int f29849w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @SafeParcelable.Field
    private String f29850x;

    @SafeParcelable.Constructor
    a(@SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param String str3, @SafeParcelable.Param String str4, @SafeParcelable.Param boolean z10, @SafeParcelable.Param String str5, @SafeParcelable.Param boolean z11, @SafeParcelable.Param String str6, @SafeParcelable.Param int i10, @SafeParcelable.Param String str7) {
        this.f29841o = str;
        this.f29842p = str2;
        this.f29843q = str3;
        this.f29844r = str4;
        this.f29845s = z10;
        this.f29846t = str5;
        this.f29847u = z11;
        this.f29848v = str6;
        this.f29849w = i10;
        this.f29850x = str7;
    }

    public boolean V3() {
        return this.f29847u;
    }

    public boolean W3() {
        return this.f29845s;
    }

    public String X3() {
        return this.f29846t;
    }

    public String Y3() {
        return this.f29844r;
    }

    public String Z3() {
        return this.f29842p;
    }

    public String a4() {
        return this.f29841o;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, a4(), false);
        SafeParcelWriter.t(parcel, 2, Z3(), false);
        SafeParcelWriter.t(parcel, 3, this.f29843q, false);
        SafeParcelWriter.t(parcel, 4, Y3(), false);
        SafeParcelWriter.c(parcel, 5, W3());
        SafeParcelWriter.t(parcel, 6, X3(), false);
        SafeParcelWriter.c(parcel, 7, V3());
        SafeParcelWriter.t(parcel, 8, this.f29848v, false);
        SafeParcelWriter.l(parcel, 9, this.f29849w);
        SafeParcelWriter.t(parcel, 10, this.f29850x, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
