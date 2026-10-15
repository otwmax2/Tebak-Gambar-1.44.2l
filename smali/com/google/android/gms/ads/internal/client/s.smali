###### Class com.google.android.gms.ads.internal.client.s (com.google.android.gms.ads.internal.client.s)
.class final Lcom/google/android/gms/ads/internal/client/s;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/ads/internal/client/zzew;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/zzew;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/s;->o:Lcom/google/android/gms/ads/internal/client/zzew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/s;->o:Lcom/google/android/gms/ads/internal/client/zzew;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzew;->Ta(Lcom/google/android/gms/ads/internal/client/zzew;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object v1

    if-eqz v1, :cond_17

    :try_start_8
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzew;->Ta(Lcom/google/android/gms/ads/internal/client/zzew;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzbh;->F(I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception v0

    const-string v1, "Could not notify onAdFailedToLoad event."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    return-void
.end method
