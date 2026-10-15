###### Class com.google.android.gms.internal.ads.zzfvi (com.google.android.gms.internal.ads.zzfvi)
.class final Lcom/google/android/gms/internal/ads/zzfvi;
.super Lcom/google/android/gms/internal/ads/zzfus;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final q:Ljava/util/concurrent/Callable;

.field final synthetic r:Lcom/google/android/gms/internal/ads/zzfvj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfvj;Ljava/util/concurrent/Callable;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfvi;->r:Lcom/google/android/gms/internal/ads/zzfvj;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfus;-><init>()V

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfvi;->q:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvi;->q:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvi;->q:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final d(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvi;->r:Lcom/google/android/gms/internal/ads/zzfvj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfsx;->i(Ljava/lang/Throwable;)Z

    return-void
.end method

.method final e(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvi;->r:Lcom/google/android/gms/internal/ads/zzfvj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfsx;->h(Ljava/lang/Object;)Z

    return-void
.end method

.method final f()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvi;->r:Lcom/google/android/gms/internal/ads/zzfvj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfsx;->isDone()Z

    move-result v0

    return v0
.end method
