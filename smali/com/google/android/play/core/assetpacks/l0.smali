###### Class com.google.android.play.core.assetpacks.l0 (com.google.android.play.core.assetpacks.l0)
.class final Lcom/google/android/play/core/assetpacks/l0;
.super Lcom/google/android/play/core/assetpacks/a3;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:J

.field private final e:I


# direct methods
.method constructor <init>(ILjava/lang/String;JJI)V
    .registers 8

    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/a3;-><init>()V

    iput p1, p0, Lcom/google/android/play/core/assetpacks/l0;->a:I

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/l0;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/play/core/assetpacks/l0;->c:J

    iput-wide p5, p0, Lcom/google/android/play/core/assetpacks/l0;->d:J

    iput p7, p0, Lcom/google/android/play/core/assetpacks/l0;->e:I

    return-void
.end method


# virtual methods
.method final a()I
    .registers 2

    iget v0, p0, Lcom/google/android/play/core/assetpacks/l0;->a:I

    return v0
.end method

.method final b()I
    .registers 2

    iget v0, p0, Lcom/google/android/play/core/assetpacks/l0;->e:I

    return v0
.end method

.method final c()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/play/core/assetpacks/l0;->c:J

    return-wide v0
.end method

.method final d()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/play/core/assetpacks/l0;->d:J

    return-wide v0
.end method

.method final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/l0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/play/core/assetpacks/a3;

    const/4 v2, 0x0

    if-eqz v1, :cond_46

    .line 2
    check-cast p1, Lcom/google/android/play/core/assetpacks/a3;

    iget v1, p0, Lcom/google/android/play/core/assetpacks/l0;->a:I

    .line 3
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/a3;->a()I

    move-result v3

    if-ne v1, v3, :cond_46

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/l0;->b:Ljava/lang/String;

    if-nez v1, :cond_1e

    .line 4
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/a3;->e()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_46

    goto :goto_29

    :cond_1e
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/a3;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    goto :goto_46

    :cond_29
    :goto_29
    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/l0;->c:J

    .line 5
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/a3;->c()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_46

    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/l0;->d:J

    .line 6
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/a3;->d()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_46

    iget v1, p0, Lcom/google/android/play/core/assetpacks/l0;->e:I

    .line 7
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/a3;->b()I

    move-result p1

    if-ne v1, p1, :cond_46

    return v0

    :cond_46
    :goto_46
    return v2
.end method

.method public final hashCode()I
    .registers 10

    .line 1
    iget v0, p0, Lcom/google/android/play/core/assetpacks/l0;->a:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/l0;->b:Ljava/lang/String;

    if-nez v2, :cond_e

    const/4 v2, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_12
    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/l0;->c:J

    iget-wide v5, p0, Lcom/google/android/play/core/assetpacks/l0;->d:J

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    const/16 v2, 0x20

    ushr-long v7, v3, v2

    xor-long/2addr v3, v7

    long-to-int v4, v3

    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    ushr-long v2, v5, v2

    xor-long/2addr v2, v5

    long-to-int v3, v2

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    iget v1, p0, Lcom/google/android/play/core/assetpacks/l0;->e:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 10

    .line 1
    iget v0, p0, Lcom/google/android/play/core/assetpacks/l0;->a:I

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/l0;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/play/core/assetpacks/l0;->c:J

    iget-wide v4, p0, Lcom/google/android/play/core/assetpacks/l0;->d:J

    iget v6, p0, Lcom/google/android/play/core/assetpacks/l0;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/lit16 v7, v7, 0x9d

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "SliceCheckpoint{fileExtractionStatus="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", filePath="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", fileOffset="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", remainingBytes="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", previousChunk="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
