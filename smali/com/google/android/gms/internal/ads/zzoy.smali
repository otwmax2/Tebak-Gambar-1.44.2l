###### Class com.google.android.gms.internal.ads.zzoy (com.google.android.gms.internal.ads.zzoy)
.class final Lcom/google/android/gms/internal/ads/zzoy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:Ljava/lang/Exception;

.field private b:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzoy;->a:Ljava/lang/Exception;

    return-void
.end method

.method public final b(Ljava/lang/Exception;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzoy;->a:Ljava/lang/Exception;

    if-nez v2, :cond_f

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoy;->a:Ljava/lang/Exception;

    const-wide/16 v2, 0x64

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzoy;->b:J

    :cond_f
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzoy;->b:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_36

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoy;->a:Ljava/lang/Exception;

    if-eq v0, p1, :cond_30

    :try_start_19
    const-class v1, Ljava/lang/Throwable;

    const-string v2, "addSuppressed"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Throwable;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 2
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_30} :catch_30

    :catch_30
    :cond_30
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoy;->a:Ljava/lang/Exception;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzoy;->a:Ljava/lang/Exception;

    .line 3
    throw p1

    :cond_36
    return-void
.end method
