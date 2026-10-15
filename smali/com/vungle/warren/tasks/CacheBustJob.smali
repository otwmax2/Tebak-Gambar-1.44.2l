###### Class com.vungle.warren.tasks.CacheBustJob (com.vungle.warren.tasks.CacheBustJob)
.class public Lcom/vungle/warren/tasks/CacheBustJob;
.super Ljava/lang/Object;
.source "CacheBustJob.java"

# interfaces
.implements Lcom/vungle/warren/tasks/Job;


# static fields
.field public static final TAG:Ljava/lang/String; = "com.vungle.warren.tasks.CacheBustJob"

.field private static final e:[Ljava/lang/String;


# instance fields
.field private final a:Lcom/vungle/warren/VungleApiClient;

.field private final b:Lcom/vungle/warren/persistence/Repository;

.field private final c:Ljava/util/concurrent/ExecutorService;

.field private final d:Lcom/vungle/warren/AdLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    sput-object v0, Lcom/vungle/warren/tasks/CacheBustJob;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/vungle/warren/VungleApiClient;Lcom/vungle/warren/persistence/Repository;Ljava/util/concurrent/ExecutorService;Lcom/vungle/warren/AdLoader;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/tasks/CacheBustJob;->a:Lcom/vungle/warren/VungleApiClient;

    .line 3
    iput-object p2, p0, Lcom/vungle/warren/tasks/CacheBustJob;->b:Lcom/vungle/warren/persistence/Repository;

    .line 4
    iput-object p3, p0, Lcom/vungle/warren/tasks/CacheBustJob;->c:Ljava/util/concurrent/ExecutorService;

    .line 5
    iput-object p4, p0, Lcom/vungle/warren/tasks/CacheBustJob;->d:Lcom/vungle/warren/AdLoader;

    return-void
.end method

.method private a(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/CacheBust;)V
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    .line 1
    :try_start_6
    sget-object v3, Lcom/vungle/warren/tasks/CacheBustJob;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bustAd: deleting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v3, v1, Lcom/vungle/warren/tasks/CacheBustJob;->d:Lcom/vungle/warren/AdLoader;

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vungle/warren/AdLoader;->dropCache(Ljava/lang/String;)V

    .line 3
    iget-object v3, v1, Lcom/vungle/warren/tasks/CacheBustJob;->b:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vungle/warren/persistence/Repository;->deleteAdvertisement(Ljava/lang/String;)V

    .line 4
    iget-object v3, v1, Lcom/vungle/warren/tasks/CacheBustJob;->b:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v3, v2}, Lcom/vungle/warren/persistence/Repository;->getPlacementIdByAd(Lcom/vungle/warren/model/Advertisement;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v3, v4, v5}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/model/Placement;

    if-eqz v3, :cond_96

    .line 6
    new-instance v4, Lcom/vungle/warren/AdConfig;

    invoke-direct {v4}, Lcom/vungle/warren/AdConfig;-><init>()V

    .line 7
    invoke-virtual {v3}, Lcom/vungle/warren/model/Placement;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vungle/warren/AdConfig;->setAdSize(Lcom/vungle/warren/AdConfig$AdSize;)V

    .line 8
    invoke-virtual {v3}, Lcom/vungle/warren/model/Placement;->isMultipleHBPEnabled()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 9
    iget-object v4, v1, Lcom/vungle/warren/tasks/CacheBustJob;->d:Lcom/vungle/warren/AdLoader;

    invoke-virtual {v3}, Lcom/vungle/warren/model/Placement;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/vungle/warren/AdLoader;->loadEndlessIfNeeded(Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdConfig$AdSize;J)V

    goto :goto_96

    .line 10
    :cond_64
    iget-object v4, v1, Lcom/vungle/warren/tasks/CacheBustJob;->d:Lcom/vungle/warren/AdLoader;

    new-instance v15, Lcom/vungle/warren/AdLoader$Operation;

    new-instance v6, Lcom/vungle/warren/AdRequest;

    .line 11
    invoke-virtual {v3}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/vungle/warren/AdRequest;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v3}, Lcom/vungle/warren/model/Placement;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v7

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x7d0

    const/4 v12, 0x5

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v16, 0x0

    .line 13
    invoke-virtual {v3}, Lcom/vungle/warren/model/Placement;->getAutoCachePriority()I

    move-result v3

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/vungle/warren/LoadAdCallback;

    move-object/from16 v17, v5

    move-object v5, v15

    move-object/from16 v18, v15

    move/from16 v15, v16

    move/from16 v16, v3

    invoke-direct/range {v5 .. v17}, Lcom/vungle/warren/AdLoader$Operation;-><init>(Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/AdConfig$AdSize;JJIIIZI[Lcom/vungle/warren/LoadAdCallback;)V

    move-object/from16 v3, v18

    .line 14
    invoke-virtual {v4, v3}, Lcom/vungle/warren/AdLoader;->load(Lcom/vungle/warren/AdLoader$Operation;)V

    .line 15
    :cond_96
    :goto_96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/vungle/warren/model/CacheBust;->setTimestampProcessed(J)V

    .line 16
    iget-object v3, v1, Lcom/vungle/warren/tasks/CacheBustJob;->b:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v3, v0}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_a2
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_6 .. :try_end_a2} :catch_a3

    goto :goto_ba

    :catch_a3
    move-exception v0

    .line 17
    sget-object v3, Lcom/vungle/warren/tasks/CacheBustJob;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bustAd: cannot drop cache or delete advertisement for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_ba
    return-void
.end method

.method private b(Lcom/google/gson/o;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/google/gson/f;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/o;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/CacheBust;",
            ">;",
            "Lcom/google/gson/f;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/gson/o;->E(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/gson/o;->B(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/i;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_63

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/gson/l;

    .line 3
    const-class v0, Lcom/vungle/warren/model/CacheBust;

    invoke-virtual {p6, p2, v0}, Lcom/google/gson/f;->g(Lcom/google/gson/l;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vungle/warren/model/CacheBust;

    .line 4
    invoke-virtual {p2}, Lcom/vungle/warren/model/CacheBust;->getTimeWindowEnd()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/vungle/warren/model/CacheBust;->setTimeWindowEnd(J)V

    .line 5
    invoke-virtual {p2, p3}, Lcom/vungle/warren/model/CacheBust;->setIdType(I)V

    .line 6
    invoke-interface {p5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :try_start_33
    iget-object v0, p0, Lcom/vungle/warren/tasks/CacheBustJob;->b:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, p2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_38
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_33 .. :try_end_38} :catch_39

    goto :goto_e

    .line 8
    :catch_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/vungle/warren/tasks/CacheBustJob;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#onRunJob"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_63
    return-void
.end method

.method private c(Ljava/lang/Iterable;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/vungle/warren/model/CacheBust;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_db

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/CacheBust;

    .line 2
    invoke-virtual {v0}, Lcom/vungle/warren/model/CacheBust;->getIdType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_22

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/tasks/CacheBustJob;->b:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0}, Lcom/vungle/warren/model/CacheBust;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vungle/warren/persistence/Repository;->getAdsByCampaign(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_2c

    :cond_22
    iget-object v1, p0, Lcom/vungle/warren/tasks/CacheBustJob;->b:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0}, Lcom/vungle/warren/model/CacheBust;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vungle/warren/persistence/Repository;->getAdsByCreative(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 4
    :goto_2c
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 5
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3a
    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vungle/warren/model/Advertisement;

    .line 7
    invoke-virtual {v4}, Lcom/vungle/warren/model/Advertisement;->getServerRequestTimestamp()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/vungle/warren/model/CacheBust;->getTimeWindowEnd()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-gez v9, :cond_3a

    invoke-direct {p0, v4}, Lcom/vungle/warren/tasks/CacheBustJob;->e(Lcom/vungle/warren/model/Advertisement;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 8
    invoke-virtual {v4}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 10
    :cond_63
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 11
    sget-object v1, Lcom/vungle/warren/tasks/CacheBustJob;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processBust: bust has no relevant ads, deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :try_start_7f
    iget-object v1, p0, Lcom/vungle/warren/tasks/CacheBustJob;->b:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v1, v0}, Lcom/vungle/warren/persistence/Repository;->delete(Ljava/lang/Object;)V
    :try_end_84
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_7f .. :try_end_84} :catch_86

    goto/16 :goto_4

    :catch_86
    move-exception v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/vungle/warren/tasks/CacheBustJob;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#processBust"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot delete obsolete bust "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " because of "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 14
    :cond_bc
    sget-object v1, Lcom/vungle/warren/tasks/CacheBustJob;->e:[Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/model/CacheBust;->setEventIds([Ljava/lang/String;)V

    .line 15
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_cb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/model/Advertisement;

    .line 16
    invoke-direct {p0, v2, v0}, Lcom/vungle/warren/tasks/CacheBustJob;->a(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/CacheBust;)V

    goto :goto_cb

    :cond_db
    return-void
.end method

.method private d()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/tasks/CacheBustJob;->b:Lcom/vungle/warren/persistence/Repository;

    const-class v1, Lcom/vungle/warren/model/CacheBust;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/persistence/Repository;->loadAll(Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_ac

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_ac

    .line 3
    :cond_18
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_21
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/model/CacheBust;

    .line 5
    invoke-virtual {v2}, Lcom/vungle/warren/model/CacheBust;->getTimestampProcessed()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_21

    .line 6
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 7
    :cond_3b
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 8
    sget-object v0, Lcom/vungle/warren/tasks/CacheBustJob;->TAG:Ljava/lang/String;

    const-string v1, "sendAnalytics: no cachebusts to send analytics"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_49
    :try_start_49
    iget-object v0, p0, Lcom/vungle/warren/tasks/CacheBustJob;->a:Lcom/vungle/warren/VungleApiClient;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/VungleApiClient;->bustAnalytics(Ljava/util/Collection;)Lcom/vungle/warren/network/Call;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/network/Call;->execute()Lcom/vungle/warren/network/Response;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/vungle/warren/network/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 11
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ab

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/CacheBust;
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_69} :catch_a3

    .line 12
    :try_start_69
    iget-object v2, p0, Lcom/vungle/warren/tasks/CacheBustJob;->b:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v2, v1}, Lcom/vungle/warren/persistence/Repository;->delete(Ljava/lang/Object;)V
    :try_end_6e
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_69 .. :try_end_6e} :catch_6f
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6e} :catch_a3

    goto :goto_5d

    .line 13
    :catch_6f
    :try_start_6f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/vungle/warren/CacheBustManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#sendAnalytics"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "can\'t delete bust \" + cacheBust"

    invoke-static {v1, v2}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    .line 14
    :cond_8c
    sget-object v1, Lcom/vungle/warren/tasks/CacheBustJob;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendAnalytics: not successful, aborting, response is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_a2} :catch_a3

    goto :goto_ab

    :catch_a3
    move-exception v0

    .line 15
    sget-object v1, Lcom/vungle/warren/tasks/CacheBustJob;->TAG:Ljava/lang/String;

    const-string v2, "sendAnalytics: can\'t execute API call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_ab
    :goto_ab
    return-void

    .line 16
    :cond_ac
    :goto_ac
    sget-object v0, Lcom/vungle/warren/tasks/CacheBustJob;->TAG:Ljava/lang/String;

    const-string v1, "sendAnalytics: no cachebusts in repository"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private e(Lcom/vungle/warren/model/Advertisement;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    .line 2
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method public static makeJobInfo()Lcom/vungle/warren/tasks/JobInfo;
    .registers 2

    .line 1
    new-instance v0, Lcom/vungle/warren/tasks/JobInfo;

    sget-object v1, Lcom/vungle/warren/tasks/CacheBustJob;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/vungle/warren/tasks/JobInfo;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/vungle/warren/tasks/JobInfo;->setPriority(I)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/vungle/warren/tasks/JobInfo;->setUpdateCurrent(Z)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected f(Landroid/os/Bundle;Lcom/vungle/warren/model/Cookie;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    const-string v0, "cache_bust_interval"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1a

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "next_cache_bust"

    .line 3
    invoke-virtual {p2, v0, p1}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    :cond_1a
    iget-object p1, p0, Lcom/vungle/warren/tasks/CacheBustJob;->b:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {p1, p2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    return-void
.end method

.method public onRunJob(Landroid/os/Bundle;Lcom/vungle/warren/tasks/JobRunner;)I
    .registers 17

    move-object v8, p0

    const-string v0, "cache_bust"

    const-string v1, "last_cache_bust"

    const-string v2, "cacheBustSettings"

    const-string v3, "last_updated"

    .line 1
    sget-object v9, Lcom/vungle/warren/tasks/CacheBustJob;->TAG:Ljava/lang/String;

    const-string v4, "CacheBustJob started"

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v4, v8, Lcom/vungle/warren/tasks/CacheBustJob;->a:Lcom/vungle/warren/VungleApiClient;

    const/4 v5, 0x1

    if-eqz v4, :cond_df

    iget-object v4, v8, Lcom/vungle/warren/tasks/CacheBustJob;->b:Lcom/vungle/warren/persistence/Repository;

    if-nez v4, :cond_1b

    goto/16 :goto_df

    :cond_1b
    const/4 v10, 0x2

    .line 3
    :try_start_1c
    const-class v6, Lcom/vungle/warren/model/Cookie;

    invoke-virtual {v4, v2, v6}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vungle/warren/model/Cookie;

    if-nez v4, :cond_2f

    .line 4
    new-instance v4, Lcom/vungle/warren/model/Cookie;

    invoke-direct {v4, v2}, Lcom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    :cond_2f
    move-object v11, v4

    .line 5
    invoke-virtual {v11, v1}, Lcom/vungle/warren/model/Cookie;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 6
    iget-object v2, v8, Lcom/vungle/warren/tasks/CacheBustJob;->a:Lcom/vungle/warren/VungleApiClient;

    invoke-virtual {v2, v6, v7}, Lcom/vungle/warren/VungleApiClient;->cacheBust(J)Lcom/vungle/warren/network/Call;

    move-result-object v2

    invoke-interface {v2}, Lcom/vungle/warren/network/Call;->execute()Lcom/vungle/warren/network/Response;

    move-result-object v2

    .line 7
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v4, v8, Lcom/vungle/warren/tasks/CacheBustJob;->b:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v4}, Lcom/vungle/warren/persistence/Repository;->getUnProcessedBusts()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_58

    .line 9
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_58

    .line 10
    invoke-interface {v12, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    :cond_58
    new-instance v13, Lcom/google/gson/f;

    invoke-direct {v13}, Lcom/google/gson/f;-><init>()V

    .line 12
    invoke-virtual {v2}, Lcom/vungle/warren/network/Response;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_bd

    .line 13
    invoke-virtual {v2}, Lcom/vungle/warren/network/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/o;

    if-eqz v2, :cond_b7

    .line 14
    invoke-virtual {v2, v0}, Lcom/google/gson/o;->E(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_72

    goto :goto_b7

    .line 15
    :cond_72
    invoke-virtual {v2, v0}, Lcom/google/gson/o;->C(Ljava/lang/String;)Lcom/google/gson/o;

    move-result-object v0

    .line 16
    invoke-virtual {v0, v3}, Lcom/google/gson/o;->E(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 17
    invoke-virtual {v0, v3}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/l;->n()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_9e

    .line 18
    invoke-virtual {v0, v3}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/l;->n()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    iget-object v1, v8, Lcom/vungle/warren/tasks/CacheBustJob;->b:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v1, v11}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    :cond_9e
    const-string v3, "campaign_ids"

    const/4 v4, 0x1

    const-string v5, "cannot save campaignBust="

    move-object v1, p0

    move-object v2, v0

    move-object v6, v12

    move-object v7, v13

    .line 20
    invoke-direct/range {v1 .. v7}, Lcom/vungle/warren/tasks/CacheBustJob;->b(Lcom/google/gson/o;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/google/gson/f;)V

    const-string v3, "creative_ids"

    const/4 v4, 0x2

    const-string v5, "cannot save creativeBust="

    move-object v1, p0

    move-object v2, v0

    move-object v6, v12

    move-object v7, v13

    .line 21
    invoke-direct/range {v1 .. v7}, Lcom/vungle/warren/tasks/CacheBustJob;->b(Lcom/google/gson/o;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/google/gson/f;)V

    goto :goto_bd

    :cond_b7
    :goto_b7
    const-string v0, "CacheBustJob finished - no jsonObject or cache_bust in it"

    .line 22
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 23
    :cond_bd
    :goto_bd
    invoke-direct {p0, v12}, Lcom/vungle/warren/tasks/CacheBustJob;->c(Ljava/lang/Iterable;)V

    move-object v0, p1

    .line 24
    invoke-virtual {p0, p1, v11}, Lcom/vungle/warren/tasks/CacheBustJob;->f(Landroid/os/Bundle;Lcom/vungle/warren/model/Cookie;)V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_c4} :catch_d6
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_1c .. :try_end_c4} :catch_cd

    .line 25
    invoke-direct {p0}, Lcom/vungle/warren/tasks/CacheBustJob;->d()V

    const-string v0, "CacheBustJob finished"

    .line 26
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :catch_cd
    move-exception v0

    .line 27
    sget-object v1, Lcom/vungle/warren/tasks/CacheBustJob;->TAG:Ljava/lang/String;

    const-string v2, "CacheBustJob failed - DBException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v10

    :catch_d6
    move-exception v0

    .line 28
    sget-object v1, Lcom/vungle/warren/tasks/CacheBustJob;->TAG:Ljava/lang/String;

    const-string v2, "CacheBustJob failed - IOException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v10

    :cond_df
    :goto_df
    const-string v0, "CacheBustJob finished - no client or repository"

    .line 29
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method
