###### Class com.google.android.gms.internal.ads.zzbll (com.google.android.gms.internal.ads.zzbll)
.class public final Lcom/google/android/gms/internal/ads/zzbll;
.super Lcom/google/android/gms/internal/ads/zzbzz;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final c:Ljava/lang/Object;

.field private final d:Lcom/google/android/gms/internal/ads/zzblq;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzblq;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbzz;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbll;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbll;->d:Lcom/google/android/gms/internal/ads/zzblq;

    return-void
.end method

.method static bridge synthetic f(Lcom/google/android/gms/internal/ads/zzbll;)Lcom/google/android/gms/internal/ads/zzblq;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbll;->d:Lcom/google/android/gms/internal/ads/zzblq;

    return-object p0
.end method


# virtual methods
.method public final g()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbll;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbll;->e:Z

    if-eqz v1, :cond_9

    .line 2
    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbll;->e:Z

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbli;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbli;-><init>(Lcom/google/android/gms/internal/ads/zzbll;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbzv;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbzv;-><init>()V

    .line 3
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbzz;->e(Lcom/google/android/gms/internal/ads/zzbzw;Lcom/google/android/gms/internal/ads/zzbzu;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzblj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzblj;-><init>(Lcom/google/android/gms/internal/ads/zzbll;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzblk;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzblk;-><init>(Lcom/google/android/gms/internal/ads/zzbll;)V

    .line 4
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbzz;->e(Lcom/google/android/gms/internal/ads/zzbzw;Lcom/google/android/gms/internal/ads/zzbzu;)V

    .line 5
    monitor-exit v0

    return-void

    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method
