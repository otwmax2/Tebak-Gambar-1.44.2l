###### Class com.google.android.gms.measurement.internal.h4 (com.google.android.gms.measurement.internal.h4)
.class final Lcom/google/android/gms/measurement/internal/h4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@20.1.2"


# instance fields
.field private a:Lcom/google/android/gms/internal/measurement/zzfs;

.field private b:Ljava/lang/Long;

.field private c:J

.field final synthetic d:Lcom/google/android/gms/measurement/internal/l4;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/l4;Lcom/google/android/gms/measurement/internal/zzu;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/h4;->d:Lcom/google/android/gms/measurement/internal/l4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfs;)Lcom/google/android/gms/internal/measurement/zzfs;
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v8, p2

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzfs;->B()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzfs;->C()Ljava/util/List;

    move-result-object v9

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/h4;->d:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzli;->e0()Lcom/google/android/gms/measurement/internal/zzlk;

    const-string v2, "_eid"

    .line 4
    invoke-static {v8, v2}, Lcom/google/android/gms/measurement/internal/zzlk;->j(Lcom/google/android/gms/internal/measurement/zzfs;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_233

    const-string v5, "_ep"

    .line 5
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_1e6

    .line 6
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/h4;->d:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzli;->e0()Lcom/google/android/gms/measurement/internal/zzlk;

    const-string v0, "_en"

    .line 8
    invoke-static {v8, v0}, Lcom/google/android/gms/measurement/internal/zzlk;->j(Lcom/google/android/gms/internal/measurement/zzfs;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 9
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_55

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/h4;->d:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->o()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v2, "Extra parameter without an event name. eventId"

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v5

    :cond_55
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/h4;->a:Lcom/google/android/gms/internal/measurement/zzfs;

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v0, :cond_6d

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/h4;->b:Ljava/lang/Long;

    if-eqz v0, :cond_6d

    .line 12
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/h4;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v0, v13, v15

    if-eqz v0, :cond_127

    :cond_6d
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/h4;->d:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzli;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v13

    .line 14
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/r3;->d()V

    :try_start_7b
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/e;->N()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    aput-object v3, v14, v12

    .line 15
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v11

    const-string v15, "select main_event, children_to_process from main_event_params where app_id=? and event_id=?"

    .line 16
    invoke-virtual {v0, v15, v14}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_90
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7b .. :try_end_90} :catch_e9
    .catchall {:try_start_7b .. :try_end_90} :catchall_e5

    .line 17
    :try_start_90
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_aa

    iget-object v0, v13, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v15, "Main event not found"

    invoke-virtual {v0, v15}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V
    :try_end_a5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_90 .. :try_end_a5} :catch_e3
    .catchall {:try_start_90 .. :try_end_a5} :catchall_1de

    .line 20
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    goto :goto_100

    .line 21
    :cond_aa
    :try_start_aa
    invoke-interface {v14, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 22
    invoke-interface {v14, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15
    :try_end_b6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_aa .. :try_end_b6} :catch_e3
    .catchall {:try_start_aa .. :try_end_b6} :catchall_1de

    .line 23
    :try_start_b6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs;->y()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/google/android/gms/measurement/internal/zzlk;->z(Lcom/google/android/gms/internal/measurement/zzli;[B)Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs;
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_c6} :catch_ce
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b6 .. :try_end_c6} :catch_e3
    .catchall {:try_start_b6 .. :try_end_c6} :catchall_1de

    .line 24
    :try_start_c6
    invoke-static {v0, v15}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_ca
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c6 .. :try_end_ca} :catch_e3
    .catchall {:try_start_c6 .. :try_end_ca} :catchall_1de

    .line 25
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_100

    :catch_ce
    move-exception v0

    .line 26
    :try_start_cf
    iget-object v5, v13, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 27
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v5

    .line 28
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v5

    const-string v15, "Failed to merge main event. appId, eventId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 29
    invoke-virtual {v5, v15, v12, v4, v0}, Lcom/google/android/gms/measurement/internal/zzew;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_cf .. :try_end_e2} :catch_e3
    .catchall {:try_start_cf .. :try_end_e2} :catchall_1de

    goto :goto_fc

    :catch_e3
    move-exception v0

    goto :goto_eb

    :catchall_e5
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_1e0

    :catch_e9
    move-exception v0

    const/4 v14, 0x0

    .line 30
    :goto_eb
    :try_start_eb
    iget-object v5, v13, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 31
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v5

    .line 32
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v5

    const-string v12, "Error selecting main event"

    invoke-virtual {v5, v12, v0}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_fa
    .catchall {:try_start_eb .. :try_end_fa} :catchall_1de

    if-eqz v14, :cond_ff

    .line 33
    :goto_fc
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_ff
    const/4 v0, 0x0

    :goto_100
    if-eqz v0, :cond_1cb

    .line 34
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v5, :cond_108

    goto/16 :goto_1cb

    .line 35
    :cond_108
    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfs;

    iput-object v5, v1, Lcom/google/android/gms/measurement/internal/h4;->a:Lcom/google/android/gms/internal/measurement/zzfs;

    .line 36
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v1, Lcom/google/android/gms/measurement/internal/h4;->c:J

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/h4;->d:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzli;->e0()Lcom/google/android/gms/measurement/internal/zzlk;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/h4;->a:Lcom/google/android/gms/internal/measurement/zzfs;

    .line 38
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzlk;->j(Lcom/google/android/gms/internal/measurement/zzfs;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, v1, Lcom/google/android/gms/measurement/internal/h4;->b:Ljava/lang/Long;

    :cond_127
    iget-wide v12, v1, Lcom/google/android/gms/measurement/internal/h4;->c:J

    const-wide/16 v14, -0x1

    add-long/2addr v12, v14

    iput-wide v12, v1, Lcom/google/android/gms/measurement/internal/h4;->c:J

    cmp-long v0, v12, v6

    if-gtz v0, :cond_16c

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/h4;->d:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzli;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v4, "Clearing complex main event info. appId"

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    :try_start_14c
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->N()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-array v4, v11, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "delete from main_event_params where app_id=?"

    .line 44
    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_15a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14c .. :try_end_15a} :catch_15b

    goto :goto_17d

    :catch_15b
    move-exception v0

    .line 45
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 46
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    const-string v3, "Error clearing complex main event"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_17d

    .line 48
    :cond_16c
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/h4;->d:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzli;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    iget-wide v5, v1, Lcom/google/android/gms/measurement/internal/h4;->c:J

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/h4;->a:Lcom/google/android/gms/internal/measurement/zzfs;

    move-object/from16 v3, p1

    .line 50
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/e;->q(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/zzfs;)Z

    .line 51
    :goto_17d
    new-instance v0, Ljava/util/ArrayList;

    .line 52
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/h4;->a:Lcom/google/android/gms/internal/measurement/zzfs;

    .line 53
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs;->C()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18c
    :goto_18c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1ad

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfw;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/h4;->d:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 54
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzli;->e0()Lcom/google/android/gms/measurement/internal/zzlk;

    .line 55
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfw;->A()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/google/android/gms/measurement/internal/zzlk;->i(Lcom/google/android/gms/internal/measurement/zzfs;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfw;

    move-result-object v4

    if-nez v4, :cond_18c

    .line 56
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18c

    .line 57
    :cond_1ad
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b8

    .line 58
    invoke-interface {v0, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v9, v0

    goto :goto_1c9

    .line 59
    :cond_1b8
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/h4;->d:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 60
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->o()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v2, "No unique parameters in main event. eventName"

    .line 62
    invoke-virtual {v0, v2, v10}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1c9
    move-object v0, v10

    goto :goto_233

    .line 63
    :cond_1cb
    :goto_1cb
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/h4;->d:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->o()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v2, "Extra parameter without existing main event. eventName, eventId"

    .line 66
    invoke-virtual {v0, v2, v10, v4}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    return-object v2

    :catchall_1de
    move-exception v0

    move-object v5, v14

    :goto_1e0
    if-eqz v5, :cond_1e5

    .line 67
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 68
    :cond_1e5
    throw v0

    .line 69
    :cond_1e6
    iput-object v4, v1, Lcom/google/android/gms/measurement/internal/h4;->b:Ljava/lang/Long;

    iput-object v8, v1, Lcom/google/android/gms/measurement/internal/h4;->a:Lcom/google/android/gms/internal/measurement/zzfs;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/h4;->d:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 70
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzli;->e0()Lcom/google/android/gms/measurement/internal/zzlk;

    .line 71
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v5, "_epc"

    invoke-static {v8, v5}, Lcom/google/android/gms/measurement/internal/zzlk;->j(Lcom/google/android/gms/internal/measurement/zzfs;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1fe

    move-object v2, v5

    :cond_1fe
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/google/android/gms/measurement/internal/h4;->c:J

    cmp-long v2, v10, v6

    if-gtz v2, :cond_21c

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/h4;->d:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 72
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 73
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->o()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    const-string v3, "Complex event with zero extra param count. eventName"

    .line 74
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_233

    :cond_21c
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/h4;->d:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 75
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzli;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    .line 76
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    iget-wide v5, v1, Lcom/google/android/gms/measurement/internal/h4;->c:J

    move-object/from16 v3, p1

    move-object/from16 v7, p2

    .line 77
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/e;->q(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/zzfs;)Z

    .line 78
    :cond_233
    :goto_233
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzkc;->j()Lcom/google/android/gms/internal/measurement/zzjy;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfr;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzfr;->z(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfr;->x()Lcom/google/android/gms/internal/measurement/zzfr;

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/measurement/zzfr;->u(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs;

    return-object v0
.end method
