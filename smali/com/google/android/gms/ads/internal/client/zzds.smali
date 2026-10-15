###### Class com.google.android.gms.ads.internal.client.zzds (com.google.android.gms.ads.internal.client.zzds)
.class public abstract Lcom/google/android/gms/ads/internal/client/zzds;
.super Lcom/google/android/gms/internal/ads/zzasw;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/zzdt;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks"

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

    if-eq p1, p4, :cond_28

    const/4 v0, 0x2

    if-eq p1, v0, :cond_24

    const/4 v0, 0x3

    if-eq p1, v0, :cond_20

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1c

    const/4 v0, 0x5

    if-eq p1, v0, :cond_11

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_11
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->h(Landroid/os/Parcel;)Z

    move-result p1

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzasx;->c(Landroid/os/Parcel;)V

    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzdt;->y0(Z)V

    goto :goto_2b

    .line 4
    :cond_1c
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzdt;->b()V

    goto :goto_2b

    .line 5
    :cond_20
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzdt;->e()V

    goto :goto_2b

    .line 6
    :cond_24
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzdt;->f()V

    goto :goto_2b

    .line 7
    :cond_28
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzdt;->g()V

    .line 8
    :goto_2b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method
