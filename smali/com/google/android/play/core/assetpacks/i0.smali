###### Class com.google.android.play.core.assetpacks.i0 (com.google.android.play.core.assetpacks.i0)
.class final Lcom/google/android/play/core/assetpacks/i0;
.super Lcom/google/android/play/core/assetpacks/b;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/b;-><init>()V

    iput p1, p0, Lcom/google/android/play/core/assetpacks/i0;->b:I

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/i0;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/i0;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/i0;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/google/android/play/core/assetpacks/i0;->b:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/i0;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/play/core/assetpacks/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_3f

    .line 2
    check-cast p1, Lcom/google/android/play/core/assetpacks/b;

    iget v1, p0, Lcom/google/android/play/core/assetpacks/i0;->b:I

    .line 3
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/b;->b()I

    move-result v3

    if-ne v1, v3, :cond_3f

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/i0;->c:Ljava/lang/String;

    if-nez v1, :cond_1e

    .line 4
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/b;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3f

    goto :goto_28

    :cond_1e
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    :goto_28
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/i0;->d:Ljava/lang/String;

    if-nez v1, :cond_33

    .line 5
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/b;->a()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3f

    goto :goto_3e

    :cond_33
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    goto :goto_3f

    :cond_3e
    :goto_3e
    return v0

    :cond_3f
    :goto_3f
    return v2
.end method

.method public final hashCode()I
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/play/core/assetpacks/i0;->b:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/i0;->c:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_f

    const/4 v2, 0x0

    goto :goto_13

    .line 2
    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_13
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/i0;->d:Ljava/lang/String;

    if-nez v1, :cond_1b

    goto :goto_1f

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1f
    xor-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    .line 1
    iget v0, p0, Lcom/google/android/play/core/assetpacks/i0;->b:I

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/i0;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/i0;->d:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x44

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "AssetPackLocation{packStorageMethod="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", path="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", assetsPath="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
