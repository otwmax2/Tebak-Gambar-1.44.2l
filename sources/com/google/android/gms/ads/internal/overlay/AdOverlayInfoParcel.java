package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.ads.internal.util.zzbr;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbgi;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbzg;
import com.google.android.gms.internal.ads.zzcei;
import com.google.android.gms.internal.ads.zzcvb;
import com.google.android.gms.internal.ads.zzdcc;
import com.google.android.gms.internal.ads.zzdpi;
import com.google.android.gms.internal.ads.zzeaf;
import com.google.android.gms.internal.ads.zzfdk;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class AdOverlayInfoParcel extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<AdOverlayInfoParcel> CREATOR = new zzn();

    @SafeParcelable.Field
    public final zzbzg A;

    @SafeParcelable.Field
    public final String B;

    @SafeParcelable.Field
    public final com.google.android.gms.ads.internal.zzj C;

    @SafeParcelable.Field
    public final zzbgi D;

    @SafeParcelable.Field
    public final String E;

    @SafeParcelable.Field
    public final zzeaf F;

    @SafeParcelable.Field
    public final zzdpi G;

    @SafeParcelable.Field
    public final zzfdk H;

    @SafeParcelable.Field
    public final zzbr I;

    @SafeParcelable.Field
    public final String J;

    @SafeParcelable.Field
    public final String K;

    @SafeParcelable.Field
    public final zzcvb L;

    @SafeParcelable.Field
    public final zzdcc M;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    public final zzc f5969o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    public final com.google.android.gms.ads.internal.client.zza f5970p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    public final zzo f5971q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    public final zzcei f5972r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    public final zzbgk f5973s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f5974t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    public final boolean f5975u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f5976v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SafeParcelable.Field
    public final zzz f5977w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f5978x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @SafeParcelable.Field
    public final int f5979y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @SafeParcelable.Field
    public final String f5980z;

    public AdOverlayInfoParcel(com.google.android.gms.ads.internal.client.zza zzaVar, zzo zzoVar, zzbgi zzbgiVar, zzbgk zzbgkVar, zzz zzzVar, zzcei zzceiVar, boolean z10, int i10, String str, zzbzg zzbzgVar, zzdcc zzdccVar) {
        this.f5969o = null;
        this.f5970p = zzaVar;
        this.f5971q = zzoVar;
        this.f5972r = zzceiVar;
        this.D = zzbgiVar;
        this.f5973s = zzbgkVar;
        this.f5974t = null;
        this.f5975u = z10;
        this.f5976v = null;
        this.f5977w = zzzVar;
        this.f5978x = i10;
        this.f5979y = 3;
        this.f5980z = str;
        this.A = zzbzgVar;
        this.B = null;
        this.C = null;
        this.E = null;
        this.J = null;
        this.F = null;
        this.G = null;
        this.H = null;
        this.I = null;
        this.K = null;
        this.L = null;
        this.M = zzdccVar;
    }

    public static AdOverlayInfoParcel V3(Intent intent) {
        try {
            Bundle bundleExtra = intent.getBundleExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
            bundleExtra.setClassLoader(AdOverlayInfoParcel.class.getClassLoader());
            return (AdOverlayInfoParcel) bundleExtra.getParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 2, this.f5969o, i10, false);
        SafeParcelWriter.k(parcel, 3, ObjectWrapper.Q4(this.f5970p).asBinder(), false);
        SafeParcelWriter.k(parcel, 4, ObjectWrapper.Q4(this.f5971q).asBinder(), false);
        SafeParcelWriter.k(parcel, 5, ObjectWrapper.Q4(this.f5972r).asBinder(), false);
        SafeParcelWriter.k(parcel, 6, ObjectWrapper.Q4(this.f5973s).asBinder(), false);
        SafeParcelWriter.t(parcel, 7, this.f5974t, false);
        SafeParcelWriter.c(parcel, 8, this.f5975u);
        SafeParcelWriter.t(parcel, 9, this.f5976v, false);
        SafeParcelWriter.k(parcel, 10, ObjectWrapper.Q4(this.f5977w).asBinder(), false);
        SafeParcelWriter.l(parcel, 11, this.f5978x);
        SafeParcelWriter.l(parcel, 12, this.f5979y);
        SafeParcelWriter.t(parcel, 13, this.f5980z, false);
        SafeParcelWriter.s(parcel, 14, this.A, i10, false);
        SafeParcelWriter.t(parcel, 16, this.B, false);
        SafeParcelWriter.s(parcel, 17, this.C, i10, false);
        SafeParcelWriter.k(parcel, 18, ObjectWrapper.Q4(this.D).asBinder(), false);
        SafeParcelWriter.t(parcel, 19, this.E, false);
        SafeParcelWriter.k(parcel, 20, ObjectWrapper.Q4(this.F).asBinder(), false);
        SafeParcelWriter.k(parcel, 21, ObjectWrapper.Q4(this.G).asBinder(), false);
        SafeParcelWriter.k(parcel, 22, ObjectWrapper.Q4(this.H).asBinder(), false);
        SafeParcelWriter.k(parcel, 23, ObjectWrapper.Q4(this.I).asBinder(), false);
        SafeParcelWriter.t(parcel, 24, this.J, false);
        SafeParcelWriter.t(parcel, 25, this.K, false);
        SafeParcelWriter.k(parcel, 26, ObjectWrapper.Q4(this.L).asBinder(), false);
        SafeParcelWriter.k(parcel, 27, ObjectWrapper.Q4(this.M).asBinder(), false);
        SafeParcelWriter.b(parcel, iA);
    }

    public AdOverlayInfoParcel(com.google.android.gms.ads.internal.client.zza zzaVar, zzo zzoVar, zzbgi zzbgiVar, zzbgk zzbgkVar, zzz zzzVar, zzcei zzceiVar, boolean z10, int i10, String str, String str2, zzbzg zzbzgVar, zzdcc zzdccVar) {
        this.f5969o = null;
        this.f5970p = zzaVar;
        this.f5971q = zzoVar;
        this.f5972r = zzceiVar;
        this.D = zzbgiVar;
        this.f5973s = zzbgkVar;
        this.f5974t = str2;
        this.f5975u = z10;
        this.f5976v = str;
        this.f5977w = zzzVar;
        this.f5978x = i10;
        this.f5979y = 3;
        this.f5980z = null;
        this.A = zzbzgVar;
        this.B = null;
        this.C = null;
        this.E = null;
        this.J = null;
        this.F = null;
        this.G = null;
        this.H = null;
        this.I = null;
        this.K = null;
        this.L = null;
        this.M = zzdccVar;
    }

    public AdOverlayInfoParcel(com.google.android.gms.ads.internal.client.zza zzaVar, zzo zzoVar, zzz zzzVar, zzcei zzceiVar, int i10, zzbzg zzbzgVar, String str, com.google.android.gms.ads.internal.zzj zzjVar, String str2, String str3, String str4, zzcvb zzcvbVar) {
        this.f5969o = null;
        this.f5970p = null;
        this.f5971q = zzoVar;
        this.f5972r = zzceiVar;
        this.D = null;
        this.f5973s = null;
        this.f5975u = false;
        if (((Boolean) zzba.c().b(zzbar.C0)).booleanValue()) {
            this.f5974t = null;
            this.f5976v = null;
        } else {
            this.f5974t = str2;
            this.f5976v = str3;
        }
        this.f5977w = null;
        this.f5978x = i10;
        this.f5979y = 1;
        this.f5980z = null;
        this.A = zzbzgVar;
        this.B = str;
        this.C = zzjVar;
        this.E = null;
        this.J = null;
        this.F = null;
        this.G = null;
        this.H = null;
        this.I = null;
        this.K = str4;
        this.L = zzcvbVar;
        this.M = null;
    }

    public AdOverlayInfoParcel(com.google.android.gms.ads.internal.client.zza zzaVar, zzo zzoVar, zzz zzzVar, zzcei zzceiVar, boolean z10, int i10, zzbzg zzbzgVar, zzdcc zzdccVar) {
        this.f5969o = null;
        this.f5970p = zzaVar;
        this.f5971q = zzoVar;
        this.f5972r = zzceiVar;
        this.D = null;
        this.f5973s = null;
        this.f5974t = null;
        this.f5975u = z10;
        this.f5976v = null;
        this.f5977w = zzzVar;
        this.f5978x = i10;
        this.f5979y = 2;
        this.f5980z = null;
        this.A = zzbzgVar;
        this.B = null;
        this.C = null;
        this.E = null;
        this.J = null;
        this.F = null;
        this.G = null;
        this.H = null;
        this.I = null;
        this.K = null;
        this.L = null;
        this.M = zzdccVar;
    }

    @SafeParcelable.Constructor
    AdOverlayInfoParcel(@SafeParcelable.Param zzc zzcVar, @SafeParcelable.Param IBinder iBinder, @SafeParcelable.Param IBinder iBinder2, @SafeParcelable.Param IBinder iBinder3, @SafeParcelable.Param IBinder iBinder4, @SafeParcelable.Param String str, @SafeParcelable.Param boolean z10, @SafeParcelable.Param String str2, @SafeParcelable.Param IBinder iBinder5, @SafeParcelable.Param int i10, @SafeParcelable.Param int i11, @SafeParcelable.Param String str3, @SafeParcelable.Param zzbzg zzbzgVar, @SafeParcelable.Param String str4, @SafeParcelable.Param com.google.android.gms.ads.internal.zzj zzjVar, @SafeParcelable.Param IBinder iBinder6, @SafeParcelable.Param String str5, @SafeParcelable.Param IBinder iBinder7, @SafeParcelable.Param IBinder iBinder8, @SafeParcelable.Param IBinder iBinder9, @SafeParcelable.Param IBinder iBinder10, @SafeParcelable.Param String str6, @SafeParcelable.Param String str7, @SafeParcelable.Param IBinder iBinder11, @SafeParcelable.Param IBinder iBinder12) {
        this.f5969o = zzcVar;
        this.f5970p = (com.google.android.gms.ads.internal.client.zza) ObjectWrapper.t1(IObjectWrapper.Stub.X0(iBinder));
        this.f5971q = (zzo) ObjectWrapper.t1(IObjectWrapper.Stub.X0(iBinder2));
        this.f5972r = (zzcei) ObjectWrapper.t1(IObjectWrapper.Stub.X0(iBinder3));
        this.D = (zzbgi) ObjectWrapper.t1(IObjectWrapper.Stub.X0(iBinder6));
        this.f5973s = (zzbgk) ObjectWrapper.t1(IObjectWrapper.Stub.X0(iBinder4));
        this.f5974t = str;
        this.f5975u = z10;
        this.f5976v = str2;
        this.f5977w = (zzz) ObjectWrapper.t1(IObjectWrapper.Stub.X0(iBinder5));
        this.f5978x = i10;
        this.f5979y = i11;
        this.f5980z = str3;
        this.A = zzbzgVar;
        this.B = str4;
        this.C = zzjVar;
        this.E = str5;
        this.J = str6;
        this.F = (zzeaf) ObjectWrapper.t1(IObjectWrapper.Stub.X0(iBinder7));
        this.G = (zzdpi) ObjectWrapper.t1(IObjectWrapper.Stub.X0(iBinder8));
        this.H = (zzfdk) ObjectWrapper.t1(IObjectWrapper.Stub.X0(iBinder9));
        this.I = (zzbr) ObjectWrapper.t1(IObjectWrapper.Stub.X0(iBinder10));
        this.K = str7;
        this.L = (zzcvb) ObjectWrapper.t1(IObjectWrapper.Stub.X0(iBinder11));
        this.M = (zzdcc) ObjectWrapper.t1(IObjectWrapper.Stub.X0(iBinder12));
    }

    public AdOverlayInfoParcel(zzc zzcVar, com.google.android.gms.ads.internal.client.zza zzaVar, zzo zzoVar, zzz zzzVar, zzbzg zzbzgVar, zzcei zzceiVar, zzdcc zzdccVar) {
        this.f5969o = zzcVar;
        this.f5970p = zzaVar;
        this.f5971q = zzoVar;
        this.f5972r = zzceiVar;
        this.D = null;
        this.f5973s = null;
        this.f5974t = null;
        this.f5975u = false;
        this.f5976v = null;
        this.f5977w = zzzVar;
        this.f5978x = -1;
        this.f5979y = 4;
        this.f5980z = null;
        this.A = zzbzgVar;
        this.B = null;
        this.C = null;
        this.E = null;
        this.J = null;
        this.F = null;
        this.G = null;
        this.H = null;
        this.I = null;
        this.K = null;
        this.L = null;
        this.M = zzdccVar;
    }

    public AdOverlayInfoParcel(zzo zzoVar, zzcei zzceiVar, int i10, zzbzg zzbzgVar) {
        this.f5971q = zzoVar;
        this.f5972r = zzceiVar;
        this.f5978x = 1;
        this.A = zzbzgVar;
        this.f5969o = null;
        this.f5970p = null;
        this.D = null;
        this.f5973s = null;
        this.f5974t = null;
        this.f5975u = false;
        this.f5976v = null;
        this.f5977w = null;
        this.f5979y = 1;
        this.f5980z = null;
        this.B = null;
        this.C = null;
        this.E = null;
        this.J = null;
        this.F = null;
        this.G = null;
        this.H = null;
        this.I = null;
        this.K = null;
        this.L = null;
        this.M = null;
    }

    public AdOverlayInfoParcel(zzcei zzceiVar, zzbzg zzbzgVar, zzbr zzbrVar, zzeaf zzeafVar, zzdpi zzdpiVar, zzfdk zzfdkVar, String str, String str2, int i10) {
        this.f5969o = null;
        this.f5970p = null;
        this.f5971q = null;
        this.f5972r = zzceiVar;
        this.D = null;
        this.f5973s = null;
        this.f5974t = null;
        this.f5975u = false;
        this.f5976v = null;
        this.f5977w = null;
        this.f5978x = 14;
        this.f5979y = 5;
        this.f5980z = null;
        this.A = zzbzgVar;
        this.B = null;
        this.C = null;
        this.E = str;
        this.J = str2;
        this.F = zzeafVar;
        this.G = zzdpiVar;
        this.H = zzfdkVar;
        this.I = zzbrVar;
        this.K = null;
        this.L = null;
        this.M = null;
    }
}
