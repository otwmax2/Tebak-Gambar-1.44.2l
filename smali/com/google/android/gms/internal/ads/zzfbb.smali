###### Class com.google.android.gms.internal.ads.zzfbb (com.google.android.gms.internal.ads.zzfbb)
.class final Lcom/google/android/gms/internal/ads/zzfbb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfuf;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzfbe;

.field final synthetic b:Lcom/google/android/gms/internal/ads/zzfbf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfbf;Lcom/google/android/gms/internal/ads/zzfbe;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbb;->b:Lcom/google/android/gms/internal/ads/zzfbf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfbb;->a:Lcom/google/android/gms/internal/ads/zzfbe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbb;->b:Lcom/google/android/gms/internal/ads/zzfbf;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbb;->b:Lcom/google/android/gms/internal/ads/zzfbf;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfbf;->c(Lcom/google/android/gms/internal/ads/zzfbf;Lcom/google/android/gms/internal/ads/zzfbl;)V

    .line 2
    monitor-exit p1

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public final bridge synthetic c(Ljava/lang/Object;)V
    .registers 5

    .line 1
    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbb;->b:Lcom/google/android/gms/internal/ads/zzfbf;

    monitor-enter p1

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbb;->b:Lcom/google/android/gms/internal/ads/zzfbf;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfbf;->c(Lcom/google/android/gms/internal/ads/zzfbf;Lcom/google/android/gms/internal/ads/zzfbl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbb;->b:Lcom/google/android/gms/internal/ads/zzfbf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfbf;->b(Lcom/google/android/gms/internal/ads/zzfbf;)Ljava/util/ArrayDeque;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfbb;->a:Lcom/google/android/gms/internal/ads/zzfbe;

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbb;->b:Lcom/google/android/gms/internal/ads/zzfbf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfbf;->g(Lcom/google/android/gms/internal/ads/zzfbf;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_22

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfbf;->d(Lcom/google/android/gms/internal/ads/zzfbf;)V

    .line 5
    :cond_22
    monitor-exit p1

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p1
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_24

    throw v0
.end method
