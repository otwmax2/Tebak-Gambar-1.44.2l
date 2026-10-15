###### Class com.google.android.play.core.assetpacks.w1 (com.google.android.play.core.assetpacks.w1)
.class final Lcom/google/android/play/core/assetpacks/w1;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# static fields
.field private static final g:Lv4/a;


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

.field private final c:Lcom/google/android/play/core/assetpacks/h1;

.field private final d:Lv4/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/y<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/play/core/assetpacks/t1;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lv4/a;

    const-string v1, "ExtractorSessionStoreView"

    invoke-direct {v0, v1}, Lv4/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/w1;->g:Lv4/a;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/e0;Lv4/y;Lcom/google/android/play/core/assetpacks/h1;Lv4/y;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/assetpacks/e0;",
            "Lv4/y<",
            "Lcom/google/android/play/core/assetpacks/u3;",
            ">;",
            "Lcom/google/android/play/core/assetpacks/h1;",
            "Lv4/y<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/w1;->a:Lcom/google/android/play/core/assetpacks/e0;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/w1;->b:Lv4/y;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/w1;->c:Lcom/google/android/play/core/assetpacks/h1;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/w1;->d:Lv4/y;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/w1;->e:Ljava/util/Map;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/w1;->f:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method private final o(I)Lcom/google/android/play/core/assetpacks/t1;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/w1;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/t1;

    if-eqz v0, :cond_f

    return-object v0

    :cond_f
    new-instance v0, Lcom/google/android/play/core/assetpacks/d1;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Could not find session %d while trying to get it"

    .line 2
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private final p(Lcom/google/android/play/core/assetpacks/v1;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/play/core/assetpacks/v1<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/w1;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    invoke-interface {p1}, Lcom/google/android/play/core/assetpacks/v1;->zza()Ljava/lang/Object;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_f

    .line 3
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/w1;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_f
    move-exception p1

    .line 5
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/w1;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 7
    throw p1
.end method

.method private static q(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    const-string v0, "pack_names"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x0

    .line 3
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 4
    :cond_16
    new-instance p0, Lcom/google/android/play/core/assetpacks/d1;

    const-string v0, "Session without pack received."

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static r(Ljava/util/List;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_6

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method private final s(Ljava/util/List;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/play/core/assetpacks/t1;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/play/core/assetpacks/p1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/assetpacks/p1;-><init>(Lcom/google/android/play/core/assetpacks/w1;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/google/android/play/core/assetpacks/w1;->p(Lcom/google/android/play/core/assetpacks/v1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method


# virtual methods
.method final synthetic a(Landroid/os/Bundle;)Ljava/lang/Boolean;
    .registers 5

    const-string v0, "session_id"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    .line 2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_b
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/w1;->e:Ljava/util/Map;

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_1a
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/w1;->e:Ljava/util/Map;

    .line 5
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/t1;

    .line 6
    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget v1, v1, Lcom/google/android/play/core/assetpacks/s1;->d:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2c

    .line 7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 8
    :cond_2c
    invoke-static {p1}, Lcom/google/android/play/core/assetpacks/w1;->q(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "status"

    .line 9
    invoke-static {v2, v1}, Lt4/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 11
    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget v0, v0, Lcom/google/android/play/core/assetpacks/s1;->d:I

    invoke-static {v0, p1}, Lcom/google/android/play/core/assetpacks/d0;->c(II)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method final synthetic b(Landroid/os/Bundle;)Ljava/lang/Boolean;
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "session_id"

    .line 1
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_f

    .line 2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    :cond_f
    iget-object v3, v0, Lcom/google/android/play/core/assetpacks/w1;->e:Ljava/util/Map;

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "chunk_intents"

    const-string v6, "status"

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_f1

    .line 4
    invoke-direct {v0, v2}, Lcom/google/android/play/core/assetpacks/w1;->o(I)Lcom/google/android/play/core/assetpacks/t1;

    move-result-object v3

    iget-object v9, v3, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v9, v9, Lcom/google/android/play/core/assetpacks/s1;->a:Ljava/lang/String;

    .line 5
    invoke-static {v6, v9}, Lt4/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iget-object v9, v3, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget v9, v9, Lcom/google/android/play/core/assetpacks/s1;->d:I

    invoke-static {v9, v6}, Lcom/google/android/play/core/assetpacks/d0;->c(II)Z

    move-result v9

    if-eqz v9, :cond_8f

    sget-object v1, Lcom/google/android/play/core/assetpacks/w1;->g:Lv4/a;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v8

    iget-object v4, v3, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget v4, v4, Lcom/google/android/play/core/assetpacks/s1;->d:I

    .line 7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v7

    const-string v4, "Found stale update for session %s with status %d."

    .line 8
    invoke-virtual {v1, v4, v5}, Lv4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, v3, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v3, v1, Lcom/google/android/play/core/assetpacks/s1;->a:Ljava/lang/String;

    iget v1, v1, Lcom/google/android/play/core/assetpacks/s1;->d:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_67

    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/w1;->b:Lv4/y;

    .line 9
    invoke-interface {v1}, Lv4/y;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/assetpacks/u3;

    invoke-interface {v1, v2, v3}, Lcom/google/android/play/core/assetpacks/u3;->a(ILjava/lang/String;)V

    goto/16 :goto_1da

    :cond_67
    const/4 v4, 0x5

    if-ne v1, v4, :cond_77

    .line 10
    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/w1;->b:Lv4/y;

    .line 11
    invoke-interface {v1}, Lv4/y;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/assetpacks/u3;

    invoke-interface {v1, v2}, Lcom/google/android/play/core/assetpacks/u3;->Q(I)V

    goto/16 :goto_1da

    :cond_77
    const/4 v2, 0x6

    if-ne v1, v2, :cond_1da

    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/w1;->b:Lv4/y;

    .line 12
    invoke-interface {v1}, Lv4/y;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/assetpacks/u3;

    new-array v2, v7, [Ljava/lang/String;

    aput-object v3, v2, v8

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/play/core/assetpacks/u3;->f(Ljava/util/List;)V

    goto/16 :goto_1da

    :cond_8f
    iget-object v4, v3, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iput v6, v4, Lcom/google/android/play/core/assetpacks/s1;->d:I

    invoke-static {v6}, Lcom/google/android/play/core/assetpacks/d0;->d(I)Z

    move-result v4

    if-eqz v4, :cond_a7

    .line 13
    invoke-virtual {v0, v2}, Lcom/google/android/play/core/assetpacks/w1;->l(I)V

    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/w1;->c:Lcom/google/android/play/core/assetpacks/h1;

    iget-object v2, v3, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v2, v2, Lcom/google/android/play/core/assetpacks/s1;->a:Ljava/lang/String;

    .line 14
    invoke-virtual {v1, v2}, Lcom/google/android/play/core/assetpacks/h1;->c(Ljava/lang/String;)V

    goto/16 :goto_1da

    :cond_a7
    iget-object v2, v3, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v2, v2, Lcom/google/android/play/core/assetpacks/s1;->f:Ljava/util/List;

    .line 15
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_af
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1da

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/play/core/assetpacks/u1;

    iget-object v6, v3, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v6, v6, Lcom/google/android/play/core/assetpacks/s1;->a:Ljava/lang/String;

    .line 16
    iget-object v9, v4, Lcom/google/android/play/core/assetpacks/u1;->a:Ljava/lang/String;

    .line 17
    invoke-static {v5, v6, v9}, Lt4/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 18
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_af

    const/4 v9, 0x0

    .line 19
    :goto_cc
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_af

    .line 20
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_ee

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    if-eqz v10, :cond_ee

    .line 21
    iget-object v10, v4, Lcom/google/android/play/core/assetpacks/u1;->d:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/play/core/assetpacks/q1;

    iput-boolean v7, v10, Lcom/google/android/play/core/assetpacks/q1;->a:Z

    :cond_ee
    add-int/lit8 v9, v9, 0x1

    goto :goto_cc

    .line 22
    :cond_f1
    invoke-static/range {p1 .. p1}, Lcom/google/android/play/core/assetpacks/w1;->q(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v11

    const-string v3, "pack_version"

    .line 23
    invoke-static {v3, v11}, Lt4/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v3, "pack_version_tag"

    .line 25
    invoke-static {v3, v11}, Lt4/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    .line 26
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 27
    invoke-static {v6, v11}, Lt4/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string v3, "total_bytes_to_download"

    .line 29
    invoke-static {v3, v11}, Lt4/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 30
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    const-string v3, "slice_ids"

    .line 31
    invoke-static {v3, v11}, Lt4/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    .line 33
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-static {v3}, Lcom/google/android/play/core/assetpacks/w1;->r(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_134
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1be

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 35
    invoke-static {v5, v11, v6}, Lt4/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 36
    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    .line 37
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-static {v9}, Lcom/google/android/play/core/assetpacks/w1;->r(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_155
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_170

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/Intent;

    if-eqz v17, :cond_164

    goto :goto_165

    :cond_164
    const/4 v7, 0x0

    :goto_165
    new-instance v8, Lcom/google/android/play/core/assetpacks/q1;

    .line 39
    invoke-direct {v8, v7}, Lcom/google/android/play/core/assetpacks/q1;-><init>(Z)V

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto :goto_155

    :cond_170
    const-string v7, "uncompressed_hash_sha256"

    .line 40
    invoke-static {v7, v11, v6}, Lt4/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 41
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v7, "uncompressed_size"

    .line 42
    invoke-static {v7, v11, v6}, Lt4/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 43
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    const-string v7, "patch_format"

    .line 44
    invoke-static {v7, v11, v6}, Lt4/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 45
    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v26

    if-eqz v26, :cond_1a0

    new-instance v7, Lcom/google/android/play/core/assetpacks/u1;

    const/16 v25, 0x0

    move-object/from16 v19, v7

    move-object/from16 v20, v6

    move-object/from16 v24, v10

    .line 46
    invoke-direct/range {v19 .. v26}, Lcom/google/android/play/core/assetpacks/u1;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;II)V

    const/4 v8, 0x0

    goto :goto_1b8

    :cond_1a0
    const-string v7, "compression_format"

    .line 47
    invoke-static {v7, v11, v6}, Lt4/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 48
    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v25

    new-instance v7, Lcom/google/android/play/core/assetpacks/u1;

    const/16 v26, 0x0

    move-object/from16 v19, v7

    move-object/from16 v20, v6

    move-object/from16 v24, v10

    .line 49
    invoke-direct/range {v19 .. v26}, Lcom/google/android/play/core/assetpacks/u1;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;II)V

    .line 50
    :goto_1b8
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    goto/16 :goto_134

    .line 51
    :cond_1be
    new-instance v3, Lcom/google/android/play/core/assetpacks/s1;

    move-object v10, v3

    move-object/from16 v17, v4

    .line 52
    invoke-direct/range {v10 .. v18}, Lcom/google/android/play/core/assetpacks/s1;-><init>(Ljava/lang/String;JIJLjava/util/List;Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/play/core/assetpacks/t1;

    const-string v5, "app_version_code"

    .line 53
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v4, v2, v1, v3}, Lcom/google/android/play/core/assetpacks/t1;-><init>(IILcom/google/android/play/core/assetpacks/s1;)V

    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/w1;->e:Ljava/util/Map;

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_1da
    :goto_1da
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1
.end method

.method final synthetic c(Ljava/lang/String;IJ)Ljava/lang/Object;
    .registers 10

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/play/core/assetpacks/w1;->s(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/assetpacks/t1;

    if-eqz v1, :cond_20

    iget-object v3, v1, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget v3, v3, Lcom/google/android/play/core/assetpacks/s1;->d:I

    invoke-static {v3}, Lcom/google/android/play/core/assetpacks/d0;->d(I)Z

    move-result v3

    if-eqz v3, :cond_31

    :cond_20
    sget-object v3, Lcom/google/android/play/core/assetpacks/w1;->g:Lv4/a;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v4, "Could not find pack %s while trying to complete it"

    .line 2
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v2}, Lv4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_31
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/w1;->a:Lcom/google/android/play/core/assetpacks/e0;

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/play/core/assetpacks/e0;->d(Ljava/lang/String;IJ)Z

    .line 4
    iget-object p1, v1, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    const/4 p2, 0x4

    iput p2, p1, Lcom/google/android/play/core/assetpacks/s1;->d:I

    const/4 p1, 0x0

    return-object p1
.end method

.method final synthetic d(II)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/play/core/assetpacks/w1;->o(I)Lcom/google/android/play/core/assetpacks/t1;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    const/4 p2, 0x5

    iput p2, p1, Lcom/google/android/play/core/assetpacks/s1;->d:I

    const/4 p1, 0x0

    return-object p1
.end method

.method final synthetic e(I)Ljava/lang/Object;
    .registers 8

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/play/core/assetpacks/w1;->o(I)Lcom/google/android/play/core/assetpacks/t1;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget v1, v1, Lcom/google/android/play/core/assetpacks/s1;->d:I

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/d0;->d(I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/w1;->a:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v2, v1, Lcom/google/android/play/core/assetpacks/s1;->a:Ljava/lang/String;

    iget v3, v0, Lcom/google/android/play/core/assetpacks/t1;->b:I

    iget-wide v4, v1, Lcom/google/android/play/core/assetpacks/s1;->b:J

    .line 3
    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/google/android/play/core/assetpacks/e0;->d(Ljava/lang/String;IJ)Z

    iget-object p1, v0, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget v1, p1, Lcom/google/android/play/core/assetpacks/s1;->d:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_25

    const/4 v2, 0x6

    if-ne v1, v2, :cond_30

    :cond_25
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/w1;->a:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/s1;->a:Ljava/lang/String;

    iget v0, v0, Lcom/google/android/play/core/assetpacks/t1;->b:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/s1;->b:J

    .line 4
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/play/core/assetpacks/e0;->e(Ljava/lang/String;IJ)Z

    :cond_30
    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_32
    new-instance v0, Lcom/google/android/play/core/assetpacks/d1;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Could not safely delete session %d because it is not in a terminal state."

    .line 7
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method final f()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/play/core/assetpacks/t1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/w1;->e:Ljava/util/Map;

    return-object v0
.end method

.method final synthetic g(Ljava/util/List;)Ljava/util/Map;
    .registers 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/w1;->e:Ljava/util/Map;

    .line 2
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/assetpacks/t1;

    .line 3
    iget-object v3, v2, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v3, v3, Lcom/google/android/play/core/assetpacks/s1;->a:Ljava/lang/String;

    .line 4
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 5
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/play/core/assetpacks/t1;

    if-nez v4, :cond_2f

    const/4 v4, -0x1

    goto :goto_31

    .line 6
    :cond_2f
    iget v4, v4, Lcom/google/android/play/core/assetpacks/t1;->a:I

    .line 7
    :goto_31
    iget v5, v2, Lcom/google/android/play/core/assetpacks/t1;->a:I

    if-ge v4, v5, :cond_f

    .line 8
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_39
    return-object v0
.end method

.method final h()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/w1;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method final i(Ljava/lang/String;IJ)V
    .registers 12

    .line 1
    new-instance v6, Lcom/google/android/play/core/assetpacks/o1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/play/core/assetpacks/o1;-><init>(Lcom/google/android/play/core/assetpacks/w1;Ljava/lang/String;IJ)V

    invoke-direct {p0, v6}, Lcom/google/android/play/core/assetpacks/w1;->p(Lcom/google/android/play/core/assetpacks/v1;)Ljava/lang/Object;

    return-void
.end method

.method final j()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/w1;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method final k(II)V
    .registers 4

    .line 1
    new-instance p2, Lcom/google/android/play/core/assetpacks/l1;

    const/4 v0, 0x5

    invoke-direct {p2, p0, p1, v0}, Lcom/google/android/play/core/assetpacks/l1;-><init>(Lcom/google/android/play/core/assetpacks/w1;II)V

    invoke-direct {p0, p2}, Lcom/google/android/play/core/assetpacks/w1;->p(Lcom/google/android/play/core/assetpacks/v1;)Ljava/lang/Object;

    return-void
.end method

.method final l(I)V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/play/core/assetpacks/k1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/assetpacks/k1;-><init>(Lcom/google/android/play/core/assetpacks/w1;I)V

    invoke-direct {p0, v0}, Lcom/google/android/play/core/assetpacks/w1;->p(Lcom/google/android/play/core/assetpacks/v1;)Ljava/lang/Object;

    return-void
.end method

.method final m(Landroid/os/Bundle;)Z
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/play/core/assetpacks/m1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/assetpacks/m1;-><init>(Lcom/google/android/play/core/assetpacks/w1;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/play/core/assetpacks/w1;->p(Lcom/google/android/play/core/assetpacks/v1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method final n(Landroid/os/Bundle;)Z
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/play/core/assetpacks/n1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/assetpacks/n1;-><init>(Lcom/google/android/play/core/assetpacks/w1;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/play/core/assetpacks/w1;->p(Lcom/google/android/play/core/assetpacks/v1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

###### Class com.google.android.play.core.assetpacks.k1 (com.google.android.play.core.assetpacks.k1)
.class public final synthetic Lcom/google/android/play/core/assetpacks/k1;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lcom/google/android/play/core/assetpacks/v1;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/assetpacks/w1;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/w1;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/k1;->a:Lcom/google/android/play/core/assetpacks/w1;

    iput p2, p0, Lcom/google/android/play/core/assetpacks/k1;->b:I

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k1;->a:Lcom/google/android/play/core/assetpacks/w1;

    iget v1, p0, Lcom/google/android/play/core/assetpacks/k1;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/w1;->e(I)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.google.android.play.core.assetpacks.l1 (com.google.android.play.core.assetpacks.l1)
.class public final synthetic Lcom/google/android/play/core/assetpacks/l1;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lcom/google/android/play/core/assetpacks/v1;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/assetpacks/w1;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/w1;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/l1;->a:Lcom/google/android/play/core/assetpacks/w1;

    iput p2, p0, Lcom/google/android/play/core/assetpacks/l1;->b:I

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/l1;->a:Lcom/google/android/play/core/assetpacks/w1;

    iget v1, p0, Lcom/google/android/play/core/assetpacks/l1;->b:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/assetpacks/w1;->d(II)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.google.android.play.core.assetpacks.m1 (com.google.android.play.core.assetpacks.m1)
.class public final synthetic Lcom/google/android/play/core/assetpacks/m1;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lcom/google/android/play/core/assetpacks/v1;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/assetpacks/w1;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/w1;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/m1;->a:Lcom/google/android/play/core/assetpacks/w1;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/m1;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/m1;->a:Lcom/google/android/play/core/assetpacks/w1;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/m1;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/w1;->a(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.play.core.assetpacks.n1 (com.google.android.play.core.assetpacks.n1)
.class public final synthetic Lcom/google/android/play/core/assetpacks/n1;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lcom/google/android/play/core/assetpacks/v1;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/assetpacks/w1;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/w1;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/n1;->a:Lcom/google/android/play/core/assetpacks/w1;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/n1;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/n1;->a:Lcom/google/android/play/core/assetpacks/w1;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/n1;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/w1;->b(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.play.core.assetpacks.o1 (com.google.android.play.core.assetpacks.o1)
.class public final synthetic Lcom/google/android/play/core/assetpacks/o1;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lcom/google/android/play/core/assetpacks/v1;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/assetpacks/w1;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/w1;Ljava/lang/String;IJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/o1;->a:Lcom/google/android/play/core/assetpacks/w1;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/o1;->b:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/play/core/assetpacks/o1;->c:I

    iput-wide p4, p0, Lcom/google/android/play/core/assetpacks/o1;->d:J

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/o1;->a:Lcom/google/android/play/core/assetpacks/w1;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/o1;->b:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/play/core/assetpacks/o1;->c:I

    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/o1;->d:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/w1;->c(Ljava/lang/String;IJ)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.google.android.play.core.assetpacks.p1 (com.google.android.play.core.assetpacks.p1)
.class public final synthetic Lcom/google/android/play/core/assetpacks/p1;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lcom/google/android/play/core/assetpacks/v1;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/assetpacks/w1;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/w1;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/p1;->a:Lcom/google/android/play/core/assetpacks/w1;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/p1;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/p1;->a:Lcom/google/android/play/core/assetpacks/w1;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/p1;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/w1;->g(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
