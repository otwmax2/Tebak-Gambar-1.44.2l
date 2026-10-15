###### Class com.google.android.play.core.assetpacks.i2 (com.google.android.play.core.assetpacks.i2)
.class final Lcom/google/android/play/core/assetpacks/i2;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# static fields
.field private static final b:Lv4/a;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/e0;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lv4/a;

    const-string v1, "MergeSliceTaskHandler"

    invoke-direct {v0, v1}, Lv4/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/i2;->b:Lv4/a;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/e0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/i2;->a:Lcom/google/android/play/core/assetpacks/e0;

    return-void
.end method

.method private static b(Ljava/io/File;Ljava/io/File;)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_22

    aget-object v3, v0, v2

    new-instance v4, Ljava/io/File;

    .line 4
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/google/android/play/core/assetpacks/i2;->b(Ljava/io/File;Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 5
    :cond_22
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_56

    :cond_29
    new-instance p1, Lcom/google/android/play/core/assetpacks/d1;

    .line 6
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1c

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unable to delete directory: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_4a
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_78

    .line 8
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_57

    :goto_56
    return-void

    .line 9
    :cond_57
    new-instance p1, Lcom/google/android/play/core/assetpacks/d1;

    .line 10
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x15

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unable to move file: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_78
    new-instance p0, Lcom/google/android/play/core/assetpacks/d1;

    .line 12
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x33

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "File clashing with existing file from other slice: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;)V

    goto :goto_9a

    :goto_99
    throw p0

    :goto_9a
    goto :goto_99
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/assetpacks/h2;)V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/i2;->a:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/h2;->c:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/h2;->d:J

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/h2;->e:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/play/core/assetpacks/e0;->D(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_62

    .line 3
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/i2;->a:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v4, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    iget v5, p1, Lcom/google/android/play/core/assetpacks/h2;->c:I

    iget-wide v6, p1, Lcom/google/android/play/core/assetpacks/h2;->d:J

    .line 4
    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/google/android/play/core/assetpacks/e0;->w(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 7
    :cond_2b
    invoke-static {v0, v1}, Lcom/google/android/play/core/assetpacks/i2;->b(Ljava/io/File;Ljava/io/File;)V

    .line 8
    :try_start_2e
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/i2;->a:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    iget v4, p1, Lcom/google/android/play/core/assetpacks/h2;->c:I

    iget-wide v5, p1, Lcom/google/android/play/core/assetpacks/h2;->d:J

    .line 9
    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/google/android/play/core/assetpacks/e0;->q(Ljava/lang/String;IJ)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/i2;->a:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    iget v6, p1, Lcom/google/android/play/core/assetpacks/h2;->c:I

    iget-wide v7, p1, Lcom/google/android/play/core/assetpacks/h2;->d:J

    add-int/lit8 v9, v0, 0x1

    .line 10
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/play/core/assetpacks/e0;->a(Ljava/lang/String;IJI)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_47} :catch_48

    return-void

    :catch_48
    move-exception v0

    .line 11
    sget-object v1, Lcom/google/android/play/core/assetpacks/i2;->b:Lv4/a;

    new-array v3, v3, [Ljava/lang/Object;

    .line 12
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "Writing merge checkpoint failed with %s."

    invoke-virtual {v1, v2, v3}, Lv4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v1, Lcom/google/android/play/core/assetpacks/d1;

    iget p1, p1, Lcom/google/android/play/core/assetpacks/y1;->a:I

    const-string v2, "Writing merge checkpoint failed."

    .line 13
    invoke-direct {v1, v2, v0, p1}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1

    .line 14
    :cond_62
    new-instance v0, Lcom/google/android/play/core/assetpacks/d1;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/play/core/assetpacks/h2;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Cannot find verified files for slice %s."

    .line 15
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lcom/google/android/play/core/assetpacks/y1;->a:I

    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
