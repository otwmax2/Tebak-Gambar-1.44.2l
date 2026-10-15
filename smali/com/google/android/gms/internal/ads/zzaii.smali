###### Class com.google.android.gms.internal.ads.zzaii (com.google.android.gms.internal.ads.zzaii)
.class final Lcom/google/android/gms/internal/ads/zzaii;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzeu;

.field private final b:Lcom/google/android/gms/internal/ads/zzen;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:J

.field private g:J

.field private h:J


# direct methods
.method constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeu;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeu;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaii;->a:Lcom/google/android/gms/internal/ads/zzeu;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaii;->f:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaii;->g:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaii;->h:J

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzen;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaii;->b:Lcom/google/android/gms/internal/ads/zzen;

    return-void
.end method

.method public static c(Lcom/google/android/gms/internal/ads/zzen;)J
    .registers 27

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v5, 0x9

    if-ge v2, v5, :cond_14

    return-wide v3

    :cond_14
    new-array v2, v5, [B

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v6, v5}, Lcom/google/android/gms/internal/ads/zzen;->b([BII)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    aget-byte v0, v2, v6

    and-int/lit16 v0, v0, 0xc4

    const/16 v1, 0x44

    if-eq v0, v1, :cond_26

    goto :goto_8a

    :cond_26
    const/4 v0, 0x2

    aget-byte v1, v2, v0

    const/4 v5, 0x4

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_8a

    aget-byte v1, v2, v5

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_8a

    const/4 v1, 0x5

    aget-byte v7, v2, v1

    const/4 v8, 0x1

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_8a

    const/16 v7, 0x8

    aget-byte v7, v2, v7

    const/4 v9, 0x3

    and-int/2addr v7, v9

    if-ne v7, v9, :cond_8a

    aget-byte v3, v2, v6

    int-to-long v3, v3

    aget-byte v6, v2, v8

    int-to-long v6, v6

    aget-byte v0, v2, v0

    int-to-long v10, v0

    aget-byte v0, v2, v9

    int-to-long v12, v0

    aget-byte v0, v2, v5

    int-to-long v14, v0

    const-wide/16 v16, 0x38

    and-long v16, v3, v16

    shr-long v16, v16, v9

    const-wide/16 v18, 0x3

    and-long v3, v3, v18

    const-wide/16 v20, 0xff

    and-long v6, v6, v20

    const-wide/16 v22, 0xf8

    and-long v24, v10, v22

    shr-long v24, v24, v9

    and-long v10, v10, v18

    and-long v12, v12, v20

    and-long v14, v14, v22

    const/16 v0, 0x1e

    shl-long v16, v16, v0

    const/16 v0, 0x1c

    shl-long v2, v3, v0

    or-long v2, v16, v2

    const/16 v0, 0x14

    shl-long v4, v6, v0

    or-long/2addr v2, v4

    const/16 v0, 0xf

    shl-long v4, v24, v0

    or-long/2addr v2, v4

    const/16 v0, 0xd

    shl-long v4, v10, v0

    or-long/2addr v2, v4

    shl-long v0, v12, v1

    or-long/2addr v0, v2

    shr-long v2, v14, v9

    or-long/2addr v0, v2

    return-wide v0

    :cond_8a
    :goto_8a
    return-wide v3
.end method

.method private final f(Lcom/google/android/gms/internal/ads/zzzv;)I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaii;->b:Lcom/google/android/gms/internal/ads/zzen;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzew;->f:[B

    .line 2
    array-length v2, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->d([BI)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaii;->c:Z

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    return v2
.end method

.method private static final g([BI)I
    .registers 5

    .line 1
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, v0, 0x18

    shl-int/lit8 v0, v1, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 v0, v2, 0x8

    or-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzaau;)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaii;->e:Z

    const/16 v1, 0x1ba

    const-wide/16 v2, 0x4e20

    const/4 v4, 0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    if-nez v0, :cond_68

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->d()J

    move-result-wide v8

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    int-to-long v2, v0

    sub-long/2addr v8, v2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v2

    cmp-long v10, v2, v8

    if-eqz v10, :cond_25

    iput-wide v8, p2, Lcom/google/android/gms/internal/ads/zzaau;->a:J

    goto :goto_67

    :cond_25
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaii;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 2
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaii;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzzk;

    .line 4
    invoke-virtual {p1, p2, v7, v0, v7}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaii;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    :goto_44
    if-lt v0, p2, :cond_62

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v2

    .line 5
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzaii;->g([BI)I

    move-result v2

    if-ne v2, v1, :cond_5f

    add-int/lit8 v2, v0, 0x4

    .line 6
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaii;->c(Lcom/google/android/gms/internal/ads/zzen;)J

    move-result-wide v2

    cmp-long v8, v2, v5

    if-eqz v8, :cond_5f

    move-wide v5, v2

    goto :goto_62

    :cond_5f
    add-int/lit8 v0, v0, -0x1

    goto :goto_44

    :cond_62
    :goto_62
    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzaii;->g:J

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzaii;->e:Z

    const/4 v4, 0x0

    :goto_67
    return v4

    :cond_68
    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zzaii;->g:J

    cmp-long v0, v8, v5

    if-nez v0, :cond_72

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaii;->f(Lcom/google/android/gms/internal/ads/zzzv;)I

    return v7

    :cond_72
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaii;->d:Z

    const-wide/16 v8, 0x0

    if-nez v0, :cond_cf

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->d()J

    move-result-wide v10

    .line 9
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v2

    cmp-long v10, v2, v8

    if-eqz v10, :cond_8c

    iput-wide v8, p2, Lcom/google/android/gms/internal/ads/zzaau;->a:J

    goto :goto_ce

    :cond_8c
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaii;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 10
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaii;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzzk;

    .line 12
    invoke-virtual {p1, p2, v7, v0, v7}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaii;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v0

    :goto_a9
    add-int/lit8 v2, v0, -0x3

    if-ge p2, v2, :cond_c9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v2

    .line 13
    invoke-static {v2, p2}, Lcom/google/android/gms/internal/ads/zzaii;->g([BI)I

    move-result v2

    if-ne v2, v1, :cond_c6

    add-int/lit8 v2, p2, 0x4

    .line 14
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaii;->c(Lcom/google/android/gms/internal/ads/zzen;)J

    move-result-wide v2

    cmp-long v8, v2, v5

    if-eqz v8, :cond_c6

    move-wide v5, v2

    goto :goto_c9

    :cond_c6
    add-int/lit8 p2, p2, 0x1

    goto :goto_a9

    :cond_c9
    :goto_c9
    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzaii;->f:J

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzaii;->d:Z

    const/4 v4, 0x0

    :goto_ce
    return v4

    :cond_cf
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaii;->f:J

    cmp-long p2, v0, v5

    if-nez p2, :cond_d9

    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaii;->f(Lcom/google/android/gms/internal/ads/zzzv;)I

    return v7

    :cond_d9
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaii;->a:Lcom/google/android/gms/internal/ads/zzeu;

    .line 17
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzeu;->b(J)J

    move-result-wide v0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaii;->a:Lcom/google/android/gms/internal/ads/zzeu;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaii;->g:J

    .line 18
    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzeu;->b(J)J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaii;->h:J

    cmp-long p2, v2, v8

    if-gez p2, :cond_10b

    new-instance p2, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid duration: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ". Using TIME_UNSET instead."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PsDurationReader"

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzaii;->h:J

    .line 20
    :cond_10b
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaii;->f(Lcom/google/android/gms/internal/ads/zzzv;)I

    return v7
.end method

.method public final b()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaii;->h:J

    return-wide v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/zzeu;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaii;->a:Lcom/google/android/gms/internal/ads/zzeu;

    return-object v0
.end method

.method public final e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaii;->c:Z

    return v0
.end method
