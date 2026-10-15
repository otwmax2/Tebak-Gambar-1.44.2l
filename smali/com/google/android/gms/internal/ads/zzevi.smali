###### Class com.google.android.gms.internal.ads.zzevi (com.google.android.gms.internal.ads.zzevi)
.class public final Lcom/google/android/gms/internal/ads/zzevi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzevt;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/zzctw;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/internal/ads/zzevu;Lcom/google/android/gms/internal/ads/zzevs;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 4

    const/4 p3, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzevi;->c(Lcom/google/android/gms/internal/ads/zzevu;Lcom/google/android/gms/internal/ads/zzevs;Lcom/google/android/gms/internal/ads/zzctw;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized b()Lcom/google/android/gms/internal/ads/zzctw;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzevi;->a:Lcom/google/android/gms/internal/ads/zzctw;
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
    .registers 4

    monitor-enter p0

    if-eqz p3, :cond_6

    .line 1
    :try_start_3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzevi;->a:Lcom/google/android/gms/internal/ads/zzctw;

    goto :goto_14

    :cond_6
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzevu;->b:Lcom/google/android/gms/internal/ads/zzevr;

    .line 2
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzevs;->a(Lcom/google/android/gms/internal/ads/zzevr;)Lcom/google/android/gms/internal/ads/zzctv;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzctv;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzctw;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzevi;->a:Lcom/google/android/gms/internal/ads/zzctw;

    .line 3
    :goto_14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzevi;->a:Lcom/google/android/gms/internal/ads/zzctw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzctw;->zzb()Lcom/google/android/gms/internal/ads/zzcrt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrt;->j()Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcrt;->i(Lcom/google/android/gms/internal/ads/zzfut;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_24

    monitor-exit p0

    return-object p1

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final bridge synthetic d()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzevi;->b()Lcom/google/android/gms/internal/ads/zzctw;

    move-result-object v0

    return-object v0
.end method
