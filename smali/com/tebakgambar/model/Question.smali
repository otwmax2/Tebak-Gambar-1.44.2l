###### Class com.tebakgambar.model.Question (com.tebakgambar.model.Question)
.class public Lcom/tebakgambar/model/Question;
.super Ljava/lang/Object;
.source "Question.java"


# instance fields
.field public answer:Ljava/lang/String;

.field public answerImageBytes:[B

.field public id:Ljava/lang/String;

.field public imageBytes:[B

.field public level:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;ILt1/c;Lt1/h;)Lt1/h;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/tebakgambar/model/Question;->lambda$getQuestion$1(Landroid/content/Context;ILt1/c;Lt1/h;)Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(ILjava/lang/String;Landroid/content/Context;)Lcom/tebakgambar/model/Question;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/tebakgambar/model/Question;->lambda$getQuestion$2(ILjava/lang/String;Landroid/content/Context;)Lcom/tebakgambar/model/Question;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c([BLt1/h;)Lt1/h;
    .registers 2

    invoke-static {p0, p1}, Lcom/tebakgambar/model/Question;->lambda$getQuestion$0([BLt1/h;)Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method private generateNewHintPositionsIfNeeded([I)[I
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/model/Question;->getMaxHintLength()I

    move-result v0

    .line 2
    array-length v1, p1

    if-lt v1, v0, :cond_8

    return-object p1

    .line 3
    :cond_8
    invoke-direct {p0, p1}, Lcom/tebakgambar/model/Question;->getLockedHintPosition([I)[I

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget v0, v0, v1

    .line 5
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    .line 6
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    .line 7
    iget-object v0, p0, Lcom/tebakgambar/model/Question;->id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 8
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v1

    invoke-static {v1, v0, p1}, Ly8/y;->j0(Landroid/content/Context;I[I)V

    return-object p1
.end method

.method private getLockedHintPosition([I)[I
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/model/Question;->getMaxHintLength()I

    move-result v0

    array-length v1, p1

    sub-int/2addr v0, v1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_a
    iget-object v3, p0, Lcom/tebakgambar/model/Question;->answer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2a

    .line 3
    iget-object v3, p0, Lcom/tebakgambar/model/Question;->answer:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1d

    goto :goto_27

    .line 4
    :cond_1d
    invoke-static {p1, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-gez v3, :cond_27

    .line 5
    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    :cond_27
    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_2a
    return-object v0
.end method

.method private getMaxHintLength()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/Question;->answer:Ljava/lang/String;

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public static getQuestion(Landroid/content/Context;ILjava/lang/String;Lt1/c;)Lt1/h;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Lt1/c;",
            ")",
            "Lt1/h<",
            "Lcom/tebakgambar/model/Question;",
            ">;"
        }
    .end annotation

    const-string v0, "receh"

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string p2, "jawabanreceh"

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/tebakgambar/model/Question;->getQuestion(Landroid/content/Context;ILjava/lang/String;Lt1/c;)Lt1/h;

    move-result-object p2

    new-instance v0, Lcom/tebakgambar/model/b;

    invoke-direct {v0, p0, p1, p3}, Lcom/tebakgambar/model/b;-><init>(Landroid/content/Context;ILt1/c;)V

    invoke-virtual {p2, v0}, Lt1/h;->z(Lt1/f;)Lt1/h;

    move-result-object p0

    return-object p0

    .line 3
    :cond_18
    new-instance v0, Lcom/tebakgambar/model/a;

    invoke-direct {v0, p1, p2, p0}, Lcom/tebakgambar/model/a;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    invoke-static {v0, p3}, Lt1/h;->e(Ljava/util/concurrent/Callable;Lt1/c;)Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method private static getQuestionInputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ly8/h;->m(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object p0

    .line 4
    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "level/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getQuestion$0([BLt1/h;)Lt1/h;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lt1/h;->s()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/model/Question;

    .line 2
    iput-object p0, p1, Lcom/tebakgambar/model/Question;->answerImageBytes:[B

    .line 3
    invoke-static {p1}, Lt1/h;->q(Ljava/lang/Object;)Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getQuestion$1(Landroid/content/Context;ILt1/c;Lt1/h;)Lt1/h;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lt1/h;->s()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/tebakgambar/model/Question;

    iget-object p3, p3, Lcom/tebakgambar/model/Question;->imageBytes:[B

    const-string v0, "soalreceh"

    .line 2
    invoke-static {p0, p1, v0, p2}, Lcom/tebakgambar/model/Question;->getQuestion(Landroid/content/Context;ILjava/lang/String;Lt1/c;)Lt1/h;

    move-result-object p0

    new-instance p1, Lcom/tebakgambar/model/c;

    invoke-direct {p1, p3}, Lcom/tebakgambar/model/c;-><init>([B)V

    invoke-virtual {p0, p1}, Lt1/h;->z(Lt1/f;)Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getQuestion$2(ILjava/lang/String;Landroid/content/Context;)Lcom/tebakgambar/model/Question;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tebakgambar/model/Question;

    invoke-direct {v0}, Lcom/tebakgambar/model/Question;-><init>()V

    const-string v1, ""

    const/16 v2, 0x7d0

    if-lt p0, v2, :cond_1b

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2a

    :cond_1b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    :goto_2a
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1201b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1200ea

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly8/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".zip"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ly8/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/tebakgambar/model/Level;->getLevelFolderNameByGlobalIndex(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v5, 0x0

    .line 9
    :try_start_9c
    invoke-static {p2, p0}, Lcom/tebakgambar/model/Question;->getQuestionInputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_a0} :catch_12e
    .catchall {:try_start_9c .. :try_end_a0} :catchall_12b

    .line 10
    :try_start_a0
    invoke-static {p2, p1}, Ly8/h;->q(Landroid/content/Context;Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v5

    const/16 v6, 0x400

    new-array v6, v6, [B

    .line 11
    :goto_a8
    invoke-virtual {p0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    const/4 v9, 0x0

    if-eq v7, v8, :cond_b4

    .line 12
    invoke-virtual {v5, v6, v9, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_a8

    .line 13
    :cond_b4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 14
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 15
    new-instance v6, Lnet/lingala/zip4j/core/ZipFile;

    invoke-static {p2, p1}, Ly8/h;->p(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v6, p1}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/io/File;)V

    .line 16
    invoke-virtual {v6}, Lnet/lingala/zip4j/core/ZipFile;->g()Z

    move-result p1

    if-eqz p1, :cond_cc

    .line 17
    invoke-virtual {v6, v4}, Lnet/lingala/zip4j/core/ZipFile;->i(Ljava/lang/String;)V

    .line 18
    :cond_cc
    invoke-virtual {v6}, Lnet/lingala/zip4j/core/ZipFile;->e()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    .line 19
    :goto_d1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge p2, v4, :cond_11a

    .line 20
    new-instance v4, Lcom/tebakgambar/model/Question;

    invoke-direct {v4}, Lcom/tebakgambar/model/Question;-><init>()V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_dc} :catch_126
    .catchall {:try_start_a0 .. :try_end_dc} :catchall_121

    .line 21
    :try_start_dc
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/model/FileHeader;

    .line 22
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->k()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v2, v7}, Ly8/y;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "#"

    .line 23
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 24
    aget-object v8, v7, v9

    iput-object v8, v4, Lcom/tebakgambar/model/Question;->id:Ljava/lang/String;

    const/4 v8, 0x1

    .line 25
    aget-object v8, v7, v8

    iput-object v8, v4, Lcom/tebakgambar/model/Question;->type:Ljava/lang/String;

    const/4 v8, 0x2

    .line 26
    aget-object v8, v7, v8

    iput-object v8, v4, Lcom/tebakgambar/model/Question;->level:Ljava/lang/String;

    const/4 v8, 0x3

    .line 27
    aget-object v7, v7, v8

    const-string v8, ".png"

    invoke-virtual {v7, v8, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/tebakgambar/model/Question;->answer:Ljava/lang/String;

    .line 28
    invoke-virtual {v6, v0}, Lnet/lingala/zip4j/core/ZipFile;->f(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/io/ZipInputStream;

    move-result-object v0

    invoke-static {v0}, Ly8/y;->r(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, v4, Lcom/tebakgambar/model/Question;->imageBytes:[B
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_113} :catch_117
    .catchall {:try_start_dc .. :try_end_113} :catchall_121

    add-int/lit8 p2, p2, 0x1

    move-object v0, v4

    goto :goto_d1

    :catch_117
    move-exception p1

    move-object v0, v4

    goto :goto_127

    .line 29
    :cond_11a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 30
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    goto :goto_144

    :catchall_121
    move-exception p1

    move-object v10, v5

    move-object v5, p0

    move-object p0, v10

    goto :goto_146

    :catch_126
    move-exception p1

    :goto_127
    move-object v10, v5

    move-object v5, p0

    move-object p0, v10

    goto :goto_130

    :catchall_12b
    move-exception p1

    move-object p0, v5

    goto :goto_146

    :catch_12e
    move-exception p1

    move-object p0, v5

    .line 31
    :goto_130
    :try_start_130
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->a()Lcom/google/firebase/crashlytics/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/a;->d(Ljava/lang/Throwable;)V
    :try_end_13a
    .catchall {:try_start_130 .. :try_end_13a} :catchall_145

    if-eqz v5, :cond_13f

    .line 33
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_13f
    if-eqz p0, :cond_144

    .line 34
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    :cond_144
    :goto_144
    return-object v0

    :catchall_145
    move-exception p1

    :goto_146
    if-eqz v5, :cond_14b

    .line 35
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_14b
    if-eqz p0, :cond_150

    .line 36
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 37
    :cond_150
    goto :goto_152

    :goto_151
    throw p1

    :goto_152
    goto :goto_151
.end method


# virtual methods
.method public clearHint()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/tebakgambar/model/Question;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ly8/y;->j(Landroid/content/Context;I)V

    return-void
.end method

.method public getHint()Ljava/lang/String;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/Question;->id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v1

    invoke-static {v1, v0}, Ly8/y;->z(Landroid/content/Context;I)[I

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 4
    :goto_14
    iget-object v3, p0, Lcom/tebakgambar/model/Question;->answer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4e

    .line 5
    invoke-static {v0, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-gez v3, :cond_33

    iget-object v3, p0, Lcom/tebakgambar/model/Question;->answer:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_2d

    goto :goto_33

    :cond_2d
    const-string v3, "_"

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 7
    :cond_33
    :goto_33
    iget-object v3, p0, Lcom/tebakgambar/model/Question;->answer:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    :goto_3c
    iget-object v3, p0, Lcom/tebakgambar/model/Question;->answer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_4b

    const-string v3, " "

    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 10
    :cond_4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHintAndUnlock()Ljava/lang/String;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/Question;->id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v1

    invoke-static {v1, v0}, Ly8/y;->z(Landroid/content/Context;I)[I

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Lcom/tebakgambar/model/Question;->generateNewHintPositionsIfNeeded([I)[I

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 5
    :goto_18
    iget-object v3, p0, Lcom/tebakgambar/model/Question;->answer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_52

    .line 6
    invoke-static {v0, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-gez v3, :cond_37

    iget-object v3, p0, Lcom/tebakgambar/model/Question;->answer:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_31

    goto :goto_37

    :cond_31
    const-string v3, "_"

    .line 7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_40

    .line 8
    :cond_37
    :goto_37
    iget-object v3, p0, Lcom/tebakgambar/model/Question;->answer:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    :goto_40
    iget-object v3, p0, Lcom/tebakgambar/model/Question;->answer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_4f

    const-string v3, " "

    .line 10
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 11
    :cond_52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize(Landroid/content/Context;)Ly8/v;
    .registers 5

    const v0, 0x7f0701d2

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Ly8/y;->u(Landroid/content/Context;Ljava/lang/Integer;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p1, v0}, Ly8/y;->l(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v0

    float-to-int v0, v0

    .line 2
    iget-object v1, p0, Lcom/tebakgambar/model/Question;->type:Ljava/lang/String;

    const-string v2, "raja"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    const v1, 0x7f0701d3

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Ly8/y;->u(Landroid/content/Context;Ljava/lang/Integer;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v1}, Ly8/y;->l(Landroid/content/Context;Ljava/lang/Float;)F

    move-result p1

    float-to-int p1, p1

    goto :goto_5a

    :cond_33
    const v1, 0x7f0701d1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Ly8/y;->u(Landroid/content/Context;Ljava/lang/Integer;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v1}, Ly8/y;->l(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0x1e0

    if-ne p1, v2, :cond_58

    const/16 p1, 0x64

    goto :goto_59

    :cond_58
    const/4 p1, 0x0

    :goto_59
    add-int/2addr p1, v1

    .line 5
    :goto_5a
    new-instance v1, Ly8/v;

    invoke-direct {v1, v0, p1}, Ly8/v;-><init>(II)V

    return-object v1
.end method

.method public isAllHintUnlocked()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/Question;->id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v1

    invoke-static {v1, v0}, Ly8/y;->z(Landroid/content/Context;I)[I

    move-result-object v0

    .line 3
    array-length v0, v0

    invoke-direct {p0}, Lcom/tebakgambar/model/Question;->getMaxHintLength()I

    move-result v1

    if-lt v0, v1, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method public isNoHintUnlocked()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/Question;->id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v1

    invoke-static {v1, v0}, Ly8/y;->z(Landroid/content/Context;I)[I

    move-result-object v0

    .line 3
    array-length v0, v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

###### Class com.tebakgambar.model.a (com.tebakgambar.model.a)
.class public final synthetic Lcom/tebakgambar/model/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tebakgambar/model/a;->a:I

    iput-object p2, p0, Lcom/tebakgambar/model/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tebakgambar/model/a;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lcom/tebakgambar/model/a;->a:I

    iget-object v1, p0, Lcom/tebakgambar/model/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/tebakgambar/model/a;->c:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/tebakgambar/model/Question;->b(ILjava/lang/String;Landroid/content/Context;)Lcom/tebakgambar/model/Question;

    move-result-object v0

    return-object v0
.end method

###### Class com.tebakgambar.model.b (com.tebakgambar.model.b)
.class public final synthetic Lcom/tebakgambar/model/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt1/f;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:I

.field public final synthetic c:Lt1/c;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ILt1/c;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/model/b;->a:Landroid/content/Context;

    iput p2, p0, Lcom/tebakgambar/model/b;->b:I

    iput-object p3, p0, Lcom/tebakgambar/model/b;->c:Lt1/c;

    return-void
.end method


# virtual methods
.method public final a(Lt1/h;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/tebakgambar/model/b;->a:Landroid/content/Context;

    iget v1, p0, Lcom/tebakgambar/model/b;->b:I

    iget-object v2, p0, Lcom/tebakgambar/model/b;->c:Lt1/c;

    invoke-static {v0, v1, v2, p1}, Lcom/tebakgambar/model/Question;->a(Landroid/content/Context;ILt1/c;Lt1/h;)Lt1/h;

    move-result-object p1

    return-object p1
.end method

###### Class com.tebakgambar.model.c (com.tebakgambar.model.c)
.class public final synthetic Lcom/tebakgambar/model/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt1/f;


# instance fields
.field public final synthetic a:[B


# direct methods
.method public synthetic constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/model/c;->a:[B

    return-void
.end method


# virtual methods
.method public final a(Lt1/h;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/model/c;->a:[B

    invoke-static {v0, p1}, Lcom/tebakgambar/model/Question;->c([BLt1/h;)Lt1/h;

    move-result-object p1

    return-object p1
.end method
