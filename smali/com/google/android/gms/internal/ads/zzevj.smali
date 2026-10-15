###### Class com.google.android.gms.internal.ads.zzevj (com.google.android.gms.internal.ads.zzevj)
.class public final Lcom/google/android/gms/internal/ads/zzevj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzevt;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzevt;

.field private b:Lcom/google/android/gms/internal/ads/zzctw;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzevt;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzevj;->a:Lcom/google/android/gms/internal/ads/zzevt;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/internal/ads/zzevu;Lcom/google/android/gms/internal/ads/zzevs;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 4

    const/4 p3, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzevj;->c(Lcom/google/android/gms/internal/ads/zzevu;Lcom/google/android/gms/internal/ads/zzevs;Lcom/google/android/gms/internal/ads/zzctw;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized b()Lcom/google/android/gms/internal/ads/zzctw;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevj;->b:Lcom/google/android/gms/internal/ads/zzctw;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Lcom/google/android/gms/internal/ads/zzevu;Lcom/google/android/gms/internal/ads/zzevs;Lcom/google/android/gms/internal/ads/zzctw;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzevj;->b:Lcom/google/android/gms/internal/ads/zzctw;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzevu;->a:Lcom/google/android/gms/internal/ads/zzbtn;

    if-eqz v0, :cond_1b

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzctw;->zzb()Lcom/google/android/gms/internal/ads/zzcrt;

    move-result-object p2

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzevu;->a:Lcom/google/android/gms/internal/ads/zzbtn;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfuj;->h(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzcrt;->k(Lcom/google/android/gms/internal/ads/zzfut;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzcrt;->i(Lcom/google/android/gms/internal/ads/zzfut;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_25

    monitor-exit p0

    return-object p1

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevj;->a:Lcom/google/android/gms/internal/ads/zzevt;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzevi;

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzevi;->c(Lcom/google/android/gms/internal/ads/zzevu;Lcom/google/android/gms/internal/ads/zzevs;Lcom/google/android/gms/internal/ads/zzctw;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_25

    monitor-exit p0

    return-object p1

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final bridge synthetic d()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzevj;->b()Lcom/google/android/gms/internal/ads/zzctw;

    move-result-object v0

    return-object v0
.end method
