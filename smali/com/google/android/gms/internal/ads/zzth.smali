###### Class com.google.android.gms.internal.ads.zzth (com.google.android.gms.internal.ads.zzth)
.class final Lcom/google/android/gms/internal/ads/zzth;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzuj;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzuj;

.field private final b:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzuj;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzth;->a:Lcom/google/android/gms/internal/ads/zzuj;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzth;->b:J

    return-void
.end method


# virtual methods
.method public final W(J)I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzth;->a:Lcom/google/android/gms/internal/ads/zzuj;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzth;->b:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzuj;->W(J)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzjo;Lcom/google/android/gms/internal/ads/zzgr;I)I
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzth;->a:Lcom/google/android/gms/internal/ads/zzuj;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzuj;->a(Lcom/google/android/gms/internal/ads/zzjo;Lcom/google/android/gms/internal/ads/zzgr;I)I

    move-result p1

    const/4 p3, -0x4

    if-ne p1, p3, :cond_17

    const-wide/16 v0, 0x0

    iget-wide v2, p2, Lcom/google/android/gms/internal/ads/zzgr;->e:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzth;->b:J

    add-long/2addr v2, v4

    .line 2
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzgr;->e:J

    return p3

    :cond_17
    return p1
.end method

.method public final b()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzth;->a:Lcom/google/android/gms/internal/ads/zzuj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzuj;->b()Z

    move-result v0

    return v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/zzuj;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzth;->a:Lcom/google/android/gms/internal/ads/zzuj;

    return-object v0
.end method

.method public final d()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzth;->a:Lcom/google/android/gms/internal/ads/zzuj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzuj;->d()V

    return-void
.end method
