###### Class com.google.android.gms.internal.ads.zzabr (com.google.android.gms.internal.ads.zzabr)
.class final Lcom/google/android/gms/internal/ads/zzabr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field protected final a:Lcom/google/android/gms/internal/ads/zzabb;

.field private final b:I

.field private final c:I

.field private final d:J

.field private final e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:[J

.field private l:[I


# direct methods
.method public constructor <init>(IIJILcom/google/android/gms/internal/ads/zzabb;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_8

    const/4 p2, 0x2

    :cond_8
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzabr;->d:J

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzabr;->e:I

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzabr;->a:Lcom/google/android/gms/internal/ads/zzabb;

    if-ne p2, v0, :cond_13

    const/high16 p3, 0x63640000

    goto :goto_15

    :cond_13
    const/high16 p3, 0x62770000

    :goto_15
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/zzabr;->i(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzabr;->b:I

    if-ne p2, v0, :cond_24

    const/high16 p2, 0x62640000

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzabr;->i(II)I

    move-result p1

    goto :goto_25

    :cond_24
    const/4 p1, -0x1

    :goto_25
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabr;->c:I

    const/16 p1, 0x200

    new-array p2, p1, [J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabr;->k:[J

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabr;->l:[I

    return-void
.end method

.method private static i(II)I
    .registers 3

    div-int/lit8 v0, p0, 0xa

    rem-int/lit8 p0, p0, 0xa

    add-int/lit8 p0, p0, 0x30

    shl-int/lit8 p0, p0, 0x8

    add-int/lit8 v0, v0, 0x30

    or-int/2addr p0, v0

    or-int/2addr p0, p1

    return p0
.end method

.method private final j(I)J
    .registers 6

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->d:J

    int-to-long v2, p1

    mul-long v0, v0, v2

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzabr;->e:I

    int-to-long v2, p1

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final k(I)Lcom/google/android/gms/internal/ads/zzaay;
    .registers 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaay;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabr;->l:[I

    aget v1, v1, p1

    int-to-long v1, v1

    const/4 v3, 0x1

    .line 2
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzabr;->j(I)J

    move-result-wide v3

    mul-long v1, v1, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzabr;->k:[J

    .line 3
    aget-wide v4, v3, p1

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzaay;-><init>(JJ)V

    return-object v0
.end method


# virtual methods
.method public final a(J)Lcom/google/android/gms/internal/ads/zzaav;
    .registers 6

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzabr;->j(I)J

    move-result-wide v1

    .line 2
    div-long/2addr p1, v1

    long-to-int p2, p1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzabr;->l:[I

    .line 3
    invoke-static {p1, p2, v0, v0}, Lcom/google/android/gms/internal/ads/zzew;->N([IIZZ)I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabr;->l:[I

    .line 4
    aget v1, v1, p1

    if-ne v1, p2, :cond_1d

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaav;

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzabr;->k(I)Lcom/google/android/gms/internal/ads/zzaay;

    move-result-object p1

    invoke-direct {p2, p1, p1}, Lcom/google/android/gms/internal/ads/zzaav;-><init>(Lcom/google/android/gms/internal/ads/zzaay;Lcom/google/android/gms/internal/ads/zzaay;)V

    return-object p2

    .line 6
    :cond_1d
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzabr;->k(I)Lcom/google/android/gms/internal/ads/zzaay;

    move-result-object p2

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->k:[J

    .line 7
    array-length v0, v0

    if-ge p1, v0, :cond_31

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaav;

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzabr;->k(I)Lcom/google/android/gms/internal/ads/zzaay;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzaav;-><init>(Lcom/google/android/gms/internal/ads/zzaay;Lcom/google/android/gms/internal/ads/zzaay;)V

    return-object v0

    :cond_31
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaav;

    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzaav;-><init>(Lcom/google/android/gms/internal/ads/zzaay;Lcom/google/android/gms/internal/ads/zzaay;)V

    return-object p1
.end method

.method public final b(J)V
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->j:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabr;->l:[I

    array-length v1, v1

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->k:[J

    .line 2
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->k:[J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->l:[I

    .line 3
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->l:[I

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->k:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzabr;->j:I

    .line 4
    aput-wide p1, v0, v1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzabr;->l:[I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzabr;->i:I

    .line 5
    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzabr;->j:I

    return-void
.end method

.method public final c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->k:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzabr;->j:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->k:[J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->l:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzabr;->j:I

    .line 2
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->l:[I

    return-void
.end method

.method public final d()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->i:I

    return-void
.end method

.method public final e(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabr;->f:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabr;->g:I

    return-void
.end method

.method public final f(J)V
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->j:I

    if-nez v0, :cond_8

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabr;->h:I

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->k:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/gms/internal/ads/zzew;->O([JJZZ)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzabr;->l:[I

    .line 2
    aget p1, p2, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabr;->h:I

    return-void
.end method

.method public final g(I)Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->b:I

    if-eq v0, p1, :cond_b

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->c:I

    if-ne v0, p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    return p1

    :cond_b
    :goto_b
    const/4 p1, 0x1

    return p1
.end method

.method public final h(Lcom/google/android/gms/internal/ads/zzzv;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->g:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabr;->a:Lcom/google/android/gms/internal/ads/zzabb;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzabb;->b(Lcom/google/android/gms/internal/ads/zzr;IZ)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->g:I

    const/4 p1, 0x1

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_39

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzabr;->f:I

    if-lez v1, :cond_34

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzabr;->a:Lcom/google/android/gms/internal/ads/zzabb;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzabr;->h:I

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzabr;->j(I)J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabr;->l:[I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzabr;->h:I

    .line 3
    invoke-static {v1, v6}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzabr;->f:I

    if-ltz v1, :cond_2e

    const/4 v6, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v6, 0x0

    :goto_2f
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 4
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzabb;->f(JIIILcom/google/android/gms/internal/ads/zzaba;)V

    :cond_34
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzabr;->h:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzabr;->h:I

    :cond_39
    return v0
.end method
