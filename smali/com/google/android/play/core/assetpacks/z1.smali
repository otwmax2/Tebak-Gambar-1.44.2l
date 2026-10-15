###### Class com.google.android.play.core.assetpacks.z1 (com.google.android.play.core.assetpacks.z1)
.class final Lcom/google/android/play/core/assetpacks/z1;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# static fields
.field private static final e:Lv4/a;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/w1;

.field private final b:Lcom/google/android/play/core/assetpacks/e0;

.field private final c:Lcom/google/android/play/core/assetpacks/o0;

.field private final d:Lu4/b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lv4/a;

    const-string v1, "ExtractorTaskFinder"

    invoke-direct {v0, v1}, Lv4/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/z1;->e:Lv4/a;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/w1;Lcom/google/android/play/core/assetpacks/e0;Lcom/google/android/play/core/assetpacks/o0;Lu4/b;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/z1;->a:Lcom/google/android/play/core/assetpacks/w1;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/z1;->b:Lcom/google/android/play/core/assetpacks/e0;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/z1;->c:Lcom/google/android/play/core/assetpacks/o0;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/z1;->d:Lu4/b;

    return-void
.end method

.method private final b(Lcom/google/android/play/core/assetpacks/t1;Lcom/google/android/play/core/assetpacks/u1;)Z
    .registers 11

    .line 1
    new-instance v7, Lcom/google/android/play/core/assetpacks/b3;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/z1;->b:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v0, p1, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v2, v0, Lcom/google/android/play/core/assetpacks/s1;->a:Ljava/lang/String;

    iget v3, p1, Lcom/google/android/play/core/assetpacks/t1;->b:I

    iget-wide v4, v0, Lcom/google/android/play/core/assetpacks/s1;->b:J

    iget-object v6, p2, Lcom/google/android/play/core/assetpacks/u1;->a:Ljava/lang/String;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/play/core/assetpacks/b3;-><init>(Lcom/google/android/play/core/assetpacks/e0;Ljava/lang/String;IJLjava/lang/String;)V

    .line 2
    invoke-virtual {v7}, Lcom/google/android/play/core/assetpacks/b3;->m()Z

    move-result p1

    return p1
.end method

.method private static c(Lcom/google/android/play/core/assetpacks/u1;)Z
    .registers 3

    .line 1
    iget p0, p0, Lcom/google/android/play/core/assetpacks/u1;->f:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v1, 0x2

    if-ne p0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    return v0
.end method


# virtual methods
.method final a()Lcom/google/android/play/core/assetpacks/y1;
    .registers 34

    move-object/from16 v1, p0

    .line 1
    :try_start_2
    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/z1;->a:Lcom/google/android/play/core/assetpacks/w1;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/w1;->h()V

    new-instance v2, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/z1;->a:Lcom/google/android/play/core/assetpacks/w1;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/w1;->f()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/play/core/assetpacks/t1;

    .line 4
    iget-object v4, v3, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget v4, v4, Lcom/google/android/play/core/assetpacks/s1;->d:I

    invoke-static {v4}, Lcom/google/android/play/core/assetpacks/d0;->b(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 5
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 6
    :cond_34
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_38
    .catchall {:try_start_2 .. :try_end_38} :catchall_3ff

    const/4 v3, 0x0

    if-eqz v0, :cond_41

    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/z1;->a:Lcom/google/android/play/core/assetpacks/w1;

    .line 7
    :goto_3d
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/w1;->j()V

    return-object v3

    :cond_41
    :try_start_41
    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/z1;->d:Lu4/b;

    const-string v4, "assetOnlyUpdates"

    .line 8
    invoke-virtual {v0, v4}, Lu4/b;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_b7

    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/z1;->b:Lcom/google/android/play/core/assetpacks/e0;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/e0;->F()Ljava/util/Map;

    move-result-object v0

    .line 10
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_58
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ad

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/play/core/assetpacks/t1;

    .line 11
    iget-object v9, v8, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v9, v9, Lcom/google/android/play/core/assetpacks/s1;->a:Ljava/lang/String;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    if-eqz v9, :cond_58

    .line 12
    iget-object v10, v8, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-wide v10, v10, Lcom/google/android/play/core/assetpacks/s1;->b:J

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-nez v9, :cond_58

    sget-object v0, Lcom/google/android/play/core/assetpacks/z1;->e:Lv4/a;

    new-array v7, v4, [Ljava/lang/Object;

    .line 13
    iget v9, v8, Lcom/google/android/play/core/assetpacks/t1;->a:I

    .line 14
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v6

    iget-object v9, v8, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v9, v9, Lcom/google/android/play/core/assetpacks/s1;->a:Ljava/lang/String;

    aput-object v9, v7, v5

    const-string v9, "Found promote pack task for session %s with pack %s."

    .line 15
    invoke-virtual {v0, v9, v7}, Lv4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/play/core/assetpacks/w2;

    .line 16
    iget v11, v8, Lcom/google/android/play/core/assetpacks/t1;->a:I

    iget-object v7, v8, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v12, v7, Lcom/google/android/play/core/assetpacks/s1;->a:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/play/core/assetpacks/z1;->b:Lcom/google/android/play/core/assetpacks/e0;

    .line 17
    invoke-virtual {v7, v12}, Lcom/google/android/play/core/assetpacks/e0;->p(Ljava/lang/String;)I

    move-result v13

    iget v14, v8, Lcom/google/android/play/core/assetpacks/t1;->b:I

    iget-object v7, v8, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-wide v7, v7, Lcom/google/android/play/core/assetpacks/s1;->b:J

    move-object v10, v0

    move-wide v15, v7

    invoke-direct/range {v10 .. v16}, Lcom/google/android/play/core/assetpacks/w2;-><init>(ILjava/lang/String;IIJ)V
    :try_end_ac
    .catchall {:try_start_41 .. :try_end_ac} :catchall_3ff

    goto :goto_ae

    :cond_ad
    move-object v0, v3

    :goto_ae
    if-nez v0, :cond_b1

    goto :goto_b7

    .line 18
    :cond_b1
    iget-object v2, v1, Lcom/google/android/play/core/assetpacks/z1;->a:Lcom/google/android/play/core/assetpacks/w1;

    :goto_b3
    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/w1;->j()V

    return-object v0

    .line 19
    :cond_b7
    :goto_b7
    :try_start_b7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_bb
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/play/core/assetpacks/t1;
    :try_end_c7
    .catchall {:try_start_b7 .. :try_end_c7} :catchall_3ff

    :try_start_c7
    iget-object v8, v1, Lcom/google/android/play/core/assetpacks/z1;->b:Lcom/google/android/play/core/assetpacks/e0;

    .line 20
    iget-object v9, v7, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v10, v9, Lcom/google/android/play/core/assetpacks/s1;->a:Ljava/lang/String;

    iget v11, v7, Lcom/google/android/play/core/assetpacks/t1;->b:I

    iget-wide v12, v9, Lcom/google/android/play/core/assetpacks/s1;->b:J

    invoke-virtual {v8, v10, v11, v12, v13}, Lcom/google/android/play/core/assetpacks/e0;->q(Ljava/lang/String;IJ)I

    move-result v8

    iget-object v9, v7, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v9, v9, Lcom/google/android/play/core/assetpacks/s1;->f:Ljava/util/List;

    .line 21
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_dd} :catch_10b
    .catchall {:try_start_c7 .. :try_end_dd} :catchall_3ff

    if-ne v8, v9, :cond_bb

    :try_start_df
    sget-object v0, Lcom/google/android/play/core/assetpacks/z1;->e:Lv4/a;

    new-array v8, v4, [Ljava/lang/Object;

    .line 22
    iget v9, v7, Lcom/google/android/play/core/assetpacks/t1;->a:I

    .line 23
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    iget-object v9, v7, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v9, v9, Lcom/google/android/play/core/assetpacks/s1;->a:Ljava/lang/String;

    aput-object v9, v8, v5

    const-string v9, "Found final move task for session %s with pack %s."

    .line 24
    invoke-virtual {v0, v9, v8}, Lv4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/play/core/assetpacks/k2;

    .line 25
    iget v11, v7, Lcom/google/android/play/core/assetpacks/t1;->a:I

    iget-object v8, v7, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v12, v8, Lcom/google/android/play/core/assetpacks/s1;->a:Ljava/lang/String;

    iget v13, v7, Lcom/google/android/play/core/assetpacks/t1;->b:I

    iget-wide v14, v8, Lcom/google/android/play/core/assetpacks/s1;->b:J

    iget-object v7, v8, Lcom/google/android/play/core/assetpacks/s1;->c:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v16, v7

    invoke-direct/range {v10 .. v16}, Lcom/google/android/play/core/assetpacks/k2;-><init>(ILjava/lang/String;IJLjava/lang/String;)V

    goto :goto_12b

    :catch_10b
    move-exception v0

    .line 26
    new-instance v2, Lcom/google/android/play/core/assetpacks/d1;

    new-array v3, v4, [Ljava/lang/Object;

    .line 27
    iget v4, v7, Lcom/google/android/play/core/assetpacks/t1;->a:I

    .line 28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, v7, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v4, v4, Lcom/google/android/play/core/assetpacks/s1;->a:Ljava/lang/String;

    aput-object v4, v3, v5

    const-string v4, "Failed to check number of completed merges for session %s, pack %s"

    .line 29
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, v7, Lcom/google/android/play/core/assetpacks/t1;->a:I

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v2

    :cond_12a
    move-object v0, v3

    :goto_12b
    if-nez v0, :cond_b1

    .line 30
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_131
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x3

    if-eqz v7, :cond_1b4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/play/core/assetpacks/t1;

    .line 31
    iget-object v9, v7, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget v9, v9, Lcom/google/android/play/core/assetpacks/s1;->d:I

    invoke-static {v9}, Lcom/google/android/play/core/assetpacks/d0;->b(I)Z

    move-result v9

    if-eqz v9, :cond_131

    .line 32
    iget-object v9, v7, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v9, v9, Lcom/google/android/play/core/assetpacks/s1;->f:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_150
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_131

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/play/core/assetpacks/u1;

    iget-object v11, v1, Lcom/google/android/play/core/assetpacks/z1;->b:Lcom/google/android/play/core/assetpacks/e0;

    .line 33
    iget-object v12, v7, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v13, v12, Lcom/google/android/play/core/assetpacks/s1;->a:Ljava/lang/String;

    iget v14, v7, Lcom/google/android/play/core/assetpacks/t1;->b:I

    iget-wide v3, v12, Lcom/google/android/play/core/assetpacks/s1;->b:J

    iget-object v15, v10, Lcom/google/android/play/core/assetpacks/u1;->a:Ljava/lang/String;

    move-object v12, v13

    move v13, v14

    move-object/from16 v16, v15

    move-wide v14, v3

    .line 34
    invoke-virtual/range {v11 .. v16}, Lcom/google/android/play/core/assetpacks/e0;->D(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 35
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1b1

    sget-object v0, Lcom/google/android/play/core/assetpacks/z1;->e:Lv4/a;

    new-array v3, v8, [Ljava/lang/Object;

    .line 36
    iget v4, v7, Lcom/google/android/play/core/assetpacks/t1;->a:I

    .line 37
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, v7, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v4, v4, Lcom/google/android/play/core/assetpacks/s1;->a:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, v10, Lcom/google/android/play/core/assetpacks/u1;->a:Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v4, v3, v9

    const-string v4, "Found merge task for session %s with pack %s and slice %s."

    .line 38
    invoke-virtual {v0, v4, v3}, Lv4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/play/core/assetpacks/h2;

    .line 39
    iget v3, v7, Lcom/google/android/play/core/assetpacks/t1;->a:I

    iget-object v4, v7, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v9, v4, Lcom/google/android/play/core/assetpacks/s1;->a:Ljava/lang/String;

    iget v7, v7, Lcom/google/android/play/core/assetpacks/t1;->b:I

    iget-wide v11, v4, Lcom/google/android/play/core/assetpacks/s1;->b:J

    iget-object v4, v10, Lcom/google/android/play/core/assetpacks/u1;->a:Ljava/lang/String;

    move-object/from16 v18, v0

    move/from16 v19, v3

    move-object/from16 v20, v9

    move/from16 v21, v7

    move-wide/from16 v22, v11

    move-object/from16 v24, v4

    invoke-direct/range {v18 .. v24}, Lcom/google/android/play/core/assetpacks/h2;-><init>(ILjava/lang/String;IJLjava/lang/String;)V

    goto :goto_1b5

    :cond_1b1
    const/4 v3, 0x0

    const/4 v4, 0x2

    goto :goto_150

    :cond_1b4
    const/4 v0, 0x0

    :goto_1b5
    if-nez v0, :cond_b1

    .line 40
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1bb
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_243

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/play/core/assetpacks/t1;

    .line 41
    iget-object v4, v3, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget v4, v4, Lcom/google/android/play/core/assetpacks/s1;->d:I

    invoke-static {v4}, Lcom/google/android/play/core/assetpacks/d0;->b(I)Z

    move-result v4

    if-eqz v4, :cond_1bb

    .line 42
    iget-object v4, v3, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v4, v4, Lcom/google/android/play/core/assetpacks/s1;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1d9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1bb

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/play/core/assetpacks/u1;

    .line 43
    invoke-direct {v1, v3, v7}, Lcom/google/android/play/core/assetpacks/z1;->b(Lcom/google/android/play/core/assetpacks/t1;Lcom/google/android/play/core/assetpacks/u1;)Z

    move-result v9

    if-eqz v9, :cond_1d9

    iget-object v10, v1, Lcom/google/android/play/core/assetpacks/z1;->b:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v9, v3, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v11, v9, Lcom/google/android/play/core/assetpacks/s1;->a:Ljava/lang/String;

    iget v12, v3, Lcom/google/android/play/core/assetpacks/t1;->b:I

    iget-wide v13, v9, Lcom/google/android/play/core/assetpacks/s1;->b:J

    iget-object v15, v7, Lcom/google/android/play/core/assetpacks/u1;->a:Ljava/lang/String;

    .line 44
    invoke-virtual/range {v10 .. v15}, Lcom/google/android/play/core/assetpacks/e0;->C(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 45
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1d9

    sget-object v0, Lcom/google/android/play/core/assetpacks/z1;->e:Lv4/a;

    new-array v4, v8, [Ljava/lang/Object;

    .line 46
    iget v9, v3, Lcom/google/android/play/core/assetpacks/t1;->a:I

    .line 47
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v6

    iget-object v9, v3, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v9, v9, Lcom/google/android/play/core/assetpacks/s1;->a:Ljava/lang/String;

    aput-object v9, v4, v5

    iget-object v9, v7, Lcom/google/android/play/core/assetpacks/u1;->a:Ljava/lang/String;

    const/4 v10, 0x2

    aput-object v9, v4, v10

    const-string v9, "Found verify task for session %s with pack %s and slice %s."

    .line 48
    invoke-virtual {v0, v9, v4}, Lv4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/play/core/assetpacks/e3;

    .line 49
    iget v4, v3, Lcom/google/android/play/core/assetpacks/t1;->a:I

    iget-object v9, v3, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v10, v9, Lcom/google/android/play/core/assetpacks/s1;->a:Ljava/lang/String;

    iget v3, v3, Lcom/google/android/play/core/assetpacks/t1;->b:I

    iget-wide v11, v9, Lcom/google/android/play/core/assetpacks/s1;->b:J

    iget-object v9, v7, Lcom/google/android/play/core/assetpacks/u1;->a:Ljava/lang/String;

    iget-object v13, v7, Lcom/google/android/play/core/assetpacks/u1;->b:Ljava/lang/String;

    iget-wide v14, v7, Lcom/google/android/play/core/assetpacks/u1;->c:J

    move-object/from16 v18, v0

    move/from16 v19, v4

    move-object/from16 v20, v10

    move/from16 v21, v3

    move-wide/from16 v22, v11

    move-object/from16 v24, v9

    move-object/from16 v25, v13

    move-wide/from16 v26, v14

    invoke-direct/range {v18 .. v27}, Lcom/google/android/play/core/assetpacks/e3;-><init>(ILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;J)V

    goto :goto_244

    :cond_243
    const/4 v0, 0x0

    :goto_244
    if-nez v0, :cond_b1

    .line 50
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_24a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v4, 0x4

    if-eqz v0, :cond_337

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/play/core/assetpacks/t1;

    .line 51
    iget-object v0, v7, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget v0, v0, Lcom/google/android/play/core/assetpacks/s1;->d:I

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/d0;->b(I)Z

    move-result v0

    if-eqz v0, :cond_24a

    .line 52
    iget-object v0, v7, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/s1;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_26a
    :goto_26a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/google/android/play/core/assetpacks/u1;

    .line 53
    invoke-static {v10}, Lcom/google/android/play/core/assetpacks/z1;->c(Lcom/google/android/play/core/assetpacks/u1;)Z

    move-result v0

    if-nez v0, :cond_26a

    .line 54
    new-instance v0, Lcom/google/android/play/core/assetpacks/b3;

    iget-object v11, v1, Lcom/google/android/play/core/assetpacks/z1;->b:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v12, v7, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v13, v12, Lcom/google/android/play/core/assetpacks/s1;->a:Ljava/lang/String;

    iget v14, v7, Lcom/google/android/play/core/assetpacks/t1;->b:I

    move-object/from16 v16, v9

    iget-wide v8, v12, Lcom/google/android/play/core/assetpacks/s1;->b:J

    iget-object v12, v10, Lcom/google/android/play/core/assetpacks/u1;->a:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v19, v11

    move-object/from16 v20, v13

    move/from16 v21, v14

    move-wide/from16 v22, v8

    move-object/from16 v24, v12

    invoke-direct/range {v18 .. v24}, Lcom/google/android/play/core/assetpacks/b3;-><init>(Lcom/google/android/play/core/assetpacks/e0;Ljava/lang/String;IJLjava/lang/String;)V
    :try_end_29c
    .catchall {:try_start_df .. :try_end_29c} :catchall_3ff

    .line 55
    :try_start_29c
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/b3;->a()I

    move-result v0
    :try_end_2a0
    .catch Ljava/io/IOException; {:try_start_29c .. :try_end_2a0} :catch_2a1
    .catchall {:try_start_29c .. :try_end_2a0} :catchall_3ff

    goto :goto_2af

    :catch_2a1
    move-exception v0

    move-object v8, v0

    .line 56
    :try_start_2a3
    sget-object v0, Lcom/google/android/play/core/assetpacks/z1;->e:Lv4/a;

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v8, v9, v6

    const-string v8, "Slice checkpoint corrupt, restarting extraction. %s"

    .line 57
    invoke-virtual {v0, v8, v9}, Lv4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x0

    :goto_2af
    const/4 v8, -0x1

    if-eq v0, v8, :cond_332

    .line 58
    iget-object v8, v10, Lcom/google/android/play/core/assetpacks/u1;->d:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/play/core/assetpacks/q1;

    iget-boolean v8, v8, Lcom/google/android/play/core/assetpacks/q1;->a:Z

    if-eqz v8, :cond_332

    sget-object v3, Lcom/google/android/play/core/assetpacks/z1;->e:Lv4/a;

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    .line 59
    iget v9, v10, Lcom/google/android/play/core/assetpacks/u1;->e:I

    .line 60
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    iget v9, v7, Lcom/google/android/play/core/assetpacks/t1;->a:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    iget-object v9, v7, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v9, v9, Lcom/google/android/play/core/assetpacks/s1;->a:Ljava/lang/String;

    const/4 v11, 0x2

    aput-object v9, v8, v11

    iget-object v9, v10, Lcom/google/android/play/core/assetpacks/u1;->a:Ljava/lang/String;

    const/4 v11, 0x3

    aput-object v9, v8, v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    const-string v9, "Found extraction task using compression format %s for session %s, pack %s, slice %s, chunk %s."

    .line 61
    invoke-virtual {v3, v9, v8}, Lv4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v3, v1, Lcom/google/android/play/core/assetpacks/z1;->c:Lcom/google/android/play/core/assetpacks/o0;

    .line 62
    iget v8, v7, Lcom/google/android/play/core/assetpacks/t1;->a:I

    iget-object v9, v7, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v9, v9, Lcom/google/android/play/core/assetpacks/s1;->a:Ljava/lang/String;

    iget-object v11, v10, Lcom/google/android/play/core/assetpacks/u1;->a:Ljava/lang/String;

    .line 63
    invoke-virtual {v3, v8, v9, v11, v0}, Lcom/google/android/play/core/assetpacks/o0;->a(ILjava/lang/String;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v32

    new-instance v3, Lcom/google/android/play/core/assetpacks/x0;

    .line 64
    iget v8, v7, Lcom/google/android/play/core/assetpacks/t1;->a:I

    iget-object v9, v7, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v11, v9, Lcom/google/android/play/core/assetpacks/s1;->a:Ljava/lang/String;

    iget v12, v7, Lcom/google/android/play/core/assetpacks/t1;->b:I

    iget-wide v13, v9, Lcom/google/android/play/core/assetpacks/s1;->b:J

    iget-object v9, v9, Lcom/google/android/play/core/assetpacks/s1;->c:Ljava/lang/String;

    iget-object v15, v10, Lcom/google/android/play/core/assetpacks/u1;->a:Ljava/lang/String;

    iget v5, v10, Lcom/google/android/play/core/assetpacks/u1;->e:I

    iget-object v10, v10, Lcom/google/android/play/core/assetpacks/u1;->d:Ljava/util/List;

    .line 65
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v28

    iget-object v7, v7, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    move/from16 v16, v5

    iget-wide v4, v7, Lcom/google/android/play/core/assetpacks/s1;->e:J

    iget v7, v7, Lcom/google/android/play/core/assetpacks/s1;->d:I

    move-object/from16 v18, v3

    move/from16 v19, v8

    move-object/from16 v20, v11

    move/from16 v21, v12

    move-wide/from16 v22, v13

    move-object/from16 v24, v9

    move-object/from16 v25, v15

    move/from16 v26, v16

    move/from16 v27, v0

    move-wide/from16 v29, v4

    move/from16 v31, v7

    invoke-direct/range {v18 .. v32}, Lcom/google/android/play/core/assetpacks/x0;-><init>(ILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;IIIJILjava/io/InputStream;)V

    goto :goto_338

    :cond_332
    move-object/from16 v9, v16

    const/4 v8, 0x3

    goto/16 :goto_26a

    :cond_337
    const/4 v3, 0x0

    :goto_338
    if-nez v3, :cond_3fb

    .line 66
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_33e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3ed

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/assetpacks/t1;

    .line 67
    iget-object v3, v2, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget v3, v3, Lcom/google/android/play/core/assetpacks/s1;->d:I

    invoke-static {v3}, Lcom/google/android/play/core/assetpacks/d0;->b(I)Z

    move-result v3

    if-eqz v3, :cond_33e

    .line 68
    iget-object v3, v2, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v3, v3, Lcom/google/android/play/core/assetpacks/s1;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_35c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/play/core/assetpacks/u1;

    .line 69
    invoke-static {v4}, Lcom/google/android/play/core/assetpacks/z1;->c(Lcom/google/android/play/core/assetpacks/u1;)Z

    move-result v5

    if-eqz v5, :cond_35c

    iget-object v5, v4, Lcom/google/android/play/core/assetpacks/u1;->d:Ljava/util/List;

    .line 70
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/play/core/assetpacks/q1;

    iget-boolean v5, v5, Lcom/google/android/play/core/assetpacks/q1;->a:Z

    if-eqz v5, :cond_35c

    .line 71
    invoke-direct {v1, v2, v4}, Lcom/google/android/play/core/assetpacks/z1;->b(Lcom/google/android/play/core/assetpacks/t1;Lcom/google/android/play/core/assetpacks/u1;)Z

    move-result v5

    if-nez v5, :cond_35c

    sget-object v0, Lcom/google/android/play/core/assetpacks/z1;->e:Lv4/a;

    const/4 v5, 0x4

    new-array v3, v5, [Ljava/lang/Object;

    .line 72
    iget v5, v4, Lcom/google/android/play/core/assetpacks/u1;->f:I

    .line 73
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    iget v5, v2, Lcom/google/android/play/core/assetpacks/t1;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v3, v7

    iget-object v5, v2, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v5, v5, Lcom/google/android/play/core/assetpacks/s1;->a:Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v5, v3, v8

    iget-object v5, v4, Lcom/google/android/play/core/assetpacks/u1;->a:Ljava/lang/String;

    const/4 v9, 0x3

    aput-object v5, v3, v9

    const-string v5, "Found patch slice task using patch format %s for session %s, pack %s, slice %s."

    .line 74
    invoke-virtual {v0, v5, v3}, Lv4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/z1;->c:Lcom/google/android/play/core/assetpacks/o0;

    .line 75
    iget v3, v2, Lcom/google/android/play/core/assetpacks/t1;->a:I

    iget-object v5, v2, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v5, v5, Lcom/google/android/play/core/assetpacks/s1;->a:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/play/core/assetpacks/u1;->a:Ljava/lang/String;

    .line 76
    invoke-virtual {v0, v3, v5, v7, v6}, Lcom/google/android/play/core/assetpacks/o0;->a(ILjava/lang/String;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v30

    new-instance v0, Lcom/google/android/play/core/assetpacks/t2;

    .line 77
    iget v3, v2, Lcom/google/android/play/core/assetpacks/t1;->a:I

    iget-object v5, v2, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v5, v5, Lcom/google/android/play/core/assetpacks/s1;->a:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/play/core/assetpacks/z1;->b:Lcom/google/android/play/core/assetpacks/e0;

    .line 78
    invoke-virtual {v6, v5}, Lcom/google/android/play/core/assetpacks/e0;->p(Ljava/lang/String;)I

    move-result v20

    iget-object v6, v1, Lcom/google/android/play/core/assetpacks/z1;->b:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v7, v2, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-object v7, v7, Lcom/google/android/play/core/assetpacks/s1;->a:Ljava/lang/String;

    .line 79
    invoke-virtual {v6, v7}, Lcom/google/android/play/core/assetpacks/e0;->r(Ljava/lang/String;)J

    move-result-wide v21

    iget v6, v2, Lcom/google/android/play/core/assetpacks/t1;->b:I

    iget-object v2, v2, Lcom/google/android/play/core/assetpacks/t1;->c:Lcom/google/android/play/core/assetpacks/s1;

    iget-wide v7, v2, Lcom/google/android/play/core/assetpacks/s1;->b:J

    iget v2, v4, Lcom/google/android/play/core/assetpacks/u1;->f:I

    iget-object v9, v4, Lcom/google/android/play/core/assetpacks/u1;->a:Ljava/lang/String;

    iget-wide v10, v4, Lcom/google/android/play/core/assetpacks/u1;->c:J

    move-object/from16 v17, v0

    move/from16 v18, v3

    move-object/from16 v19, v5

    move/from16 v23, v6

    move-wide/from16 v24, v7

    move/from16 v26, v2

    move-object/from16 v27, v9

    move-wide/from16 v28, v10

    invoke-direct/range {v17 .. v30}, Lcom/google/android/play/core/assetpacks/t2;-><init>(ILjava/lang/String;IJIJILjava/lang/String;JLjava/io/InputStream;)V
    :try_end_3ec
    .catchall {:try_start_2a3 .. :try_end_3ec} :catchall_3ff

    goto :goto_3ee

    :cond_3ed
    const/4 v0, 0x0

    :goto_3ee
    if-eqz v0, :cond_3f4

    iget-object v2, v1, Lcom/google/android/play/core/assetpacks/z1;->a:Lcom/google/android/play/core/assetpacks/w1;

    goto/16 :goto_b3

    .line 80
    :cond_3f4
    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/z1;->a:Lcom/google/android/play/core/assetpacks/w1;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/w1;->j()V

    const/4 v2, 0x0

    return-object v2

    :cond_3fb
    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/z1;->a:Lcom/google/android/play/core/assetpacks/w1;

    goto/16 :goto_3d

    :catchall_3ff
    move-exception v0

    iget-object v2, v1, Lcom/google/android/play/core/assetpacks/z1;->a:Lcom/google/android/play/core/assetpacks/w1;

    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/w1;->j()V

    .line 81
    goto :goto_407

    :goto_406
    throw v0

    :goto_407
    goto :goto_406
.end method
