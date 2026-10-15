###### Class com.google.android.gms.internal.ads.zzbjz (com.google.android.gms.internal.ads.zzbjz)
.class public abstract Lcom/google/android/gms/internal/ads/zzbjz;
.super Lcom/google/android/gms/internal/ads/zzasw;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbka;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.instream.client.IInstreamAd"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzasw;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final Ra(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x3

    if-eq p1, p4, :cond_63

    const/4 p4, 0x4

    if-eq p1, p4, :cond_5c

    const/4 p4, 0x5

    if-eq p1, p4, :cond_2e

    const/4 p4, 0x6

    if-eq p1, p4, :cond_1c

    const/4 p2, 0x7

    if-eq p1, p2, :cond_11

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_11
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbka;->a()Lcom/google/android/gms/internal/ads/zzbdu;

    move-result-object p1

    .line 2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzasx;->g(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_6d

    .line 4
    :cond_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->X0(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 6
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbka;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_6d

    .line 8
    :cond_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->X0(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    if-nez p4, :cond_3e

    const/4 p4, 0x0

    goto :goto_52

    :cond_3e
    const-string v0, "com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback"

    .line 10
    invoke-interface {p4, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 11
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbkd;

    if-eqz v1, :cond_4c

    .line 12
    move-object p4, v0

    check-cast p4, Lcom/google/android/gms/internal/ads/zzbkd;

    goto :goto_52

    :cond_4c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbkb;

    invoke-direct {v0, p4}, Lcom/google/android/gms/internal/ads/zzbkb;-><init>(Landroid/os/IBinder;)V

    move-object p4, v0

    .line 13
    :goto_52
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 14
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzbka;->N8(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbkd;)V

    .line 15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_6d

    .line 16
    :cond_5c
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbka;->d()V

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_6d

    .line 18
    :cond_63
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbka;->zzb()Lcom/google/android/gms/ads/internal/client/zzdq;

    move-result-object p1

    .line 19
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 20
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzasx;->g(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_6d
    const/4 p1, 0x1

    return p1
.end method
