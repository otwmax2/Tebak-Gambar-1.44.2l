###### Class com.google.android.play.core.assetpacks.s (com.google.android.play.core.assetpacks.s)
.class final Lcom/google/android/play/core/assetpacks/s;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lcom/google/android/play/core/assetpacks/u3;


# static fields
.field private static final g:Lv4/a;

.field private static final h:Landroid/content/Intent;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/play/core/assetpacks/h1;

.field private final c:Lcom/google/android/play/core/assetpacks/p2;

.field private d:Lv4/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/m<",
            "Lv4/i0;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lv4/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/m<",
            "Lv4/i0;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lv4/a;

    const-string v1, "AssetPackServiceImpl"

    invoke-direct {v0, v1}, Lv4/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/s;->g:Lv4/a;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.play.core.assetmoduleservice.BIND_ASSET_MODULE_SERVICE"

    .line 2
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/google/android/play/core/assetpacks/s;->h:Landroid/content/Intent;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/assetpacks/h1;Lcom/google/android/play/core/assetpacks/p2;)V
    .registers 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/s;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/s;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/s;->b:Lcom/google/android/play/core/assetpacks/h1;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/s;->c:Lcom/google/android/play/core/assetpacks/p2;

    .line 3
    invoke-static {p1}, Lv4/r;->b(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_45

    .line 4
    new-instance p2, Lv4/m;

    .line 5
    invoke-static {p1}, Lv4/p;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    sget-object p3, Lcom/google/android/play/core/assetpacks/s;->g:Lv4/a;

    sget-object v7, Lcom/google/android/play/core/assetpacks/s;->h:Landroid/content/Intent;

    sget-object v8, Ls4/j;->a:Ls4/j;

    const/4 v6, 0x0

    const-string v3, "AssetPackService"

    move-object v0, p2

    move-object v2, p3

    move-object v4, v7

    move-object v5, v8

    .line 6
    invoke-direct/range {v0 .. v6}, Lv4/m;-><init>(Landroid/content/Context;Lv4/a;Ljava/lang/String;Landroid/content/Intent;Lv4/h;Lv4/g;)V

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/s;->d:Lv4/m;

    new-instance p2, Lv4/m;

    .line 7
    invoke-static {p1}, Lv4/p;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    const/4 p1, 0x0

    const-string v5, "AssetPackService-keepAlive"

    move-object v2, p2

    move-object v4, p3

    move-object v6, v7

    move-object v7, v8

    move-object v8, p1

    .line 8
    invoke-direct/range {v2 .. v8}, Lv4/m;-><init>(Landroid/content/Context;Lv4/a;Ljava/lang/String;Landroid/content/Intent;Lv4/h;Lv4/g;)V

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/s;->e:Lv4/m;

    :cond_45
    sget-object p1, Lcom/google/android/play/core/assetpacks/s;->g:Lv4/a;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "AssetPackService initiated."

    .line 9
    invoke-virtual {p1, p3, p2}, Lv4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method private static g()Landroid/os/Bundle;
    .registers 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "playcore_version_code"

    const/16 v2, 0x2afa

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "supported_compression_formats"

    .line 6
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "supported_patch_formats"

    .line 10
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private static h(I)Landroid/os/Bundle;
    .registers 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "session_id"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private static i()Ly4/e;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ly4/e<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/play/core/assetpacks/s;->g:Lv4/a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, -0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string v3, "onError(%d)"

    invoke-virtual {v0, v3, v1}, Lv4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/play/core/assetpacks/a;

    .line 2
    invoke-direct {v0, v2}, Lcom/google/android/play/core/assetpacks/a;-><init>(I)V

    invoke-static {v0}, Ly4/g;->b(Ljava/lang/Exception;)Ly4/e;

    move-result-object v0

    return-object v0
.end method

.method private final j(ILjava/lang/String;I)V
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/s;->d:Lv4/m;

    if-eqz v0, :cond_25

    sget-object v0, Lcom/google/android/play/core/assetpacks/s;->g:Lv4/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "notifyModuleCompleted"

    .line 2
    invoke-virtual {v0, v2, v1}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Ly4/p;

    .line 3
    invoke-direct {v0}, Ly4/p;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/s;->d:Lv4/m;

    new-instance v2, Lcom/google/android/play/core/assetpacks/g;

    move-object v3, v2

    move-object v4, p0

    move-object v5, v0

    move v6, p1

    move-object v7, p2

    move-object v8, v0

    move v9, p3

    .line 4
    invoke-direct/range {v3 .. v9}, Lcom/google/android/play/core/assetpacks/g;-><init>(Lcom/google/android/play/core/assetpacks/s;Ly4/p;ILjava/lang/String;Ly4/p;I)V

    invoke-virtual {v1, v2, v0}, Lv4/m;->q(Lv4/b;Ly4/p;)V

    return-void

    .line 5
    :cond_25
    new-instance p2, Lcom/google/android/play/core/assetpacks/d1;

    const-string p3, "The Play Store app is not installed or is an unofficial version."

    invoke-direct {p2, p3, p1}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;I)V

    throw p2
.end method

.method static bridge synthetic k(ILjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/play/core/assetpacks/s;->x(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "slice_id"

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "chunk_number"

    .line 3
    invoke-virtual {p0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method static bridge synthetic l(ILjava/lang/String;)Landroid/os/Bundle;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/play/core/assetpacks/s;->x(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic m()Landroid/os/Bundle;
    .registers 1

    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->g()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic n(Ljava/util/Map;)Landroid/os/Bundle;
    .registers 7

    .line 1
    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->g()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v3, Landroid/os/Bundle;

    .line 4
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "installed_asset_module_name"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v2, "installed_asset_module_version"

    .line 7
    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 8
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_40
    const-string p0, "installed_asset_module"

    .line 9
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method static bridge synthetic o(I)Landroid/os/Bundle;
    .registers 1

    invoke-static {p0}, Lcom/google/android/play/core/assetpacks/s;->h(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic p()Lv4/a;
    .registers 1

    sget-object v0, Lcom/google/android/play/core/assetpacks/s;->g:Lv4/a;

    return-object v0
.end method

.method static bridge synthetic q(Lcom/google/android/play/core/assetpacks/s;)Lv4/m;
    .registers 1

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/s;->d:Lv4/m;

    return-object p0
.end method

.method static bridge synthetic r(Lcom/google/android/play/core/assetpacks/s;)Lv4/m;
    .registers 1

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/s;->e:Lv4/m;

    return-object p0
.end method

.method static bridge synthetic s(Lcom/google/android/play/core/assetpacks/s;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/s;->a:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic t(Ljava/util/Collection;)Ljava/util/ArrayList;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Landroid/os/Bundle;

    .line 3
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "module_name"

    .line 4
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_27
    return-object v0
.end method

.method static bridge synthetic u(Lcom/google/android/play/core/assetpacks/s;Ljava/util/List;)Ljava/util/List;
    .registers 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/s;->b:Lcom/google/android/play/core/assetpacks/h1;

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/s;->c:Lcom/google/android/play/core/assetpacks/p2;

    .line 3
    invoke-static {v1, v2, v3}, Lcom/google/android/play/core/assetpacks/c;->c(Landroid/os/Bundle;Lcom/google/android/play/core/assetpacks/h1;Lcom/google/android/play/core/assetpacks/p2;)Lcom/google/android/play/core/assetpacks/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/c;->a()Ljava/util/Map;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/assetpacks/AssetPackState;

    if-nez v1, :cond_3b

    sget-object v2, Lcom/google/android/play/core/assetpacks/s;->g:Lv4/a;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "onGetSessionStates: Bundle contained no pack."

    .line 7
    invoke-virtual {v2, v4, v3}, Lv4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 8
    :cond_3b
    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->d()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/play/core/assetpacks/d0;->a(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 9
    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_4d
    return-object v0
.end method

.method static bridge synthetic v(Lcom/google/android/play/core/assetpacks/s;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/s;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/google/android/play/core/assetpacks/s;ILjava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/play/core/assetpacks/s;->j(ILjava/lang/String;I)V

    return-void
.end method

.method private static x(ILjava/lang/String;)Landroid/os/Bundle;
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/android/play/core/assetpacks/s;->h(I)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "module_name"

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final Q(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/s;->d:Lv4/m;

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/google/android/play/core/assetpacks/s;->g:Lv4/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "notifySessionFailed"

    .line 2
    invoke-virtual {v0, v2, v1}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Ly4/p;

    .line 3
    invoke-direct {v0}, Ly4/p;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/s;->d:Lv4/m;

    new-instance v2, Lcom/google/android/play/core/assetpacks/h;

    .line 4
    invoke-direct {v2, p0, v0, p1, v0}, Lcom/google/android/play/core/assetpacks/h;-><init>(Lcom/google/android/play/core/assetpacks/s;Ly4/p;ILy4/p;)V

    invoke-virtual {v1, v2, v0}, Lv4/m;->q(Lv4/b;Ly4/p;)V

    return-void

    .line 5
    :cond_1e
    new-instance v0, Lcom/google/android/play/core/assetpacks/d1;

    const-string v1, "The Play Store app is not installed or is an unofficial version."

    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final a(ILjava/lang/String;)V
    .registers 4

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/play/core/assetpacks/s;->j(ILjava/lang/String;I)V

    return-void
.end method

.method public final b(ILjava/lang/String;Ljava/lang/String;I)Ly4/e;
    .registers 16
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

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/s;->d:Lv4/m;

    if-nez v0, :cond_9

    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->i()Ly4/e;

    move-result-object p1

    return-object p1

    :cond_9
    sget-object v0, Lcom/google/android/play/core/assetpacks/s;->g:Lv4/a;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    .line 2
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "getChunkFileDescriptor(%s, %s, %d, session=%d)"

    .line 3
    invoke-virtual {v0, v2, v1}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Ly4/p;

    .line 4
    invoke-direct {v0}, Ly4/p;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/s;->d:Lv4/m;

    new-instance v2, Lcom/google/android/play/core/assetpacks/i;

    move-object v3, v2

    move-object v4, p0

    move-object v5, v0

    move v6, p1

    move-object v7, p2

    move-object v8, p3

    move v9, p4

    move-object v10, v0

    .line 5
    invoke-direct/range {v3 .. v10}, Lcom/google/android/play/core/assetpacks/i;-><init>(Lcom/google/android/play/core/assetpacks/s;Ly4/p;ILjava/lang/String;Ljava/lang/String;ILy4/p;)V

    invoke-virtual {v1, v2, v0}, Lv4/m;->q(Lv4/b;Ly4/p;)V

    invoke-virtual {v0}, Ly4/p;->a()Ly4/e;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized c()V
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/s;->e:Lv4/m;

    const/4 v1, 0x0

    if-nez v0, :cond_11

    sget-object v0, Lcom/google/android/play/core/assetpacks/s;->g:Lv4/a;

    const-string v2, "Keep alive connection manager is not initialized."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lv4/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_3d

    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    sget-object v0, Lcom/google/android/play/core/assetpacks/s;->g:Lv4/a;

    const-string v2, "keepAlive"

    new-array v3, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, v2, v3}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/s;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "Service is already kept alive."

    new-array v1, v1, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v0, v2, v1}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_3d

    monitor-exit p0

    return-void

    :cond_2c
    :try_start_2c
    new-instance v0, Ly4/p;

    .line 5
    invoke-direct {v0}, Ly4/p;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/s;->e:Lv4/m;

    new-instance v2, Lcom/google/android/play/core/assetpacks/j;

    .line 6
    invoke-direct {v2, p0, v0, v0}, Lcom/google/android/play/core/assetpacks/j;-><init>(Lcom/google/android/play/core/assetpacks/s;Ly4/p;Ly4/p;)V

    invoke-virtual {v1, v2, v0}, Lv4/m;->q(Lv4/b;Ly4/p;)V
    :try_end_3b
    .catchall {:try_start_2c .. :try_end_3b} :catchall_3d

    monitor-exit p0

    return-void

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 16

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/s;->d:Lv4/m;

    if-eqz v0, :cond_26

    sget-object v0, Lcom/google/android/play/core/assetpacks/s;->g:Lv4/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "notifyChunkTransferred"

    .line 2
    invoke-virtual {v0, v2, v1}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Ly4/p;

    .line 3
    invoke-direct {v0}, Ly4/p;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/s;->d:Lv4/m;

    new-instance v2, Lcom/google/android/play/core/assetpacks/f;

    move-object v3, v2

    move-object v4, p0

    move-object v5, v0

    move v6, p1

    move-object v7, p2

    move-object v8, p3

    move v9, p4

    move-object v10, v0

    .line 4
    invoke-direct/range {v3 .. v10}, Lcom/google/android/play/core/assetpacks/f;-><init>(Lcom/google/android/play/core/assetpacks/s;Ly4/p;ILjava/lang/String;Ljava/lang/String;ILy4/p;)V

    invoke-virtual {v1, v2, v0}, Lv4/m;->q(Lv4/b;Ly4/p;)V

    return-void

    .line 5
    :cond_26
    new-instance p2, Lcom/google/android/play/core/assetpacks/d1;

    const-string p3, "The Play Store app is not installed or is an unofficial version."

    invoke-direct {p2, p3, p1}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;I)V

    throw p2
.end method

.method public final e(Ljava/util/Map;)Ly4/e;
    .registers 5
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
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/s;->d:Lv4/m;

    if-nez v0, :cond_9

    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->i()Ly4/e;

    move-result-object p1

    return-object p1

    :cond_9
    sget-object v0, Lcom/google/android/play/core/assetpacks/s;->g:Lv4/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "syncPacks"

    .line 2
    invoke-virtual {v0, v2, v1}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Ly4/p;

    .line 3
    invoke-direct {v0}, Ly4/p;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/s;->d:Lv4/m;

    new-instance v2, Lcom/google/android/play/core/assetpacks/e;

    .line 4
    invoke-direct {v2, p0, v0, p1, v0}, Lcom/google/android/play/core/assetpacks/e;-><init>(Lcom/google/android/play/core/assetpacks/s;Ly4/p;Ljava/util/Map;Ly4/p;)V

    invoke-virtual {v1, v2, v0}, Lv4/m;->q(Lv4/b;Ly4/p;)V

    invoke-virtual {v0}, Ly4/p;->a()Ly4/e;

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
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/s;->d:Lv4/m;

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lcom/google/android/play/core/assetpacks/s;->g:Lv4/a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "cancelDownloads(%s)"

    invoke-virtual {v0, v2, v1}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Ly4/p;

    .line 2
    invoke-direct {v0}, Ly4/p;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/s;->d:Lv4/m;

    new-instance v2, Lcom/google/android/play/core/assetpacks/d;

    .line 3
    invoke-direct {v2, p0, v0, p1, v0}, Lcom/google/android/play/core/assetpacks/d;-><init>(Lcom/google/android/play/core/assetpacks/s;Ly4/p;Ljava/util/List;Ly4/p;)V

    invoke-virtual {v1, v2, v0}, Lv4/m;->q(Lv4/b;Ly4/p;)V

    return-void
.end method

###### Class s4.j (s4.j)
.class public final synthetic Ls4/j;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lv4/h;


# static fields
.field public static final synthetic a:Ls4/j;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ls4/j;

    invoke-direct {v0}, Ls4/j;-><init>()V

    sput-object v0, Ls4/j;->a:Ls4/j;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lv4/h0;->X0(Landroid/os/IBinder;)Lv4/i0;

    move-result-object p1

    return-object p1
.end method
