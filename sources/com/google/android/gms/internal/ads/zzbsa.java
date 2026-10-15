package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
@SafeParcelable.Class
public final class zzbsa extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbsa> CREATOR = new zzbsb();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public final View f11199o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final Map f11200p;

    @SafeParcelable.Constructor
    public zzbsa(@SafeParcelable.Param IBinder iBinder, @SafeParcelable.Param IBinder iBinder2) {
        this.f11199o = (View) ObjectWrapper.t1(IObjectWrapper.Stub.X0(iBinder));
        this.f11200p = (Map) ObjectWrapper.t1(IObjectWrapper.Stub.X0(iBinder2));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.k(parcel, 1, ObjectWrapper.Q4(this.f11199o).asBinder(), false);
        SafeParcelWriter.k(parcel, 2, ObjectWrapper.Q4(this.f11200p).asBinder(), false);
        SafeParcelWriter.b(parcel, iA);
    }
}
