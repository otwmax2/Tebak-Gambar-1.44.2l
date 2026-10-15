###### Class com.google.android.gms.internal.ads.zzxg (com.google.android.gms.internal.ads.zzxg)
.class public final Lcom/google/android/gms/internal/ads/zzxg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final d:Lcom/google/android/gms/internal/ads/zzxa;

.field public static final e:Lcom/google/android/gms/internal/ads/zzxa;

.field public static final f:Lcom/google/android/gms/internal/ads/zzxa;

.field public static final g:Lcom/google/android/gms/internal/ads/zzxa;


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private b:Lcom/google/android/gms/internal/ads/zzxb;

.field private c:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxa;

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzxa;-><init>(IJLcom/google/android/gms/internal/ads/zzwz;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzxg;->d:Lcom/google/android/gms/internal/ads/zzxa;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxa;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzxa;-><init>(IJLcom/google/android/gms/internal/ads/zzwz;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzxg;->e:Lcom/google/android/gms/internal/ads/zzxa;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxa;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzxa;-><init>(IJLcom/google/android/gms/internal/ads/zzwz;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzxg;->f:Lcom/google/android/gms/internal/ads/zzxa;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxa;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzxa;-><init>(IJLcom/google/android/gms/internal/ads/zzwz;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzxg;->g:Lcom/google/android/gms/internal/ads/zzxa;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "ExoPlayer:Loader:ProgressiveMediaPeriod"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzew;->r(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxg;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static b(ZJ)Lcom/google/android/gms/internal/ads/zzxa;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxa;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzxa;-><init>(IJLcom/google/android/gms/internal/ads/zzwz;)V

    return-object v0
.end method

.method static bridge synthetic c(Lcom/google/android/gms/internal/ads/zzxg;)Lcom/google/android/gms/internal/ads/zzxb;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzxg;->b:Lcom/google/android/gms/internal/ads/zzxb;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/google/android/gms/internal/ads/zzxg;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzxg;->a:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/google/android/gms/internal/ads/zzxg;Lcom/google/android/gms/internal/ads/zzxb;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxg;->b:Lcom/google/android/gms/internal/ads/zzxb;

    return-void
.end method

.method static bridge synthetic f(Lcom/google/android/gms/internal/ads/zzxg;Ljava/io/IOException;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxg;->c:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzxc;Lcom/google/android/gms/internal/ads/zzwy;I)J
    .registers 15

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxg;->c:Ljava/io/IOException;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    new-instance v10, Lcom/google/android/gms/internal/ads/zzxb;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, v8

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzxb;-><init>(Lcom/google/android/gms/internal/ads/zzxg;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzxc;Lcom/google/android/gms/internal/ads/zzwy;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v10, p1, p2}, Lcom/google/android/gms/internal/ads/zzxb;->c(J)V

    return-wide v8
.end method

.method public final g()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxg;->b:Lcom/google/android/gms/internal/ads/zzxb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzxb;->a(Z)V

    return-void
.end method

.method public final h()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxg;->c:Ljava/io/IOException;

    return-void
.end method

.method public final i(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxg;->c:Ljava/io/IOException;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxg;->b:Lcom/google/android/gms/internal/ads/zzxb;

    if-eqz v0, :cond_b

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzxb;->b(I)V

    :cond_b
    return-void

    .line 3
    :cond_c
    throw v0
.end method

.method public final j(Lcom/google/android/gms/internal/ads/zzxd;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxg;->b:Lcom/google/android/gms/internal/ads/zzxb;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzxb;->a(Z)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxg;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzxe;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzxe;-><init>(Lcom/google/android/gms/internal/ads/zzxd;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxg;->a:Ljava/util/concurrent/ExecutorService;

    .line 3
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final k()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxg;->c:Ljava/io/IOException;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final l()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxg;->b:Lcom/google/android/gms/internal/ads/zzxb;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method
