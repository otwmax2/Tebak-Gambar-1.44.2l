###### Class com.google.android.gms.internal.ads.zzawa (com.google.android.gms.internal.ads.zzawa)
.class public final Lcom/google/android/gms/internal/ads/zzawa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/zzavp;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private b:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private final d:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawa;->d:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawa;->c:Landroid/content/Context;

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/internal/ads/zzawa;)Lcom/google/android/gms/internal/ads/zzavp;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzawa;->a:Lcom/google/android/gms/internal/ads/zzavp;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/google/android/gms/internal/ads/zzawa;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzawa;->d:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/google/android/gms/internal/ads/zzawa;Z)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzawa;->b:Z

    return-void
.end method

.method static bridge synthetic e(Lcom/google/android/gms/internal/ads/zzawa;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawa;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawa;->a:Lcom/google/android/gms/internal/ads/zzavp;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 2
    :cond_9
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->i()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzawa;->a:Lcom/google/android/gms/internal/ads/zzavp;

    .line 3
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method static bridge synthetic f(Lcom/google/android/gms/internal/ads/zzawa;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzawa;->b:Z

    return p0
.end method


# virtual methods
.method final c(Lcom/google/android/gms/internal/ads/zzavq;)Ljava/util/concurrent/Future;
    .registers 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzavu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzavu;-><init>(Lcom/google/android/gms/internal/ads/zzawa;)V

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzavy;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzavy;-><init>(Lcom/google/android/gms/internal/ads/zzawa;Lcom/google/android/gms/internal/ads/zzavq;Lcom/google/android/gms/internal/ads/zzbzs;)V

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzavz;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/ads/zzavz;-><init>(Lcom/google/android/gms/internal/ads/zzawa;Lcom/google/android/gms/internal/ads/zzbzs;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzawa;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 4
    :try_start_12
    new-instance v3, Lcom/google/android/gms/internal/ads/zzavp;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzawa;->c:Landroid/content/Context;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->v()Lcom/google/android/gms/ads/internal/util/zzbv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/ads/internal/util/zzbv;->b()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1, p1}, Lcom/google/android/gms/internal/ads/zzavp;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzawa;->a:Lcom/google/android/gms/internal/ads/zzavp;

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->v()V

    .line 7
    monitor-exit v2

    return-object v0

    :catchall_28
    move-exception p1

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_28

    throw p1
.end method
