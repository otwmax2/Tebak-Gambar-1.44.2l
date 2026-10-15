###### Class com.google.android.gms.ads.internal.util.zzbn (com.google.android.gms.ads.internal.util.zzbn)
.class public final Lcom/google/android/gms/ads/internal/util/zzbn;
.super Lcom/google/android/gms/internal/ads/zzako;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final A:Lcom/google/android/gms/internal/ads/zzbzs;

.field private final B:Lcom/google/android/gms/internal/ads/zzbyz;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzbzs;)V
    .registers 5

    .line 1
    new-instance p2, Lcom/google/android/gms/ads/internal/util/i;

    invoke-direct {p2, p3}, Lcom/google/android/gms/ads/internal/util/i;-><init>(Lcom/google/android/gms/internal/ads/zzbzs;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzako;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzaks;)V

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/zzbn;->A:Lcom/google/android/gms/internal/ads/zzbzs;

    .line 2
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbyz;

    const/4 p3, 0x0

    .line 3
    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzbyz;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzbn;->B:Lcom/google/android/gms/internal/ads/zzbyz;

    const-string v0, "GET"

    .line 4
    invoke-virtual {p2, p1, v0, p3, p3}, Lcom/google/android/gms/internal/ads/zzbyz;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    return-void
.end method


# virtual methods
.method protected final k(Lcom/google/android/gms/internal/ads/zzakk;)Lcom/google/android/gms/internal/ads/zzaku;
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzall;->b(Lcom/google/android/gms/internal/ads/zzakk;)Lcom/google/android/gms/internal/ads/zzajx;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzaku;->b(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzajx;)Lcom/google/android/gms/internal/ads/zzaku;

    move-result-object p1

    return-object p1
.end method

.method protected final bridge synthetic r(Ljava/lang/Object;)V
    .registers 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzakk;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbn;->B:Lcom/google/android/gms/internal/ads/zzbyz;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzakk;->c:Ljava/util/Map;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzakk;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbyz;->f(Ljava/util/Map;I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbn;->B:Lcom/google/android/gms/internal/ads/zzbyz;

    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzakk;->b:[B

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbyz;->l()Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_1b

    :cond_16
    if-eqz v1, :cond_1b

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbyz;->h([B)V

    .line 6
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbn;->A:Lcom/google/android/gms/internal/ads/zzbzs;

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbzs;->c(Ljava/lang/Object;)Z

    return-void
.end method
