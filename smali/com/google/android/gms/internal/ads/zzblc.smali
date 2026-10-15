###### Class com.google.android.gms.internal.ads.zzblc (com.google.android.gms.internal.ads.zzblc)
.class final Lcom/google/android/gms/internal/ads/zzblc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhp;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzblq;

.field final synthetic b:Lcom/google/android/gms/internal/ads/zzbkm;

.field final synthetic c:Lcom/google/android/gms/internal/ads/zzblr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzblr;Lcom/google/android/gms/internal/ads/zzblq;Lcom/google/android/gms/internal/ads/zzbkm;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzblc;->c:Lcom/google/android/gms/internal/ads/zzblr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzblc;->a:Lcom/google/android/gms/internal/ads/zzblq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzblc;->b:Lcom/google/android/gms/internal/ads/zzbkm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbls;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzblc;->c:Lcom/google/android/gms/internal/ads/zzblr;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzblr;->f(Lcom/google/android/gms/internal/ads/zzblr;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_9
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzblc;->a:Lcom/google/android/gms/internal/ads/zzblq;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbzz;->a()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_47

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzblc;->a:Lcom/google/android/gms/internal/ads/zzblq;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbzz;->a()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1c

    goto :goto_47

    .line 4
    :cond_1c
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzblc;->c:Lcom/google/android/gms/internal/ads/zzblr;

    const/4 v0, 0x0

    .line 5
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzblr;->h(Lcom/google/android/gms/internal/ads/zzblr;I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzblc;->b:Lcom/google/android/gms/internal/ads/zzbkm;

    const-string v0, "/log"

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbho;->g:Lcom/google/android/gms/internal/ads/zzbhp;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbls;->c1(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhp;)V

    const-string v0, "/result"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbho;->o:Lcom/google/android/gms/internal/ads/zzbid;

    .line 7
    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbls;->c1(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhp;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzblc;->a:Lcom/google/android/gms/internal/ads/zzblq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblc;->b:Lcom/google/android/gms/internal/ads/zzbkm;

    .line 8
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzbzz;->d(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzblc;->c:Lcom/google/android/gms/internal/ads/zzblr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblc;->a:Lcom/google/android/gms/internal/ads/zzblq;

    .line 9
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzblr;->g(Lcom/google/android/gms/internal/ads/zzblr;Lcom/google/android/gms/internal/ads/zzblq;)V

    const-string p2, "Successfully loaded JS Engine."

    .line 10
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    .line 11
    monitor-exit p1

    return-void

    .line 12
    :cond_47
    :goto_47
    monitor-exit p1

    return-void

    :catchall_49
    move-exception p2

    .line 13
    monitor-exit p1
    :try_end_4b
    .catchall {:try_start_9 .. :try_end_4b} :catchall_49

    throw p2
.end method
