###### Class com.google.android.gms.internal.ads.zzahx (com.google.android.gms.internal.ads.zzahx)
.class final Lcom/google/android/gms/internal/ads/zzahx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzabb;

.field private b:J

.field private c:Z

.field private d:I

.field private e:J

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:J

.field private l:J

.field private m:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzabb;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahx;->a:Lcom/google/android/gms/internal/ads/zzabb;

    return-void
.end method

.method private final e(I)V
    .registers 10

    .line 1
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzahx;->l:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-nez v0, :cond_c

    return-void

    :cond_c
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzahx;->m:Z

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzahx;->b:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzahx;->k:J

    sub-long/2addr v4, v6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahx;->a:Lcom/google/android/gms/internal/ads/zzabb;

    long-to-int v4, v4

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzabb;->f(JIIILcom/google/android/gms/internal/ads/zzaba;)V

    return-void
.end method


# virtual methods
.method public final a(JIZ)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahx;->j:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahx;->g:Z

    if-nez v0, :cond_9

    goto :goto_11

    :cond_9
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahx;->c:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahx;->m:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahx;->j:Z

    return-void

    :cond_11
    :goto_11
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahx;->h:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahx;->g:Z

    if-eqz v0, :cond_1a

    goto :goto_1b

    :cond_1a
    return-void

    :cond_1b
    :goto_1b
    if-eqz p4, :cond_29

    iget-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzahx;->i:Z

    if-eqz p4, :cond_29

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahx;->b:J

    sub-long/2addr p1, v0

    long-to-int p2, p1

    add-int/2addr p3, p2

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzahx;->e(I)V

    :cond_29
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahx;->b:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahx;->k:J

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahx;->e:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahx;->l:J

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahx;->c:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahx;->m:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahx;->i:Z

    return-void
.end method

.method public final b([BII)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahx;->f:Z

    if-eqz v0, :cond_1e

    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzahx;->d:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_1a

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0x80

    const/4 p2, 0x0

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahx;->g:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzahx;->f:Z

    return-void

    :cond_1a
    sub-int/2addr p3, p2

    add-int/2addr v1, p3

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzahx;->d:I

    :cond_1e
    return-void
.end method

.method public final c()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahx;->f:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahx;->g:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahx;->h:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahx;->i:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahx;->j:Z

    return-void
.end method

.method public final d(JIIJZ)V
    .registers 9

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahx;->g:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahx;->h:Z

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzahx;->e:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahx;->d:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahx;->b:J

    const/4 p1, 0x1

    const/16 p2, 0x20

    if-lt p4, p2, :cond_33

    const/16 p2, 0x28

    if-ne p4, p2, :cond_15

    goto :goto_33

    :cond_15
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzahx;->i:Z

    if-eqz p2, :cond_24

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzahx;->j:Z

    if-nez p2, :cond_24

    if-eqz p7, :cond_22

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzahx;->e(I)V

    :cond_22
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahx;->i:Z

    :cond_24
    const/16 p2, 0x23

    if-le p4, p2, :cond_2c

    const/16 p2, 0x27

    if-ne p4, p2, :cond_33

    :cond_2c
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzahx;->j:Z

    xor-int/2addr p2, p1

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzahx;->h:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahx;->j:Z

    :cond_33
    :goto_33
    const/16 p2, 0x10

    if-lt p4, p2, :cond_3d

    const/16 p2, 0x15

    if-gt p4, p2, :cond_3d

    const/4 p2, 0x1

    goto :goto_3e

    :cond_3d
    const/4 p2, 0x0

    :goto_3e
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzahx;->c:Z

    if-nez p2, :cond_46

    const/16 p2, 0x9

    if-gt p4, p2, :cond_47

    :cond_46
    const/4 v0, 0x1

    :cond_47
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahx;->f:Z

    return-void
.end method
