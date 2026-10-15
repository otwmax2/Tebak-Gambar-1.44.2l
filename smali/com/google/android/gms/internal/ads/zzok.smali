###### Class com.google.android.gms.internal.ads.zzok (com.google.android.gms.internal.ads.zzok)
.class final Lcom/google/android/gms/internal/ads/zzok;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzoj;

.field private b:I

.field private c:J

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzoj;

    .line 2
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzoj;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzok;->a:Lcom/google/android/gms/internal/ads/zzoj;

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzok;->h(I)V

    return-void
.end method

.method private final h(I)V
    .registers 8

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzok;->b:I

    const-wide/16 v0, 0x2710

    if-eqz p1, :cond_1c

    const/4 v2, 0x1

    if-eq p1, v2, :cond_19

    const/4 v0, 0x2

    if-eq p1, v0, :cond_15

    const/4 v0, 0x3

    if-eq p1, v0, :cond_15

    const-wide/32 v0, 0x7a120

    :goto_12
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzok;->d:J

    return-void

    :cond_15
    const-wide/32 v0, 0x989680

    goto :goto_12

    :cond_19
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzok;->d:J

    return-void

    :cond_1c
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzok;->e:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzok;->f:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzok;->c:J

    goto :goto_12
.end method


# virtual methods
.method public final a()J
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzok;->a:Lcom/google/android/gms/internal/ads/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoj;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()J
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzok;->a:Lcom/google/android/gms/internal/ads/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoj;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzok;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzok;->h(I)V

    :cond_9
    return-void
.end method

.method public final d()V
    .registers 2

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzok;->h(I)V

    return-void
.end method

.method public final e()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzok;->h(I)V

    return-void
.end method

.method public final f()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzok;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final g(J)Z
    .registers 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzok;->a:Lcom/google/android/gms/internal/ads/zzoj;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzok;->e:J

    sub-long v1, p1, v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzok;->d:J

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-gez v6, :cond_e

    return v5

    :cond_e
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzok;->e:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoj;->c()Z

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzok;->b:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v1, :cond_48

    const/4 p1, 0x2

    if-eq v1, v3, :cond_31

    if-eq v1, p1, :cond_29

    if-eq v1, v2, :cond_22

    goto :goto_6d

    :cond_22
    if-nez v0, :cond_25

    goto :goto_6e

    .line 2
    :cond_25
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzok;->h(I)V

    return v3

    :cond_29
    if-eqz v0, :cond_2d

    const/4 v5, 0x1

    goto :goto_6e

    .line 3
    :cond_2d
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzok;->h(I)V

    return v5

    :cond_31
    if-eqz v0, :cond_44

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzok;->a:Lcom/google/android/gms/internal/ads/zzoj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzoj;->a()J

    move-result-wide v1

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzok;->f:J

    cmp-long p2, v1, v4

    if-gtz p2, :cond_40

    goto :goto_6d

    .line 4
    :cond_40
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzok;->h(I)V

    return v3

    .line 5
    :cond_44
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzok;->h(I)V

    goto :goto_6d

    :cond_48
    if-eqz v0, :cond_63

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzok;->a:Lcom/google/android/gms/internal/ads/zzoj;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzoj;->b()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzok;->c:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_57

    goto :goto_6e

    :cond_57
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzok;->a:Lcom/google/android/gms/internal/ads/zzoj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzoj;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzok;->f:J

    .line 8
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzok;->h(I)V

    return v3

    :cond_63
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzok;->c:J

    sub-long/2addr p1, v3

    const-wide/32 v3, 0x7a120

    cmp-long v1, p1, v3

    if-gtz v1, :cond_6f

    :goto_6d
    move v5, v0

    :goto_6e
    return v5

    .line 9
    :cond_6f
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzok;->h(I)V

    return v5
.end method
