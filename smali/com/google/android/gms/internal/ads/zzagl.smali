###### Class com.google.android.gms.internal.ads.zzagl (com.google.android.gms.internal.ads.zzagl)
.class final Lcom/google/android/gms/internal/ads/zzagl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaax;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzagm;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzagm;Lcom/google/android/gms/internal/ads/zzagk;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagl;->a:Lcom/google/android/gms/internal/ads/zzagm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()J
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagl;->a:Lcom/google/android/gms/internal/ads/zzagm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzagm;->g(Lcom/google/android/gms/internal/ads/zzagm;)Lcom/google/android/gms/internal/ads/zzagy;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzagm;->f(Lcom/google/android/gms/internal/ads/zzagm;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzagy;->e(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final c(J)Lcom/google/android/gms/internal/ads/zzaav;
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagl;->a:Lcom/google/android/gms/internal/ads/zzagm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzagm;->g(Lcom/google/android/gms/internal/ads/zzagm;)Lcom/google/android/gms/internal/ads/zzagy;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzagy;->f(J)J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzagm;->e(Lcom/google/android/gms/internal/ads/zzagm;)J

    move-result-wide v3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzagm;->d(Lcom/google/android/gms/internal/ads/zzagm;)J

    move-result-wide v5

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzagm;->e(Lcom/google/android/gms/internal/ads/zzagm;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    mul-long v1, v1, v5

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzagm;->f(Lcom/google/android/gms/internal/ads/zzagm;)J

    move-result-wide v5

    div-long/2addr v1, v5

    add-long/2addr v3, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzagm;->e(Lcom/google/android/gms/internal/ads/zzagm;)J

    move-result-wide v7

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzagm;->d(Lcom/google/android/gms/internal/ads/zzagm;)J

    move-result-wide v0

    const-wide/16 v5, -0x1

    add-long v9, v0, v5

    const-wide/16 v0, -0x7530

    add-long v5, v3, v0

    .line 2
    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzew;->c0(JJJ)J

    move-result-wide v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaav;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaay;

    .line 3
    invoke-direct {v3, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzaay;-><init>(JJ)V

    invoke-direct {v2, v3, v3}, Lcom/google/android/gms/internal/ads/zzaav;-><init>(Lcom/google/android/gms/internal/ads/zzaay;Lcom/google/android/gms/internal/ads/zzaay;)V

    return-object v2
.end method

.method public final f()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
