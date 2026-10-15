###### Class com.google.android.gms.internal.ads.zzbld (com.google.android.gms.internal.ads.zzbld)
.class final Lcom/google/android/gms/internal/ads/zzbld;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhp;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzbkm;

.field final synthetic b:Lcom/google/android/gms/ads/internal/util/zzca;

.field final synthetic c:Lcom/google/android/gms/internal/ads/zzblr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzblr;Lcom/google/android/gms/internal/ads/zzapw;Lcom/google/android/gms/internal/ads/zzbkm;Lcom/google/android/gms/ads/internal/util/zzca;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbld;->c:Lcom/google/android/gms/internal/ads/zzblr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbld;->a:Lcom/google/android/gms/internal/ads/zzbkm;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbld;->b:Lcom/google/android/gms/ads/internal/util/zzca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbls;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbld;->c:Lcom/google/android/gms/internal/ads/zzblr;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzblr;->f(Lcom/google/android/gms/internal/ads/zzblr;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_9
    const-string p2, "JS Engine is requesting an update"

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbza;->f(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbld;->c:Lcom/google/android/gms/internal/ads/zzblr;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzblr;->a(Lcom/google/android/gms/internal/ads/zzblr;)I

    move-result p2

    if-nez p2, :cond_27

    const-string p2, "Starting reload."

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbza;->f(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbld;->c:Lcom/google/android/gms/internal/ads/zzblr;

    const/4 v0, 0x2

    .line 4
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzblr;->h(Lcom/google/android/gms/internal/ads/zzblr;I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbld;->c:Lcom/google/android/gms/internal/ads/zzblr;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzblr;->d(Lcom/google/android/gms/internal/ads/zzapw;)Lcom/google/android/gms/internal/ads/zzblq;

    :cond_27
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbld;->a:Lcom/google/android/gms/internal/ads/zzbkm;

    const-string v0, "/requestReload"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbld;->b:Lcom/google/android/gms/ads/internal/util/zzca;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/util/zzca;->a()Ljava/lang/Object;

    move-result-object v1

    .line 6
    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbls;->U0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhp;)V

    .line 7
    monitor-exit p1

    return-void

    :catchall_36
    move-exception p2

    monitor-exit p1
    :try_end_38
    .catchall {:try_start_9 .. :try_end_38} :catchall_36

    throw p2
.end method
