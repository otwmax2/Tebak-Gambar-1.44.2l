###### Class com.google.android.gms.measurement.internal.l4 (com.google.android.gms.measurement.internal.l4)
.class final Lcom/google/android/gms/measurement/internal/l4;
.super Lcom/google/android/gms/measurement/internal/r3;
.source "com.google.android.gms:play-services-measurement@@20.1.2"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/util/Set;

.field private f:Ljava/util/Map;

.field private g:Ljava/lang/Long;

.field private h:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzli;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/r3;-><init>(Lcom/google/android/gms/measurement/internal/zzli;)V

    return-void
.end method

.method private final i(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/g4;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l4;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l4;->f:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/g4;

    return-object p1

    :cond_11
    new-instance v0, Lcom/google/android/gms/measurement/internal/g4;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/l4;->d:Ljava/lang/String;

    const/4 v2, 0x0

    .line 3
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/g4;-><init>(Lcom/google/android/gms/measurement/internal/l4;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzs;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/l4;->f:Ljava/util/Map;

    .line 4
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private final j(II)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l4;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/g4;

    if-nez p1, :cond_10

    const/4 p1, 0x0

    return p1

    :cond_10
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/g4;->b(Lcom/google/android/gms/measurement/internal/g4;)Ljava/util/BitSet;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected final g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final h(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;
    .registers 71

    move-object/from16 v10, p0

    const-string v11, "current_results"

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/l4;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    .line 4
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/l4;->e:Ljava/util/Set;

    .line 5
    new-instance v0, Lo/a;

    invoke-direct {v0}, Lo/a;-><init>()V

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/l4;->f:Ljava/util/Map;

    move-object/from16 v0, p4

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/l4;->g:Ljava/lang/Long;

    move-object/from16 v0, p5

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/l4;->h:Ljava/lang/Long;

    .line 6
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfs;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfs;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_s"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v1, 0x1

    goto :goto_48

    :cond_47
    const/4 v1, 0x0

    .line 8
    :goto_48
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoi;->b()Z

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/l4;->d:Ljava/lang/String;

    .line 10
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzel;->Z:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v14

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoi;->b()Z

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/l4;->d:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzel;->Y:Lcom/google/android/gms/measurement/internal/zzek;

    .line 13
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v15

    if-eqz v1, :cond_af

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzli;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/l4;->d:Ljava/lang/String;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/r3;->d()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 16
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroid/content/ContentValues;

    .line 17
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 18
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "current_session_count"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 19
    :try_start_8b
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->N()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    new-array v5, v13, [Ljava/lang/String;

    aput-object v3, v5, v12

    const-string v6, "events"

    const-string v7, "app_id = ?"

    .line 20
    invoke-virtual {v4, v6, v0, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8b .. :try_end_9a} :catch_9b

    goto :goto_af

    :catch_9b
    move-exception v0

    .line 21
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Error resetting session-scoped event counts. appId"

    .line 24
    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    :cond_af
    :goto_af
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const-string v9, "Failed to merge filter. appId"

    const-string v8, "Database error querying filters. appId"

    const-string v7, "data"

    const-string v6, "audience_id"

    if-eqz v15, :cond_17a

    if-eqz v14, :cond_17a

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzli;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/l4;->d:Ljava/lang/String;

    .line 27
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    new-instance v4, Lo/a;

    .line 28
    invoke-direct {v4}, Lo/a;-><init>()V

    .line 29
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->N()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    :try_start_d3
    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v18

    new-array v0, v13, [Ljava/lang/String;

    aput-object v3, v0, v12

    const-string v17, "event_filters"

    const-string v19, "app_id=?"

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v0

    .line 30
    invoke-virtual/range {v16 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_eb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d3 .. :try_end_eb} :catch_15a
    .catchall {:try_start_d3 .. :try_end_eb} :catchall_157

    .line 31
    :try_start_eb
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 32
    :goto_f1
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_f5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_eb .. :try_end_f5} :catch_155
    .catchall {:try_start_eb .. :try_end_f5} :catchall_153

    .line 33
    :try_start_f5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzej;->w()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v13

    invoke-static {v13, v0}, Lcom/google/android/gms/measurement/internal/zzlk;->z(Lcom/google/android/gms/internal/measurement/zzli;[B)Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzej;
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_105} :catch_12b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f5 .. :try_end_105} :catch_155
    .catchall {:try_start_f5 .. :try_end_105} :catchall_153

    .line 34
    :try_start_105
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzej;->H()Z

    move-result v13

    if-nez v13, :cond_10c

    goto :goto_13d

    .line 35
    :cond_10c
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 36
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    if-nez v16, :cond_125

    new-instance v12, Ljava/util/ArrayList;

    .line 37
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-interface {v4, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_127

    :cond_125
    move-object/from16 v12, v16

    .line 39
    :goto_127
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13d

    :catch_12b
    move-exception v0

    .line 40
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 41
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v12

    .line 42
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v12

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 43
    invoke-virtual {v12, v9, v13, v0}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    :goto_13d
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_141
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_105 .. :try_end_141} :catch_155
    .catchall {:try_start_105 .. :try_end_141} :catchall_153

    if-nez v0, :cond_148

    .line 45
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move-object v12, v4

    goto :goto_17b

    :cond_148
    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_f1

    .line 46
    :cond_14b
    :try_start_14b
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_14f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14b .. :try_end_14f} :catch_155
    .catchall {:try_start_14b .. :try_end_14f} :catchall_153

    .line 47
    :goto_14f
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_17a

    :catchall_153
    move-exception v0

    goto :goto_174

    :catch_155
    move-exception v0

    goto :goto_15c

    :catchall_157
    move-exception v0

    const/4 v5, 0x0

    goto :goto_174

    :catch_15a
    move-exception v0

    const/4 v5, 0x0

    .line 48
    :goto_15c
    :try_start_15c
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 49
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 50
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 51
    invoke-virtual {v2, v8, v3, v0}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_171
    .catchall {:try_start_15c .. :try_end_171} :catchall_153

    if-eqz v5, :cond_17a

    goto :goto_14f

    :goto_174
    if-eqz v5, :cond_179

    .line 53
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 54
    :cond_179
    throw v0

    :cond_17a
    :goto_17a
    move-object v12, v0

    .line 55
    :goto_17b
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzli;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/l4;->d:Ljava/lang/String;

    .line 57
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/r3;->d()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 58
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->N()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    :try_start_190
    filled-new-array {v6, v11}, [Ljava/lang/String;

    move-result-object v18

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const-string v17, "audience_filter_values"

    const-string v19, "app_id=?"

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v0

    .line 60
    invoke-virtual/range {v16 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1aa
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_190 .. :try_end_1aa} :catch_22a
    .catchall {:try_start_190 .. :try_end_1aa} :catchall_226

    .line 61
    :try_start_1aa
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1be

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_1b4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1aa .. :try_end_1b4} :catch_220
    .catchall {:try_start_1aa .. :try_end_1b4} :catchall_af7

    .line 63
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-object v13, v0

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto/16 :goto_24d

    .line 64
    :cond_1be
    :try_start_1be
    new-instance v5, Lo/a;

    .line 65
    invoke-direct {v5}, Lo/a;-><init>()V

    :goto_1c3
    const/4 v13, 0x0

    .line 66
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/4 v13, 0x1

    .line 67
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_1cd
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1be .. :try_end_1cd} :catch_220
    .catchall {:try_start_1be .. :try_end_1cd} :catchall_af7

    .line 68
    :try_start_1cd
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgh;->z()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v13

    invoke-static {v13, v0}, Lcom/google/android/gms/measurement/internal/zzlk;->z(Lcom/google/android/gms/internal/measurement/zzli;[B)Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgh;
    :try_end_1dd
    .catch Ljava/io/IOException; {:try_start_1cd .. :try_end_1dd} :catch_1eb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1cd .. :try_end_1dd} :catch_220
    .catchall {:try_start_1cd .. :try_end_1dd} :catchall_af7

    .line 69
    :try_start_1dd
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v5, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto :goto_209

    :catch_1eb
    move-exception v0

    .line 70
    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 71
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v13

    .line 72
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v13

    move-object/from16 v17, v5

    const-string v5, "Failed to merge filter results. appId, audienceId, error"
    :try_end_1fa
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1dd .. :try_end_1fa} :catch_220
    .catchall {:try_start_1dd .. :try_end_1fa} :catchall_af7

    move-object/from16 v18, v6

    :try_start_1fc
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6
    :try_end_200
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1fc .. :try_end_200} :catch_21e
    .catchall {:try_start_1fc .. :try_end_200} :catchall_af7

    move-object/from16 v19, v7

    .line 73
    :try_start_202
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 74
    invoke-virtual {v13, v5, v6, v7, v0}, Lcom/google/android/gms/measurement/internal/zzew;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    :goto_209
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_20d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_202 .. :try_end_20d} :catch_21c
    .catchall {:try_start_202 .. :try_end_20d} :catchall_af7

    if-nez v0, :cond_215

    .line 76
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-object/from16 v13, v17

    goto :goto_24d

    :cond_215
    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    goto :goto_1c3

    :catch_21c
    move-exception v0

    goto :goto_230

    :catch_21e
    move-exception v0

    goto :goto_223

    :catch_220
    move-exception v0

    move-object/from16 v18, v6

    :goto_223
    move-object/from16 v19, v7

    goto :goto_230

    :catchall_226
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_af9

    :catch_22a
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    const/4 v4, 0x0

    .line 77
    :goto_230
    :try_start_230
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 78
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    const-string v5, "Database error querying filter results. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 80
    invoke-virtual {v2, v5, v3, v0}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_247
    .catchall {:try_start_230 .. :try_end_247} :catchall_af7

    if-eqz v4, :cond_24c

    .line 82
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_24c
    move-object v13, v0

    .line 83
    :goto_24d
    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v7, 0x2

    if-eqz v0, :cond_25e

    :cond_254
    move-object v12, v8

    move-object/from16 v30, v9

    move-object/from16 v28, v18

    move-object/from16 v29, v19

    const/4 v13, 0x0

    goto/16 :goto_587

    .line 84
    :cond_25e
    new-instance v2, Ljava/util/HashSet;

    .line 85
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz v1, :cond_3d4

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/l4;->d:Ljava/lang/String;

    .line 86
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lo/a;

    .line 88
    invoke-direct {v3}, Lo/a;-><init>()V

    .line 89
    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27e

    goto/16 :goto_3cc

    .line 90
    :cond_27e
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 91
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzli;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v4

    .line 92
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/r3;->d()V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 93
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lo/a;

    .line 94
    invoke-direct {v0}, Lo/a;-><init>()V

    .line 95
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e;->N()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    :try_start_296
    new-array v6, v7, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v1, v6, v16

    const/16 v16, 0x1

    aput-object v1, v6, v16

    const-string v7, "select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;"

    .line 96
    invoke-virtual {v5, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_2a6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_296 .. :try_end_2a6} :catch_2e9
    .catchall {:try_start_296 .. :try_end_2a6} :catchall_2e5

    .line 97
    :try_start_2a6
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2db

    :cond_2ac
    const/4 v6, 0x0

    .line 98
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 99
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_2c5

    new-instance v7, Ljava/util/ArrayList;

    .line 100
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c5
    const/4 v6, 0x1

    .line 102
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 103
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_2d5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2a6 .. :try_end_2d5} :catch_2e3
    .catchall {:try_start_2a6 .. :try_end_2d5} :catchall_2e0

    if-nez v6, :cond_2ac

    .line 105
    :goto_2d7
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_305

    .line 106
    :cond_2db
    :try_start_2db
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_2df
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2db .. :try_end_2df} :catch_2e3
    .catchall {:try_start_2db .. :try_end_2df} :catchall_2e0

    goto :goto_2d7

    :catchall_2e0
    move-exception v0

    goto/16 :goto_3ce

    :catch_2e3
    move-exception v0

    goto :goto_2eb

    :catchall_2e5
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_3ce

    :catch_2e9
    move-exception v0

    const/4 v5, 0x0

    .line 107
    :goto_2eb
    :try_start_2eb
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 108
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v4

    .line 109
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v4

    const-string v6, "Database error querying scoped filters. appId"

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 110
    invoke-virtual {v4, v6, v1, v0}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_302
    .catchall {:try_start_2eb .. :try_end_302} :catchall_2e0

    if-eqz v5, :cond_305

    goto :goto_2d7

    .line 112
    :cond_305
    :goto_305
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3cc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 113
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzgh;

    .line 114
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_3bf

    .line 115
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_337

    goto/16 :goto_3bf

    .line 116
    :cond_337
    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 117
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzli;->e0()Lcom/google/android/gms/measurement/internal/zzlk;

    move-result-object v5

    move-object/from16 v17, v0

    .line 118
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgh;->E()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0, v7}, Lcom/google/android/gms/measurement/internal/zzlk;->E(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3bb

    .line 120
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzkc;->j()Lcom/google/android/gms/internal/measurement/zzjy;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzgg;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgg;->v()Lcom/google/android/gms/internal/measurement/zzgg;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzgg;->s(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgg;

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 121
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzli;->e0()Lcom/google/android/gms/measurement/internal/zzlk;

    move-result-object v0

    move-object/from16 v20, v1

    .line 122
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgh;->G()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/google/android/gms/measurement/internal/zzlk;->E(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 123
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgg;->w()Lcom/google/android/gms/internal/measurement/zzgg;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzgg;->u(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgg;

    const/4 v0, 0x0

    .line 124
    :goto_370
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgh;->u()I

    move-result v1

    if-ge v0, v1, :cond_38e

    .line 125
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/measurement/zzgh;->y(I)Lcom/google/android/gms/internal/measurement/zzfq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfq;->u()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 126
    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38b

    .line 127
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzgg;->x(I)Lcom/google/android/gms/internal/measurement/zzgg;

    :cond_38b
    add-int/lit8 v0, v0, 0x1

    goto :goto_370

    :cond_38e
    const/4 v0, 0x0

    .line 128
    :goto_38f
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgh;->w()I

    move-result v1

    if-ge v0, v1, :cond_3ad

    .line 129
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/measurement/zzgh;->C(I)Lcom/google/android/gms/internal/measurement/zzgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgj;->v()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 130
    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3aa

    .line 131
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzgg;->y(I)Lcom/google/android/gms/internal/measurement/zzgg;

    :cond_3aa
    add-int/lit8 v0, v0, 0x1

    goto :goto_38f

    .line 132
    :cond_3ad
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzgh;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c6

    :cond_3bb
    move-object/from16 v0, v17

    goto/16 :goto_30d

    :cond_3bf
    :goto_3bf
    move-object/from16 v17, v0

    move-object/from16 v20, v1

    .line 133
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3c6
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    goto/16 :goto_30d

    :cond_3cc
    :goto_3cc
    move-object v0, v3

    goto :goto_3d5

    :goto_3ce
    if-eqz v5, :cond_3d3

    .line 134
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 135
    :cond_3d3
    throw v0

    :cond_3d4
    move-object v0, v13

    .line 136
    :goto_3d5
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_3d9
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_254

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 137
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzgh;

    new-instance v5, Ljava/util/BitSet;

    .line 138
    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    new-instance v6, Ljava/util/BitSet;

    .line 139
    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    new-instance v7, Lo/a;

    .line 140
    invoke-direct {v7}, Lo/a;-><init>()V

    if-eqz v1, :cond_441

    .line 141
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgh;->u()I

    move-result v2

    if-nez v2, :cond_40b

    goto :goto_441

    .line 142
    :cond_40b
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgh;->D()Ljava/util/List;

    move-result-object v2

    .line 143
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_413
    :goto_413
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_441

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfq;

    .line 144
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfq;->B()Z

    move-result v4

    if-eqz v4, :cond_413

    .line 145
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfq;->u()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 146
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfq;->A()Z

    move-result v21

    if-eqz v21, :cond_43c

    .line 147
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfq;->v()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_43d

    :cond_43c
    const/4 v3, 0x0

    .line 148
    :goto_43d
    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_413

    .line 149
    :cond_441
    :goto_441
    new-instance v4, Lo/a;

    .line 150
    invoke-direct {v4}, Lo/a;-><init>()V

    if-eqz v1, :cond_491

    .line 151
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgh;->w()I

    move-result v2

    if-nez v2, :cond_44f

    goto :goto_491

    .line 152
    :cond_44f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgh;->F()Ljava/util/List;

    move-result-object v2

    .line 153
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_457
    :goto_457
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_491

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzgj;

    .line 154
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgj;->C()Z

    move-result v21

    if-eqz v21, :cond_457

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgj;->u()I

    move-result v21

    if-lez v21, :cond_457

    .line 155
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgj;->v()I

    move-result v21

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 156
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgj;->u()I

    move-result v21

    move-object/from16 v23, v2

    add-int/lit8 v2, v21, -0x1

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzgj;->w(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 157
    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v22

    move-object/from16 v2, v23

    goto :goto_457

    :cond_491
    :goto_491
    move-object/from16 v22, v0

    if-eqz v1, :cond_4e6

    const/4 v0, 0x0

    .line 158
    :goto_496
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgh;->x()I

    move-result v2

    mul-int/lit8 v2, v2, 0x40

    if-ge v0, v2, :cond_4e6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgh;->G()Ljava/util/List;

    move-result-object v2

    .line 159
    invoke-static {v2, v0}, Lcom/google/android/gms/measurement/internal/zzlk;->J(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_4d4

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 160
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 161
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    .line 162
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v21, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v23, v9

    const-string v9, "Filter already evaluated. audience ID, filter ID"

    invoke-virtual {v2, v9, v3, v8}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    invoke-virtual {v6, v0}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgh;->E()Ljava/util/List;

    move-result-object v2

    .line 164
    invoke-static {v2, v0}, Lcom/google/android/gms/measurement/internal/zzlk;->J(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_4d8

    .line 165
    invoke-virtual {v5, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_4df

    :cond_4d4
    move-object/from16 v21, v8

    move-object/from16 v23, v9

    .line 166
    :cond_4d8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4df
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v8, v21

    move-object/from16 v9, v23

    goto :goto_496

    :cond_4e6
    move-object/from16 v21, v8

    move-object/from16 v23, v9

    .line 167
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzgh;

    if-eqz v15, :cond_555

    if-eqz v14, :cond_555

    .line 168
    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_555

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/l4;->h:Ljava/lang/Long;

    if-eqz v1, :cond_555

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/l4;->g:Ljava/lang/Long;

    if-nez v1, :cond_50a

    goto :goto_555

    .line 169
    :cond_50a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_50e
    :goto_50e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_555

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzej;

    .line 170
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzej;->v()I

    move-result v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/l4;->h:Ljava/lang/Long;

    .line 171
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    div-long v24, v24, v26

    .line 172
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzej;->F()Z

    move-result v1

    if-eqz v1, :cond_536

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/l4;->g:Ljava/lang/Long;

    .line 173
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    div-long v24, v24, v26

    .line 174
    :cond_536
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_547

    .line 175
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_547
    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50e

    .line 177
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50e

    .line 178
    :cond_555
    :goto_555
    new-instance v0, Lcom/google/android/gms/measurement/internal/g4;

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/l4;->d:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v24, v4

    move-object v4, v8

    const/4 v8, 0x0

    move-object/from16 v28, v18

    move-object/from16 v29, v19

    move-object/from16 v16, v12

    move-object/from16 p1, v13

    move-object/from16 v12, v21

    move-object v13, v8

    move-object/from16 v8, v24

    move-object/from16 v30, v23

    .line 179
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/g4;-><init>(Lcom/google/android/gms/measurement/internal/l4;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzgh;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzs;)V

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/l4;->f:Ljava/util/Map;

    .line 180
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, p1

    move-object v8, v12

    move-object/from16 v12, v16

    move-object/from16 v0, v22

    move-object/from16 v9, v30

    goto/16 :goto_3d9

    .line 181
    :goto_587
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "Skipping failed audience ID"

    if-eqz v0, :cond_593

    :cond_58f
    move-object/from16 v25, v11

    goto/16 :goto_813

    .line 182
    :cond_593
    new-instance v2, Lcom/google/android/gms/measurement/internal/h4;

    invoke-direct {v2, v10, v13}, Lcom/google/android/gms/measurement/internal/h4;-><init>(Lcom/google/android/gms/measurement/internal/l4;Lcom/google/android/gms/measurement/internal/zzu;)V

    new-instance v3, Lo/a;

    .line 183
    invoke-direct {v3}, Lo/a;-><init>()V

    .line 184
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5a1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs;

    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/l4;->d:Ljava/lang/String;

    .line 185
    invoke-virtual {v2, v5, v0}, Lcom/google/android/gms/measurement/internal/h4;->a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfs;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v5

    if-eqz v5, :cond_810

    iget-object v6, v10, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 186
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzli;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v6

    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/l4;->d:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfs;->B()Ljava/lang/String;

    move-result-object v8

    .line 187
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->B()Ljava/lang/String;

    move-result-object v9

    .line 188
    invoke-virtual {v6, v7, v9}, Lcom/google/android/gms/measurement/internal/e;->T(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/h;

    move-result-object v9

    if-nez v9, :cond_60a

    iget-object v9, v6, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 189
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v9

    .line 190
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v9

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 191
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v6

    .line 192
    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzet;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "Event aggregate wasn\'t created during raw event logging. appId, event"

    .line 193
    invoke-virtual {v9, v8, v14, v6}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lcom/google/android/gms/measurement/internal/h;

    move-object/from16 v31, v6

    .line 194
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->B()Ljava/lang/String;

    move-result-object v33

    const-wide/16 v34, 0x1

    const-wide/16 v36, 0x1

    const-wide/16 v38, 0x1

    .line 195
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->x()J

    move-result-wide v40

    const-wide/16 v42, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    move-object/from16 v32, v7

    invoke-direct/range {v31 .. v47}, Lcom/google/android/gms/measurement/internal/h;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_63f

    .line 196
    :cond_60a
    new-instance v6, Lcom/google/android/gms/measurement/internal/h;

    move-object/from16 v48, v6

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/h;->a:Ljava/lang/String;

    move-object/from16 v49, v0

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/h;->b:Ljava/lang/String;

    move-object/from16 v50, v0

    iget-wide v7, v9, Lcom/google/android/gms/measurement/internal/h;->c:J

    const-wide/16 v14, 0x1

    add-long v51, v7, v14

    iget-wide v7, v9, Lcom/google/android/gms/measurement/internal/h;->d:J

    add-long v53, v7, v14

    iget-wide v7, v9, Lcom/google/android/gms/measurement/internal/h;->e:J

    add-long v55, v7, v14

    iget-wide v7, v9, Lcom/google/android/gms/measurement/internal/h;->f:J

    move-wide/from16 v57, v7

    iget-wide v7, v9, Lcom/google/android/gms/measurement/internal/h;->g:J

    move-wide/from16 v59, v7

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/h;->h:Ljava/lang/Long;

    move-object/from16 v61, v0

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/h;->i:Ljava/lang/Long;

    move-object/from16 v62, v0

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/h;->j:Ljava/lang/Long;

    move-object/from16 v63, v0

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/h;->k:Ljava/lang/Boolean;

    move-object/from16 v64, v0

    .line 197
    invoke-direct/range {v48 .. v64}, Lcom/google/android/gms/measurement/internal/h;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 198
    :goto_63f
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 199
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzli;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    .line 200
    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/e;->l(Lcom/google/android/gms/measurement/internal/h;)V

    iget-wide v7, v6, Lcom/google/android/gms/measurement/internal/h;->c:J

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfs;->B()Ljava/lang/String;

    move-result-object v9

    .line 201
    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_75f

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 202
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzli;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v14

    iget-object v15, v10, Lcom/google/android/gms/measurement/internal/l4;->d:Ljava/lang/String;

    .line 203
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/r3;->d()V

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 204
    invoke-static {v15}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 205
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    new-instance v13, Lo/a;

    .line 206
    invoke-direct {v13}, Lo/a;-><init>()V

    .line 207
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/e;->N()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    move-object/from16 v24, v2

    move-object/from16 p2, v4

    move-object/from16 v4, v28

    move-object/from16 v2, v29

    :try_start_67b
    filled-new-array {v4, v2}, [Ljava/lang/String;

    move-result-object v18
    :try_end_67f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_67b .. :try_end_67f} :catch_731
    .catchall {:try_start_67b .. :try_end_67f} :catchall_72e

    move-object/from16 v25, v11

    const/4 v11, 0x2

    :try_start_682
    new-array v0, v11, [Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v15, v0, v17

    const/16 v17, 0x1

    aput-object v9, v0, v17

    const-string v17, "event_filters"

    const-string v19, "app_id=? AND event_name=?"

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v0

    .line 208
    invoke-virtual/range {v16 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_69c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_682 .. :try_end_69c} :catch_728
    .catchall {:try_start_682 .. :try_end_69c} :catchall_72e

    .line 209
    :try_start_69c
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_6a0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_69c .. :try_end_6a0} :catch_720
    .catchall {:try_start_69c .. :try_end_6a0} :catchall_757

    if-eqz v0, :cond_710

    move-object/from16 v29, v2

    :goto_6a4
    const/4 v2, 0x1

    .line 210
    :try_start_6a5
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_6a9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6a5 .. :try_end_6a9} :catch_70e
    .catchall {:try_start_6a5 .. :try_end_6a9} :catchall_757

    .line 211
    :try_start_6a9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzej;->w()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/measurement/internal/zzlk;->z(Lcom/google/android/gms/internal/measurement/zzli;[B)Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzej;
    :try_end_6b9
    .catch Ljava/io/IOException; {:try_start_6a9 .. :try_end_6b9} :catch_6e1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6a9 .. :try_end_6b9} :catch_70e
    .catchall {:try_start_6a9 .. :try_end_6b9} :catchall_757

    const/4 v2, 0x0

    .line 212
    :try_start_6ba
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 213
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;
    :try_end_6c8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6ba .. :try_end_6c8} :catch_70e
    .catchall {:try_start_6ba .. :try_end_6c8} :catchall_757

    if-nez v16, :cond_6d5

    move-object/from16 v28, v4

    :try_start_6cc
    new-instance v4, Ljava/util/ArrayList;

    .line 214
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 215
    invoke-interface {v13, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6d9

    :cond_6d5
    move-object/from16 v28, v4

    move-object/from16 v4, v16

    .line 216
    :goto_6d9
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v13

    move-object/from16 v13, v30

    goto :goto_6f9

    :catch_6e1
    move-exception v0

    move-object/from16 v28, v4

    .line 217
    iget-object v2, v14, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 218
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 219
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4
    :try_end_6f2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6cc .. :try_end_6f2} :catch_70c
    .catchall {:try_start_6cc .. :try_end_6f2} :catchall_757

    move-object/from16 v16, v13

    move-object/from16 v13, v30

    .line 220
    :try_start_6f6
    invoke-virtual {v2, v13, v4, v0}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 221
    :goto_6f9
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_6fd
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6f6 .. :try_end_6fd} :catch_71e
    .catchall {:try_start_6f6 .. :try_end_6fd} :catchall_757

    if-nez v0, :cond_705

    .line 222
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, v16

    goto :goto_753

    :cond_705
    move-object/from16 v30, v13

    move-object/from16 v13, v16

    move-object/from16 v4, v28

    goto :goto_6a4

    :catch_70c
    move-exception v0

    goto :goto_725

    :catch_70e
    move-exception v0

    goto :goto_723

    :cond_710
    move-object/from16 v29, v2

    move-object/from16 v28, v4

    move-object/from16 v13, v30

    .line 223
    :try_start_716
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_71a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_716 .. :try_end_71a} :catch_71e
    .catchall {:try_start_716 .. :try_end_71a} :catchall_757

    .line 224
    :goto_71a
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_753

    :catch_71e
    move-exception v0

    goto :goto_73b

    :catch_720
    move-exception v0

    move-object/from16 v29, v2

    :goto_723
    move-object/from16 v28, v4

    :goto_725
    move-object/from16 v13, v30

    goto :goto_73b

    :catch_728
    move-exception v0

    move-object/from16 v29, v2

    move-object/from16 v28, v4

    goto :goto_738

    :catchall_72e
    move-exception v0

    const/4 v5, 0x0

    goto :goto_759

    :catch_731
    move-exception v0

    move-object/from16 v29, v2

    move-object/from16 v28, v4

    move-object/from16 v25, v11

    :goto_738
    move-object/from16 v13, v30

    const/4 v11, 0x0

    .line 225
    :goto_73b
    :try_start_73b
    iget-object v2, v14, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 226
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 227
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 228
    invoke-virtual {v2, v12, v4, v0}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 229
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_750
    .catchall {:try_start_73b .. :try_end_750} :catchall_757

    if-eqz v11, :cond_753

    goto :goto_71a

    .line 230
    :cond_753
    :goto_753
    invoke-interface {v3, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_767

    :catchall_757
    move-exception v0

    move-object v5, v11

    :goto_759
    if-eqz v5, :cond_75e

    .line 231
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_75e
    throw v0

    :cond_75f
    move-object/from16 v24, v2

    move-object/from16 p2, v4

    move-object/from16 v25, v11

    move-object/from16 v13, v30

    .line 233
    :goto_767
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_76f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_808

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/l4;->e:Ljava/util/Set;

    .line 234
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_799

    iget-object v4, v10, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 235
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v4

    .line 236
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v4

    invoke-virtual {v4, v1, v11}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_76f

    .line 237
    :cond_799
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 238
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v11, 0x1

    :goto_7a4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7f3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzej;

    new-instance v15, Lcom/google/android/gms/measurement/internal/i4;

    iget-object v14, v10, Lcom/google/android/gms/measurement/internal/l4;->d:Ljava/lang/String;

    invoke-direct {v15, v10, v14, v4, v11}, Lcom/google/android/gms/measurement/internal/i4;-><init>(Lcom/google/android/gms/measurement/internal/l4;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzej;)V

    iget-object v14, v10, Lcom/google/android/gms/measurement/internal/l4;->g:Ljava/lang/Long;

    move-object/from16 v22, v0

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/l4;->h:Ljava/lang/Long;

    .line 239
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzej;->v()I

    move-result v11

    invoke-direct {v10, v4, v11}, Lcom/google/android/gms/measurement/internal/l4;->j(II)Z

    move-result v21

    move-object v11, v14

    move-object v14, v15

    move-object/from16 v23, v2

    move-object v2, v15

    move-object v15, v11

    move-object/from16 v16, v0

    move-object/from16 v17, v5

    move-wide/from16 v18, v7

    move-object/from16 v20, v6

    .line 240
    invoke-virtual/range {v14 .. v21}, Lcom/google/android/gms/measurement/internal/i4;->k(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzfs;JLcom/google/android/gms/measurement/internal/h;Z)Z

    move-result v11

    if-eqz v11, :cond_7e9

    .line 241
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/google/android/gms/measurement/internal/l4;->i(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/g4;

    move-result-object v0

    .line 242
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/g4;->c(Lcom/google/android/gms/measurement/internal/j4;)V

    move-object/from16 v0, v22

    move-object/from16 v2, v23

    goto :goto_7a4

    :cond_7e9
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/l4;->e:Ljava/util/Set;

    .line 243
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7f7

    :cond_7f3
    move-object/from16 v22, v0

    move-object/from16 v23, v2

    :goto_7f7
    if-nez v11, :cond_802

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/l4;->e:Ljava/util/Set;

    .line 244
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_802
    move-object/from16 v0, v22

    move-object/from16 v2, v23

    goto/16 :goto_76f

    :cond_808
    move-object/from16 v4, p2

    move-object/from16 v30, v13

    move-object/from16 v2, v24

    move-object/from16 v11, v25

    :cond_810
    const/4 v13, 0x0

    goto/16 :goto_5a1

    .line 245
    :goto_813
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_81d

    :cond_819
    move-object/from16 v11, v28

    goto/16 :goto_a4d

    .line 246
    :cond_81d
    new-instance v2, Lo/a;

    .line 247
    invoke-direct {v2}, Lo/a;-><init>()V

    .line 248
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_826
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_819

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzgl;

    .line 249
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgl;->z()Ljava/lang/String;

    move-result-object v5

    .line 250
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_919

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 251
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzli;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v6

    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/l4;->d:Ljava/lang/String;

    .line 252
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/r3;->d()V

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 253
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 254
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    new-instance v8, Lo/a;

    .line 255
    invoke-direct {v8}, Lo/a;-><init>()V

    .line 256
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/e;->N()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    move-object/from16 v11, v28

    move-object/from16 v9, v29

    :try_start_860
    filled-new-array {v11, v9}, [Ljava/lang/String;

    move-result-object v15

    const/4 v14, 0x2

    new-array v0, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v7, v0, v14

    const/4 v14, 0x1

    aput-object v5, v0, v14

    const-string v14, "property_filters"

    const-string v16, "app_id=? AND property_name=?"

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v0

    .line 257
    invoke-virtual/range {v13 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_87d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_860 .. :try_end_87d} :catch_8f1
    .catchall {:try_start_860 .. :try_end_87d} :catchall_8ee

    .line 258
    :try_start_87d
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8de

    :goto_883
    const/4 v14, 0x1

    .line 259
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_888
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_87d .. :try_end_888} :catch_8ea
    .catchall {:try_start_87d .. :try_end_888} :catchall_911

    .line 260
    :try_start_888
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzes;->w()Lcom/google/android/gms/internal/measurement/zzer;

    move-result-object v15

    invoke-static {v15, v0}, Lcom/google/android/gms/measurement/internal/zzlk;->z(Lcom/google/android/gms/internal/measurement/zzli;[B)Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzer;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzes;
    :try_end_898
    .catch Ljava/io/IOException; {:try_start_888 .. :try_end_898} :catch_8ba
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_888 .. :try_end_898} :catch_8ea
    .catchall {:try_start_888 .. :try_end_898} :catchall_911

    const/4 v15, 0x0

    .line 261
    :try_start_899
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 262
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    if-nez v16, :cond_8b2

    new-instance v15, Ljava/util/ArrayList;

    .line 263
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 264
    invoke-interface {v8, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8b4

    :cond_8b2
    move-object/from16 v15, v16

    .line 265
    :goto_8b4
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 p2, v3

    goto :goto_8d0

    :catch_8ba
    move-exception v0

    .line 266
    iget-object v14, v6, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 267
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v14

    .line 268
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v14

    const-string v15, "Failed to merge filter"
    :try_end_8c7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_899 .. :try_end_8c7} :catch_8ea
    .catchall {:try_start_899 .. :try_end_8c7} :catchall_911

    move-object/from16 p2, v3

    :try_start_8c9
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v14, v15, v3, v0}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 269
    :goto_8d0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_8d4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8c9 .. :try_end_8d4} :catch_8e8
    .catchall {:try_start_8c9 .. :try_end_8d4} :catchall_911

    if-nez v0, :cond_8db

    .line 270
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    goto :goto_90d

    :cond_8db
    move-object/from16 v3, p2

    goto :goto_883

    :cond_8de
    move-object/from16 p2, v3

    .line 271
    :try_start_8e0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_8e4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8e0 .. :try_end_8e4} :catch_8e8
    .catchall {:try_start_8e0 .. :try_end_8e4} :catchall_911

    .line 272
    :goto_8e4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_90d

    :catch_8e8
    move-exception v0

    goto :goto_8f5

    :catch_8ea
    move-exception v0

    move-object/from16 p2, v3

    goto :goto_8f5

    :catchall_8ee
    move-exception v0

    const/4 v5, 0x0

    goto :goto_913

    :catch_8f1
    move-exception v0

    move-object/from16 p2, v3

    const/4 v13, 0x0

    .line 273
    :goto_8f5
    :try_start_8f5
    iget-object v3, v6, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 274
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    .line 275
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 276
    invoke-virtual {v3, v12, v6, v0}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 277
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_90a
    .catchall {:try_start_8f5 .. :try_end_90a} :catchall_911

    if-eqz v13, :cond_90d

    goto :goto_8e4

    .line 278
    :cond_90d
    :goto_90d
    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_91f

    :catchall_911
    move-exception v0

    move-object v5, v13

    :goto_913
    if-eqz v5, :cond_918

    .line 279
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 280
    :cond_918
    throw v0

    :cond_919
    move-object/from16 p2, v3

    move-object/from16 v11, v28

    move-object/from16 v9, v29

    .line 281
    :goto_91f
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_927
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v10, Lcom/google/android/gms/measurement/internal/l4;->e:Ljava/util/Set;

    .line 282
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_952

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 283
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0, v1, v7}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_a45

    .line 285
    :cond_952
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 286
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x1

    :goto_95d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a34

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzes;

    iget-object v8, v10, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 287
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v8

    .line 288
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzey;->z()Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x2

    .line 289
    invoke-static {v8, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_9c7

    iget-object v8, v10, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 290
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v8

    .line 291
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v8

    .line 292
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 293
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzes;->D()Z

    move-result v15

    if-eqz v15, :cond_997

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzes;->u()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_998

    :cond_997
    const/4 v15, 0x0

    :goto_998
    iget-object v13, v10, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 294
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v13

    move-object/from16 p3, v0

    .line 295
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzes;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/google/android/gms/measurement/internal/zzet;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v13, "Evaluating filter. audience, filter, property"

    .line 296
    invoke-virtual {v8, v13, v14, v15, v0}, Lcom/google/android/gms/measurement/internal/zzew;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 297
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    iget-object v8, v10, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 299
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzli;->e0()Lcom/google/android/gms/measurement/internal/zzlk;

    move-result-object v8

    .line 300
    invoke-virtual {v8, v7}, Lcom/google/android/gms/measurement/internal/zzlk;->D(Lcom/google/android/gms/internal/measurement/zzes;)Ljava/lang/String;

    move-result-object v8

    const-string v13, "Filter definition"

    invoke-virtual {v0, v13, v8}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9c9

    :cond_9c7
    move-object/from16 p3, v0

    .line 301
    :goto_9c9
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzes;->D()Z

    move-result v0

    if-eqz v0, :cond_a0a

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzes;->u()I

    move-result v0

    const/16 v8, 0x100

    if-le v0, v8, :cond_9d8

    goto :goto_a0a

    .line 302
    :cond_9d8
    new-instance v0, Lcom/google/android/gms/measurement/internal/k4;

    iget-object v8, v10, Lcom/google/android/gms/measurement/internal/l4;->d:Ljava/lang/String;

    invoke-direct {v0, v10, v8, v5, v7}, Lcom/google/android/gms/measurement/internal/k4;-><init>(Lcom/google/android/gms/measurement/internal/l4;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzes;)V

    iget-object v8, v10, Lcom/google/android/gms/measurement/internal/l4;->g:Ljava/lang/Long;

    iget-object v13, v10, Lcom/google/android/gms/measurement/internal/l4;->h:Ljava/lang/Long;

    .line 303
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzes;->u()I

    move-result v7

    invoke-direct {v10, v5, v7}, Lcom/google/android/gms/measurement/internal/l4;->j(II)Z

    move-result v7

    .line 304
    invoke-virtual {v0, v8, v13, v4, v7}, Lcom/google/android/gms/measurement/internal/k4;->k(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzgl;Z)Z

    move-result v7

    if-eqz v7, :cond_a00

    .line 305
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v10, v8}, Lcom/google/android/gms/measurement/internal/l4;->i(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/g4;

    move-result-object v8

    .line 306
    invoke-virtual {v8, v0}, Lcom/google/android/gms/measurement/internal/g4;->c(Lcom/google/android/gms/measurement/internal/j4;)V

    move-object/from16 v0, p3

    goto/16 :goto_95d

    :cond_a00
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/l4;->e:Ljava/util/Set;

    .line 307
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a36

    .line 308
    :cond_a0a
    :goto_a0a
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 309
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    iget-object v6, v10, Lcom/google/android/gms/measurement/internal/l4;->d:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 311
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzes;->D()Z

    move-result v8

    if-eqz v8, :cond_a29

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzes;->u()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_a2a

    :cond_a29
    const/4 v7, 0x0

    :goto_a2a
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Invalid property filter ID. appId, id"

    .line 312
    invoke-virtual {v0, v8, v6, v7}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a38

    :cond_a34
    move-object/from16 p3, v0

    :goto_a36
    if-nez v7, :cond_a41

    :goto_a38
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/l4;->e:Ljava/util/Set;

    .line 313
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_a41
    move-object/from16 v0, p3

    goto/16 :goto_927

    :cond_a45
    :goto_a45
    move-object/from16 v3, p2

    move-object/from16 v29, v9

    move-object/from16 v28, v11

    goto/16 :goto_826

    .line 314
    :goto_a4d
    new-instance v1, Ljava/util/ArrayList;

    .line 315
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/l4;->f:Ljava/util/Map;

    .line 316
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/l4;->e:Ljava/util/Set;

    .line 317
    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 318
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a61
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_af6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/l4;->f:Ljava/util/Map;

    .line 319
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/g4;

    .line 320
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/g4;->a(I)Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object v0

    .line 322
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 323
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzli;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v3

    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/l4;->d:Ljava/lang/String;

    .line 324
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfo;->x()Lcom/google/android/gms/internal/measurement/zzgh;

    move-result-object v0

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/r3;->d()V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 325
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 326
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzil;->h()[B

    move-result-object v0

    new-instance v6, Landroid/content/ContentValues;

    .line 328
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "app_id"

    .line 329
    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual {v6, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v4, v25

    .line 331
    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 332
    :try_start_ab5
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e;->N()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v7, "audience_filter_values"
    :try_end_abb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ab5 .. :try_end_abb} :catch_add

    const/4 v8, 0x5

    const/4 v9, 0x0

    .line 333
    :try_start_abd
    invoke-virtual {v0, v7, v9, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v6

    const-wide/16 v12, -0x1

    cmp-long v0, v6, v12

    if-nez v0, :cond_af2

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 334
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v6, "Failed to insert filter results (got -1). appId"

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 336
    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_ada
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_abd .. :try_end_ada} :catch_adb

    goto :goto_af2

    :catch_adb
    move-exception v0

    goto :goto_adf

    :catch_add
    move-exception v0

    const/4 v9, 0x0

    .line 337
    :goto_adf
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 338
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    .line 339
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Error storing filter results. appId"

    .line 340
    invoke-virtual {v3, v6, v5, v0}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_af2
    :goto_af2
    move-object/from16 v25, v4

    goto/16 :goto_a61

    :cond_af6
    return-object v1

    :catchall_af7
    move-exception v0

    move-object v5, v4

    :goto_af9
    if-eqz v5, :cond_afe

    .line 341
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 342
    :cond_afe
    goto :goto_b00

    :goto_aff
    throw v0

    :goto_b00
    goto :goto_aff
.end method
