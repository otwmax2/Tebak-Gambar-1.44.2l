package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
public final class ConnectionResult extends AbstractSafeParcelable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.VersionField
    final int f6899o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f6900p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final PendingIntent f6901q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f6902r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @ShowFirstParty
    @KeepForSdk
    public static final ConnectionResult f6898s = new ConnectionResult(0);
    public static final Parcelable.Creator<ConnectionResult> CREATOR = new zzb();

    public ConnectionResult(int i10) {
        this(i10, null, null);
    }

    @SafeParcelable.Constructor
    ConnectionResult(@SafeParcelable.Param int i10, @SafeParcelable.Param int i11, @SafeParcelable.Param PendingIntent pendingIntent, @SafeParcelable.Param String str) {
        this.f6899o = i10;
        this.f6900p = i11;
        this.f6901q = pendingIntent;
        this.f6902r = str;
    }

    static String a4(int i10) {
        if (i10 == 99) {
            return "UNFINISHED";
        }
        if (i10 == 1500) {
            return "DRIVE_EXTERNAL_STORAGE_REQUIRED";
        }
        switch (i10) {
            case -1:
                return "UNKNOWN";
            case 0:
                return "SUCCESS";
            case 1:
                return "SERVICE_MISSING";
            case 2:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case 3:
                return "SERVICE_DISABLED";
            case 4:
                return "SIGN_IN_REQUIRED";
            case 5:
                return "INVALID_ACCOUNT";
            case 6:
                return "RESOLUTION_REQUIRED";
            case 7:
                return "NETWORK_ERROR";
            case 8:
                return "INTERNAL_ERROR";
            case 9:
                return "SERVICE_INVALID";
            case 10:
                return "DEVELOPER_ERROR";
            case 11:
                return "LICENSE_CHECK_FAILED";
            default:
                switch (i10) {
                    case 13:
                        return "CANCELED";
                    case 14:
                        return "TIMEOUT";
                    case 15:
                        return "INTERRUPTED";
                    case 16:
                        return "API_UNAVAILABLE";
                    case 17:
                        return "SIGN_IN_FAILED";
                    case 18:
                        return "SERVICE_UPDATING";
                    case 19:
                        return "SERVICE_MISSING_PERMISSION";
                    case 20:
                        return "RESTRICTED_PROFILE";
                    case 21:
                        return "API_VERSION_UPDATE_REQUIRED";
                    case 22:
                        return "RESOLUTION_ACTIVITY_NOT_FOUND";
                    case 23:
                        return "API_DISABLED";
                    case 24:
                        return "API_DISABLED_FOR_CONNECTION";
                    default:
                        return "UNKNOWN_ERROR_CODE(" + i10 + ")";
                }
        }
    }

    public int V3() {
        return this.f6900p;
    }

    public String W3() {
        return this.f6902r;
    }

    public PendingIntent X3() {
        return this.f6901q;
    }

    public boolean Y3() {
        return (this.f6900p == 0 || this.f6901q == null) ? false : true;
    }

    public boolean Z3() {
        return this.f6900p == 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConnectionResult)) {
            return false;
        }
        ConnectionResult connectionResult = (ConnectionResult) obj;
        return this.f6900p == connectionResult.f6900p && Objects.b(this.f6901q, connectionResult.f6901q) && Objects.b(this.f6902r, connectionResult.f6902r);
    }

    public int hashCode() {
        return Objects.c(Integer.valueOf(this.f6900p), this.f6901q, this.f6902r);
    }

    public String toString() {
        Objects.ToStringHelper toStringHelperD = Objects.d(this);
        toStringHelperD.a("statusCode", a4(this.f6900p));
        toStringHelperD.a("resolution", this.f6901q);
        toStringHelperD.a("message", this.f6902r);
        return toStringHelperD.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f6899o);
        SafeParcelWriter.l(parcel, 2, V3());
        SafeParcelWriter.s(parcel, 3, X3(), i10, false);
        SafeParcelWriter.t(parcel, 4, W3(), false);
        SafeParcelWriter.b(parcel, iA);
    }

    public ConnectionResult(int i10, PendingIntent pendingIntent) {
        this(i10, pendingIntent, null);
    }

    public ConnectionResult(int i10, PendingIntent pendingIntent, String str) {
        this(1, i10, pendingIntent, str);
    }
}
