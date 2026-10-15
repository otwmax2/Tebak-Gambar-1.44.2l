package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzy;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
public final class zzs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzs> CREATOR = new zzt();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f7687o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field
    private final h f7688p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f7689q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f7690r;

    @SafeParcelable.Constructor
    zzs(@SafeParcelable.Param String str, @SafeParcelable.Param @Nullable IBinder iBinder, @SafeParcelable.Param boolean z10, @SafeParcelable.Param boolean z11) {
        this.f7687o = str;
        i iVar = null;
        if (iBinder != null) {
            try {
                IObjectWrapper iObjectWrapperD = zzy.X0(iBinder).d();
                byte[] bArr = iObjectWrapperD == null ? null : (byte[]) ObjectWrapper.t1(iObjectWrapperD);
                if (bArr != null) {
                    iVar = new i(bArr);
                } else {
                    Log.e("GoogleCertificatesQuery", "Could not unwrap certificate");
                }
            } catch (RemoteException e10) {
                Log.e("GoogleCertificatesQuery", "Could not unwrap certificate", e10);
            }
        }
        this.f7688p = iVar;
        this.f7689q = z10;
        this.f7690r = z11;
    }

    zzs(String str, @Nullable h hVar, boolean z10, boolean z11) {
        this.f7687o = str;
        this.f7688p = hVar;
        this.f7689q = z10;
        this.f7690r = z11;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, this.f7687o, false);
        h hVar = this.f7688p;
        if (hVar == null) {
            Log.w("GoogleCertificatesQuery", "certificate binder is null");
            hVar = null;
        }
        SafeParcelWriter.k(parcel, 2, hVar, false);
        SafeParcelWriter.c(parcel, 3, this.f7689q);
        SafeParcelWriter.c(parcel, 4, this.f7690r);
        SafeParcelWriter.b(parcel, iA);
    }
}
