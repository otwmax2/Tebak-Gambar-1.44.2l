###### Class com.vungle.warren.tasks.CleanupJob (com.vungle.warren.tasks.CleanupJob)
.class public Lcom/vungle/warren/tasks/CleanupJob;
.super Ljava/lang/Object;
.source "CleanupJob.java"

# interfaces
.implements Lcom/vungle/warren/tasks/Job;


# static fields
.field static final d:Ljava/lang/String; = "com.vungle.warren.tasks.CleanupJob"


# instance fields
.field private final a:Lcom/vungle/warren/persistence/Designer;

.field private final b:Lcom/vungle/warren/persistence/Repository;

.field private final c:Lcom/vungle/warren/AdLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lcom/vungle/warren/persistence/Designer;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/AdLoader;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/tasks/CleanupJob;->a:Lcom/vungle/warren/persistence/Designer;

    .line 3
    iput-object p2, p0, Lcom/vungle/warren/tasks/CleanupJob;->b:Lcom/vungle/warren/persistence/Repository;

    .line 4
    iput-object p3, p0, Lcom/vungle/warren/tasks/CleanupJob;->c:Lcom/vungle/warren/AdLoader;

    return-void
.end method

.method public static makeJobInfo()Lcom/vungle/warren/tasks/JobInfo;
    .registers 2

    .line 1
    new-instance v0, Lcom/vungle/warren/tasks/JobInfo;

    sget-object v1, Lcom/vungle/warren/tasks/CleanupJob;->d:Ljava/lang/String;

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
.method public onRunJob(Landroid/os/Bundle;Lcom/vungle/warren/tasks/JobRunner;)I
    .registers 20

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/vungle/warren/tasks/CleanupJob;->a:Lcom/vungle/warren/persistence/Designer;

    const/4 v2, 0x1

    if-eqz v0, :cond_1b8

    iget-object v0, v1, Lcom/vungle/warren/tasks/CleanupJob;->b:Lcom/vungle/warren/persistence/Repository;

    if-nez v0, :cond_d

    goto/16 :goto_1b8

    .line 2
    :cond_d
    sget-object v0, Lcom/vungle/warren/tasks/CleanupJob;->d:Ljava/lang/String;

    const-string v3, "CleanupJob: Current directory snapshot"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, v1, Lcom/vungle/warren/tasks/CleanupJob;->a:Lcom/vungle/warren/persistence/Designer;

    invoke-interface {v0}, Lcom/vungle/warren/persistence/Designer;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/warren/utility/FileUtility;->printDirectoryTree(Ljava/io/File;)V

    .line 4
    iget-object v0, v1, Lcom/vungle/warren/tasks/CleanupJob;->a:Lcom/vungle/warren/persistence/Designer;

    invoke-interface {v0}, Lcom/vungle/warren/persistence/Designer;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 5
    iget-object v3, v1, Lcom/vungle/warren/tasks/CleanupJob;->b:Lcom/vungle/warren/persistence/Repository;

    const-class v4, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v3, v4}, Lcom/vungle/warren/persistence/Repository;->loadAll(Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v3, :cond_1b7

    .line 6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_40

    goto/16 :goto_1b7

    .line 7
    :cond_40
    iget-object v5, v1, Lcom/vungle/warren/tasks/CleanupJob;->b:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v5}, Lcom/vungle/warren/persistence/Repository;->loadValidPlacements()Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 8
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 9
    :try_start_51
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_55
    :goto_55
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x2

    if-eqz v7, :cond_10a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vungle/warren/model/Placement;

    if-eqz v5, :cond_8b

    .line 10
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8b

    invoke-interface {v5, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8b

    .line 11
    sget-object v8, Lcom/vungle/warren/tasks/CleanupJob;->d:Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v10, "Placement %s is no longer valid, deleting it and its advertisement"

    new-array v11, v2, [Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v4

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v8, v1, Lcom/vungle/warren/tasks/CleanupJob;->b:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v8, v7}, Lcom/vungle/warren/persistence/Repository;->delete(Ljava/lang/Object;)V

    goto :goto_55

    .line 13
    :cond_8b
    iget-object v9, v1, Lcom/vungle/warren/tasks/CleanupJob;->b:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v7}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/vungle/warren/persistence/Repository;->findAdsForPlacement(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-eqz v9, :cond_55

    .line 14
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a1
    :goto_a1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_55

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 15
    iget-object v11, v1, Lcom/vungle/warren/tasks/CleanupJob;->b:Lcom/vungle/warren/persistence/Repository;

    const-class v12, Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v11, v10, v12}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v11

    invoke-virtual {v11}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vungle/warren/model/Advertisement;

    if-eqz v11, :cond_a1

    .line 16
    invoke-virtual {v11}, Lcom/vungle/warren/model/Advertisement;->getExpireTime()J

    move-result-wide v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    cmp-long v16, v12, v14

    if-gtz v16, :cond_e0

    .line 17
    invoke-virtual {v11}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v12

    if-eq v12, v8, :cond_e0

    .line 18
    iget-object v11, v1, Lcom/vungle/warren/tasks/CleanupJob;->b:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v11, v10}, Lcom/vungle/warren/persistence/Repository;->deleteAdvertisement(Ljava/lang/String;)V

    .line 19
    iget-object v10, v1, Lcom/vungle/warren/tasks/CleanupJob;->c:Lcom/vungle/warren/AdLoader;

    invoke-virtual {v7}, Lcom/vungle/warren/model/Placement;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v11

    const-wide/16 v12, 0x3e8

    invoke-virtual {v10, v7, v11, v12, v13}, Lcom/vungle/warren/AdLoader;->loadEndlessIfNeeded(Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdConfig$AdSize;J)V

    goto :goto_a1

    .line 20
    :cond_e0
    invoke-virtual {v11}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v11, Lcom/vungle/warren/tasks/CleanupJob;->d:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setting valid adv "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " for placement "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a1

    .line 22
    :cond_10a
    iget-object v3, v1, Lcom/vungle/warren/tasks/CleanupJob;->b:Lcom/vungle/warren/persistence/Repository;

    const-class v5, Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v3, v5}, Lcom/vungle/warren/persistence/Repository;->loadAll(Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_180

    .line 23
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11e
    :goto_11e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_180

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vungle/warren/model/Advertisement;

    .line 24
    invoke-virtual {v5}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v7

    if-ne v7, v8, :cond_152

    .line 25
    invoke-virtual {v5}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v7, Lcom/vungle/warren/tasks/CleanupJob;->d:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "found adv in viewing state "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11e

    .line 27
    :cond_152
    invoke-virtual {v5}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11e

    .line 28
    sget-object v7, Lcom/vungle/warren/tasks/CleanupJob;->d:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    delete ad "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v7, v1, Lcom/vungle/warren/tasks/CleanupJob;->b:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v5}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/vungle/warren/persistence/Repository;->deleteAdvertisement(Ljava/lang/String;)V

    goto :goto_11e

    :cond_180
    if-eqz v0, :cond_1ad

    .line 30
    array-length v3, v0

    const/4 v5, 0x0

    :goto_184
    if-ge v5, v3, :cond_1ad

    aget-object v7, v0, v5

    .line 31
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 32
    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1aa

    .line 33
    sget-object v8, Lcom/vungle/warren/tasks/CleanupJob;->d:Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v10, "Deleting assets under directory %s"

    new-array v11, v2, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v4

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {v7}, Lcom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V
    :try_end_1aa
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_51 .. :try_end_1aa} :catch_1b6
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_1aa} :catch_1ae

    :cond_1aa
    add-int/lit8 v5, v5, 0x1

    goto :goto_184

    :cond_1ad
    return v4

    :catch_1ae
    move-exception v0

    .line 35
    sget-object v3, Lcom/vungle/warren/tasks/CleanupJob;->d:Ljava/lang/String;

    const-string v4, "Failed to delete asset directory!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1b6
    return v2

    :cond_1b7
    :goto_1b7
    return v4

    :cond_1b8
    :goto_1b8
    return v2
.end method
