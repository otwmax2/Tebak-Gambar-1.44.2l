###### Class com.google.android.gms.internal.ads.zzegc (com.google.android.gms.internal.ads.zzegc)
.class public final Lcom/google/android/gms/internal/ads/zzegc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzf;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzcum;

.field private final b:Lcom/google/android/gms/internal/ads/zzcvg;

.field private final c:Lcom/google/android/gms/internal/ads/zzdce;

.field private final d:Lcom/google/android/gms/internal/ads/zzdbw;

.field private final e:Lcom/google/android/gms/internal/ads/zzcng;

.field final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcum;Lcom/google/android/gms/internal/ads/zzcvg;Lcom/google/android/gms/internal/ads/zzdce;Lcom/google/android/gms/internal/ads/zzdbw;Lcom/google/android/gms/internal/ads/zzcng;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzegc;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegc;->a:Lcom/google/android/gms/internal/ads/zzcum;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegc;->b:Lcom/google/android/gms/internal/ads/zzcvg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzegc;->c:Lcom/google/android/gms/internal/ads/zzdce;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzegc;->d:Lcom/google/android/gms/internal/ads/zzdbw;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzegc;->e:Lcom/google/android/gms/internal/ads/zzcng;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegc;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegc;->b:Lcom/google/android/gms/internal/ads/zzcvg;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcvg;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegc;->c:Lcom/google/android/gms/internal/ads/zzdce;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdce;->zza()V

    :cond_12
    return-void
.end method

.method public final declared-synchronized b(Landroid/view/View;)V
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegc;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_19

    if-nez v0, :cond_d

    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegc;->e:Lcom/google/android/gms/internal/ads/zzcng;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcng;->j()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegc;->d:Lcom/google/android/gms/internal/ads/zzdbw;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdbw;->Y0(Landroid/view/View;)V
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_19

    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzb()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegc;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegc;->a:Lcom/google/android/gms/internal/ads/zzcum;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcum;->w0()V

    :cond_d
    return-void
.end method
