###### Class com.google.android.gms.internal.ads.zzftu (com.google.android.gms.internal.ads.zzftu)
.class final Lcom/google/android/gms/internal/ads/zzftu;
.super Lcom/google/android/gms/internal/ads/zzftv;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final s:Ljava/util/concurrent/Callable;

.field final synthetic t:Lcom/google/android/gms/internal/ads/zzftw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzftw;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzftu;->t:Lcom/google/android/gms/internal/ads/zzftw;

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzftv;-><init>(Lcom/google/android/gms/internal/ads/zzftw;Ljava/util/concurrent/Executor;)V

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzftu;->s:Ljava/util/concurrent/Callable;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftu;->s:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftu;->s:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final h(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftu;->t:Lcom/google/android/gms/internal/ads/zzftw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfsx;->h(Ljava/lang/Object;)Z

    return-void
.end method
