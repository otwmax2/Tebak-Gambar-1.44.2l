###### Class com.google.android.gms.ads.internal.client.zzcx (com.google.android.gms.ads.internal.client.zzcx)
.class public final Lcom/google/android/gms/ads/internal/client/zzcx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/ads/MuteThisAdReason;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/ads/internal/client/zzcw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zzcw;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzcx;->b:Lcom/google/android/gms/ads/internal/client/zzcw;

    :try_start_5
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzcw;->b()Ljava/lang/String;

    move-result-object p1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_9} :catch_a

    goto :goto_11

    :catch_a
    move-exception p1

    const-string v0, ""

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 3
    :goto_11
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzcx;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzcx;->a:Ljava/lang/String;

    return-object v0
.end method
