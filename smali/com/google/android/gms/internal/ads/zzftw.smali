###### Class com.google.android.gms.internal.ads.zzftw (com.google.android.gms.internal.ads.zzftw)
.class final Lcom/google/android/gms/internal/ads/zzftw;
.super Lcom/google/android/gms/internal/ads/zzfti;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private D:Lcom/google/android/gms/internal/ads/zzftv;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfqf;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V
    .registers 6

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfti;-><init>(Lcom/google/android/gms/internal/ads/zzfqf;ZZ)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzftu;

    .line 2
    invoke-direct {p1, p0, p4, p3}, Lcom/google/android/gms/internal/ads/zzftu;-><init>(Lcom/google/android/gms/internal/ads/zzftw;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzftw;->D:Lcom/google/android/gms/internal/ads/zzftv;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfti;->S()V

    return-void
.end method

.method static bridge synthetic W(Lcom/google/android/gms/internal/ads/zzftw;Lcom/google/android/gms/internal/ads/zzftv;)V
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzftw;->D:Lcom/google/android/gms/internal/ads/zzftv;

    return-void
.end method


# virtual methods
.method final Q(ILjava/lang/Object;)V
    .registers 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    return-void
.end method

.method final R()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftw;->D:Lcom/google/android/gms/internal/ads/zzftv;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzftv;->i()V

    :cond_7
    return-void
.end method

.method final V(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzfti;->V(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzftw;->D:Lcom/google/android/gms/internal/ads/zzftv;

    :cond_9
    return-void
.end method

.method protected final u()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftw;->D:Lcom/google/android/gms/internal/ads/zzftv;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfus;->g()V

    :cond_7
    return-void
.end method
