###### Class com.google.android.gms.internal.ads.zzfjq (com.google.android.gms.internal.ads.zzfjq)
.class public final Lcom/google/android/gms/internal/ads/zzfjq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:[B

.field private b:I

.field private c:I

.field final synthetic d:Lcom/google/android/gms/internal/ads/zzfjr;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfjr;[BLcom/google/android/gms/internal/ads/zzfjp;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjq;->d:Lcom/google/android/gms/internal/ads/zzfjr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfjq;->a:[B

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/ads/zzfjq;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfjq;->c:I

    return-object p0
.end method

.method public final b(I)Lcom/google/android/gms/internal/ads/zzfjq;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfjq;->b:I

    return-object p0
.end method

.method public final declared-synchronized c()V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjq;->d:Lcom/google/android/gms/internal/ads/zzfjr;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzfjr;->b:Z

    if-eqz v1, :cond_31

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjr;->a:Lcom/google/android/gms/internal/ads/zzfju;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjq;->a:[B

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfju;->O0([B)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjq;->d:Lcom/google/android/gms/internal/ads/zzfjr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjr;->a:Lcom/google/android/gms/internal/ads/zzfju;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfjq;->b:I

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfju;->Q(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjq;->d:Lcom/google/android/gms/internal/ads/zzfjr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjr;->a:Lcom/google/android/gms/internal/ads/zzfju;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfjq;->c:I

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfju;->w(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjq;->d:Lcom/google/android/gms/internal/ads/zzfjr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjr;->a:Lcom/google/android/gms/internal/ads/zzfju;

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfju;->g1([I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjq;->d:Lcom/google/android/gms/internal/ads/zzfjr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjr;->a:Lcom/google/android/gms/internal/ads/zzfju;

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfju;->c()V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2f} :catch_35
    .catchall {:try_start_1 .. :try_end_2f} :catchall_33

    monitor-exit p0

    return-void

    :cond_31
    monitor-exit p0

    return-void

    :catchall_33
    move-exception v0

    goto :goto_3f

    :catch_35
    move-exception v0

    :try_start_36
    const-string v1, "GASS"

    const-string v2, "Clearcut log failed"

    .line 6
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_33

    monitor-exit p0

    return-void

    :goto_3f
    monitor-exit p0

    throw v0
.end method
