###### Class com.google.android.gms.internal.ads.zzbvg (com.google.android.gms.internal.ads.zzbvg)
.class public final Lcom/google/android/gms/internal/ads/zzbvg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/ads/rewarded/RewardItem;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzbut;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbut;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvg;->a:Lcom/google/android/gms/internal/ads/zzbut;

    return-void
.end method


# virtual methods
.method public final o()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvg;->a:Lcom/google/android/gms/internal/ads/zzbut;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    :try_start_5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbut;->c()Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception v0

    const-string v2, "Could not forward getType to RewardItem"

    .line 2
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    return-object v1
.end method

.method public final p()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvg;->a:Lcom/google/android/gms/internal/ads/zzbut;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    :try_start_5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbut;->b()I

    move-result v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_9} :catch_a

    return v0

    :catch_a
    move-exception v0

    const-string v2, "Could not forward getAmount to RewardItem"

    .line 2
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    return v1
.end method
