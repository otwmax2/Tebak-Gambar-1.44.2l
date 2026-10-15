package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.CollectionUtils;
import java.util.Set;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
@ShowFirstParty
@SafeParcelable.Class
@SafeParcelable.Reserved
public class DriveSpace extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<DriveSpace> CREATOR = new zzm();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final DriveSpace f7722p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final DriveSpace f7723q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final DriveSpace f7724r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final Set<DriveSpace> f7725s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final String f7726t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final Pattern f7727u;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f7728o;

    static {
        DriveSpace driveSpace = new DriveSpace("DRIVE");
        f7722p = driveSpace;
        DriveSpace driveSpace2 = new DriveSpace("APP_DATA_FOLDER");
        f7723q = driveSpace2;
        DriveSpace driveSpace3 = new DriveSpace(ShareConstants.PHOTOS);
        f7724r = driveSpace3;
        Set<DriveSpace> setF = CollectionUtils.f(driveSpace, driveSpace2, driveSpace3);
        f7725s = setF;
        f7726t = TextUtils.join(",", setF.toArray());
        f7727u = Pattern.compile("[A-Z0-9_]*");
    }

    @SafeParcelable.Constructor
    DriveSpace(@SafeParcelable.Param String str) {
        this.f7728o = (String) Preconditions.k(str);
    }

    public boolean equals(Object obj) {
        if (obj == null || obj.getClass() != DriveSpace.class) {
            return false;
        }
        return this.f7728o.equals(((DriveSpace) obj).f7728o);
    }

    public int hashCode() {
        return this.f7728o.hashCode() ^ 1247068382;
    }

    public String toString() {
        return this.f7728o;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 2, this.f7728o, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
