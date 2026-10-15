package com.google.android.gms.drive.query;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.query.internal.zzf;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public class SortOrder extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SortOrder> CREATOR = new zzc();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final List<zzf> f7834o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f7835p;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<zzf> f7836a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f7837b = false;
    }

    @SafeParcelable.Constructor
    SortOrder(@SafeParcelable.Param List<zzf> list, @SafeParcelable.Param boolean z10) {
        this.f7834o = list;
        this.f7835p = z10;
    }

    public String toString() {
        return String.format(Locale.US, "SortOrder[%s, %s]", TextUtils.join(",", this.f7834o), Boolean.valueOf(this.f7835p));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.x(parcel, 1, this.f7834o, false);
        SafeParcelWriter.c(parcel, 2, this.f7835p);
        SafeParcelWriter.b(parcel, iA);
    }
}
