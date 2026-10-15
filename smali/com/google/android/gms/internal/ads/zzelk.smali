###### Class com.google.android.gms.internal.ads.zzelk (com.google.android.gms.internal.ads.zzelk)
.class public final Lcom/google/android/gms/internal/ads/zzelk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepn;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;

.field private final b:Lcom/google/android/gms/common/util/Clock;

.field private final c:Lcom/google/android/gms/internal/ads/zzepn;

.field private final d:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzepn;JLcom/google/android/gms/common/util/Clock;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzelk;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzelk;->b:Lcom/google/android/gms/common/util/Clock;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelk;->c:Lcom/google/android/gms/internal/ads/zzepn;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzelk;->d:J

    return-void
.end method


# virtual methods
.method public final zza()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelk;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzelj;

    if-eqz v0, :cond_10

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelj;->a()Z

    move-result v1

    if-eqz v1, :cond_24

    :cond_10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzelj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzelk;->c:Lcom/google/android/gms/internal/ads/zzepn;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzepn;->zzb()Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzelk;->d:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzelk;->b:Lcom/google/android/gms/common/util/Clock;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzelj;-><init>(Lcom/google/android/gms/internal/ads/zzfut;JLcom/google/android/gms/common/util/Clock;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzelk;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_24
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzelj;->a:Lcom/google/android/gms/internal/ads/zzfut;

    return-object v0
.end method
