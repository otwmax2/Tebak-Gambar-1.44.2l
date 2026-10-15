###### Class com.google.android.gms.internal.ads.zzawj (com.google.android.gms.internal.ads.zzawj)
.class public final Lcom/google/android/gms/internal/ads/zzawj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field private final a:[B

.field private b:I

.field final synthetic c:Lcom/google/android/gms/internal/ads/zzawk;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzawk;[BLcom/google/android/gms/internal/ads/zzawi;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawj;->c:Lcom/google/android/gms/internal/ads/zzawk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzawj;->a:[B

    return-void
.end method

.method public static synthetic b(Lcom/google/android/gms/internal/ads/zzawj;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawj;->d()V

    return-void
.end method

.method private final declared-synchronized d()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->c:Lcom/google/android/gms/internal/ads/zzawk;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzawk;->b:Z

    if-eqz v1, :cond_30

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzawk;->a:Lcom/google/android/gms/internal/ads/zzata;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawj;->a:[B

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzata;->O0([B)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->c:Lcom/google/android/gms/internal/ads/zzawk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzawk;->a:Lcom/google/android/gms/internal/ads/zzata;

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzata;->Q(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->c:Lcom/google/android/gms/internal/ads/zzawk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzawk;->a:Lcom/google/android/gms/internal/ads/zzata;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzawj;->b:I

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzata;->w(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->c:Lcom/google/android/gms/internal/ads/zzawk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzawk;->a:Lcom/google/android/gms/internal/ads/zzata;

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzata;->g1([I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->c:Lcom/google/android/gms/internal/ads/zzawk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzawk;->a:Lcom/google/android/gms/internal/ads/zzata;

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzata;->c()V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2e} :catch_34
    .catchall {:try_start_1 .. :try_end_2e} :catchall_32

    monitor-exit p0

    return-void

    :cond_30
    monitor-exit p0

    return-void

    :catchall_32
    move-exception v0

    goto :goto_3c

    :catch_34
    move-exception v0

    :try_start_35
    const-string v1, "Clearcut log failed"

    .line 6
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_32

    monitor-exit p0

    return-void

    :goto_3c
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/ads/zzawj;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzawj;->b:I

    return-object p0
.end method

.method public final declared-synchronized c()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawj;->c:Lcom/google/android/gms/internal/ads/zzawk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzawk;->a(Lcom/google/android/gms/internal/ads/zzawk;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzawh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzawh;-><init>(Lcom/google/android/gms/internal/ads/zzawj;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.google.android.gms.internal.ads.zzawh (com.google.android.gms.internal.ads.zzawh)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzawh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzawj;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzawj;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawh;->o:Lcom/google/android/gms/internal/ads/zzawj;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawh;->o:Lcom/google/android/gms/internal/ads/zzawj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzawj;->b(Lcom/google/android/gms/internal/ads/zzawj;)V

    return-void
.end method
