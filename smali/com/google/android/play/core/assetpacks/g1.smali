###### Class com.google.android.play.core.assetpacks.g1 (com.google.android.play.core.assetpacks.g1)
.class final Lcom/google/android/play/core/assetpacks/g1;
.super Ljava/io/OutputStream;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field private final o:Lcom/google/android/play/core/assetpacks/g2;

.field private final p:Ljava/io/File;

.field private final q:Lcom/google/android/play/core/assetpacks/b3;

.field private r:J

.field private s:J

.field private t:Ljava/io/FileOutputStream;

.field private u:Lcom/google/android/play/core/assetpacks/h3;


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/google/android/play/core/assetpacks/b3;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Lcom/google/android/play/core/assetpacks/g2;

    .line 2
    invoke-direct {v0}, Lcom/google/android/play/core/assetpacks/g2;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/g1;->o:Lcom/google/android/play/core/assetpacks/g2;

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/g1;->p:Ljava/io/File;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/g1;->q:Lcom/google/android/play/core/assetpacks/b3;

    return-void
.end method


# virtual methods
.method public final write(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 1
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/play/core/assetpacks/g1;->write([BII)V

    return-void
.end method

.method public final write([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/play/core/assetpacks/g1;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_116

    .line 3
    iget-wide v0, p0, Lcom/google/android/play/core/assetpacks/g1;->r:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9e

    iget-wide v0, p0, Lcom/google/android/play/core/assetpacks/g1;->s:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_9e

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/g1;->o:Lcom/google/android/play/core/assetpacks/g2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/play/core/assetpacks/g2;->b([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    return-void

    :cond_1a
    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/g1;->o:Lcom/google/android/play/core/assetpacks/g2;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/g2;->c()Lcom/google/android/play/core/assetpacks/h3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/g1;->u:Lcom/google/android/play/core/assetpacks/h3;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/h3;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4a

    iput-wide v2, p0, Lcom/google/android/play/core/assetpacks/g1;->r:J

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/g1;->q:Lcom/google/android/play/core/assetpacks/b3;

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/g1;->u:Lcom/google/android/play/core/assetpacks/h3;

    .line 6
    invoke-virtual {v4}, Lcom/google/android/play/core/assetpacks/h3;->f()[B

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/g1;->u:Lcom/google/android/play/core/assetpacks/h3;

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/h3;->f()[B

    move-result-object v5

    array-length v5, v5

    .line 7
    invoke-virtual {v0, v4, v1, v5}, Lcom/google/android/play/core/assetpacks/b3;->l([BII)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/g1;->u:Lcom/google/android/play/core/assetpacks/h3;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/h3;->f()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/play/core/assetpacks/g1;->s:J

    goto :goto_9e

    .line 9
    :cond_4a
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/g1;->u:Lcom/google/android/play/core/assetpacks/h3;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/h3;->h()Z

    move-result v0

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/g1;->u:Lcom/google/android/play/core/assetpacks/h3;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/h3;->g()Z

    move-result v0

    if-eqz v0, :cond_5b

    goto :goto_8a

    .line 11
    :cond_5b
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/g1;->q:Lcom/google/android/play/core/assetpacks/b3;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/g1;->u:Lcom/google/android/play/core/assetpacks/h3;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/h3;->f()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/b3;->j([B)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/g1;->p:Ljava/io/File;

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/g1;->u:Lcom/google/android/play/core/assetpacks/h3;

    .line 13
    invoke-virtual {v4}, Lcom/google/android/play/core/assetpacks/h3;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/g1;->u:Lcom/google/android/play/core/assetpacks/h3;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/h3;->b()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/play/core/assetpacks/g1;->r:J

    new-instance v1, Ljava/io/FileOutputStream;

    .line 16
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/google/android/play/core/assetpacks/g1;->t:Ljava/io/FileOutputStream;

    goto :goto_9e

    .line 17
    :cond_8a
    :goto_8a
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/g1;->u:Lcom/google/android/play/core/assetpacks/h3;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/h3;->f()[B

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/g1;->q:Lcom/google/android/play/core/assetpacks/b3;

    .line 19
    array-length v5, v0

    invoke-virtual {v4, v0, v1, v5}, Lcom/google/android/play/core/assetpacks/b3;->l([BII)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/g1;->u:Lcom/google/android/play/core/assetpacks/h3;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/h3;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/play/core/assetpacks/g1;->r:J

    .line 21
    :cond_9e
    :goto_9e
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/g1;->u:Lcom/google/android/play/core/assetpacks/h3;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/h3;->g()Z

    move-result v0

    if-eqz v0, :cond_a8

    goto/16 :goto_0

    :cond_a8
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/g1;->u:Lcom/google/android/play/core/assetpacks/h3;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/h3;->d()Z

    move-result v0

    if-eqz v0, :cond_c2

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/g1;->q:Lcom/google/android/play/core/assetpacks/b3;

    iget-wide v5, p0, Lcom/google/android/play/core/assetpacks/g1;->s:J

    move-object v7, p1

    move v8, p2

    move v9, p3

    .line 24
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/play/core/assetpacks/b3;->e(J[BII)V

    iget-wide v0, p0, Lcom/google/android/play/core/assetpacks/g1;->s:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/play/core/assetpacks/g1;->s:J

    move v1, p3

    goto :goto_112

    :cond_c2
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/g1;->u:Lcom/google/android/play/core/assetpacks/h3;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/h3;->h()Z

    move-result v0

    if-eqz v0, :cond_e7

    int-to-long v0, p3

    iget-wide v4, p0, Lcom/google/android/play/core/assetpacks/g1;->r:J

    .line 26
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/g1;->t:Ljava/io/FileOutputStream;

    .line 27
    invoke-virtual {v0, p1, p2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    iget-wide v4, p0, Lcom/google/android/play/core/assetpacks/g1;->r:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/play/core/assetpacks/g1;->r:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_112

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/g1;->t:Ljava/io/FileOutputStream;

    .line 28
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_112

    :cond_e7
    int-to-long v0, p3

    iget-wide v2, p0, Lcom/google/android/play/core/assetpacks/g1;->r:J

    .line 29
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/g1;->u:Lcom/google/android/play/core/assetpacks/h3;

    .line 30
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/h3;->f()[B

    move-result-object v0

    array-length v0, v0

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/g1;->u:Lcom/google/android/play/core/assetpacks/h3;

    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/h3;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/play/core/assetpacks/g1;->r:J

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/g1;->q:Lcom/google/android/play/core/assetpacks/b3;

    int-to-long v7, v0

    add-long/2addr v7, v2

    sub-long v2, v7, v4

    move-object v4, v6

    move-wide v5, v2

    move-object v7, p1

    move v8, p2

    move v9, v1

    .line 31
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/play/core/assetpacks/b3;->e(J[BII)V

    iget-wide v2, p0, Lcom/google/android/play/core/assetpacks/g1;->r:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/play/core/assetpacks/g1;->r:J

    :cond_112
    :goto_112
    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    goto/16 :goto_0

    :cond_116
    return-void
.end method
