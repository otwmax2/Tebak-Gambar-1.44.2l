###### Class com.google.android.gms.internal.ads.zzabc (com.google.android.gms.internal.ads.zzabc)
.class public final Lcom/google/android/gms/internal/ads/zzabc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:[B

.field private b:Z

.field private c:I

.field private d:J

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzabc;->a:[B

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzabb;Lcom/google/android/gms/internal/ads/zzaba;)V
    .registers 11

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzabc;->c:I

    if-lez v0, :cond_14

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzabc;->d:J

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzabc;->e:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzabc;->f:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzabc;->g:I

    move-object v1, p1

    move-object v7, p2

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzabb;->f(JIIILcom/google/android/gms/internal/ads/zzaba;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabc;->c:I

    :cond_14
    return-void
.end method

.method public final b()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzabc;->b:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzabc;->c:I

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzabb;JIIILcom/google/android/gms/internal/ads/zzaba;)V
    .registers 10

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzabc;->g:I

    add-int v1, p5, p6

    if-gt v0, v1, :cond_29

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzabc;->b:Z

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzabc;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzabc;->c:I

    if-nez v0, :cond_1a

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzabc;->d:J

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzabc;->e:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzabc;->f:I

    :cond_1a
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzabc;->f:I

    add-int/2addr p2, p5

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzabc;->f:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzabc;->g:I

    const/16 p2, 0x10

    if-lt v1, p2, :cond_28

    invoke-virtual {p0, p1, p7}, Lcom/google/android/gms/internal/ads/zzabc;->a(Lcom/google/android/gms/internal/ads/zzabb;Lcom/google/android/gms/internal/ads/zzaba;)V

    :cond_28
    return-void

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "TrueHD chunk samples must be contiguous in the sample queue."

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzzv;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzabc;->b:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabc;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzzv;->m([BII)V

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzabc;->a:[B

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzyv;->g:I

    const/4 v0, 0x4

    aget-byte v0, p1, v0

    const/4 v1, -0x8

    if-ne v0, v1, :cond_35

    const/4 v0, 0x5

    aget-byte v0, p1, v0

    const/16 v1, 0x72

    if-ne v0, v1, :cond_35

    const/4 v0, 0x6

    aget-byte v0, p1, v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_35

    const/4 v0, 0x7

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xfe

    const/16 v0, 0xba

    if-eq p1, v0, :cond_32

    goto :goto_35

    :cond_32
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzabc;->b:Z

    :cond_35
    :goto_35
    return-void
.end method
