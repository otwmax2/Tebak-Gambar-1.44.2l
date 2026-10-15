###### Class com.google.android.gms.internal.ads.zzzj (com.google.android.gms.internal.ads.zzzj)
.class public Lcom/google/android/gms/internal/ads/zzzj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaax;


# instance fields
.field private final a:J

.field private final b:J

.field private final c:I

.field private final d:J

.field private final e:I

.field private final f:J


# direct methods
.method public constructor <init>(JJIIZ)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzzj;->a:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzzj;->b:J

    const/4 p7, -0x1

    if-ne p6, p7, :cond_b

    const/4 p6, 0x1

    :cond_b
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzzj;->c:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzzj;->e:I

    const-wide/16 p6, -0x1

    cmp-long v0, p1, p6

    if-nez v0, :cond_1f

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzzj;->d:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1c
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzzj;->f:J

    return-void

    :cond_1f
    sub-long p6, p1, p3

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzzj;->d:J

    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/gms/internal/ads/zzzj;->e(JJI)J

    move-result-wide p1

    goto :goto_1c
.end method

.method private static e(JJI)J
    .registers 5

    sub-long/2addr p0, p2

    const-wide/16 p2, 0x0

    .line 1
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    const-wide/32 p2, 0x7a1200

    mul-long p0, p0, p2

    int-to-long p2, p4

    div-long/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public final a(J)J
    .registers 6

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzzj;->b:J

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzzj;->e:I

    invoke-static {p1, p2, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzzj;->e(JJI)J

    move-result-wide p1

    return-wide p1
.end method

.method public final b()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzzj;->f:J

    return-wide v0
.end method

.method public final c(J)Lcom/google/android/gms/internal/ads/zzaav;
    .registers 15

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzzj;->d:J

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_5c

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzzj;->e:I

    int-to-long v6, v6

    mul-long v6, v6, p1

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzzj;->c:I

    int-to-long v8, v8

    const-wide/32 v10, 0x7a1200

    div-long/2addr v6, v10

    div-long/2addr v6, v8

    mul-long v6, v6, v8

    cmp-long v10, v0, v4

    if-eqz v10, :cond_22

    sub-long/2addr v0, v8

    .line 2
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 3
    :cond_22
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzzj;->b:J

    add-long/2addr v2, v0

    .line 4
    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzzj;->a(J)J

    move-result-wide v0

    new-instance v6, Lcom/google/android/gms/internal/ads/zzaay;

    .line 5
    invoke-direct {v6, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaay;-><init>(JJ)V

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzzj;->d:J

    cmp-long v9, v7, v4

    if-eqz v9, :cond_56

    cmp-long v4, v0, p1

    if-gez v4, :cond_56

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzzj;->c:I

    int-to-long p1, p1

    add-long/2addr v2, p1

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzzj;->a:J

    cmp-long v0, v2, p1

    if-ltz v0, :cond_47

    goto :goto_56

    .line 6
    :cond_47
    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzzj;->a(J)J

    move-result-wide p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaay;

    .line 7
    invoke-direct {v0, p1, p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzaay;-><init>(JJ)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaav;

    invoke-direct {p1, v6, v0}, Lcom/google/android/gms/internal/ads/zzaav;-><init>(Lcom/google/android/gms/internal/ads/zzaay;Lcom/google/android/gms/internal/ads/zzaay;)V

    return-object p1

    .line 8
    :cond_56
    :goto_56
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaav;

    invoke-direct {p1, v6, v6}, Lcom/google/android/gms/internal/ads/zzaav;-><init>(Lcom/google/android/gms/internal/ads/zzaay;Lcom/google/android/gms/internal/ads/zzaay;)V

    return-object p1

    .line 9
    :cond_5c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaav;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaay;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzzj;->b:J

    .line 10
    invoke-direct {p2, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzaay;-><init>(JJ)V

    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzaav;-><init>(Lcom/google/android/gms/internal/ads/zzaay;Lcom/google/android/gms/internal/ads/zzaay;)V

    return-object p1
.end method

.method public final f()Z
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzzj;->d:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    const/4 v0, 0x1

    return v0
.end method
