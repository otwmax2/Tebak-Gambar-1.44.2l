package com.google.android.gms.drive.metadata;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public class CustomPropertyKey extends AbstractSafeParcelable {
    public static final Parcelable.Creator<CustomPropertyKey> CREATOR = new zzc();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final Pattern f7792q = Pattern.compile("[\\w.!@$%^&*()/-]+");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f7793o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f7794p;

    @SafeParcelable.Constructor
    public CustomPropertyKey(@SafeParcelable.Param String str, @SafeParcelable.Param int i10) {
        Preconditions.l(str, SDKConstants.PARAM_KEY);
        Preconditions.b(f7792q.matcher(str).matches(), "key name characters must be alphanumeric or one of .!@$%^&*()-_/");
        boolean z10 = true;
        if (i10 != 0 && i10 != 1) {
            z10 = false;
        }
        Preconditions.b(z10, "visibility must be either PUBLIC or PRIVATE");
        this.f7793o = str;
        this.f7794p = i10;
    }

    public String V3() {
        return this.f7793o;
    }

    public int W3() {
        return this.f7794p;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == getClass()) {
            CustomPropertyKey customPropertyKey = (CustomPropertyKey) obj;
            if (customPropertyKey.V3().equals(this.f7793o) && customPropertyKey.W3() == this.f7794p) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.f7793o;
        int i10 = this.f7794p;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 11);
        sb.append(str);
        sb.append(i10);
        return sb.toString().hashCode();
    }

    public String toString() {
        String str = this.f7793o;
        int i10 = this.f7794p;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 31);
        sb.append("CustomPropertyKey(");
        sb.append(str);
        sb.append(",");
        sb.append(i10);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 2, this.f7793o, false);
        SafeParcelWriter.l(parcel, 3, this.f7794p);
        SafeParcelWriter.b(parcel, iA);
    }
}
