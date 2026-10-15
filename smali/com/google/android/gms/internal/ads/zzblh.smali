###### Class com.google.android.gms.internal.ads.zzblh (com.google.android.gms.internal.ads.zzblh)
.class final Lcom/google/android/gms/internal/ads/zzblh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbzu;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzblq;

.field final synthetic b:Lcom/google/android/gms/internal/ads/zzfec;

.field final synthetic c:Lcom/google/android/gms/internal/ads/zzblr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzblr;Lcom/google/android/gms/internal/ads/zzblq;Lcom/google/android/gms/internal/ads/zzfec;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzblh;->c:Lcom/google/android/gms/internal/ads/zzblr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzblh;->a:Lcom/google/android/gms/internal/ads/zzblq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzblh;->b:Lcom/google/android/gms/internal/ads/zzfec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblh;->c:Lcom/google/android/gms/internal/ads/zzblr;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzblr;->f(Lcom/google/android/gms/internal/ads/zzblr;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzblh;->c:Lcom/google/android/gms/internal/ads/zzblr;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzblr;->h(Lcom/google/android/gms/internal/ads/zzblr;I)V

    const-string v1, "Failed loading new engine. Marking new engine destroyable."

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzblh;->a:Lcom/google/android/gms/internal/ads/zzblq;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzblq;->g()V

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcd;->d:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzblh;->c:Lcom/google/android/gms/internal/ads/zzblr;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzblr;->e(Lcom/google/android/gms/internal/ads/zzblr;)Lcom/google/android/gms/internal/ads/zzfep;

    move-result-object v2

    if-eqz v2, :cond_3e

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzblr;->e(Lcom/google/android/gms/internal/ads/zzblr;)Lcom/google/android/gms/internal/ads/zzfep;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzblh;->b:Lcom/google/android/gms/internal/ads/zzfec;

    const/4 v3, 0x0

    .line 5
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzfec;->y0(Z)Lcom/google/android/gms/internal/ads/zzfec;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzfec;->j()Lcom/google/android/gms/internal/ads/zzfeg;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfep;->b(Lcom/google/android/gms/internal/ads/zzfeg;)V

    .line 6
    :cond_3e
    monitor-exit v0

    return-void

    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_40

    throw v1
.end method
