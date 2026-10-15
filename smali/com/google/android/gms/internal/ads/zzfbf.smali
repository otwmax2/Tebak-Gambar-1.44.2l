###### Class com.google.android.gms.internal.ads.zzfbf (com.google.android.gms.internal.ads.zzfbf)
.class public final Lcom/google/android/gms/internal/ads/zzfbf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzfaj;

.field private final b:Lcom/google/android/gms/internal/ads/zzfbd;

.field private final c:Lcom/google/android/gms/internal/ads/zzfaf;

.field private final d:Ljava/util/ArrayDeque;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private e:Lcom/google/android/gms/internal/ads/zzfbl;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private f:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfaj;Lcom/google/android/gms/internal/ads/zzfaf;Lcom/google/android/gms/internal/ads/zzfbd;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfbf;->f:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbf;->a:Lcom/google/android/gms/internal/ads/zzfaj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfbf;->c:Lcom/google/android/gms/internal/ads/zzfaf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfbf;->b:Lcom/google/android/gms/internal/ads/zzfbd;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbf;->d:Ljava/util/ArrayDeque;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfba;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzfba;-><init>(Lcom/google/android/gms/internal/ads/zzfbf;)V

    .line 2
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfaf;->b(Lcom/google/android/gms/internal/ads/zzfba;)V

    return-void
.end method

.method static bridge synthetic b(Lcom/google/android/gms/internal/ads/zzfbf;)Ljava/util/ArrayDeque;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbf;->d:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/google/android/gms/internal/ads/zzfbf;Lcom/google/android/gms/internal/ads/zzfbl;)V
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbf;->e:Lcom/google/android/gms/internal/ads/zzfbl;

    return-void
.end method

.method static bridge synthetic d(Lcom/google/android/gms/internal/ads/zzfbf;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfbf;->h()V

    return-void
.end method

.method static bridge synthetic g(Lcom/google/android/gms/internal/ads/zzfbf;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzfbf;->f:I

    return p0
.end method

.method private final declared-synchronized h()V
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->R5:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyj;->h()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->f()Lcom/google/android/gms/internal/ads/zzbyd;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyd;->h()Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_2d

    .line 8
    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbf;->d:Ljava/util/ArrayDeque;

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_70

    monitor-exit p0

    return-void

    .line 10
    :cond_2d
    :goto_2d
    :try_start_2d
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfbf;->i()Z

    move-result v0

    if-eqz v0, :cond_6e

    :cond_33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbf;->d:Ljava/util/ArrayDeque;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbf;->d:Ljava/util/ArrayDeque;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfbe;

    if-eqz v0, :cond_57

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfbe;->zza()Lcom/google/android/gms/internal/ads/zzfat;

    move-result-object v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfbf;->a:Lcom/google/android/gms/internal/ads/zzfaj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfbe;->zza()Lcom/google/android/gms/internal/ads/zzfat;

    move-result-object v2

    .line 13
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzfaj;->a(Lcom/google/android/gms/internal/ads/zzfat;)Z

    move-result v1

    if-eqz v1, :cond_33

    :cond_57
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfbl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfbf;->a:Lcom/google/android/gms/internal/ads/zzfaj;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfbf;->b:Lcom/google/android/gms/internal/ads/zzfbd;

    .line 14
    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzfbl;-><init>(Lcom/google/android/gms/internal/ads/zzfaj;Lcom/google/android/gms/internal/ads/zzfbd;Lcom/google/android/gms/internal/ads/zzfbe;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfbf;->e:Lcom/google/android/gms/internal/ads/zzfbl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfbb;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzfbb;-><init>(Lcom/google/android/gms/internal/ads/zzfbf;Lcom/google/android/gms/internal/ads/zzfbe;)V

    .line 15
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfbl;->d(Lcom/google/android/gms/internal/ads/zzfuf;)V
    :try_end_6a
    .catchall {:try_start_2d .. :try_end_6a} :catchall_70

    monitor-exit p0

    return-void

    :cond_6c
    monitor-exit p0

    return-void

    :cond_6e
    monitor-exit p0

    return-void

    :catchall_70
    move-exception v0

    monitor-exit p0

    goto :goto_74

    :goto_73
    throw v0

    :goto_74
    goto :goto_73
.end method

.method private final declared-synchronized i()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbf;->e:Lcom/google/android/gms/internal/ads/zzfbl;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/zzfbe;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 3

    monitor-enter p0

    const/4 v0, 0x2

    .line 1
    :try_start_2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfbf;->f:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfbf;->i()Z

    move-result v0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_15

    if-eqz v0, :cond_d

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbf;->e:Lcom/google/android/gms/internal/ads/zzfbl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfbl;->a(Lcom/google/android/gms/internal/ads/zzfbe;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object p1

    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e(Lcom/google/android/gms/internal/ads/zzfbe;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbf;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final synthetic f()V
    .registers 2

    .line 1
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfbf;->f:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfbf;->h()V

    .line 2
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method
