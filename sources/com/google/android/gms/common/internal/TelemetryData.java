package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
@SafeParcelable.Class
public class TelemetryData extends AbstractSafeParcelable {
    public static final Parcelable.Creator<TelemetryData> CREATOR = new zaab();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final int f7430o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field
    private List<MethodInvocation> f7431p;

    @SafeParcelable.Constructor
    public TelemetryData(@SafeParcelable.Param int i10, @SafeParcelable.Param @Nullable List<MethodInvocation> list) {
        this.f7430o = i10;
        this.f7431p = list;
    }

    public final int V3() {
        return this.f7430o;
    }

    public final List<MethodInvocation> W3() {
        return this.f7431p;
    }

    public final void X3(MethodInvocation methodInvocation) {
        if (this.f7431p == null) {
            this.f7431p = new ArrayList();
        }
        this.f7431p.add(methodInvocation);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.l(parcel, 1, this.f7430o);
        SafeParcelWriter.x(parcel, 2, this.f7431p, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
