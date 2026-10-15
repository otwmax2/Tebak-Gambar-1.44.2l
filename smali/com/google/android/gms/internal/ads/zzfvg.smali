###### Class com.google.android.gms.internal.ads.zzfvg (com.google.android.gms.internal.ads.zzfvg)
.class final Lcom/google/android/gms/internal/ads/zzfvg;
.super Lcom/google/android/gms/internal/ads/zzftz;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private v:Lcom/google/android/gms/internal/ads/zzfut;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private w:Ljava/util/concurrent/ScheduledFuture;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzfut;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzftz;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfvg;->v:Lcom/google/android/gms/internal/ads/zzfut;

    return-void
.end method

.method static bridge synthetic E(Lcom/google/android/gms/internal/ads/zzfvg;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->v:Lcom/google/android/gms/internal/ads/zzfut;

    return-object p0
.end method

.method static F(Lcom/google/android/gms/internal/ads/zzfut;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfvg;-><init>(Lcom/google/android/gms/internal/ads/zzfut;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfvd;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfvd;-><init>(Lcom/google/android/gms/internal/ads/zzfvg;)V

    .line 2
    invoke-interface {p4, v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzfvg;->w:Ljava/util/concurrent/ScheduledFuture;

    .line 3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzftx;->o:Lcom/google/android/gms/internal/ads/zzftx;

    .line 4
    invoke-interface {p0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfut;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method static bridge synthetic G(Lcom/google/android/gms/internal/ads/zzfvg;)Ljava/util/concurrent/ScheduledFuture;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->w:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static bridge synthetic H(Lcom/google/android/gms/internal/ads/zzfvg;Ljava/util/concurrent/ScheduledFuture;)V
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfvg;->w:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method protected final d()Ljava/lang/String;
    .registers 7
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->v:Lcom/google/android/gms/internal/ads/zzfut;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfvg;->w:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inputFuture=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_47

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_47

    new-instance v3, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", remaining delay=["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_47
    return-object v0

    :cond_48
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final g()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->v:Lcom/google/android/gms/internal/ads/zzfut;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfsx;->v(Ljava/util/concurrent/Future;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->w:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->v:Lcom/google/android/gms/internal/ads/zzfut;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->w:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
