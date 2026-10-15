###### Class com.google.android.gms.internal.ads.zzase (com.google.android.gms.internal.ads.zzase)
.class public final Lcom/google/android/gms/internal/ads/zzase;
.super Lcom/google/android/gms/internal/ads/zzasm;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final i:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaqx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamv;II[Ljava/lang/StackTraceElement;)V
    .registers 15

    const-string v2, "mI62XAU6hkSJHBt5knDDlPT1Fqr4dlfaZ+n4XjM0AiKKuoUuq7VAlzpsb6e8DhEf"

    const-string v3, "XDZeV64PENx+9tx6tUBxGqpVXuPWj1qf1leYJ9jGf1Q="

    const/16 v6, 0x2d

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(Lcom/google/android/gms/internal/ads/zzaqx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamv;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzase;->i:[Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzase;->i:[Ljava/lang/StackTraceElement;

    if-eqz v0, :cond_48

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->f:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaqo;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzaqo;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasm;->e:Lcom/google/android/gms/internal/ads/zzamv;

    .line 3
    monitor-enter v0

    :try_start_1b
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasm;->e:Lcom/google/android/gms/internal/ads/zzamv;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaqo;->b:Ljava/lang/Long;

    .line 4
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzamv;->u(J)Lcom/google/android/gms/internal/ads/zzamv;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaqo;->c:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasm;->e:Lcom/google/android/gms/internal/ads/zzamv;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaqo;->d:Ljava/lang/Boolean;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v3, v1, :cond_39

    const/4 v3, 0x2

    .line 7
    :cond_39
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzamv;->T(I)Lcom/google/android/gms/internal/ads/zzamv;

    goto :goto_43

    .line 8
    :cond_3d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->e:Lcom/google/android/gms/internal/ads/zzamv;

    const/4 v2, 0x3

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzamv;->T(I)Lcom/google/android/gms/internal/ads/zzamv;

    .line 10
    :goto_43
    monitor-exit v0

    return-void

    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_1b .. :try_end_47} :catchall_45

    throw v1

    :cond_48
    return-void
.end method
