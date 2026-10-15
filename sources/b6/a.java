package b6;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.firebase:firebase-dynamic-links@@19.1.0 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
public class a extends AbstractSafeParcelable {
    public static final Parcelable.Creator<a> CREATOR = new b();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private String f4682o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private String f4683p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private int f4684q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private long f4685r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private Bundle f4686s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private Uri f4687t;

    @SafeParcelable.Constructor
    public a(@SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param int i10, @SafeParcelable.Param long j10, @SafeParcelable.Param Bundle bundle, @SafeParcelable.Param Uri uri) {
        this.f4685r = 0L;
        this.f4686s = null;
        this.f4682o = str;
        this.f4683p = str2;
        this.f4684q = i10;
        this.f4685r = j10;
        this.f4686s = bundle;
        this.f4687t = uri;
    }

    public final long V3() {
        return this.f4685r;
    }

    public final void W3(long j10) {
        this.f4685r = j10;
    }

    public final String X3() {
        return this.f4683p;
    }

    public final Bundle Y3() {
        Bundle bundle = this.f4686s;
        return bundle == null ? new Bundle() : bundle;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, this.f4682o, false);
        SafeParcelWriter.t(parcel, 2, this.f4683p, false);
        SafeParcelWriter.l(parcel, 3, this.f4684q);
        SafeParcelWriter.p(parcel, 4, this.f4685r);
        SafeParcelWriter.f(parcel, 5, Y3(), false);
        SafeParcelWriter.s(parcel, 6, this.f4687t, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
