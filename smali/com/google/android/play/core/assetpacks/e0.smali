###### Class com.google.android.play.core.assetpacks.e0 (com.google.android.play.core.assetpacks.e0)
.class final Lcom/google/android/play/core/assetpacks/e0;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# static fields
.field private static final c:Lv4/a;

.field private static final d:J

.field private static final e:J


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/play/core/assetpacks/r2;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lv4/a;

    const-string v1, "AssetPackStorage"

    invoke-direct {v0, v1}, Lv4/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/e0;->c:Lv4/a;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/google/android/play/core/assetpacks/e0;->d:J

    const-wide/16 v1, 0x1c

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/play/core/assetpacks/e0;->e:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/assetpacks/r2;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/e0;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/e0;->b:Lcom/google/android/play/core/assetpacks/r2;

    return-void
.end method

.method private static g(Ljava/io/File;Z)J
    .registers 10

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_9

    return-wide v1

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    if-eqz p1, :cond_22

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length p1, p1

    const/4 v4, 0x1

    if-le p1, v4, :cond_22

    sget-object p1, Lcom/google/android/play/core/assetpacks/e0;->c:Lv4/a;

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Multiple pack versions found, using highest version code."

    .line 4
    invoke-virtual {p1, v5, v4}, Lv4/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5
    :cond_22
    :try_start_22
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length p1, p0

    const/4 v4, 0x0

    :goto_28
    if-ge v4, p1, :cond_50

    aget-object v5, p0, v4

    .line 6
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "stale.tmp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_43

    .line 7
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_43} :catch_46

    :cond_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :catch_46
    move-exception p0

    .line 8
    sget-object p1, Lcom/google/android/play/core/assetpacks/e0;->c:Lv4/a;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Corrupt asset pack directories."

    .line 9
    invoke-virtual {p1, p0, v4, v3}, Lv4/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 10
    :cond_50
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_57

    return-wide v1

    .line 11
    :cond_57
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private final h(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/e0;->k()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private final i(Ljava/lang/String;IJ)Ljava/io/File;
    .registers 6

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/play/core/assetpacks/e0;->w(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object p1

    const-string p2, "merge.tmp"

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private final j(Ljava/lang/String;IJ)Ljava/io/File;
    .registers 9

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/e0;->l()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private final k()Ljava/io/File;
    .registers 4

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/e0;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "assetpacks"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private final l()Ljava/io/File;
    .registers 4

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/e0;->k()Ljava/io/File;

    move-result-object v1

    const-string v2, "_tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private final m()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :try_start_6
    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/e0;->k()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/e0;->k()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1b

    goto :goto_41

    .line 3
    :cond_1b
    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/e0;->k()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_25
    if-ge v4, v3, :cond_4f

    aget-object v5, v2, v4

    .line 4
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/e0;->l()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3e

    .line 5
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_3e} :catch_42

    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_41
    :goto_41
    return-object v0

    :catch_42
    move-exception v2

    sget-object v3, Lcom/google/android/play/core/assetpacks/e0;->c:Lv4/a;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const-string v1, "Could not process directory while scanning installed packs. %s"

    .line 6
    invoke-virtual {v3, v1, v4}, Lv4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_4f
    return-object v0
.end method

.method private static n(Ljava/io/File;)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_f

    goto :goto_3d

    :cond_f
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/play/core/assetpacks/e0;->g(Ljava/io/File;Z)J

    move-result-wide v1

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v3, p0

    :goto_19
    if-ge v0, v3, :cond_3d

    aget-object v4, p0, v0

    .line 4
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3a

    .line 5
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "stale.tmp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3a

    .line 6
    invoke-static {v4}, Lcom/google/android/play/core/assetpacks/e0;->o(Ljava/io/File;)Z

    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_3d
    :goto_3d
    return-void
.end method

.method private static o(Ljava/io/File;)Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    array-length v3, v0

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v3, :cond_16

    .line 2
    aget-object v5, v0, v4

    .line 3
    invoke-static {v5}, Lcom/google/android/play/core/assetpacks/e0;->o(Ljava/io/File;)Z

    move-result v5

    and-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 4
    :cond_16
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_1d

    return v1

    :cond_1d
    return v2
.end method


# virtual methods
.method final A(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;
    .registers 7

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/play/core/assetpacks/e0;->B(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object p1

    const-string p2, "checkpoint.dat"

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method final B(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;
    .registers 7

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/play/core/assetpacks/e0;->y(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method final C(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;
    .registers 9

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/play/core/assetpacks/e0;->j(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object p1

    const-string p2, "_slices"

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p1, "_unverified"

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method final D(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;
    .registers 9

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/play/core/assetpacks/e0;->j(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object p1

    const-string p2, "_slices"

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p1, "_verified"

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method final E(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/e0;->k()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1e

    sget-object v0, Lcom/google/android/play/core/assetpacks/e0;->c:Lv4/a;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string p1, "Pack not found with pack name: %s"

    .line 3
    invoke-virtual {v0, p1, v1}, Lv4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v2

    :cond_1e
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/e0;->b:Lcom/google/android/play/core/assetpacks/r2;

    .line 4
    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/r2;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v5, 0x2

    if-nez v0, :cond_4c

    sget-object v0, Lcom/google/android/play/core/assetpacks/e0;->c:Lv4/a;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/e0;->b:Lcom/google/android/play/core/assetpacks/r2;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/r2;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "Pack not found with pack name: %s app version: %s"

    .line 7
    invoke-virtual {v0, p1, v1}, Lv4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v2

    .line 8
    :cond_4c
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_77

    array-length v1, v0

    if-nez v1, :cond_56

    goto :goto_77

    :cond_56
    if-le v1, v4, :cond_70

    .line 9
    sget-object v0, Lcom/google/android/play/core/assetpacks/e0;->c:Lv4/a;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/e0;->b:Lcom/google/android/play/core/assetpacks/r2;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/r2;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "Multiple pack versions found for pack name: %s app version: %s"

    .line 11
    invoke-virtual {v0, p1, v1}, Lv4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v2

    .line 12
    :cond_70
    aget-object p1, v0, v3

    .line 13
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 14
    :cond_77
    :goto_77
    sget-object v0, Lcom/google/android/play/core/assetpacks/e0;->c:Lv4/a;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/e0;->b:Lcom/google/android/play/core/assetpacks/r2;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/r2;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "No pack version found for pack name: %s app version: %s"

    .line 16
    invoke-virtual {v0, p1, v1}, Lv4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v2
.end method

.method final F()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/e0;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-direct {p0, v2}, Lcom/google/android/play/core/assetpacks/e0;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x1

    .line 5
    invoke-static {v3, v4}, Lcom/google/android/play/core/assetpacks/e0;->g(Ljava/io/File;Z)J

    move-result-wide v5

    long-to-int v3, v5

    .line 6
    invoke-virtual {p0, v2, v3}, Lcom/google/android/play/core/assetpacks/e0;->t(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    .line 7
    invoke-static {v5, v4}, Lcom/google/android/play/core/assetpacks/e0;->g(Ljava/io/File;Z)J

    move-result-wide v4

    .line 8
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/android/play/core/assetpacks/e0;->u(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 9
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_41
    return-object v0
.end method

.method final G()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/play/core/assetpacks/e0;->H()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v2}, Lcom/google/android/play/core/assetpacks/e0;->r(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_29
    return-object v0
.end method

.method final H()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/play/core/assetpacks/b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    :try_start_5
    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/e0;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/play/core/assetpacks/e0;->s(Ljava/lang/String;)Lcom/google/android/play/core/assetpacks/b;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2a} :catch_2b

    goto :goto_d

    :catch_2b
    move-exception v1

    sget-object v2, Lcom/google/android/play/core/assetpacks/e0;->c:Lv4/a;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "Could not process directory while scanning installed packs: %s"

    .line 5
    invoke-virtual {v2, v1, v3}, Lv4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_39
    return-object v0
.end method

.method final I()V
    .registers 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/e0;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 3
    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/e0;->n(Ljava/io/File;)V

    const/4 v2, 0x0

    .line 4
    invoke-static {v1, v2}, Lcom/google/android/play/core/assetpacks/e0;->g(Ljava/io/File;Z)J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/e0;->b:Lcom/google/android/play/core/assetpacks/r2;

    .line 5
    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/r2;->a()I

    move-result v5

    int-to-long v5, v5

    cmp-long v7, v5, v3

    if-eqz v7, :cond_4a

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/io/File;

    .line 6
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "stale.tmp"

    invoke-direct {v5, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7
    :try_start_3d
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_4a

    .line 8
    :catch_41
    sget-object v3, Lcom/google/android/play/core/assetpacks/e0;->c:Lv4/a;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Could not write staleness marker."

    .line 9
    invoke-virtual {v3, v5, v4}, Lv4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 10
    :cond_4a
    :goto_4a
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v3, v1

    :goto_4f
    if-ge v2, v3, :cond_8

    aget-object v4, v1, v2

    .line 11
    invoke-static {v4}, Lcom/google/android/play/core/assetpacks/e0;->n(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    :cond_59
    return-void
.end method

.method final J()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/e0;->k()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/e0;->o(Ljava/io/File;)Z

    return-void
.end method

.method final a(Ljava/lang/String;IJI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/play/core/assetpacks/e0;->i(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object p1

    new-instance p2, Ljava/util/Properties;

    .line 2
    invoke-direct {p2}, Ljava/util/Properties;-><init>()V

    .line 3
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "numberOfMerges"

    invoke-virtual {p2, p4, p3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    new-instance p3, Ljava/io/FileOutputStream;

    .line 6
    invoke-direct {p3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p2, p3, p1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method final b(Ljava/lang/String;IJ)V
    .registers 14

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/play/core/assetpacks/e0;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 3
    :cond_b
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v0, :cond_63

    aget-object v3, p1, v2

    .line 4
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    .line 5
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "stale.tmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    .line 6
    invoke-static {v3}, Lcom/google/android/play/core/assetpacks/e0;->o(Ljava/io/File;)Z

    goto :goto_60

    .line 7
    :cond_34
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 8
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_48
    if-ge v5, v4, :cond_60

    aget-object v6, v3, v5

    .line 9
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5d

    .line 10
    invoke-static {v6}, Lcom/google/android/play/core/assetpacks/e0;->o(Ljava/io/File;)Z

    :cond_5d
    add-int/lit8 v5, v5, 0x1

    goto :goto_48

    :cond_60
    :goto_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_63
    return-void
.end method

.method final c(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/e0;->b:Lcom/google/android/play/core/assetpacks/r2;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/r2;->a()I

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/e0;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const/4 v3, 0x1

    .line 4
    invoke-static {v2, v3}, Lcom/google/android/play/core/assetpacks/e0;->g(Ljava/io/File;Z)J

    move-result-wide v3

    int-to-long v5, v0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_e

    .line 5
    invoke-static {v2}, Lcom/google/android/play/core/assetpacks/e0;->o(Ljava/io/File;)Z

    goto :goto_e

    :cond_32
    return-void
.end method

.method final d(Ljava/lang/String;IJ)Z
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/play/core/assetpacks/e0;->j(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_c
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/play/core/assetpacks/e0;->j(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/play/core/assetpacks/e0;->o(Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method final e(Ljava/lang/String;IJ)Z
    .registers 6

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/play/core/assetpacks/e0;->u(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_c
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/play/core/assetpacks/e0;->u(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/play/core/assetpacks/e0;->o(Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method final f(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/play/core/assetpacks/e0;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_9

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    return p1

    :catch_9
    :cond_9
    return v0
.end method

.method final p(Ljava/lang/String;)I
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/play/core/assetpacks/e0;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/play/core/assetpacks/e0;->g(Ljava/io/File;Z)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method final q(Ljava/lang/String;IJ)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/play/core/assetpacks/e0;->i(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_c

    const/4 p1, 0x0

    return p1

    :cond_c
    new-instance p2, Ljava/util/Properties;

    .line 3
    invoke-direct {p2}, Ljava/util/Properties;-><init>()V

    new-instance p3, Ljava/io/FileInputStream;

    .line 4
    invoke-direct {p3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5
    :try_start_16
    invoke-virtual {p2, p3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_3c

    .line 6
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    const-string p1, "numberOfMerges"

    .line 7
    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "Merge checkpoint file corrupt."

    if-eqz p3, :cond_36

    .line 8
    :try_start_26
    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_2e} :catch_2f

    return p1

    :catch_2f
    move-exception p1

    .line 9
    new-instance p2, Lcom/google/android/play/core/assetpacks/d1;

    .line 10
    invoke-direct {p2, p4, p1}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    .line 11
    :cond_36
    new-instance p1, Lcom/google/android/play/core/assetpacks/d1;

    .line 12
    invoke-direct {p1, p4}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_3c
    move-exception p1

    .line 13
    :try_start_3d
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_40

    :catchall_40
    throw p1
.end method

.method final r(Ljava/lang/String;)J
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/play/core/assetpacks/e0;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/play/core/assetpacks/e0;->g(Ljava/io/File;Z)J

    move-result-wide v2

    long-to-int v0, v2

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/core/assetpacks/e0;->t(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 4
    invoke-static {p1, v1}, Lcom/google/android/play/core/assetpacks/e0;->g(Ljava/io/File;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method final s(Ljava/lang/String;)Lcom/google/android/play/core/assetpacks/b;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/play/core/assetpacks/e0;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    :cond_8
    new-instance v1, Ljava/io/File;

    const-string v2, "assets"

    .line 2
    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_23

    sget-object p1, Lcom/google/android/play/core/assetpacks/e0;->c:Lv4/a;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Failed to find assets directory: %s"

    .line 4
    invoke-virtual {p1, v1, v2}, Lv4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v0

    .line 5
    :cond_23
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/play/core/assetpacks/b;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/play/core/assetpacks/b;

    move-result-object p1

    return-object p1
.end method

.method final t(Ljava/lang/String;I)Ljava/io/File;
    .registers 4

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/google/android/play/core/assetpacks/e0;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method final u(Ljava/lang/String;IJ)Ljava/io/File;
    .registers 6

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/play/core/assetpacks/e0;->t(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method final v(Ljava/lang/String;IJ)Ljava/io/File;
    .registers 6

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/play/core/assetpacks/e0;->u(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object p1

    const-string p2, "_metadata"

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method final w(Ljava/lang/String;IJ)Ljava/io/File;
    .registers 6

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/play/core/assetpacks/e0;->j(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object p1

    const-string p2, "_packs"

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method final x(Ljava/lang/String;IJ)Ljava/io/File;
    .registers 6

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/play/core/assetpacks/e0;->v(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object p1

    const-string p2, "properties.dat"

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method final y(Ljava/lang/String;IJ)Ljava/io/File;
    .registers 7

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/play/core/assetpacks/e0;->j(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object p1

    const-string p2, "_slices"

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p1, "_metadata"

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method final z(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;
    .registers 7

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/play/core/assetpacks/e0;->B(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object p1

    const-string p2, "checkpoint_ext.dat"

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
