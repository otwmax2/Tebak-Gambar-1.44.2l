###### Class com.google.android.gms.internal.ads.zzahr (com.google.android.gms.internal.ads.zzahr)
.class final Lcom/google/android/gms/internal/ads/zzahr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzabb;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:I

.field private f:I

.field private g:J

.field private h:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzabb;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahr;->a:Lcom/google/android/gms/internal/ads/zzabb;

    return-void
.end method


# virtual methods
.method public final a([BII)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahr;->c:Z

    if-eqz v0, :cond_20

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzahr;->f:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_1c

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xc0

    shr-int/lit8 p1, p1, 0x6

    const/4 p2, 0x0

    if-nez p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahr;->d:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzahr;->c:Z

    return-void

    :cond_1c
    sub-int/2addr p3, p2

    add-int/2addr v1, p3

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzahr;->f:I

    :cond_20
    return-void
.end method

.method public final b(JIZ)V
    .registers 12

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzahr;->e:I

    const/16 v1, 0xb6

    if-ne v0, v1, :cond_26

    if-eqz p4, :cond_26

    iget-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzahr;->b:Z

    if-eqz p4, :cond_26

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzahr;->h:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p4, v1, v3

    if-eqz p4, :cond_26

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzahr;->g:J

    sub-long v3, p1, v3

    iget-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzahr;->d:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahr;->a:Lcom/google/android/gms/internal/ads/zzabb;

    long-to-int v4, v3

    const/4 v6, 0x0

    move v3, p4

    move v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzabb;->f(JIIILcom/google/android/gms/internal/ads/zzaba;)V

    :cond_26
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzahr;->e:I

    const/16 p4, 0xb3

    if-eq p3, p4, :cond_2e

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahr;->g:J

    :cond_2e
    return-void
.end method

.method public final c(IJ)V
    .registers 8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahr;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahr;->d:Z

    const/16 v1, 0xb3

    const/16 v2, 0xb6

    const/4 v3, 0x1

    if-eq p1, v2, :cond_13

    if-ne p1, v1, :cond_11

    const/16 p1, 0xb3

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v1, 0x1

    :goto_14
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzahr;->b:Z

    if-ne p1, v2, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v3, 0x0

    :goto_1a
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzahr;->c:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahr;->f:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzahr;->h:J

    return-void
.end method

.method public final d()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahr;->b:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahr;->c:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahr;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahr;->e:I

    return-void
.end method
