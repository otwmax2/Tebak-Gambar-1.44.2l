###### Class com.google.android.gms.internal.ads.zzavz (com.google.android.gms.internal.ads.zzavz)
.class final Lcom/google/android/gms/internal/ads/zzavz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/ads/zzbzs;

.field final synthetic p:Lcom/google/android/gms/internal/ads/zzawa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzawa;Lcom/google/android/gms/internal/ads/zzbzs;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavz;->p:Lcom/google/android/gms/internal/ads/zzawa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzavz;->o:Lcom/google/android/gms/internal/ads/zzbzs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final X0(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavz;->p:Lcom/google/android/gms/internal/ads/zzawa;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawa;->b(Lcom/google/android/gms/internal/ads/zzawa;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavz;->o:Lcom/google/android/gms/internal/ads/zzbzs;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Connection failed."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbzs;->d(Ljava/lang/Throwable;)Z

    .line 2
    monitor-exit p1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v0
.end method
