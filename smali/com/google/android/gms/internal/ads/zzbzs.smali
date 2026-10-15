###### Class com.google.android.gms.internal.ads.zzbzs (com.google.android.gms.internal.ads.zzbzs)
.class public Lcom/google/android/gms/internal/ads/zzbzs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfut;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/internal/ads/zzfvc;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfvc;->D()Lcom/google/android/gms/internal/ads/zzfvc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzs;->o:Lcom/google/android/gms/internal/ads/zzfvc;

    return-void
.end method

.method private static final b(Z)Z
    .registers 4

    if-nez p0, :cond_12

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Provided SettableFuture with multiple values."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v2, "SettableFuture"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbyj;->t(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_12
    return p0
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzs;->o:Lcom/google/android/gms/internal/ads/zzfvc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfvc;->h(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbzs;->b(Z)Z

    return p1
.end method

.method public cancel(Z)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzs;->o:Lcom/google/android/gms/internal/ads/zzfvc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfsx;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public final d(Ljava/lang/Throwable;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzs;->o:Lcom/google/android/gms/internal/ads/zzfvc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfvc;->i(Ljava/lang/Throwable;)Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbzs;->b(Z)Z

    return p1
.end method

.method public final f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzs;->o:Lcom/google/android/gms/internal/ads/zzfvc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfsx;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzs;->o:Lcom/google/android/gms/internal/ads/zzfvc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfsx;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzs;->o:Lcom/google/android/gms/internal/ads/zzfvc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfsx;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isCancelled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzs;->o:Lcom/google/android/gms/internal/ads/zzfvc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfsx;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public final isDone()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzs;->o:Lcom/google/android/gms/internal/ads/zzfvc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfsx;->isDone()Z

    move-result v0

    return v0
.end method
