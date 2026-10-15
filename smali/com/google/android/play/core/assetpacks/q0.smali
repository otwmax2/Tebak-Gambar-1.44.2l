###### Class com.google.android.play.core.assetpacks.q0 (com.google.android.play.core.assetpacks.q0)
.class final Lcom/google/android/play/core/assetpacks/q0;
.super Ljava/io/FilterInputStream;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field private final o:Lcom/google/android/play/core/assetpacks/g2;

.field private p:[B

.field private q:J

.field private r:Z

.field private s:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Lcom/google/android/play/core/assetpacks/g2;

    .line 2
    invoke-direct {p1}, Lcom/google/android/play/core/assetpacks/g2;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/q0;->o:Lcom/google/android/play/core/assetpacks/g2;

    const/16 p1, 0x1000

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/q0;->p:[B

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/play/core/assetpacks/q0;->r:Z

    iput-boolean p1, p0, Lcom/google/android/play/core/assetpacks/q0;->s:Z

    return-void
.end method

.method private final f([BII)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private final g(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/q0;->p:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/play/core/assetpacks/q0;->f([BII)I

    move-result v0

    if-eq v0, p1, :cond_1c

    sub-int v2, p1, v0

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/q0;->p:[B

    .line 2
    invoke-direct {p0, v3, v0, v2}, Lcom/google/android/play/core/assetpacks/q0;->f([BII)I

    move-result v3

    if-ne v3, v2, :cond_14

    goto :goto_1c

    .line 3
    :cond_14
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/q0;->o:Lcom/google/android/play/core/assetpacks/g2;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/q0;->p:[B

    .line 4
    invoke-virtual {p1, v2, v1, v0}, Lcom/google/android/play/core/assetpacks/g2;->b([BII)I

    return v1

    .line 5
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/q0;->o:Lcom/google/android/play/core/assetpacks/g2;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/q0;->p:[B

    .line 6
    invoke-virtual {v0, v2, v1, p1}, Lcom/google/android/play/core/assetpacks/g2;->b([BII)I

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method final b()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/play/core/assetpacks/q0;->q:J

    return-wide v0
.end method

.method final c()Lcom/google/android/play/core/assetpacks/h3;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/android/play/core/assetpacks/q0;->q:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_13

    :cond_8
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/q0;->p:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/play/core/assetpacks/q0;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    :cond_13
    iget-boolean v0, p0, Lcom/google/android/play/core/assetpacks/q0;->r:Z

    if-nez v0, :cond_8d

    iget-boolean v0, p0, Lcom/google/android/play/core/assetpacks/q0;->s:Z

    if-eqz v0, :cond_1c

    goto :goto_8d

    :cond_1c
    const/16 v0, 0x1e

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/play/core/assetpacks/q0;->g(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2e

    iput-boolean v1, p0, Lcom/google/android/play/core/assetpacks/q0;->r:Z

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/q0;->o:Lcom/google/android/play/core/assetpacks/g2;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/g2;->c()Lcom/google/android/play/core/assetpacks/h3;

    move-result-object v0

    return-object v0

    :cond_2e
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/q0;->o:Lcom/google/android/play/core/assetpacks/g2;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/g2;->c()Lcom/google/android/play/core/assetpacks/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/h3;->d()Z

    move-result v2

    if-eqz v2, :cond_3d

    iput-boolean v1, p0, Lcom/google/android/play/core/assetpacks/q0;->s:Z

    return-object v0

    :cond_3d
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/h3;->b()J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    cmp-long v0, v2, v4

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/q0;->o:Lcom/google/android/play/core/assetpacks/g2;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/g2;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1e

    int-to-long v2, v0

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/q0;->p:[B

    .line 6
    array-length v4, v4

    int-to-long v5, v4

    cmp-long v7, v2, v5

    if-lez v7, :cond_69

    :cond_5b
    add-int/2addr v4, v4

    int-to-long v5, v4

    cmp-long v7, v5, v2

    if-ltz v7, :cond_5b

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/q0;->p:[B

    .line 7
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/play/core/assetpacks/q0;->p:[B

    .line 8
    :cond_69
    invoke-direct {p0, v0}, Lcom/google/android/play/core/assetpacks/q0;->g(I)Z

    move-result v0

    if-nez v0, :cond_78

    iput-boolean v1, p0, Lcom/google/android/play/core/assetpacks/q0;->r:Z

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/q0;->o:Lcom/google/android/play/core/assetpacks/g2;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/g2;->c()Lcom/google/android/play/core/assetpacks/h3;

    move-result-object v0

    return-object v0

    :cond_78
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/q0;->o:Lcom/google/android/play/core/assetpacks/g2;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/g2;->c()Lcom/google/android/play/core/assetpacks/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/h3;->b()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/play/core/assetpacks/q0;->q:J

    return-object v0

    :cond_85
    new-instance v0, Lcom/google/android/play/core/assetpacks/d1;

    const-string v1, "Files bigger than 4GiB are not supported."

    .line 11
    invoke-direct {v0, v1}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_8d
    :goto_8d
    new-instance v0, Lcom/google/android/play/core/assetpacks/m0;

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    .line 13
    invoke-direct/range {v2 .. v9}, Lcom/google/android/play/core/assetpacks/m0;-><init>(Ljava/lang/String;JIZZ[B)V

    return-object v0
.end method

.method final d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/play/core/assetpacks/q0;->s:Z

    return v0
.end method

.method final e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/play/core/assetpacks/q0;->r:Z

    return v0
.end method

.method public final read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/play/core/assetpacks/q0;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-wide v0, p0, Lcom/google/android/play/core/assetpacks/q0;->q:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_24

    iget-boolean v2, p0, Lcom/google/android/play/core/assetpacks/q0;->r:Z

    if-eqz v2, :cond_d

    goto :goto_24

    :cond_d
    int-to-long v2, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/play/core/assetpacks/q0;->f([BII)I

    move-result p1

    iget-wide p2, p0, Lcom/google/android/play/core/assetpacks/q0;->q:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/play/core/assetpacks/q0;->q:J

    if-nez p1, :cond_23

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/play/core/assetpacks/q0;->r:Z

    const/4 p1, 0x0

    :cond_23
    return p1

    :cond_24
    :goto_24
    const/4 p1, -0x1

    return p1
.end method
