###### Class com.google.android.gms.internal.ads.zzcqb (com.google.android.gms.internal.ads.zzcqb)
.class public final Lcom/google/android/gms/internal/ads/zzcqb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcwc;
.implements Lcom/google/android/gms/internal/ads/zzatf;


# instance fields
.field private final o:Lcom/google/android/gms/internal/ads/zzeyc;

.field private final p:Lcom/google/android/gms/internal/ads/zzcvg;

.field private final q:Lcom/google/android/gms/internal/ads/zzcwl;

.field private final r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final s:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeyc;Lcom/google/android/gms/internal/ads/zzcvg;Lcom/google/android/gms/internal/ads/zzcwl;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqb;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqb;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqb;->o:Lcom/google/android/gms/internal/ads/zzeyc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqb;->p:Lcom/google/android/gms/internal/ads/zzcvg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcqb;->q:Lcom/google/android/gms/internal/ads/zzcwl;

    return-void
.end method

.method private final a()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqb;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqb;->p:Lcom/google/android/gms/internal/ads/zzcvg;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcvg;->zza()V

    :cond_f
    return-void
.end method


# virtual methods
.method public final H0(Lcom/google/android/gms/internal/ads/zzate;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqb;->o:Lcom/google/android/gms/internal/ads/zzeyc;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzeyc;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzate;->j:Z

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcqb;->a()V

    :cond_e
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzate;->j:Z

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqb;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqb;->q:Lcom/google/android/gms/internal/ads/zzcwl;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwl;->zza()V

    :cond_20
    return-void
.end method

.method public final declared-synchronized k()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqb;->o:Lcom/google/android/gms/internal/ads/zzeyc;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzeyc;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcqb;->a()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_f

    monitor-exit p0

    return-void

    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
