###### Class com.google.android.play.core.assetpacks.d2 (com.google.android.play.core.assetpacks.d2)
.class final Lcom/google/android/play/core/assetpacks/d2;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lcom/google/android/play/core/assetpacks/u3;


# static fields
.field private static final i:Lv4/a;

.field private static final j:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/play/core/assetpacks/y;

.field private final c:Lcom/google/android/play/core/assetpacks/h1;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/play/core/assetpacks/r2;

.field private final f:Lv4/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/y<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/play/core/assetpacks/p2;

.field private final h:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lv4/a;

    const-string v1, "FakeAssetPackService"

    invoke-direct {v0, v1}, Lv4/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/d2;->i:Lv4/a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    .line 2
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/d2;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/google/android/play/core/assetpacks/y;Lcom/google/android/play/core/assetpacks/h1;Landroid/content/Context;Lcom/google/android/play/core/assetpacks/r2;Lv4/y;Lcom/google/android/play/core/assetpacks/p2;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/google/android/play/core/assetpacks/y;",
            "Lcom/google/android/play/core/assetpacks/h1;",
            "Landroid/content/Context;",
            "Lcom/google/android/play/core/assetpacks/r2;",
            "Lv4/y<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lcom/google/android/play/core/assetpacks/p2;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/d2;->h:Landroid/os/Handler;

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/d2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/d2;->b:Lcom/google/android/play/core/assetpacks/y;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/d2;->c:Lcom/google/android/play/core/assetpacks/h1;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/d2;->d:Landroid/content/Context;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/d2;->e:Lcom/google/android/play/core/assetpacks/r2;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/d2;->f:Lv4/y;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/d2;->g:Lcom/google/android/play/core/assetpacks/p2;

    return-void
.end method

.method static g(IJ)J
    .registers 5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    const/4 v0, 0x4

    if-eq p0, v0, :cond_c

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_c
    return-wide p1

    :cond_d
    const-wide/16 v0, 0x2

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private final j(ILjava/lang/String;I)Landroid/os/Bundle;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu4/a;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/d2;->e:Lcom/google/android/play/core/assetpacks/r2;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/r2;->a()I

    move-result v1

    const-string v2, "app_version_code"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "session_id"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0, p2}, Lcom/google/android/play/core/assetpacks/d2;->l(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :goto_23
    if-ge v6, v2, :cond_71

    .line 6
    aget-object v7, p1, v6

    .line 7
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v4, v8

    new-instance v8, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x3

    if-ne p3, v9, :cond_40

    new-instance v9, Landroid/content/Intent;

    .line 9
    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    sget-object v10, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v9

    goto :goto_41

    :cond_40
    const/4 v9, 0x0

    :goto_41
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-static {v7}, Lv4/t;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "chunk_intents"

    .line 11
    invoke-static {v10, p2, v9}, Lt4/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 12
    invoke-virtual {v0, v10, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v8, "uncompressed_hash_sha256"

    .line 13
    invoke-static {v8, p2, v9}, Lt4/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 14
    invoke-static {v7}, Lcom/google/android/play/core/assetpacks/d2;->k(Ljava/io/File;)Ljava/lang/String;

    move-result-object v10

    .line 15
    invoke-virtual {v0, v8, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "uncompressed_size"

    .line 16
    invoke-static {v8, p2, v9}, Lt4/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 17
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 18
    invoke-virtual {v0, v8, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 19
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :cond_71
    const-string p1, "slice_ids"

    .line 20
    invoke-static {p1, p2}, Lt4/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p1, "pack_version"

    .line 22
    invoke-static {p1, p2}, Lt4/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/d2;->e:Lcom/google/android/play/core/assetpacks/r2;

    .line 23
    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/r2;->a()I

    move-result v1

    int-to-long v1, v1

    .line 24
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "status"

    .line 25
    invoke-static {p1, p2}, Lt4/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "error_code"

    .line 27
    invoke-static {p1, p2}, Lt4/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-virtual {v0, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "bytes_downloaded"

    .line 29
    invoke-static {p1, p2}, Lt4/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v4, v5}, Lcom/google/android/play/core/assetpacks/d2;->g(IJ)J

    move-result-wide v6

    .line 30
    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "total_bytes_to_download"

    .line 31
    invoke-static {v1, p2}, Lt4/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object p2, v6, v3

    .line 33
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p2, "pack_names"

    .line 34
    invoke-virtual {v0, p2, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {p3, v4, v5}, Lcom/google/android/play/core/assetpacks/d2;->g(IJ)J

    move-result-wide p2

    .line 35
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 36
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.google.android.play.core.assetpacks.receiver.ACTION_SESSION_UPDATE"

    .line 37
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.google.android.play.core.assetpacks.receiver.EXTRA_SESSION_STATE"

    .line 38
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/d2;->h:Landroid/os/Handler;

    new-instance p3, Lcom/google/android/play/core/assetpacks/c2;

    .line 39
    invoke-direct {p3, p0, p1}, Lcom/google/android/play/core/assetpacks/c2;-><init>(Lcom/google/android/play/core/assetpacks/d2;Landroid/content/Intent;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method private static k(Ljava/io/File;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu4/a;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    new-array v2, v1, [Ljava/io/File;

    aput-object p0, v2, v0

    .line 1
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/play/core/assetpacks/f2;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_e} :catch_20
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception v2

    new-instance v3, Lu4/a;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "Could not digest file: %s."

    .line 2
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0, v2}, Lu4/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_20
    move-exception p0

    new-instance v0, Lu4/a;

    const-string v1, "SHA256 algorithm not supported."

    .line 3
    invoke-direct {v0, v1, p0}, Lu4/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final l(Ljava/lang/String;)[Ljava/io/File;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu4/a;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/d2;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_60

    .line 3
    new-instance v1, Ls4/d;

    invoke-direct {v1, p1}, Ls4/d;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 5
    array-length v1, v0

    if-eqz v1, :cond_40

    const/4 v4, 0x0

    :goto_1e
    if-ge v4, v1, :cond_30

    .line 6
    aget-object v5, v0, v4

    .line 7
    invoke-static {v5}, Lv4/t;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    return-object v0

    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_30
    new-instance v0, Lu4/a;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "No master slice available for pack \'%s\'."

    .line 8
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lu4/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    new-instance v0, Lu4/a;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "No APKs available for pack \'%s\'."

    .line 9
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lu4/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_50
    new-instance v0, Lu4/a;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "Failed fetching APKs for pack \'%s\'."

    .line 11
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lu4/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_60
    new-instance p1, Lu4/a;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "Local testing directory \'%s\' not found."

    .line 13
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lu4/a;-><init>(Ljava/lang/String;)V

    goto :goto_71

    :goto_70
    throw p1

    :goto_71
    goto :goto_70
.end method


# virtual methods
.method public final Q(I)V
    .registers 4

    .line 1
    sget-object p1, Lcom/google/android/play/core/assetpacks/d2;->i:Lv4/a;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "notifySessionFailed"

    invoke-virtual {p1, v1, v0}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .registers 6

    .line 1
    sget-object v0, Lcom/google/android/play/core/assetpacks/d2;->i:Lv4/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "notifyModuleCompleted"

    invoke-virtual {v0, v2, v1}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/d2;->f:Lv4/y;

    .line 2
    invoke-interface {v0}, Lv4/y;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/assetpacks/b2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/play/core/assetpacks/b2;-><init>(Lcom/google/android/play/core/assetpacks/d2;ILjava/lang/String;)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(ILjava/lang/String;Ljava/lang/String;I)Ly4/e;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ly4/e<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    const-string v0, "getChunkFileDescriptor failed"

    .line 1
    sget-object v1, Lcom/google/android/play/core/assetpacks/d2;->i:Lv4/a;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 v4, 0x2

    aput-object p3, v2, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 v4, 0x3

    aput-object p4, v2, v4

    const-string p4, "getChunkFileDescriptor(session=%d, %s, %s, %d)"

    .line 2
    invoke-virtual {v1, p4, v2}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance p4, Ly4/p;

    .line 3
    invoke-direct {p4}, Ly4/p;-><init>()V

    .line 4
    :try_start_25
    invoke-direct {p0, p2}, Lcom/google/android/play/core/assetpacks/d2;->l(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p2

    array-length v1, p2

    const/4 v2, 0x0

    :goto_2b
    if-ge v2, v1, :cond_46

    aget-object v4, p2, v2

    .line 5
    invoke-static {v4}, Lv4/t;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    const/high16 p2, 0x10000000

    .line 6
    invoke-static {v4, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    .line 7
    invoke-virtual {p4, p2}, Ly4/p;->c(Ljava/lang/Object;)V

    goto :goto_78

    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 8
    :cond_46
    new-instance p2, Lu4/a;

    new-array v1, p1, [Ljava/lang/Object;

    aput-object p3, v1, v3

    const-string p3, "Local testing slice for \'%s\' not found."

    .line 9
    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lu4/a;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_56
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_56} :catch_64
    .catch Lu4/a; {:try_start_25 .. :try_end_56} :catch_56

    :catch_56
    move-exception p2

    sget-object p3, Lcom/google/android/play/core/assetpacks/d2;->i:Lv4/a;

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p2, p1, v3

    .line 10
    invoke-virtual {p3, v0, p1}, Lv4/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 11
    invoke-virtual {p4, p2}, Ly4/p;->b(Ljava/lang/Exception;)V

    goto :goto_78

    :catch_64
    move-exception p2

    .line 12
    sget-object p3, Lcom/google/android/play/core/assetpacks/d2;->i:Lv4/a;

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p2, p1, v3

    .line 13
    invoke-virtual {p3, v0, p1}, Lv4/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance p1, Lu4/a;

    const-string p3, "Asset Slice file not found."

    .line 14
    invoke-direct {p1, p3, p2}, Lu4/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p4, p1}, Ly4/p;->b(Ljava/lang/Exception;)V

    .line 15
    :goto_78
    invoke-virtual {p4}, Ly4/p;->a()Ly4/e;

    move-result-object p1

    return-object p1
.end method

.method public final c()V
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/play/core/assetpacks/d2;->i:Lv4/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "keepAlive"

    invoke-virtual {v0, v2, v1}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public final d(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 1
    sget-object p1, Lcom/google/android/play/core/assetpacks/d2;->i:Lv4/a;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "notifyChunkTransferred"

    invoke-virtual {p1, p3, p2}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public final e(Ljava/util/Map;)Ly4/e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Ly4/e<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/google/android/play/core/assetpacks/d2;->i:Lv4/a;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "syncPacks()"

    invoke-virtual {p1, v1, v0}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance p1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ly4/g;->c(Ljava/lang/Object;)Ly4/e;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/play/core/assetpacks/d2;->i:Lv4/a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "cancelDownload(%s)"

    invoke-virtual {v0, p1, v1}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method final synthetic h(Landroid/content/Intent;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/d2;->b:Lcom/google/android/play/core/assetpacks/y;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/d2;->d:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/y;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method final synthetic i(ILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x4

    .line 1
    :try_start_1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/play/core/assetpacks/d2;->j(ILjava/lang/String;I)Landroid/os/Bundle;
    :try_end_4
    .catch Lu4/a; {:try_start_1 .. :try_end_4} :catch_5

    return-void

    :catch_5
    move-exception p1

    sget-object p2, Lcom/google/android/play/core/assetpacks/d2;->i:Lv4/a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "notifyModuleCompleted failed"

    .line 2
    invoke-virtual {p2, p1, v0}, Lv4/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

###### Class com.google.android.play.core.assetpacks.b2 (com.google.android.play.core.assetpacks.b2)
.class public final synthetic Lcom/google/android/play/core/assetpacks/b2;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/play/core/assetpacks/d2;

.field public final synthetic p:I

.field public final synthetic q:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/d2;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/b2;->o:Lcom/google/android/play/core/assetpacks/d2;

    iput p2, p0, Lcom/google/android/play/core/assetpacks/b2;->p:I

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/b2;->q:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/b2;->o:Lcom/google/android/play/core/assetpacks/d2;

    iget v1, p0, Lcom/google/android/play/core/assetpacks/b2;->p:I

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/b2;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/assetpacks/d2;->i(ILjava/lang/String;)V

    return-void
.end method

###### Class com.google.android.play.core.assetpacks.c2 (com.google.android.play.core.assetpacks.c2)
.class public final synthetic Lcom/google/android/play/core/assetpacks/c2;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/play/core/assetpacks/d2;

.field public final synthetic p:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/d2;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/c2;->o:Lcom/google/android/play/core/assetpacks/d2;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/c2;->p:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/c2;->o:Lcom/google/android/play/core/assetpacks/d2;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/c2;->p:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/d2;->h(Landroid/content/Intent;)V

    return-void
.end method

###### Class s4.d (s4.d)
.class public final synthetic Ls4/d;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls4/d;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object p1, p0, Ls4/d;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const-string p1, ".apk"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method
