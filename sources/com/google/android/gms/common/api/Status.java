package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
public final class Status extends AbstractSafeParcelable implements Result, ReflectedParcelable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.VersionField
    final int f6979o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f6980p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6981q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final PendingIntent f6982r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final ConnectionResult f6983s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @ShowFirstParty
    @VisibleForTesting
    @KeepForSdk
    public static final Status f6972t = new Status(-1);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @ShowFirstParty
    @VisibleForTesting
    @KeepForSdk
    public static final Status f6973u = new Status(0);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @ShowFirstParty
    @KeepForSdk
    public static final Status f6974v = new Status(14);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @ShowFirstParty
    @KeepForSdk
    public static final Status f6975w = new Status(8);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @ShowFirstParty
    @KeepForSdk
    public static final Status f6976x = new Status(15);

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @ShowFirstParty
    @KeepForSdk
    public static final Status f6977y = new Status(16);

    @ShowFirstParty
    public static final Status A = new Status(17);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @KeepForSdk
    public static final Status f6978z = new Status(18);
    public static final Parcelable.Creator<Status> CREATOR = new zzb();

    public Status(int i10) {
        this(i10, (String) null);
    }

    @SafeParcelable.Constructor
    Status(@SafeParcelable.Param int i10, @SafeParcelable.Param int i11, @SafeParcelable.Param String str, @SafeParcelable.Param PendingIntent pendingIntent, @SafeParcelable.Param ConnectionResult connectionResult) {
        this.f6979o = i10;
        this.f6980p = i11;
        this.f6981q = str;
        this.f6982r = pendingIntent;
        this.f6983s = connectionResult;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status V2() {
        return this;
    }

    public ConnectionResult V3() {
        return this.f6983s;
    }

    public PendingIntent W3() {
        return this.f6982r;
    }

    public int X3() {
        return this.f6980p;
    }

    public String Y3() {
        return this.f6981q;
    }

    @VisibleForTesting
    public boolean Z3() {
        return this.f6982r != null;
    }

    public boolean a4() {
        return this.f6980p <= 0;
    }

    public void b4(Activity activity, int i10) throws IntentSender.SendIntentException {
        if (Z3()) {
            PendingIntent pendingIntent = this.f6982r;
            Preconditions.k(pendingIntent);
            activity.startIntentSenderForResult(pendingIntent.getIntentSender(), i10, null, 0, 0, 0);
        }
    }

    public final String c4() {
        String str = this.f6981q;
        return str != null ? str : CommonStatusCodes.a(this.f6980p);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.f6979o == status.f6979o && this.f6980p == status.f6980p && Objects.b(this.f6981q, status.f6981q) && Objects.b(this.f6982r, status.f6982r) && Objects.b(this.f6983s, status.f6983s);
    }

    public int hashCode() {
        return Objects.c(Integer.valueOf(this.f6979o), Integer.valueOf(this.f6980p), this.f6981q, this.f6982r, this.f6983s);
    }

    public String toString() {
        Objects.ToStringHelper toStringHelperD = Objects.d(this);
        toStringHelperD.a("statusCode", c4());
        toStringHelperD.a("resolution", this.f6982r);
        return toStringHelperD.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, X3());
        SafeParcelWriter.t(parcel, 2, Y3(), false);
        SafeParcelWriter.s(parcel, 3, this.f6982r, i10, false);
        SafeParcelWriter.s(parcel, 4, V3(), i10, false);
        SafeParcelWriter.l(parcel, 1000, this.f6979o);
        SafeParcelWriter.b(parcel, iA);
    }

    public Status(int i10, String str) {
        this(1, i10, str, null, null);
    }

    public Status(int i10, String str, PendingIntent pendingIntent) {
        this(1, i10, str, pendingIntent, null);
    }

    public Status(ConnectionResult connectionResult, String str) {
        this(connectionResult, str, 17);
    }

    @KeepForSdk
    @Deprecated
    public Status(ConnectionResult connectionResult, String str, int i10) {
        this(1, i10, str, connectionResult.X3(), connectionResult);
    }
}
