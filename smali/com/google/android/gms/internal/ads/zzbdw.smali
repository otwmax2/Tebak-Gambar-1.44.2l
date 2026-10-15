###### Class com.google.android.gms.internal.ads.zzbdw (com.google.android.gms.internal.ads.zzbdw)
.class public abstract Lcom/google/android/gms/internal/ads/zzbdw;
.super Lcom/google/android/gms/internal/ads/zzasw;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbdx;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzasw;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static Sa(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbdx;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbdx;

    if-eqz v1, :cond_11

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdx;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbdv;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final Ra(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3d

    const/4 p4, 0x2

    if-eq p1, p4, :cond_32

    const/4 p4, 0x3

    if-eq p1, p4, :cond_27

    const/4 p4, 0x4

    if-eq p1, p4, :cond_1c

    const/4 p4, 0x5

    if-eq p1, p4, :cond_11

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_11
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbdx;->a()I

    move-result p1

    .line 2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_47

    :cond_1c
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbdx;->d()I

    move-result p1

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_47

    :cond_27
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbdx;->zzb()D

    move-result-wide v0

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_47

    :cond_32
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbdx;->b()Landroid/net/Uri;

    move-result-object p1

    .line 8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 9
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzasx;->f(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_47

    .line 10
    :cond_3d
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbdx;->c()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 11
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 12
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzasx;->g(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_47
    return p2
.end method
