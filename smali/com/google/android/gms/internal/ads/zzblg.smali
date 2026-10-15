###### Class com.google.android.gms.internal.ads.zzblg (com.google.android.gms.internal.ads.zzblg)
.class final Lcom/google/android/gms/internal/ads/zzblg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbzw;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzblq;

.field final synthetic b:Lcom/google/android/gms/internal/ads/zzfec;

.field final synthetic c:Lcom/google/android/gms/internal/ads/zzblr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzblr;Lcom/google/android/gms/internal/ads/zzblq;Lcom/google/android/gms/internal/ads/zzfec;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzblg;->c:Lcom/google/android/gms/internal/ads/zzblr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzblg;->a:Lcom/google/android/gms/internal/ads/zzblq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzblg;->b:Lcom/google/android/gms/internal/ads/zzfec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .registers 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbkm;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzblg;->c:Lcom/google/android/gms/internal/ads/zzblr;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzblr;->f(Lcom/google/android/gms/internal/ads/zzblr;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblg;->c:Lcom/google/android/gms/internal/ads/zzblr;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzblr;->h(Lcom/google/android/gms/internal/ads/zzblr;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblg;->c:Lcom/google/android/gms/internal/ads/zzblr;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzblr;->c(Lcom/google/android/gms/internal/ads/zzblr;)Lcom/google/android/gms/internal/ads/zzblq;

    move-result-object v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzblg;->a:Lcom/google/android/gms/internal/ads/zzblq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzblr;->c(Lcom/google/android/gms/internal/ads/zzblr;)Lcom/google/android/gms/internal/ads/zzblq;

    move-result-object v0

    if-eq v1, v0, :cond_2d

    const-string v0, "New JS engine is loaded, marking previous one as destroyable."

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblg;->c:Lcom/google/android/gms/internal/ads/zzblr;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzblr;->c(Lcom/google/android/gms/internal/ads/zzblr;)Lcom/google/android/gms/internal/ads/zzblq;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzblq;->g()V

    :cond_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblg;->c:Lcom/google/android/gms/internal/ads/zzblr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzblg;->a:Lcom/google/android/gms/internal/ads/zzblq;

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzblr;->g(Lcom/google/android/gms/internal/ads/zzblr;Lcom/google/android/gms/internal/ads/zzblq;)V

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcd;->d:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblg;->c:Lcom/google/android/gms/internal/ads/zzblr;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzblr;->e(Lcom/google/android/gms/internal/ads/zzblr;)Lcom/google/android/gms/internal/ads/zzfep;

    move-result-object v1

    if-eqz v1, :cond_5b

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzblr;->e(Lcom/google/android/gms/internal/ads/zzblr;)Lcom/google/android/gms/internal/ads/zzfep;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzblg;->b:Lcom/google/android/gms/internal/ads/zzfec;

    const/4 v2, 0x1

    .line 7
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzfec;->y0(Z)Lcom/google/android/gms/internal/ads/zzfec;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzfec;->j()Lcom/google/android/gms/internal/ads/zzfeg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfep;->b(Lcom/google/android/gms/internal/ads/zzfeg;)V

    .line 8
    :cond_5b
    monitor-exit p1

    return-void

    :catchall_5d
    move-exception v0

    monitor-exit p1
    :try_end_5f
    .catchall {:try_start_9 .. :try_end_5f} :catchall_5d

    throw v0
.end method
