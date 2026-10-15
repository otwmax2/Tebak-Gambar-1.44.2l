###### Class com.google.android.gms.internal.ads.zzbop (com.google.android.gms.internal.ads.zzbop)
.class public abstract Lcom/google/android/gms/internal/ads/zzbop;
.super Lcom/google/android/gms/internal/ads/zzasw;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzboq;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzasw;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final Ra(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-eq p1, p4, :cond_37

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2c

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x4

    if-eq p1, v0, :cond_e

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbnn;->Sa(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbno;

    move-result-object p1

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzboq;->c2(Lcom/google/android/gms/internal/ads/zzbno;)V

    goto :goto_45

    .line 4
    :cond_1d
    sget-object p1, Lcom/google/android/gms/ads/internal/client/zze;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzasx;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/internal/client/zze;

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 6
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzboq;->A(Lcom/google/android/gms/ads/internal/client/zze;)V

    goto :goto_45

    .line 7
    :cond_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 9
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzboq;->s(Ljava/lang/String;)V

    goto :goto_45

    .line 10
    :cond_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->X0(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 11
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 12
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzboq;->G5(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 13
    :goto_45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method
