###### Class com.google.android.gms.ads.internal.client.q (com.google.android.gms.ads.internal.client.q)
.class final Lcom/google/android/gms/ads/internal/client/q;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/ads/internal/client/r;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/r;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/q;->o:Lcom/google/android/gms/ads/internal/client/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/q;->o:Lcom/google/android/gms/ads/internal/client/r;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/r;->o:Lcom/google/android/gms/ads/internal/client/zzeu;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzeu;->Sa(Lcom/google/android/gms/ads/internal/client/zzeu;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object v1

    if-eqz v1, :cond_19

    :try_start_a
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzeu;->Sa(Lcom/google/android/gms/ads/internal/client/zzeu;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzbh;->F(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    const-string v1, "Could not notify onAdFailedToLoad event."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_19
    return-void
.end method
