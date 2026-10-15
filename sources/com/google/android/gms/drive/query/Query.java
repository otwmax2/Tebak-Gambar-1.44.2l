package com.google.android.gms.drive.query;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.drive.DriveSpace;
import com.google.android.gms.drive.query.internal.zzr;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public class Query extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Query> CREATOR = new zzb();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final zzr f7814o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f7815p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final SortOrder f7816q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    final List<String> f7817r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    final boolean f7818s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private final List<DriveSpace> f7819t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    final boolean f7820u;

    @VisibleForTesting
    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<Filter> f7821a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List<String> f7822b = Collections.emptyList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Set<DriveSpace> f7823c = Collections.emptySet();
    }

    @SafeParcelable.Constructor
    Query(@SafeParcelable.Param zzr zzrVar, @SafeParcelable.Param String str, @SafeParcelable.Param SortOrder sortOrder, @SafeParcelable.Param List<String> list, @SafeParcelable.Param boolean z10, @SafeParcelable.Param List<DriveSpace> list2, @SafeParcelable.Param boolean z11) {
        this.f7814o = zzrVar;
        this.f7815p = str;
        this.f7816q = sortOrder;
        this.f7817r = list;
        this.f7818s = z10;
        this.f7819t = list2;
        this.f7820u = z11;
    }

    public String toString() {
        return String.format(Locale.US, "Query[%s,%s,PageToken=%s,Spaces=%s]", this.f7814o, this.f7816q, this.f7815p, this.f7819t);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 1, this.f7814o, i10, false);
        SafeParcelWriter.t(parcel, 3, this.f7815p, false);
        SafeParcelWriter.s(parcel, 4, this.f7816q, i10, false);
        SafeParcelWriter.v(parcel, 5, this.f7817r, false);
        SafeParcelWriter.c(parcel, 6, this.f7818s);
        SafeParcelWriter.x(parcel, 7, this.f7819t, false);
        SafeParcelWriter.c(parcel, 8, this.f7820u);
        SafeParcelWriter.b(parcel, iA);
    }
}
