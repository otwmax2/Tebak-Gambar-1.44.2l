###### Class com.google.android.gms.internal.ads.zzftn (com.google.android.gms.internal.ads.zzftn)
.class final Lcom/google/android/gms/internal/ads/zzftn;
.super Lcom/google/android/gms/internal/ads/zzftk;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzftk;-><init>(Lcom/google/android/gms/internal/ads/zzftj;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzftm;)V
    .registers 2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzftk;-><init>(Lcom/google/android/gms/internal/ads/zzftj;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/gms/internal/ads/zzfto;)I
    .registers 3

    .line 1
    monitor-enter p1

    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfto;->D(Lcom/google/android/gms/internal/ads/zzfto;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfto;->H(Lcom/google/android/gms/internal/ads/zzfto;I)V

    monitor-exit p1

    return v0

    :catchall_c
    move-exception v0

    .line 2
    monitor-exit p1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method final b(Lcom/google/android/gms/internal/ads/zzfto;Ljava/util/Set;Ljava/util/Set;)V
    .registers 4
    .param p2    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    monitor-enter p1

    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfto;->F(Lcom/google/android/gms/internal/ads/zzfto;)Ljava/util/Set;

    move-result-object p2

    if-nez p2, :cond_a

    .line 2
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/zzfto;->I(Lcom/google/android/gms/internal/ads/zzfto;Ljava/util/Set;)V

    .line 3
    :cond_a
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p2

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p2
.end method
