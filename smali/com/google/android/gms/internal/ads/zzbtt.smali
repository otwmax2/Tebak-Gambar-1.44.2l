###### Class com.google.android.gms.internal.ads.zzbtt (com.google.android.gms.internal.ads.zzbtt)
.class final Lcom/google/android/gms/internal/ads/zzbtt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/gms/internal/ads/zzbtv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbtv;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtt;->b:Lcom/google/android/gms/internal/ads/zzbtv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtt;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtt;->b:Lcom/google/android/gms/internal/ads/zzbtv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbtv;->a(Lcom/google/android/gms/internal/ads/zzbtv;)Ljava/util/WeakHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtt;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbtu;

    if-eqz v0, :cond_3a

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzbtu;->a:J

    .line 2
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbca;->a:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_2c

    goto :goto_3a

    .line 4
    :cond_2c
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbtr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbtt;->a:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbtu;->b:Lcom/google/android/gms/internal/ads/zzbts;

    .line 5
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbtr;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbts;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbtr;->a()Lcom/google/android/gms/internal/ads/zzbts;

    move-result-object v0

    goto :goto_45

    .line 6
    :cond_3a
    :goto_3a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbtr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtt;->a:Landroid/content/Context;

    .line 7
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbtr;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbtr;->a()Lcom/google/android/gms/internal/ads/zzbts;

    move-result-object v0

    :goto_45
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtt;->b:Lcom/google/android/gms/internal/ads/zzbtv;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbtv;->a(Lcom/google/android/gms/internal/ads/zzbtv;)Ljava/util/WeakHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbtt;->a:Landroid/content/Context;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbtu;

    .line 8
    invoke-direct {v4, v1, v0}, Lcom/google/android/gms/internal/ads/zzbtu;-><init>(Lcom/google/android/gms/internal/ads/zzbtv;Lcom/google/android/gms/internal/ads/zzbts;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
