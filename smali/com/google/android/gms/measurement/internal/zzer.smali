###### Class com.google.android.gms.measurement.internal.zzer (com.google.android.gms.measurement.internal.zzer)
.class public final Lcom/google/android/gms/measurement/internal/zzer;
.super Lcom/google/android/gms/measurement/internal/r;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"


# instance fields
.field private final c:Lcom/google/android/gms/measurement/internal/o;

.field private d:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgi;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/r;-><init>(Lcom/google/android/gms/measurement/internal/zzgi;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/o;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->N0()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    const-string v1, "google_app_measurement_local.db"

    .line 4
    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/o;-><init>(Lcom/google/android/gms/measurement/internal/zzer;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzer;->c:Lcom/google/android/gms/measurement/internal/o;

    return-void
.end method

.method private final s(I[B)Z
    .registers 19

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzer;->d:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    return v2

    :cond_b
    new-instance v3, Landroid/content/ContentValues;

    .line 2
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "type"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "entry"

    move-object/from16 v4, p2

    .line 4
    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x5

    :goto_28
    if-ge v5, v4, :cond_12d

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 6
    :try_start_2c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzer;->j()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9
    :try_end_30
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2c .. :try_end_30} :catch_fb
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2c .. :try_end_30} :catch_e9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2c .. :try_end_30} :catch_c2
    .catchall {:try_start_2c .. :try_end_30} :catchall_bf

    if-nez v9, :cond_35

    :try_start_32
    iput-boolean v7, v1, Lcom/google/android/gms/measurement/internal/zzer;->d:Z

    return v2

    .line 7
    :cond_35
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "select count(1) from messages"

    .line 8
    invoke-virtual {v9, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_3e
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_32 .. :try_end_3e} :catch_bb
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_32 .. :try_end_3e} :catch_ea
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_32 .. :try_end_3e} :catch_b7
    .catchall {:try_start_32 .. :try_end_3e} :catchall_b4

    const-wide/16 v11, 0x0

    if-eqz v10, :cond_54

    .line 9
    :try_start_42
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 10
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11
    :try_end_4c
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_42 .. :try_end_4c} :catch_52
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_42 .. :try_end_4c} :catch_b2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_42 .. :try_end_4c} :catch_50
    .catchall {:try_start_42 .. :try_end_4c} :catchall_4d

    goto :goto_54

    :catchall_4d
    move-exception v0

    goto/16 :goto_121

    :catch_50
    move-exception v0

    goto :goto_b9

    :catch_52
    move-exception v0

    goto :goto_bd

    :cond_54
    :goto_54
    const-string v0, "messages"

    const-wide/32 v13, 0x186a0

    cmp-long v15, v11, v13

    if-ltz v15, :cond_9f

    :try_start_5d
    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 11
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v15

    .line 12
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v15

    const-string v4, "Data loss, local db full"

    invoke-virtual {v15, v4}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    sub-long/2addr v13, v11

    const-wide/16 v11, 0x1

    add-long/2addr v13, v11

    new-array v4, v7, [Ljava/lang/String;

    .line 13
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v2

    const-string v11, "rowid in (select rowid from messages order by rowid asc limit ?)"

    .line 14
    invoke-virtual {v9, v0, v11, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v11, v4

    cmp-long v4, v11, v13

    if-eqz v4, :cond_9f

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 15
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v4

    .line 16
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v4

    const-string v15, "Different delete count than expected in local db. expected, received, difference"

    .line 17
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 18
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    sub-long/2addr v13, v11

    .line 19
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 20
    invoke-virtual {v4, v15, v2, v7, v11}, Lcom/google/android/gms/measurement/internal/zzew;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    :cond_9f
    invoke-virtual {v9, v0, v8, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 22
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 23
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a8
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5d .. :try_end_a8} :catch_52
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_5d .. :try_end_a8} :catch_b2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5d .. :try_end_a8} :catch_50
    .catchall {:try_start_5d .. :try_end_a8} :catchall_4d

    if-eqz v10, :cond_ad

    .line 24
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 25
    :cond_ad
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v2, 0x1

    return v2

    :catch_b2
    move-object v8, v10

    goto :goto_ea

    :catchall_b4
    move-exception v0

    goto/16 :goto_122

    :catch_b7
    move-exception v0

    move-object v10, v8

    :goto_b9
    move-object v8, v9

    goto :goto_c4

    :catch_bb
    move-exception v0

    move-object v10, v8

    :goto_bd
    move-object v8, v9

    goto :goto_fd

    :catchall_bf
    move-exception v0

    move-object v9, v8

    goto :goto_122

    :catch_c2
    move-exception v0

    move-object v10, v8

    :goto_c4
    if-eqz v8, :cond_cf

    .line 26
    :try_start_c6
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 27
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_cf
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 29
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    const-string v4, "Error writing entry to local database"

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzer;->d:Z
    :try_end_e1
    .catchall {:try_start_c6 .. :try_end_e1} :catchall_11f

    if-eqz v10, :cond_e6

    .line 30
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_e6
    if-eqz v8, :cond_119

    goto :goto_116

    :catch_e9
    move-object v9, v8

    :catch_ea
    :goto_ea
    int-to-long v10, v6

    .line 31
    :try_start_eb
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_ee
    .catchall {:try_start_eb .. :try_end_ee} :catchall_b4

    add-int/lit8 v6, v6, 0x14

    if-eqz v8, :cond_f5

    .line 32
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_f5
    if-eqz v9, :cond_119

    .line 33
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_119

    :catch_fb
    move-exception v0

    move-object v10, v8

    .line 34
    :goto_fd
    :try_start_fd
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 35
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    const-string v4, "Error writing entry; local database full"

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzer;->d:Z
    :try_end_10f
    .catchall {:try_start_fd .. :try_end_10f} :catchall_11f

    if-eqz v10, :cond_114

    .line 37
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_114
    if-eqz v8, :cond_119

    .line 38
    :goto_116
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_119
    :goto_119
    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x5

    goto/16 :goto_28

    :catchall_11f
    move-exception v0

    move-object v9, v8

    :goto_121
    move-object v8, v10

    :goto_122
    if-eqz v8, :cond_127

    .line 39
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_127
    if-eqz v9, :cond_12c

    .line 40
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 41
    :cond_12c
    throw v0

    .line 42
    :cond_12d
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v2, "Failed to write entry to local database"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method protected final i()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final j()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzer;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzer;->c:Lcom/google/android/gms/measurement/internal/o;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzer;->d:Z

    return-object v1

    :cond_12
    return-object v0
.end method

.method public final k(I)Ljava/util/List;
    .registers 24

    move-object/from16 v1, p0

    const-string v2, "rowid"

    const-string v3, "Error reading entries from local database"

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzer;->d:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_f

    return-object v4

    :cond_f
    new-instance v5, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzer;->n()Z

    move-result v0

    if-eqz v0, :cond_269

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x5

    :goto_1e
    if-ge v8, v6, :cond_259

    const/4 v10, 0x1

    .line 4
    :try_start_21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzer;->j()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15
    :try_end_25
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_21 .. :try_end_25} :catch_22e
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_21 .. :try_end_25} :catch_21b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21 .. :try_end_25} :catch_1f6
    .catchall {:try_start_21 .. :try_end_25} :catchall_1f3

    if-nez v15, :cond_2a

    :try_start_27
    iput-boolean v10, v1, Lcom/google/android/gms/measurement/internal/zzer;->d:Z

    return-object v4

    .line 5
    :cond_2a
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "3"
    :try_end_2f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_27 .. :try_end_2f} :catch_1ee
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_27 .. :try_end_2f} :catch_1ea
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_27 .. :try_end_2f} :catch_1e5
    .catchall {:try_start_27 .. :try_end_2f} :catchall_1e0

    :try_start_2f
    const-string v12, "messages"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v13

    const-string v14, "type=?"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "rowid desc"

    const-string v19, "1"
    :try_end_43
    .catchall {:try_start_2f .. :try_end_43} :catchall_1d1

    move-object v11, v15

    move-object/from16 p1, v15

    move-object v15, v0

    .line 6
    :try_start_47
    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_1cd

    .line 7
    :try_start_4b
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const-wide/16 v20, -0x1

    if-eqz v0, :cond_5b

    .line 8
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_1c9

    .line 9
    :try_start_57
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_60

    :cond_5b
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    move-wide/from16 v12, v20

    :goto_60
    cmp-long v0, v12, v20

    if-eqz v0, :cond_71

    const-string v0, "rowid<?"

    new-array v11, v10, [Ljava/lang/String;

    .line 10
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v7

    move-object v14, v0

    move-object v15, v11

    goto :goto_73

    :cond_71
    move-object v14, v4

    move-object v15, v14

    :goto_73
    const-string v0, "type"

    const-string v11, "entry"

    filled-new-array {v2, v0, v11}, [Ljava/lang/String;

    move-result-object v13

    const-string v12, "messages"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "rowid asc"

    const/16 v0, 0x64

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v11, p1

    .line 12
    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_8f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_57 .. :try_end_8f} :catch_1c5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_57 .. :try_end_8f} :catch_1c2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_57 .. :try_end_8f} :catch_1be
    .catchall {:try_start_57 .. :try_end_8f} :catchall_1ba

    .line 13
    :cond_8f
    :goto_8f
    :try_start_8f
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_16f

    .line 14
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 15
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v12, 0x2

    .line 16
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    if-nez v0, :cond_d9

    .line 17
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12
    :try_end_a8
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_8f .. :try_end_a8} :catch_1b6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_8f .. :try_end_a8} :catch_1b3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8f .. :try_end_a8} :catch_1af
    .catchall {:try_start_8f .. :try_end_a8} :catchall_1aa

    .line 18
    :try_start_a8
    array-length v0, v13

    invoke-virtual {v12, v13, v7, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 19
    invoke-virtual {v12, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 20
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzav;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzav;
    :try_end_b7
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_a8 .. :try_end_b7} :catch_c2
    .catchall {:try_start_a8 .. :try_end_b7} :catchall_c0

    .line 21
    :try_start_b7
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    if-eqz v0, :cond_8f

    .line 22
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_bf
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_b7 .. :try_end_bf} :catch_1b6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_b7 .. :try_end_bf} :catch_1b3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b7 .. :try_end_bf} :catch_1af
    .catchall {:try_start_b7 .. :try_end_bf} :catchall_1aa

    goto :goto_8f

    :catchall_c0
    move-exception v0

    goto :goto_d5

    .line 23
    :catch_c2
    :try_start_c2
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v13, "Failed to load event from local database"

    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V
    :try_end_d1
    .catchall {:try_start_c2 .. :try_end_d1} :catchall_c0

    .line 26
    :try_start_d1
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    goto :goto_8f

    :goto_d5
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 27
    throw v0

    :cond_d9
    if-ne v0, v10, :cond_111

    .line 28
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12
    :try_end_df
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_d1 .. :try_end_df} :catch_1b6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_d1 .. :try_end_df} :catch_1b3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d1 .. :try_end_df} :catch_1af
    .catchall {:try_start_d1 .. :try_end_df} :catchall_1aa

    .line 29
    :try_start_df
    array-length v0, v13

    invoke-virtual {v12, v13, v7, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 30
    invoke-virtual {v12, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 31
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzll;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzll;
    :try_end_ee
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_df .. :try_end_ee} :catch_f4
    .catchall {:try_start_df .. :try_end_ee} :catchall_f2

    .line 32
    :try_start_ee
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V
    :try_end_f1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_ee .. :try_end_f1} :catch_1b6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_ee .. :try_end_f1} :catch_1b3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ee .. :try_end_f1} :catch_1af
    .catchall {:try_start_ee .. :try_end_f1} :catchall_1aa

    goto :goto_107

    :catchall_f2
    move-exception v0

    goto :goto_10d

    .line 33
    :catch_f4
    :try_start_f4
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v13, "Failed to load user property from local database"

    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V
    :try_end_103
    .catchall {:try_start_f4 .. :try_end_103} :catchall_f2

    .line 36
    :try_start_103
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    move-object v0, v4

    :goto_107
    if-eqz v0, :cond_8f

    .line 37
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    .line 38
    :goto_10d
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 39
    throw v0

    :cond_111
    if-ne v0, v12, :cond_14a

    .line 40
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12
    :try_end_117
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_103 .. :try_end_117} :catch_1b6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_103 .. :try_end_117} :catch_1b3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_103 .. :try_end_117} :catch_1af
    .catchall {:try_start_103 .. :try_end_117} :catchall_1aa

    .line 41
    :try_start_117
    array-length v0, v13

    invoke-virtual {v12, v13, v7, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 42
    invoke-virtual {v12, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 43
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzab;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 44
    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzab;
    :try_end_126
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_117 .. :try_end_126} :catch_12c
    .catchall {:try_start_117 .. :try_end_126} :catchall_12a

    .line 45
    :try_start_126
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V
    :try_end_129
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_126 .. :try_end_129} :catch_1b6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_126 .. :try_end_129} :catch_1b3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_126 .. :try_end_129} :catch_1af
    .catchall {:try_start_126 .. :try_end_129} :catchall_1aa

    goto :goto_13f

    :catchall_12a
    move-exception v0

    goto :goto_146

    .line 46
    :catch_12c
    :try_start_12c
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v13, "Failed to load conditional user property from local database"

    .line 49
    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V
    :try_end_13b
    .catchall {:try_start_12c .. :try_end_13b} :catchall_12a

    .line 50
    :try_start_13b
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    move-object v0, v4

    :goto_13f
    if-eqz v0, :cond_8f

    .line 51
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8f

    .line 52
    :goto_146
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 53
    throw v0

    :cond_14a
    const/4 v12, 0x3

    if-ne v0, v12, :cond_15e

    .line 54
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v12, "Skipping app launch break"

    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    goto/16 :goto_8f

    :cond_15e
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v12, "Unknown record type in local database"

    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    goto/16 :goto_8f

    :cond_16f
    new-array v0, v10, [Ljava/lang/String;

    .line 59
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v7

    const-string v12, "messages"

    const-string v13, "rowid <= ?"
    :try_end_17b
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_13b .. :try_end_17b} :catch_1b6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_13b .. :try_end_17b} :catch_1b3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13b .. :try_end_17b} :catch_1af
    .catchall {:try_start_13b .. :try_end_17b} :catchall_1aa

    move-object/from16 v14, p1

    .line 60
    :try_start_17d
    invoke-virtual {v14, v12, v13, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 61
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-ge v0, v12, :cond_196

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 62
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v12, "Fewer entries removed from local database than expected"

    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    .line 64
    :cond_196
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 65
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_19c
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_17d .. :try_end_19c} :catch_1a7
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_17d .. :try_end_19c} :catch_1ec
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17d .. :try_end_19c} :catch_1a5
    .catchall {:try_start_17d .. :try_end_19c} :catchall_1a3

    .line 66
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 67
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v5

    :catchall_1a3
    move-exception v0

    goto :goto_1ad

    :catch_1a5
    move-exception v0

    goto :goto_1e8

    :catch_1a7
    move-exception v0

    goto/16 :goto_1f1

    :catchall_1aa
    move-exception v0

    move-object/from16 v14, p1

    :goto_1ad
    move-object v4, v11

    goto :goto_1e2

    :catch_1af
    move-exception v0

    move-object/from16 v14, p1

    goto :goto_1e8

    :catch_1b3
    move-object/from16 v14, p1

    goto :goto_1ec

    :catch_1b6
    move-exception v0

    move-object/from16 v14, p1

    goto :goto_1f1

    :catchall_1ba
    move-exception v0

    move-object/from16 v14, p1

    goto :goto_1e2

    :catch_1be
    move-exception v0

    move-object/from16 v14, p1

    goto :goto_1e7

    :catch_1c2
    move-object/from16 v14, p1

    goto :goto_1eb

    :catch_1c5
    move-exception v0

    move-object/from16 v14, p1

    goto :goto_1f0

    :catchall_1c9
    move-exception v0

    move-object/from16 v14, p1

    goto :goto_1d4

    :catchall_1cd
    move-exception v0

    move-object/from16 v14, p1

    goto :goto_1d3

    :catchall_1d1
    move-exception v0

    move-object v14, v15

    :goto_1d3
    move-object v11, v4

    :goto_1d4
    if-eqz v11, :cond_1d9

    .line 68
    :try_start_1d6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 69
    :cond_1d9
    throw v0
    :try_end_1da
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1d6 .. :try_end_1da} :catch_1de
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1d6 .. :try_end_1da} :catch_1eb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d6 .. :try_end_1da} :catch_1dc
    .catchall {:try_start_1d6 .. :try_end_1da} :catchall_1da

    :catchall_1da
    move-exception v0

    goto :goto_1e2

    :catch_1dc
    move-exception v0

    goto :goto_1e7

    :catch_1de
    move-exception v0

    goto :goto_1f0

    :catchall_1e0
    move-exception v0

    move-object v14, v15

    :goto_1e2
    move-object v15, v14

    goto/16 :goto_24e

    :catch_1e5
    move-exception v0

    move-object v14, v15

    :goto_1e7
    move-object v11, v4

    :goto_1e8
    move-object v15, v14

    goto :goto_1f9

    :catch_1ea
    move-object v14, v15

    :catch_1eb
    :goto_1eb
    move-object v11, v4

    :catch_1ec
    :goto_1ec
    move-object v15, v14

    goto :goto_21d

    :catch_1ee
    move-exception v0

    move-object v14, v15

    :goto_1f0
    move-object v11, v4

    :goto_1f1
    move-object v15, v14

    goto :goto_231

    :catchall_1f3
    move-exception v0

    move-object v15, v4

    goto :goto_24e

    :catch_1f6
    move-exception v0

    move-object v11, v4

    move-object v15, v11

    :goto_1f9
    if-eqz v15, :cond_204

    .line 70
    :try_start_1fb
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v12

    if-eqz v12, :cond_204

    .line 71
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_204
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 72
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v12

    .line 73
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v12

    invoke-virtual {v12, v3, v0}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v10, v1, Lcom/google/android/gms/measurement/internal/zzer;->d:Z
    :try_end_213
    .catchall {:try_start_1fb .. :try_end_213} :catchall_24c

    if-eqz v11, :cond_218

    .line 74
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_218
    if-eqz v15, :cond_248

    goto :goto_22a

    :catch_21b
    move-object v11, v4

    move-object v15, v11

    :goto_21d
    int-to-long v12, v9

    .line 75
    :try_start_21e
    invoke-static {v12, v13}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_221
    .catchall {:try_start_21e .. :try_end_221} :catchall_24c

    add-int/lit8 v9, v9, 0x14

    if-eqz v11, :cond_228

    .line 76
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_228
    if-eqz v15, :cond_248

    .line 77
    :goto_22a
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_248

    :catch_22e
    move-exception v0

    move-object v11, v4

    move-object v15, v11

    .line 78
    :goto_231
    :try_start_231
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 79
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v12

    .line 80
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v12

    invoke-virtual {v12, v3, v0}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v10, v1, Lcom/google/android/gms/measurement/internal/zzer;->d:Z
    :try_end_240
    .catchall {:try_start_231 .. :try_end_240} :catchall_24c

    if-eqz v11, :cond_245

    .line 81
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_245
    if-eqz v15, :cond_248

    goto :goto_22a

    :cond_248
    :goto_248
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1e

    :catchall_24c
    move-exception v0

    move-object v4, v11

    :goto_24e
    if-eqz v4, :cond_253

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_253
    if-eqz v15, :cond_258

    .line 82
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 83
    :cond_258
    throw v0

    .line 84
    :cond_259
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 85
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v2, "Failed to read events from database in reasonable time"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    return-object v4

    :cond_269
    return-object v5
.end method

.method public final l()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzer;->j()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_25

    const-string v1, "messages"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_25

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    const-string v2, "Reset local analytics data. records"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_25
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_25} :catch_26

    :cond_25
    return-void

    :catch_26
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    const-string v2, "Error resetting local analytics data. error"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final m()Z
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [B

    const/4 v1, 0x3

    .line 1
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zzer;->s(I[B)Z

    move-result v0

    return v0
.end method

.method final n()Z
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->N0()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    const-string v1, "google_app_measurement_local.db"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public final o()Z
    .registers 11

    const-string v0, "Error deleting app launch break from local database"

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzer;->d:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    return v2

    .line 2
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzer;->n()Z

    move-result v1

    if-eqz v1, :cond_97

    const/4 v1, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x5

    :goto_14
    if-ge v3, v1, :cond_88

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 3
    :try_start_18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzer;->j()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-nez v5, :cond_21

    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzer;->d:Z

    return v2

    .line 4
    :cond_21
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-array v7, v6, [Ljava/lang/String;

    const/4 v8, 0x3

    .line 5
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    const-string v8, "messages"

    const-string v9, "type == ?"

    .line 6
    invoke-virtual {v5, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 8
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_18 .. :try_end_3a} :catch_42
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_18 .. :try_end_3a} :catch_61
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_3a} :catch_40
    .catchall {:try_start_18 .. :try_end_3a} :catchall_3e

    .line 9
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return v6

    :catchall_3e
    move-exception v0

    goto :goto_82

    :catch_40
    move-exception v7

    goto :goto_44

    :catch_42
    move-exception v7

    goto :goto_6d

    :goto_44
    if-eqz v5, :cond_4f

    .line 10
    :try_start_46
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 11
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_4f
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 12
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v8

    .line 13
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzer;->d:Z

    if-eqz v5, :cond_7f

    goto :goto_69

    :catch_61
    int-to-long v6, v4

    .line 14
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_65
    .catchall {:try_start_46 .. :try_end_65} :catchall_3e

    add-int/lit8 v4, v4, 0x14

    if-eqz v5, :cond_7f

    .line 15
    :goto_69
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_7f

    .line 16
    :goto_6d
    :try_start_6d
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 17
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v8

    .line 18
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzer;->d:Z
    :try_end_7c
    .catchall {:try_start_6d .. :try_end_7c} :catchall_3e

    if-eqz v5, :cond_7f

    goto :goto_69

    :cond_7f
    :goto_7f
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :goto_82
    if-eqz v5, :cond_87

    .line 19
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 20
    :cond_87
    throw v0

    .line 21
    :cond_88
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v1, "Error deleting app launch break from local database in reasonable time"

    .line 24
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    :cond_97
    return v2
.end method

.method public final p(Lcom/google/android/gms/measurement/internal/zzab;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->L()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzlp;->c0(Landroid/os/Parcelable;)[B

    move-result-object p1

    .line 3
    array-length v0, p1

    const/high16 v1, 0x20000

    if-le v0, v1, :cond_20

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzey;->o()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    const-string v0, "Conditional user property too long for local database. Sending directly to service"

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_20
    const/4 v0, 0x2

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzer;->s(I[B)Z

    move-result p1

    return p1
.end method

.method public final q(Lcom/google/android/gms/measurement/internal/zzav;)Z
    .registers 5

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzaw;->a(Lcom/google/android/gms/measurement/internal/zzav;Landroid/os/Parcel;I)V

    .line 3
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5
    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_24

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzey;->o()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    const-string v0, "Event is too long for local database. Sending event directly to service"

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    return v1

    .line 9
    :cond_24
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzer;->s(I[B)Z

    move-result p1

    return p1
.end method

.method public final r(Lcom/google/android/gms/measurement/internal/zzll;)Z
    .registers 5

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzlm;->a(Lcom/google/android/gms/measurement/internal/zzll;Landroid/os/Parcel;I)V

    .line 3
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5
    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_24

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzey;->o()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    const-string v0, "User property too long for local database. Sending directly to service"

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    return v1

    :cond_24
    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzer;->s(I[B)Z

    move-result p1

    return p1
.end method
