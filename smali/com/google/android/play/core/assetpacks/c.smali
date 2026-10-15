###### Class com.google.android.play.core.assetpacks.c (com.google.android.play.core.assetpacks.c)
.class public abstract Lcom/google/android/play/core/assetpacks/c;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Landroid/os/Bundle;Lcom/google/android/play/core/assetpacks/h1;Lcom/google/android/play/core/assetpacks/p2;)Lcom/google/android/play/core/assetpacks/c;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/google/android/play/core/assetpacks/c0;->a:Lcom/google/android/play/core/assetpacks/c0;

    .line 2
    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/android/play/core/assetpacks/c;->d(Landroid/os/Bundle;Lcom/google/android/play/core/assetpacks/h1;Lcom/google/android/play/core/assetpacks/p2;Ljava/util/List;Lcom/google/android/play/core/assetpacks/b0;)Lcom/google/android/play/core/assetpacks/c;

    move-result-object p0

    return-object p0
.end method

.method private static d(Landroid/os/Bundle;Lcom/google/android/play/core/assetpacks/h1;Lcom/google/android/play/core/assetpacks/p2;Ljava/util/List;Lcom/google/android/play/core/assetpacks/b0;)Lcom/google/android/play/core/assetpacks/c;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lcom/google/android/play/core/assetpacks/h1;",
            "Lcom/google/android/play/core/assetpacks/p2;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/play/core/assetpacks/b0;",
            ")",
            "Lcom/google/android/play/core/assetpacks/c;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "pack_names"

    .line 1
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    .line 2
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v3, :cond_2a

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 3
    check-cast v5, Ljava/lang/String;

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    .line 4
    invoke-static {v0, v5, v6, v7, v8}, Lcom/google/android/play/core/assetpacks/AssetPackState;->i(Landroid/os/Bundle;Ljava/lang/String;Lcom/google/android/play/core/assetpacks/h1;Lcom/google/android/play/core/assetpacks/p2;Lcom/google/android/play/core/assetpacks/b0;)Lcom/google/android/play/core/assetpacks/AssetPackState;

    move-result-object v9

    .line 5
    invoke-interface {v2, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 6
    :cond_2a
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    const-string v14, ""

    const-string v15, ""

    move-object v4, v3

    .line 7
    invoke-static/range {v4 .. v15}, Lcom/google/android/play/core/assetpacks/AssetPackState;->h(Ljava/lang/String;IIJJDILjava/lang/String;Ljava/lang/String;)Lcom/google/android/play/core/assetpacks/AssetPackState;

    move-result-object v4

    .line 8
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    :cond_50
    const-string v1, "total_bytes_to_download"

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    new-instance v3, Lcom/google/android/play/core/assetpacks/k0;

    .line 10
    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/play/core/assetpacks/k0;-><init>(JLjava/util/Map;)V

    return-object v3
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/play/core/assetpacks/AssetPackState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b()J
.end method

###### Class com.google.android.play.core.assetpacks.c0 (com.google.android.play.core.assetpacks.c0)
.class public final synthetic Lcom/google/android/play/core/assetpacks/c0;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lcom/google/android/play/core/assetpacks/b0;


# static fields
.field public static final synthetic a:Lcom/google/android/play/core/assetpacks/c0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/play/core/assetpacks/c0;

    invoke-direct {v0}, Lcom/google/android/play/core/assetpacks/c0;-><init>()V

    sput-object v0, Lcom/google/android/play/core/assetpacks/c0;->a:Lcom/google/android/play/core/assetpacks/c0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final P(ILjava/lang/String;)I
    .registers 3

    return p1
.end method
