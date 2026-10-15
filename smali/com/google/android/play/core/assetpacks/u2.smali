###### Class com.google.android.play.core.assetpacks.u2 (com.google.android.play.core.assetpacks.u2)
.class final Lcom/google/android/play/core/assetpacks/u2;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# static fields
.field private static final c:Lv4/a;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/e0;

.field private final b:Lv4/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/y<",
            "Lcom/google/android/play/core/assetpacks/u3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lv4/a;

    const-string v1, "PatchSliceTaskHandler"

    invoke-direct {v0, v1}, Lv4/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/u2;->c:Lv4/a;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/e0;Lv4/y;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/assetpacks/e0;",
            "Lv4/y<",
            "Lcom/google/android/play/core/assetpacks/u3;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/u2;->a:Lcom/google/android/play/core/assetpacks/e0;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/u2;->b:Lv4/y;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/assetpacks/t2;)V
    .registers 16

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/u2;->a:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/t2;->c:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/t2;->d:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/e0;->u(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/u2;->a:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    iget v3, p1, Lcom/google/android/play/core/assetpacks/t2;->c:I

    iget-wide v4, p1, Lcom/google/android/play/core/assetpacks/t2;->d:J

    iget-object v6, p1, Lcom/google/android/play/core/assetpacks/t2;->h:Ljava/lang/String;

    new-instance v7, Ljava/io/File;

    .line 2
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/play/core/assetpacks/e0;->v(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v1

    .line 3
    invoke-direct {v7, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_22
    iget-object v4, p1, Lcom/google/android/play/core/assetpacks/t2;->j:Ljava/io/InputStream;

    iget v5, p1, Lcom/google/android/play/core/assetpacks/t2;->g:I

    if-eq v5, v1, :cond_29

    goto :goto_31

    :cond_29
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    const/16 v6, 0x2000

    .line 4
    invoke-direct {v5, v4, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_30} :catch_ac

    move-object v4, v5

    :goto_31
    :try_start_31
    new-instance v5, Lcom/google/android/play/core/assetpacks/h0;

    .line 5
    invoke-direct {v5, v0, v7}, Lcom/google/android/play/core/assetpacks/h0;-><init>(Ljava/io/File;Ljava/io/File;)V

    iget-object v8, p0, Lcom/google/android/play/core/assetpacks/u2;->a:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v9, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    iget v10, p1, Lcom/google/android/play/core/assetpacks/t2;->e:I

    iget-wide v11, p1, Lcom/google/android/play/core/assetpacks/t2;->f:J

    iget-object v13, p1, Lcom/google/android/play/core/assetpacks/t2;->h:Ljava/lang/String;

    .line 6
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/play/core/assetpacks/e0;->C(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4d

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 9
    :cond_4d
    new-instance v13, Lcom/google/android/play/core/assetpacks/b3;

    iget-object v7, p0, Lcom/google/android/play/core/assetpacks/u2;->a:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v8, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    iget v9, p1, Lcom/google/android/play/core/assetpacks/t2;->e:I

    iget-wide v10, p1, Lcom/google/android/play/core/assetpacks/t2;->f:J

    iget-object v12, p1, Lcom/google/android/play/core/assetpacks/t2;->h:Ljava/lang/String;

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Lcom/google/android/play/core/assetpacks/b3;-><init>(Lcom/google/android/play/core/assetpacks/e0;Ljava/lang/String;IJLjava/lang/String;)V

    new-instance v6, Lcom/google/android/play/core/assetpacks/g1;

    .line 10
    invoke-direct {v6, v0, v13}, Lcom/google/android/play/core/assetpacks/g1;-><init>(Ljava/io/File;Lcom/google/android/play/core/assetpacks/b3;)V

    iget-wide v7, p1, Lcom/google/android/play/core/assetpacks/t2;->i:J

    invoke-static {v5, v4, v6, v7, v8}, Lv4/v;->a(Lv4/w;Ljava/io/InputStream;Ljava/io/OutputStream;J)J

    .line 11
    invoke-virtual {v13, v3}, Lcom/google/android/play/core/assetpacks/b3;->i(I)V
    :try_end_6a
    .catchall {:try_start_31 .. :try_end_6a} :catchall_a7

    .line 12
    :try_start_6a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_ac

    sget-object v0, Lcom/google/android/play/core/assetpacks/u2;->c:Lv4/a;

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/t2;->h:Ljava/lang/String;

    aput-object v5, v4, v3

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    aput-object v5, v4, v2

    const-string v5, "Patching and extraction finished for slice %s of pack %s."

    .line 13
    invoke-virtual {v0, v5, v4}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/u2;->b:Lv4/y;

    .line 14
    invoke-interface {v0}, Lv4/y;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/u3;

    iget v4, p1, Lcom/google/android/play/core/assetpacks/y1;->a:I

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/play/core/assetpacks/t2;->h:Ljava/lang/String;

    .line 15
    invoke-interface {v0, v4, v5, v6, v3}, Lcom/google/android/play/core/assetpacks/u3;->d(ILjava/lang/String;Ljava/lang/String;I)V

    :try_start_8f
    iget-object v0, p1, Lcom/google/android/play/core/assetpacks/t2;->j:Ljava/io/InputStream;

    .line 16
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_94} :catch_95

    return-void

    .line 17
    :catch_95
    sget-object v0, Lcom/google/android/play/core/assetpacks/u2;->c:Lv4/a;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/google/android/play/core/assetpacks/t2;->h:Ljava/lang/String;

    aput-object v4, v1, v3

    iget-object p1, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    aput-object p1, v1, v2

    const-string p1, "Could not close file for slice %s of pack %s."

    .line 18
    invoke-virtual {v0, p1, v1}, Lv4/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :catchall_a7
    move-exception v0

    .line 19
    :try_start_a8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_ab

    :catchall_ab
    :try_start_ab
    throw v0
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ac} :catch_ac

    :catch_ac
    move-exception v0

    .line 20
    sget-object v4, Lcom/google/android/play/core/assetpacks/u2;->c:Lv4/a;

    new-array v5, v2, [Ljava/lang/Object;

    .line 21
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "IOException during patching %s."

    invoke-virtual {v4, v6, v5}, Lv4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v4, Lcom/google/android/play/core/assetpacks/d1;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/t2;->h:Ljava/lang/String;

    aput-object v5, v1, v3

    iget-object v3, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Error patching slice %s of pack %s."

    .line 22
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lcom/google/android/play/core/assetpacks/y1;->a:I

    invoke-direct {v4, v1, v0, p1}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v4
.end method
