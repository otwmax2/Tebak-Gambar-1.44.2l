###### Class com.google.android.gms.ads.internal.client.zzfc (com.google.android.gms.ads.internal.client.zzfc)
.class public final Lcom/google/android/gms/ads/internal/client/zzfc;
.super Lcom/google/android/gms/internal/ads/zzbuv;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbuv;-><init>()V

    return-void
.end method

.method private static Ta(Lcom/google/android/gms/internal/ads/zzbvd;)V
    .registers 3

    const-string v0, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->d(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbyt;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzfb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/client/zzfb;-><init>(Lcom/google/android/gms/internal/ads/zzbvd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final B6(Lcom/google/android/gms/ads/internal/client/zzl;Lcom/google/android/gms/internal/ads/zzbvd;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/client/zzfc;->Ta(Lcom/google/android/gms/internal/ads/zzbvd;)V

    return-void
.end method

.method public final Ba(Lcom/google/android/gms/internal/ads/zzbvk;)V
    .registers 2

    return-void
.end method

.method public final C7(Lcom/google/android/gms/ads/internal/client/zzdd;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final Fa(Lcom/google/android/gms/internal/ads/zzbuz;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final R3(Lcom/google/android/gms/internal/ads/zzbve;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final Z0(Z)V
    .registers 2

    return-void
.end method

.method public final a()Lcom/google/android/gms/ads/internal/client/zzdn;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/zzbut;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final e5(Lcom/google/android/gms/dynamic/IObjectWrapper;Z)V
    .registers 3

    return-void
.end method

.method public final f5(Lcom/google/android/gms/ads/internal/client/zzl;Lcom/google/android/gms/internal/ads/zzbvd;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/client/zzfc;->Ta(Lcom/google/android/gms/internal/ads/zzbvd;)V

    return-void
.end method

.method public final g3(Lcom/google/android/gms/ads/internal/client/zzdg;)V
    .registers 2

    return-void
.end method

.method public final l1(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final m()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()Landroid/os/Bundle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

###### Class com.google.android.gms.ads.internal.client.zzfb (com.google.android.gms.ads.internal.client.zzfb)
.class public final synthetic Lcom/google/android/gms/ads/internal/client/zzfb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzbvd;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbvd;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzfb;->o:Lcom/google/android/gms/internal/ads/zzbvd;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzfb;->o:Lcom/google/android/gms/internal/ads/zzbvd;

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    :try_start_5
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbvd;->F(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    return-void
.end method
