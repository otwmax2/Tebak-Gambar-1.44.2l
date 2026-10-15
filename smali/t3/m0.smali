###### Class t3.m0 (t3.m0)
.class public Lt3/m0;
.super Ljava/lang/Object;
.source "SQLiteEventStore.java"

# interfaces
.implements Lt3/d;
.implements Lu3/b;
.implements Lt3/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt3/m0$c;,
        Lt3/m0$b;,
        Lt3/m0$d;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final t:Lj3/b;


# instance fields
.field private final o:Lt3/t0;

.field private final p:Lv3/a;

.field private final q:Lv3/a;

.field private final r:Lt3/e;

.field private final s:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "proto"

    .line 1
    invoke-static {v0}, Lj3/b;->b(Ljava/lang/String;)Lj3/b;

    move-result-object v0

    sput-object v0, Lt3/m0;->t:Lj3/b;

    return-void
.end method

.method constructor <init>(Lv3/a;Lv3/a;Lt3/e;Lt3/t0;Ljavax/inject/Provider;)V
    .registers 6
    .param p5    # Ljavax/inject/Provider;
        .annotation runtime Ljavax/inject/Named;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/a;",
            "Lv3/a;",
            "Lt3/e;",
            "Lt3/t0;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Lt3/m0;->o:Lt3/t0;

    .line 3
    iput-object p1, p0, Lt3/m0;->p:Lv3/a;

    .line 4
    iput-object p2, p0, Lt3/m0;->q:Lv3/a;

    .line 5
    iput-object p3, p0, Lt3/m0;->r:Lt3/e;

    .line 6
    iput-object p5, p0, Lt3/m0;->s:Ljavax/inject/Provider;

    return-void
.end method

.method public static synthetic A(Lt3/m0;Landroid/database/Cursor;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lt3/m0;->z0(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic A0(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-virtual {p3, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p3, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    new-instance v0, Lt3/i0;

    invoke-direct {v0, p0}, Lt3/i0;-><init>(Lt3/m0;)V

    .line 3
    invoke-static {p2, v0}, Lt3/m0;->P0(Landroid/database/Cursor;Lt3/m0$b;)Ljava/lang/Object;

    const-string p2, "DELETE FROM events WHERE num_attempts >= 16"

    .line 4
    invoke-virtual {p3, p2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p2

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    return-object p1
.end method

.method private static synthetic B0(Landroid/database/Cursor;)Ljava/lang/Boolean;
    .registers 1

    .line 1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C(Lt3/m0;JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lt3/m0;->U(JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic C0(Ljava/lang/String;Lo3/c$b;JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .registers 11

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 1
    invoke-virtual {p1}, Lo3/c$b;->h()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?"

    .line 2
    invoke-virtual {p4, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    sget-object v3, Lt3/x;->a:Lt3/x;

    invoke-static {v1, v3}, Lt3/m0;->P0(Landroid/database/Cursor;Lt3/m0$b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_4c

    .line 3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "log_source"

    .line 4
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lo3/c$b;->h()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "reason"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "events_dropped_count"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p0, "log_event_dropped"

    .line 7
    invoke-virtual {p4, p0, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_73

    .line 8
    :cond_4c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " WHERE log_source = ? AND reason = ?"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/String;

    aput-object p0, p3, v2

    .line 9
    invoke-virtual {p1}, Lo3/c$b;->h()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p3, v4

    invoke-virtual {p4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_73
    return-object v3
.end method

.method private static synthetic D0(JLl3/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .registers 7

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "next_request_ms"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Ll3/p;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, p0, v1

    .line 4
    invoke-virtual {p2}, Ll3/p;->d()Lj3/d;

    move-result-object p1

    invoke-static {p1}, Lw3/a;->a(Lj3/d;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, p0, v1

    const-string p1, "transport_contexts"

    const-string v2, "backend_name = ? and priority = ?"

    .line 5
    invoke-virtual {p3, p1, v0, v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const/4 v2, 0x0

    if-ge p0, v1, :cond_4f

    .line 6
    invoke-virtual {p2}, Ll3/p;->b()Ljava/lang/String;

    move-result-object p0

    const-string v1, "backend_name"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Ll3/p;->d()Lj3/d;

    move-result-object p0

    invoke-static {p0}, Lw3/a;->a(Lj3/d;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "priority"

    invoke-virtual {v0, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8
    invoke-virtual {p3, p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_4f
    return-object v2
.end method

.method public static synthetic E(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Lt3/m0;->i0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic E0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .registers 5

    const-string v0, "DELETE FROM log_event_dropped"

    .line 1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE global_log_event_state SET last_metrics_upload_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lt3/m0;->p:Lv3/a;

    .line 3
    invoke-interface {v1}, Lv3/a;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic F(Landroid/database/Cursor;)Ljava/lang/Boolean;
    .registers 1

    invoke-static {p0}, Lt3/m0;->B0(Landroid/database/Cursor;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private F0(Landroid/database/sqlite/SQLiteDatabase;Ll3/p;I)Ljava/util/List;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ll3/p;",
            "I)",
            "Ljava/util/List<",
            "Lt3/k;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-direct/range {p0 .. p2}, Lt3/m0;->P(Landroid/database/sqlite/SQLiteDatabase;Ll3/p;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_c

    return-object v0

    :cond_c
    const-string v2, "_id"

    const-string v3, "transport_name"

    const-string v4, "timestamp_ms"

    const-string v5, "uptime_ms"

    const-string v6, "payload_encoding"

    const-string v7, "payload"

    const-string v8, "code"

    const-string v9, "inline"

    .line 3
    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x1

    new-array v14, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v14, v2

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 5
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    const-string v11, "events"

    const-string v13, "context_id = ?"

    move-object/from16 v10, p1

    .line 6
    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v2, Lt3/n;

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-direct {v2, v3, v0, v4}, Lt3/n;-><init>(Lt3/m0;Ljava/util/List;Ll3/p;)V

    .line 7
    invoke-static {v1, v2}, Lt3/m0;->P0(Landroid/database/Cursor;Lt3/m0$b;)Ljava/lang/Object;

    return-object v0
.end method

.method private G(I)Lo3/c$b;
    .registers 5

    .line 1
    sget-object v0, Lo3/c$b;->p:Lo3/c$b;

    invoke-virtual {v0}, Lo3/c$b;->h()I

    move-result v1

    if-ne p1, v1, :cond_9

    return-object v0

    .line 2
    :cond_9
    sget-object v1, Lo3/c$b;->q:Lo3/c$b;

    invoke-virtual {v1}, Lo3/c$b;->h()I

    move-result v2

    if-ne p1, v2, :cond_12

    return-object v1

    .line 3
    :cond_12
    sget-object v1, Lo3/c$b;->r:Lo3/c$b;

    invoke-virtual {v1}, Lo3/c$b;->h()I

    move-result v2

    if-ne p1, v2, :cond_1b

    return-object v1

    .line 4
    :cond_1b
    sget-object v1, Lo3/c$b;->s:Lo3/c$b;

    invoke-virtual {v1}, Lo3/c$b;->h()I

    move-result v2

    if-ne p1, v2, :cond_24

    return-object v1

    .line 5
    :cond_24
    sget-object v1, Lo3/c$b;->t:Lo3/c$b;

    invoke-virtual {v1}, Lo3/c$b;->h()I

    move-result v2

    if-ne p1, v2, :cond_2d

    return-object v1

    .line 6
    :cond_2d
    sget-object v1, Lo3/c$b;->u:Lo3/c$b;

    invoke-virtual {v1}, Lo3/c$b;->h()I

    move-result v2

    if-ne p1, v2, :cond_36

    return-object v1

    .line 7
    :cond_36
    sget-object v1, Lo3/c$b;->v:Lo3/c$b;

    invoke-virtual {v1}, Lo3/c$b;->h()I

    move-result v2

    if-ne p1, v2, :cond_3f

    return-object v1

    .line 8
    :cond_3f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "SQLiteEventStore"

    const-string v2, "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN"

    .line 9
    invoke-static {v1, v2, p1}, Lp3/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method private G0(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/Map;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Lt3/k;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Set<",
            "Lt3/m0$c;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event_id IN ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 3
    :goto_d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_30

    .line 4
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt3/k;

    invoke-virtual {v3}, Lt3/k;->c()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2d

    const/16 v3, 0x2c

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_30
    const/16 p2, 0x29

    .line 7
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "event_id"

    const-string v2, "name"

    const-string v3, "value"

    .line 8
    filled-new-array {p2, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v5, "event_metadata"

    move-object v4, p1

    .line 10
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance p2, Lt3/g0;

    invoke-direct {p2, v0}, Lt3/g0;-><init>(Ljava/util/Map;)V

    .line 11
    invoke-static {p1, p2}, Lt3/m0;->P0(Landroid/database/Cursor;Lt3/m0$b;)Ljava/lang/Object;

    return-object v0
.end method

.method private H(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 1
    new-instance v0, Lt3/c0;

    invoke-direct {v0, p1}, Lt3/c0;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sget-object p1, Lt3/b0;->a:Lt3/b0;

    invoke-direct {p0, v0, p1}, Lt3/m0;->K0(Lt3/m0$d;Lt3/m0$b;)Ljava/lang/Object;

    return-void
.end method

.method private static H0(Ljava/lang/String;)[B
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method private I(Landroid/database/sqlite/SQLiteDatabase;Ll3/p;)J
    .registers 7

    .line 1
    invoke-direct {p0, p1, p2}, Lt3/m0;->P(Landroid/database/sqlite/SQLiteDatabase;Ll3/p;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    .line 3
    :cond_b
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    invoke-virtual {p2}, Ll3/p;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "backend_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Ll3/p;->d()Lj3/d;

    move-result-object v1

    invoke-static {v1}, Lw3/a;->a(Lj3/d;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "priority"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "next_request_ms"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7
    invoke-virtual {p2}, Ll3/p;->c()[B

    move-result-object v2

    if-eqz v2, :cond_47

    .line 8
    invoke-virtual {p2}, Ll3/p;->c()[B

    move-result-object p2

    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    const-string v1, "extras"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    const/4 p2, 0x0

    const-string v1, "transport_contexts"

    .line 9
    invoke-virtual {p1, v1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method private I0(Lo3/a$a;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a$a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo3/c;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-static {}, Lo3/d;->c()Lo3/d$a;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lo3/d$a;->c(Ljava/lang/String;)Lo3/d$a;

    move-result-object v1

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lo3/d$a;->b(Ljava/util/List;)Lo3/d$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lo3/d$a;->a()Lo3/d;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Lo3/a$a;->a(Lo3/d;)Lo3/a$a;

    goto :goto_8

    :cond_34
    return-void
.end method

.method private J0(J)[B
    .registers 11

    .line 1
    invoke-virtual {p0}, Lt3/m0;->K()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "bytes"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    .line 2
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v4, p2

    const-string v1, "event_payloads"

    const-string v3, "event_id = ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "sequence_num"

    .line 3
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    sget-object p2, Lt3/s;->a:Lt3/s;

    .line 4
    invoke-static {p1, p2}, Lt3/m0;->P0(Landroid/database/Cursor;Lt3/m0$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method private K0(Lt3/m0$d;Lt3/m0$b;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lt3/m0$d<",
            "TT;>;",
            "Lt3/m0$b<",
            "Ljava/lang/Throwable;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt3/m0;->q:Lv3/a;

    invoke-interface {v0}, Lv3/a;->a()J

    move-result-wide v0

    .line 2
    :goto_6
    :try_start_6
    invoke-interface {p1}, Lt3/m0$d;->a()Ljava/lang/Object;

    move-result-object p1
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception v2

    .line 3
    iget-object v3, p0, Lt3/m0;->q:Lv3/a;

    invoke-interface {v3}, Lv3/a;->a()J

    move-result-wide v3

    iget-object v5, p0, Lt3/m0;->r:Lt3/e;

    invoke-virtual {v5}, Lt3/e;->b()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v5, v0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_23

    .line 4
    invoke-interface {p2, v2}, Lt3/m0$b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_23
    const-wide/16 v2, 0x32

    .line 5
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_6
.end method

.method private L()Lo3/b;
    .registers 5

    .line 1
    invoke-static {}, Lo3/b;->b()Lo3/b$a;

    move-result-object v0

    .line 2
    invoke-static {}, Lo3/e;->c()Lo3/e$a;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lt3/m0;->J()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lo3/e$a;->b(J)Lo3/e$a;

    move-result-object v1

    sget-object v2, Lt3/e;->a:Lt3/e;

    .line 4
    invoke-virtual {v2}, Lt3/e;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lo3/e$a;->c(J)Lo3/e$a;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lo3/e$a;->a()Lo3/e;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lo3/b$a;->b(Lo3/e;)Lo3/b$a;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lo3/b$a;->a()Lo3/b;

    move-result-object v0

    return-object v0
.end method

.method private M()J
    .registers 3

    .line 1
    invoke-virtual {p0}, Lt3/m0;->K()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "PRAGMA page_count"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method private N()J
    .registers 3

    .line 1
    invoke-virtual {p0}, Lt3/m0;->K()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "PRAGMA page_size"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method private static N0(Ljava/lang/String;)Lj3/b;
    .registers 1

    if-nez p0, :cond_5

    .line 1
    sget-object p0, Lt3/m0;->t:Lj3/b;

    return-object p0

    .line 2
    :cond_5
    invoke-static {p0}, Lj3/b;->b(Ljava/lang/String;)Lj3/b;

    move-result-object p0

    return-object p0
.end method

.method private O()Lo3/f;
    .registers 4

    .line 1
    iget-object v0, p0, Lt3/m0;->p:Lv3/a;

    invoke-interface {v0}, Lv3/a;->a()J

    move-result-wide v0

    .line 2
    new-instance v2, Lt3/w;

    invoke-direct {v2, v0, v1}, Lt3/w;-><init>(J)V

    invoke-virtual {p0, v2}, Lt3/m0;->Q(Lt3/m0$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo3/f;

    return-object v0
.end method

.method private static O0(Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lt3/k;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 3
    :cond_b
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt3/k;

    invoke-virtual {v1}, Lt3/k;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0x2c

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_2a
    const/16 p0, 0x29

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private P(Landroid/database/sqlite/SQLiteDatabase;Ll3/p;)Ljava/lang/Long;
    .registers 16

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "backend_name = ? and priority = ?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Ll3/p;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 4
    invoke-virtual {p2}, Ll3/p;->d()Lj3/d;

    move-result-object v3

    invoke-static {v3}, Lw3/a;->a(Lj3/d;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 5
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-virtual {p2}, Ll3/p;->c()[B

    move-result-object v2

    if-eqz v2, :cond_40

    const-string v2, " and extras = ?"

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p2}, Ll3/p;->c()[B

    move-result-object p2

    invoke-static {p2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_45

    :cond_40
    const-string p2, " and extras is null"

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_45
    const-string p2, "_id"

    .line 10
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v7

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array p2, v4, [Ljava/lang/String;

    .line 12
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    move-object v9, p2

    check-cast v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v6, "transport_contexts"

    move-object v5, p1

    .line 13
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    sget-object p2, Lt3/v;->a:Lt3/v;

    .line 14
    invoke-static {p1, p2}, Lt3/m0;->P0(Landroid/database/Cursor;Lt3/m0$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method static P0(Landroid/database/Cursor;Lt3/m0$b;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Lt3/m0$b<",
            "Landroid/database/Cursor;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Lt3/m0$b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_8

    .line 2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_8
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 3
    throw p1
.end method

.method private R()Z
    .registers 6

    .line 1
    invoke-direct {p0}, Lt3/m0;->M()J

    move-result-wide v0

    invoke-direct {p0}, Lt3/m0;->N()J

    move-result-wide v2

    mul-long v0, v0, v2

    .line 2
    iget-object v2, p0, Lt3/m0;->r:Lt3/e;

    invoke-virtual {v2}, Lt3/e;->f()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private S(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lt3/k;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Set<",
            "Lt3/m0$c;",
            ">;>;)",
            "Ljava/util/List<",
            "Lt3/k;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 2
    :goto_4
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 3
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt3/k;

    .line 4
    invoke-virtual {v1}, Lt3/k;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_4

    .line 5
    :cond_1f
    invoke-virtual {v1}, Lt3/k;->b()Ll3/i;

    move-result-object v2

    invoke-virtual {v2}, Ll3/i;->l()Ll3/i$a;

    move-result-object v2

    .line 6
    invoke-virtual {v1}, Lt3/k;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt3/m0$c;

    .line 7
    iget-object v5, v4, Lt3/m0$c;->a:Ljava/lang/String;

    iget-object v4, v4, Lt3/m0$c;->b:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ll3/i$a;->c(Ljava/lang/String;Ljava/lang/String;)Ll3/i$a;

    goto :goto_39

    .line 8
    :cond_4d
    invoke-virtual {v1}, Lt3/k;->c()J

    move-result-wide v3

    invoke-virtual {v1}, Lt3/k;->d()Ll3/p;

    move-result-object v1

    invoke-virtual {v2}, Ll3/i$a;->d()Ll3/i;

    move-result-object v2

    invoke-static {v3, v4, v1, v2}, Lt3/k;->a(JLl3/p;Ll3/i;)Lt3/k;

    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_4

    :cond_61
    return-object p1
.end method

.method private synthetic T(Landroid/database/Cursor;)Ljava/lang/Object;
    .registers 6

    .line 1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    .line 3
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    int-to-long v2, v0

    .line 4
    sget-object v0, Lo3/c$b;->q:Lo3/c$b;

    invoke-virtual {p0, v2, v3, v0, v1}, Lt3/m0;->e(JLo3/c$b;Ljava/lang/String;)V

    goto :goto_0

    :cond_17
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic U(JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const-string p1, "SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name"

    .line 2
    invoke-virtual {p3, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance p2, Lt3/h0;

    invoke-direct {p2, p0}, Lt3/h0;-><init>(Lt3/m0;)V

    .line 3
    invoke-static {p1, p2}, Lt3/m0;->P0(Landroid/database/Cursor;Lt3/m0$b;)Ljava/lang/Object;

    const-string p1, "events"

    const-string p2, "timestamp_ms < ?"

    .line 4
    invoke-virtual {p3, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic X(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic Y(Ljava/lang/Throwable;)Ljava/lang/Object;
    .registers 3

    .line 1
    new-instance v0, Lu3/a;

    const-string v1, "Timed out while trying to acquire the lock."

    invoke-direct {v0, v1, p0}, Lu3/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static synthetic Z(Ljava/lang/Throwable;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    .line 1
    new-instance v0, Lu3/a;

    const-string v1, "Timed out while trying to open db."

    invoke-direct {v0, v1, p0}, Lu3/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static synthetic a0(Landroid/database/Cursor;)Ljava/lang/Long;
    .registers 3

    .line 1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_10
    const-wide/16 v0, 0x0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic c0(JLandroid/database/Cursor;)Lo3/f;
    .registers 5

    .line 1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v0, 0x0

    .line 2
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 3
    invoke-static {}, Lo3/f;->c()Lo3/f$a;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Lo3/f$a;->c(J)Lo3/f$a;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lo3/f$a;->b(J)Lo3/f$a;

    move-result-object p0

    invoke-virtual {p0}, Lo3/f$a;->a()Lo3/f;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic e0(JLandroid/database/sqlite/SQLiteDatabase;)Lo3/f;
    .registers 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1"

    .line 1
    invoke-virtual {p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    new-instance v0, Lt3/l;

    invoke-direct {v0, p0, p1}, Lt3/l;-><init>(J)V

    .line 2
    invoke-static {p2, v0}, Lt3/m0;->P0(Landroid/database/Cursor;Lt3/m0$b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo3/f;

    return-object p0
.end method

.method public static synthetic f(Ljava/lang/Throwable;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 1

    invoke-static {p0}, Lt3/m0;->Z(Ljava/lang/Throwable;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic f0(Landroid/database/Cursor;)Ljava/lang/Long;
    .registers 3

    .line 1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ljava/lang/Throwable;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lt3/m0;->Y(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic g0(Ll3/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;
    .registers 5

    .line 1
    invoke-direct {p0, p2, p1}, Lt3/m0;->P(Landroid/database/sqlite/SQLiteDatabase;Ll3/p;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_9

    .line 2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 3
    :cond_9
    invoke-virtual {p0}, Lt3/m0;->K()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "SELECT 1 FROM events WHERE context_id = ? LIMIT 1"

    .line 5
    invoke-virtual {p2, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    sget-object p2, Lt3/y;->a:Lt3/y;

    .line 6
    invoke-static {p1, p2}, Lt3/m0;->P0(Landroid/database/Cursor;Lt3/m0$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public static synthetic h(JLandroid/database/Cursor;)Lo3/f;
    .registers 3

    invoke-static {p0, p1, p2}, Lt3/m0;->c0(JLandroid/database/Cursor;)Lo3/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lt3/m0;Ll3/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1, p2}, Lt3/m0;->l0(Ll3/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic i0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id"

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    sget-object v0, Lt3/t;->a:Lt3/t;

    .line 2
    invoke-static {p0, v0}, Lt3/m0;->P0(Landroid/database/Cursor;Lt3/m0$b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static synthetic j(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lt3/m0;->X(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic j0(Landroid/database/Cursor;)Ljava/util/List;
    .registers 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :goto_5
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 3
    invoke-static {}, Ll3/p;->a()Ll3/p$a;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ll3/p$a;->b(Ljava/lang/String;)Ll3/p$a;

    move-result-object v1

    const/4 v2, 0x2

    .line 5
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lw3/a;->b(I)Lj3/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ll3/p$a;->d(Lj3/d;)Ll3/p$a;

    move-result-object v1

    const/4 v2, 0x3

    .line 6
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lt3/m0;->H0(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ll3/p$a;->c([B)Ll3/p$a;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ll3/p$a;->a()Ll3/p;

    move-result-object v1

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_3a
    return-object v0
.end method

.method public static synthetic k(JLl3/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lt3/m0;->D0(JLl3/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Landroid/database/Cursor;)[B
    .registers 1

    invoke-static {p0}, Lt3/m0;->y0(Landroid/database/Cursor;)[B

    move-result-object p0

    return-object p0
.end method

.method private synthetic l0(Ll3/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .registers 10

    .line 1
    iget-object v0, p0, Lt3/m0;->r:Lt3/e;

    invoke-virtual {v0}, Lt3/e;->d()I

    move-result v0

    invoke-direct {p0, p2, p1, v0}, Lt3/m0;->F0(Landroid/database/sqlite/SQLiteDatabase;Ll3/p;I)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {}, Lj3/d;->values()[Lj3/d;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_37

    aget-object v4, v1, v3

    .line 3
    invoke-virtual {p1}, Ll3/p;->d()Lj3/d;

    move-result-object v5

    if-ne v4, v5, :cond_1b

    goto :goto_34

    .line 4
    :cond_1b
    iget-object v5, p0, Lt3/m0;->r:Lt3/e;

    invoke-virtual {v5}, Lt3/e;->d()I

    move-result v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v5, v6

    if-gtz v5, :cond_29

    goto :goto_37

    .line 5
    :cond_29
    invoke-virtual {p1, v4}, Ll3/p;->f(Lj3/d;)Ll3/p;

    move-result-object v4

    invoke-direct {p0, p2, v4, v5}, Lt3/m0;->F0(Landroid/database/sqlite/SQLiteDatabase;Ll3/p;I)Ljava/util/List;

    move-result-object v4

    .line 6
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 7
    :cond_37
    :goto_37
    invoke-direct {p0, p2, v0}, Lt3/m0;->G0(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lt3/m0;->S(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic m(Landroid/database/Cursor;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Lt3/m0;->j0(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic m0(Ljava/util/Map;Lo3/a$a;Landroid/database/Cursor;)Lo3/a;
    .registers 9

    .line 1
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, 0x0

    .line 2
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-direct {p0, v1}, Lt3/m0;->G(I)Lo3/c$b;

    move-result-object v1

    const/4 v2, 0x2

    .line 4
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 5
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_27
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 8
    invoke-static {}, Lo3/c;->c()Lo3/c$a;

    move-result-object v4

    .line 9
    invoke-virtual {v4, v1}, Lo3/c$a;->c(Lo3/c$b;)Lo3/c$a;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v2, v3}, Lo3/c$a;->b(J)Lo3/c$a;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lo3/c$a;->a()Lo3/c;

    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_41
    invoke-direct {p0, p2, p1}, Lt3/m0;->I0(Lo3/a$a;Ljava/util/Map;)V

    .line 14
    invoke-direct {p0}, Lt3/m0;->O()Lo3/f;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo3/a$a;->e(Lo3/f;)Lo3/a$a;

    .line 15
    invoke-direct {p0}, Lt3/m0;->L()Lo3/b;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo3/a$a;->d(Lo3/b;)Lo3/a$a;

    .line 16
    iget-object p1, p0, Lt3/m0;->s:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lo3/a$a;->c(Ljava/lang/String;)Lo3/a$a;

    .line 17
    invoke-virtual {p2}, Lo3/a$a;->b()Lo3/a;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic n(Ljava/lang/String;Lo3/c$b;JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lt3/m0;->C0(Ljava/lang/String;Lo3/c$b;JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic n0(Ljava/lang/String;Ljava/util/Map;Lo3/a$a;Landroid/database/sqlite/SQLiteDatabase;)Lo3/a;
    .registers 6

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    invoke-virtual {p4, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance p4, Lt3/o;

    invoke-direct {p4, p0, p2, p3}, Lt3/o;-><init>(Lt3/m0;Ljava/util/Map;Lo3/a$a;)V

    .line 2
    invoke-static {p1, p4}, Lt3/m0;->P0(Landroid/database/Cursor;Lt3/m0$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo3/a;

    return-object p1
.end method

.method public static synthetic o(Lt3/m0;Landroid/database/Cursor;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lt3/m0;->T(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lt3/m0;Ll3/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;
    .registers 3

    invoke-direct {p0, p1, p2}, Lt3/m0;->g0(Ll3/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic p0(Ljava/util/List;Ll3/p;Landroid/database/Cursor;)Ljava/lang/Object;
    .registers 10

    .line 1
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    const/4 v0, 0x0

    .line 2
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x7

    .line 3
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_14

    const/4 v0, 0x1

    .line 4
    :cond_14
    invoke-static {}, Ll3/i;->a()Ll3/i$a;

    move-result-object v3

    .line 5
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ll3/i$a;->j(Ljava/lang/String;)Ll3/i$a;

    move-result-object v3

    const/4 v4, 0x2

    .line 6
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ll3/i$a;->i(J)Ll3/i$a;

    move-result-object v3

    const/4 v4, 0x3

    .line 7
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ll3/i$a;->k(J)Ll3/i$a;

    move-result-object v3

    const/4 v4, 0x4

    if-eqz v0, :cond_4b

    .line 8
    new-instance v0, Ll3/h;

    .line 9
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lt3/m0;->N0(Ljava/lang/String;)Lj3/b;

    move-result-object v4

    const/4 v5, 0x5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ll3/h;-><init>(Lj3/b;[B)V

    .line 10
    invoke-virtual {v3, v0}, Ll3/i$a;->h(Ll3/h;)Ll3/i$a;

    goto :goto_5f

    .line 11
    :cond_4b
    new-instance v0, Ll3/h;

    .line 12
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lt3/m0;->N0(Ljava/lang/String;)Lj3/b;

    move-result-object v4

    invoke-direct {p0, v1, v2}, Lt3/m0;->J0(J)[B

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ll3/h;-><init>(Lj3/b;[B)V

    .line 13
    invoke-virtual {v3, v0}, Ll3/i$a;->h(Ll3/h;)Ll3/i$a;

    :goto_5f
    const/4 v0, 0x6

    .line 14
    invoke-interface {p3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_71

    .line 15
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ll3/i$a;->g(Ljava/lang/Integer;)Ll3/i$a;

    .line 16
    :cond_71
    invoke-virtual {v3}, Ll3/i$a;->d()Ll3/i;

    move-result-object v0

    invoke-static {v1, v2, p2, v0}, Lt3/k;->a(JLl3/p;Ll3/i;)Lt3/k;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7d
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic q(JLandroid/database/sqlite/SQLiteDatabase;)Lo3/f;
    .registers 3

    invoke-static {p0, p1, p2}, Lt3/m0;->e0(JLandroid/database/sqlite/SQLiteDatabase;)Lo3/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Landroid/database/Cursor;)Ljava/lang/Long;
    .registers 1

    invoke-static {p0}, Lt3/m0;->a0(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lt3/m0;Ljava/lang/String;Ljava/util/Map;Lo3/a$a;Landroid/database/sqlite/SQLiteDatabase;)Lo3/a;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lt3/m0;->n0(Ljava/lang/String;Ljava/util/Map;Lo3/a$a;Landroid/database/sqlite/SQLiteDatabase;)Lo3/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Lt3/m0;Ljava/util/List;Ll3/p;Landroid/database/Cursor;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lt3/m0;->p0(Ljava/util/List;Ll3/p;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic t0(Ljava/util/Map;Landroid/database/Cursor;)Ljava/lang/Object;
    .registers 7

    .line 1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_24

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_24
    new-instance v2, Lt3/m0$c;

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lt3/m0$c;-><init>(Ljava/lang/String;Ljava/lang/String;Lt3/m0$a;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_37
    return-object v1
.end method

.method public static synthetic u(Lt3/m0;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lt3/m0;->E0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Landroid/database/Cursor;)Ljava/lang/Long;
    .registers 1

    invoke-static {p0}, Lt3/m0;->f0(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic v0(Ll3/i;Ll3/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;
    .registers 15

    .line 1
    invoke-direct {p0}, Lt3/m0;->R()Z

    move-result v0

    if-eqz v0, :cond_18

    const-wide/16 p2, 0x1

    .line 2
    sget-object v0, Lo3/c$b;->r:Lo3/c$b;

    .line 3
    invoke-virtual {p1}, Ll3/i;->j()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p2, p3, v0, p1}, Lt3/m0;->e(JLo3/c$b;Ljava/lang/String;)V

    const-wide/16 p1, -0x1

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 6
    :cond_18
    invoke-direct {p0, p3, p2}, Lt3/m0;->I(Landroid/database/sqlite/SQLiteDatabase;Ll3/p;)J

    move-result-wide v0

    .line 7
    iget-object p2, p0, Lt3/m0;->r:Lt3/e;

    invoke-virtual {p2}, Lt3/e;->e()I

    move-result p2

    .line 8
    invoke-virtual {p1}, Ll3/i;->e()Ll3/h;

    move-result-object v2

    invoke-virtual {v2}, Ll3/h;->a()[B

    move-result-object v2

    .line 9
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v3, p2, :cond_31

    const/4 v3, 0x1

    goto :goto_32

    :cond_31
    const/4 v3, 0x0

    .line 10
    :goto_32
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "context_id"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 12
    invoke-virtual {p1}, Ll3/i;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "transport_name"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Ll3/i;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "timestamp_ms"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 14
    invoke-virtual {p1}, Ll3/i;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "uptime_ms"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 15
    invoke-virtual {p1}, Ll3/i;->e()Ll3/h;

    move-result-object v0

    invoke-virtual {v0}, Ll3/h;->b()Lj3/b;

    move-result-object v0

    invoke-virtual {v0}, Lj3/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "payload_encoding"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Ll3/i;->d()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 17
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "num_attempts"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 18
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "inline"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz v3, :cond_93

    move-object v0, v2

    goto :goto_95

    :cond_93
    new-array v0, v4, [B

    :goto_95
    const-string v1, "payload"

    .line 19
    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v0, "events"

    const/4 v1, 0x0

    .line 20
    invoke-virtual {p3, v0, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-string v0, "event_id"

    if-nez v3, :cond_e7

    .line 21
    array-length v3, v2

    int-to-double v3, v3

    int-to-double v8, p2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    :goto_b4
    if-gt v5, v3, :cond_e7

    add-int/lit8 v4, v5, -0x1

    mul-int v4, v4, p2

    mul-int v8, v5, p2

    .line 22
    array-length v9, v2

    .line 23
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 24
    invoke-static {v2, v4, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 25
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 26
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 27
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "sequence_num"

    invoke-virtual {v8, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "bytes"

    .line 28
    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v4, "event_payloads"

    .line 29
    invoke-virtual {p3, v4, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v5, v5, 0x1

    goto :goto_b4

    .line 30
    :cond_e7
    invoke-virtual {p1}, Ll3/i;->i()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_127

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 31
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 32
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 33
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "name"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v3, "value"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "event_metadata"

    .line 35
    invoke-virtual {p3, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_f3

    .line 36
    :cond_127
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic w(Lt3/m0;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lt3/m0;->A0(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Lt3/m0;Ll3/i;Ll3/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lt3/m0;->v0(Ll3/i;Ll3/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Ljava/util/Map;Landroid/database/Cursor;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lt3/m0;->t0(Ljava/util/Map;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic y0(Landroid/database/Cursor;)[B
    .registers 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_7
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 3
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_7

    .line 6
    :cond_17
    new-array p0, v2, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 7
    :goto_1b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_30

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 9
    array-length v5, v4

    invoke-static {v4, v1, p0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_30
    return-object p0
.end method

.method public static synthetic z(Lt3/m0;Ljava/util/Map;Lo3/a$a;Landroid/database/Cursor;)Lo3/a;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lt3/m0;->m0(Ljava/util/Map;Lo3/a$a;Landroid/database/Cursor;)Lo3/a;

    move-result-object p0

    return-object p0
.end method

.method private synthetic z0(Landroid/database/Cursor;)Ljava/lang/Object;
    .registers 6

    .line 1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    .line 3
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    int-to-long v2, v0

    .line 4
    sget-object v0, Lo3/c$b;->t:Lo3/c$b;

    invoke-virtual {p0, v2, v3, v0, v1}, Lt3/m0;->e(JLo3/c$b;Ljava/lang/String;)V

    goto :goto_0

    :cond_17
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public A3(Ll3/p;Ll3/i;)Lt3/k;
    .registers 8

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Ll3/p;->d()Lj3/d;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    invoke-virtual {p2}, Ll3/i;->j()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    invoke-virtual {p1}, Ll3/p;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "SQLiteEventStore"

    const-string v2, "Storing event with priority=%s, name=%s for destination %s"

    .line 4
    invoke-static {v1, v2, v0}, Lp3/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    new-instance v0, Lt3/p;

    invoke-direct {v0, p0, p2, p1}, Lt3/p;-><init>(Lt3/m0;Ll3/i;Ll3/p;)V

    .line 6
    invoke-virtual {p0, v0}, Lt3/m0;->Q(Lt3/m0$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-gez v4, :cond_36

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_36
    invoke-static {v0, v1, p1, p2}, Lt3/k;->a(JLl3/p;Ll3/i;)Lt3/k;

    move-result-object p1

    return-object p1
.end method

.method public B1(Ll3/p;)J
    .registers 6

    .line 1
    invoke-virtual {p0}, Lt3/m0;->K()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Ll3/p;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-virtual {p1}, Ll3/p;->d()Lj3/d;

    move-result-object p1

    invoke-static {p1}, Lw3/a;->a(Lj3/d;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?"

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    sget-object v0, Lt3/u;->a:Lt3/u;

    .line 5
    invoke-static {p1, v0}, Lt3/m0;->P0(Landroid/database/Cursor;Lt3/m0$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method J()J
    .registers 5

    .line 1
    invoke-direct {p0}, Lt3/m0;->M()J

    move-result-wide v0

    invoke-direct {p0}, Lt3/m0;->N()J

    move-result-wide v2

    mul-long v0, v0, v2

    return-wide v0
.end method

.method K()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    .line 1
    iget-object v0, p0, Lt3/m0;->o:Lt3/t0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lt3/d0;

    invoke-direct {v1, v0}, Lt3/d0;-><init>(Lt3/t0;)V

    sget-object v0, Lt3/a0;->a:Lt3/a0;

    .line 3
    invoke-direct {p0, v1, v0}, Lt3/m0;->K0(Lt3/m0$d;Lt3/m0$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method Q(Lt3/m0$b;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lt3/m0$b<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lt3/m0;->K()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3
    :try_start_7
    invoke-interface {p1, v0}, Lt3/m0$b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_12

    .line 5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p1

    :catchall_12
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6
    throw p1
.end method

.method public V0(Ll3/p;)Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/p;",
            ")",
            "Ljava/lang/Iterable<",
            "Lt3/k;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lt3/q;

    invoke-direct {v0, p0, p1}, Lt3/q;-><init>(Lt3/m0;Ll3/p;)V

    invoke-virtual {p0, v0}, Lt3/m0;->Q(Lt3/m0$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    return-object p1
.end method

.method public W()I
    .registers 5

    .line 1
    iget-object v0, p0, Lt3/m0;->p:Lv3/a;

    invoke-interface {v0}, Lv3/a;->a()J

    move-result-wide v0

    iget-object v2, p0, Lt3/m0;->r:Lt3/e;

    invoke-virtual {v2}, Lt3/e;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 2
    new-instance v2, Lt3/k0;

    invoke-direct {v2, p0, v0, v1}, Lt3/k0;-><init>(Lt3/m0;J)V

    invoke-virtual {p0, v2}, Lt3/m0;->Q(Lt3/m0$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public Y0()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ll3/p;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lt3/z;->a:Lt3/z;

    invoke-virtual {p0, v0}, Lt3/m0;->Q(Lt3/m0$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public b(Lu3/b$a;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lu3/b$a<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lt3/m0;->K()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lt3/m0;->H(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3
    :try_start_7
    invoke-interface {p1}, Lu3/b$a;->execute()Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_12

    .line 5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p1

    :catchall_12
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6
    throw p1
.end method

.method public b0(Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lt3/k;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 2
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM events WHERE _id in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lt3/m0;->O0(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lt3/m0;->K()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    return-void
.end method

.method public b2(Ll3/p;)Z
    .registers 3

    .line 1
    new-instance v0, Lt3/r;

    invoke-direct {v0, p0, p1}, Lt3/r;-><init>(Lt3/m0;Ll3/p;)V

    invoke-virtual {p0, v0}, Lt3/m0;->Q(Lt3/m0$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public c()V
    .registers 2

    .line 1
    new-instance v0, Lt3/j0;

    invoke-direct {v0, p0}, Lt3/j0;-><init>(Lt3/m0;)V

    invoke-virtual {p0, v0}, Lt3/m0;->Q(Lt3/m0$b;)Ljava/lang/Object;

    return-void
.end method

.method public close()V
    .registers 2

    .line 1
    iget-object v0, p0, Lt3/m0;->o:Lt3/t0;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method

.method public d()Lo3/a;
    .registers 5

    .line 1
    invoke-static {}, Lo3/a;->e()Lo3/a$a;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v2, Lt3/m;

    const-string v3, "SELECT log_source, reason, events_dropped_count FROM log_event_dropped"

    invoke-direct {v2, p0, v3, v1, v0}, Lt3/m;-><init>(Lt3/m0;Ljava/lang/String;Ljava/util/Map;Lo3/a$a;)V

    invoke-virtual {p0, v2}, Lt3/m0;->Q(Lt3/m0$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo3/a;

    return-object v0
.end method

.method public e(JLo3/c$b;Ljava/lang/String;)V
    .registers 6

    .line 1
    new-instance v0, Lt3/f0;

    invoke-direct {v0, p4, p3, p1, p2}, Lt3/f0;-><init>(Ljava/lang/String;Lo3/c$b;J)V

    invoke-virtual {p0, v0}, Lt3/m0;->Q(Lt3/m0$b;)Ljava/lang/Object;

    return-void
.end method

.method public o0(Ll3/p;J)V
    .registers 5

    .line 1
    new-instance v0, Lt3/e0;

    invoke-direct {v0, p2, p3, p1}, Lt3/e0;-><init>(JLl3/p;)V

    invoke-virtual {p0, v0}, Lt3/m0;->Q(Lt3/m0$b;)Ljava/lang/Object;

    return-void
.end method

.method public s3(Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lt3/k;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 2
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p1}, Lt3/m0;->O0(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v0, Lt3/l0;

    const-string v1, "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name"

    invoke-direct {v0, p0, p1, v1}, Lt3/l0;-><init>(Lt3/m0;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lt3/m0;->Q(Lt3/m0$b;)Ljava/lang/Object;

    return-void
.end method

###### Class t3.m0.a (t3.m0$a)
.class synthetic Lt3/m0$a;
.super Ljava/lang/Object;
.source "SQLiteEventStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt3/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class t3.m0.b (t3.m0$b)
.class interface abstract Lt3/m0$b;
.super Ljava/lang/Object;
.source "SQLiteEventStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt3/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TU;"
        }
    .end annotation
.end method

###### Class t3.m0.c (t3.m0$c)
.class Lt3/m0$c;
.super Ljava/lang/Object;
.source "SQLiteEventStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt3/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lt3/m0$c;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lt3/m0$c;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lt3/m0$a;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lt3/m0$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class t3.m0.d (t3.m0$d)
.class interface abstract Lt3/m0$d;
.super Ljava/lang/Object;
.source "SQLiteEventStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt3/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

###### Class t3.a0 (t3.a0)
.class public final synthetic Lt3/a0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt3/m0$b;


# static fields
.field public static final synthetic a:Lt3/a0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lt3/a0;

    invoke-direct {v0}, Lt3/a0;-><init>()V

    sput-object v0, Lt3/a0;->a:Lt3/a0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lt3/m0;->f(Ljava/lang/Throwable;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    return-object p1
.end method

###### Class t3.b0 (t3.b0)
.class public final synthetic Lt3/b0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt3/m0$b;


# static fields
.field public static final synthetic a:Lt3/b0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lt3/b0;

    invoke-direct {v0}, Lt3/b0;-><init>()V

    sput-object v0, Lt3/b0;->a:Lt3/b0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lt3/m0;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class t3.c0 (t3.c0)
.class public final synthetic Lt3/c0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt3/m0$d;


# instance fields
.field public final synthetic a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public synthetic constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt3/c0;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lt3/c0;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lt3/m0;->j(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class t3.d0 (t3.d0)
.class public final synthetic Lt3/d0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt3/m0$d;


# instance fields
.field public final synthetic a:Lt3/t0;


# direct methods
.method public synthetic constructor <init>(Lt3/t0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt3/d0;->a:Lt3/t0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lt3/d0;->a:Lt3/t0;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

###### Class t3.e0 (t3.e0)
.class public final synthetic Lt3/e0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt3/m0$b;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ll3/p;


# direct methods
.method public synthetic constructor <init>(JLl3/p;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lt3/e0;->a:J

    iput-object p3, p0, Lt3/e0;->b:Ll3/p;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-wide v0, p0, Lt3/e0;->a:J

    iget-object v2, p0, Lt3/e0;->b:Ll3/p;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, p1}, Lt3/m0;->k(JLl3/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class t3.f0 (t3.f0)
.class public final synthetic Lt3/f0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt3/m0$b;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lo3/c$b;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lo3/c$b;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt3/f0;->a:Ljava/lang/String;

    iput-object p2, p0, Lt3/f0;->b:Lo3/c$b;

    iput-wide p3, p0, Lt3/f0;->c:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lt3/f0;->a:Ljava/lang/String;

    iget-object v1, p0, Lt3/f0;->b:Lo3/c$b;

    iget-wide v2, p0, Lt3/f0;->c:J

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, v3, p1}, Lt3/m0;->n(Ljava/lang/String;Lo3/c$b;JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class t3.g0 (t3.g0)
.class public final synthetic Lt3/g0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt3/m0$b;


# instance fields
.field public final synthetic a:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt3/g0;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lt3/g0;->a:Ljava/util/Map;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lt3/m0;->y(Ljava/util/Map;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class t3.h0 (t3.h0)
.class public final synthetic Lt3/h0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt3/m0$b;


# instance fields
.field public final synthetic a:Lt3/m0;


# direct methods
.method public synthetic constructor <init>(Lt3/m0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt3/h0;->a:Lt3/m0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lt3/h0;->a:Lt3/m0;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lt3/m0;->o(Lt3/m0;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class t3.i0 (t3.i0)
.class public final synthetic Lt3/i0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt3/m0$b;


# instance fields
.field public final synthetic a:Lt3/m0;


# direct methods
.method public synthetic constructor <init>(Lt3/m0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt3/i0;->a:Lt3/m0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lt3/i0;->a:Lt3/m0;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lt3/m0;->A(Lt3/m0;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class t3.j0 (t3.j0)
.class public final synthetic Lt3/j0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt3/m0$b;


# instance fields
.field public final synthetic a:Lt3/m0;


# direct methods
.method public synthetic constructor <init>(Lt3/m0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt3/j0;->a:Lt3/m0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lt3/j0;->a:Lt3/m0;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1}, Lt3/m0;->u(Lt3/m0;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class t3.k0 (t3.k0)
.class public final synthetic Lt3/k0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt3/m0$b;


# instance fields
.field public final synthetic a:Lt3/m0;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lt3/m0;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt3/k0;->a:Lt3/m0;

    iput-wide p2, p0, Lt3/k0;->b:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lt3/k0;->a:Lt3/m0;

    iget-wide v1, p0, Lt3/k0;->b:J

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, p1}, Lt3/m0;->C(Lt3/m0;JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

###### Class t3.l (t3.l)
.class public final synthetic Lt3/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt3/m0$b;


# instance fields
.field public final synthetic a:J


# direct methods
.method public synthetic constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lt3/l;->a:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-wide v0, p0, Lt3/l;->a:J

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, p1}, Lt3/m0;->h(JLandroid/database/Cursor;)Lo3/f;

    move-result-object p1

    return-object p1
.end method

###### Class t3.l0 (t3.l0)
.class public final synthetic Lt3/l0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt3/m0$b;


# instance fields
.field public final synthetic a:Lt3/m0;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lt3/m0;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt3/l0;->a:Lt3/m0;

    iput-object p2, p0, Lt3/l0;->b:Ljava/lang/String;

    iput-object p3, p0, Lt3/l0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lt3/l0;->a:Lt3/m0;

    iget-object v1, p0, Lt3/l0;->b:Ljava/lang/String;

    iget-object v2, p0, Lt3/l0;->c:Ljava/lang/String;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, p1}, Lt3/m0;->w(Lt3/m0;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class t3.m (t3.m)
.class public final synthetic Lt3/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt3/m0$b;


# instance fields
.field public final synthetic a:Lt3/m0;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Lo3/a$a;


# direct methods
.method public synthetic constructor <init>(Lt3/m0;Ljava/lang/String;Ljava/util/Map;Lo3/a$a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt3/m;->a:Lt3/m0;

    iput-object p2, p0, Lt3/m;->b:Ljava/lang/String;

    iput-object p3, p0, Lt3/m;->c:Ljava/util/Map;

    iput-object p4, p0, Lt3/m;->d:Lo3/a$a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lt3/m;->a:Lt3/m0;

    iget-object v1, p0, Lt3/m;->b:Ljava/lang/String;

    iget-object v2, p0, Lt3/m;->c:Ljava/util/Map;

    iget-object v3, p0, Lt3/m;->d:Lo3/a$a;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, v3, p1}, Lt3/m0;->s(Lt3/m0;Ljava/lang/String;Ljava/util/Map;Lo3/a$a;Landroid/database/sqlite/SQLiteDatabase;)Lo3/a;

    move-result-object p1

    return-object p1
.end method

###### Class t3.n (t3.n)
.class public final synthetic Lt3/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt3/m0$b;


# instance fields
.field public final synthetic a:Lt3/m0;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ll3/p;


# direct methods
.method public synthetic constructor <init>(Lt3/m0;Ljava/util/List;Ll3/p;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt3/n;->a:Lt3/m0;

    iput-object p2, p0, Lt3/n;->b:Ljava/util/List;

    iput-object p3, p0, Lt3/n;->c:Ll3/p;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lt3/n;->a:Lt3/m0;

    iget-object v1, p0, Lt3/n;->b:Ljava/util/List;

    iget-object v2, p0, Lt3/n;->c:Ll3/p;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, v2, p1}, Lt3/m0;->t(Lt3/m0;Ljava/util/List;Ll3/p;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class t3.o (t3.o)
.class public final synthetic Lt3/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt3/m0$b;


# instance fields
.field public final synthetic a:Lt3/m0;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lo3/a$a;


# direct methods
.method public synthetic constructor <init>(Lt3/m0;Ljava/util/Map;Lo3/a$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt3/o;->a:Lt3/m0;

    iput-object p2, p0, Lt3/o;->b:Ljava/util/Map;

    iput-object p3, p0, Lt3/o;->c:Lo3/a$a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lt3/o;->a:Lt3/m0;

    iget-object v1, p0, Lt3/o;->b:Ljava/util/Map;

    iget-object v2, p0, Lt3/o;->c:Lo3/a$a;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, v2, p1}, Lt3/m0;->z(Lt3/m0;Ljava/util/Map;Lo3/a$a;Landroid/database/Cursor;)Lo3/a;

    move-result-object p1

    return-object p1
.end method

###### Class t3.p (t3.p)
.class public final synthetic Lt3/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt3/m0$b;


# instance fields
.field public final synthetic a:Lt3/m0;

.field public final synthetic b:Ll3/i;

.field public final synthetic c:Ll3/p;


# direct methods
.method public synthetic constructor <init>(Lt3/m0;Ll3/i;Ll3/p;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt3/p;->a:Lt3/m0;

    iput-object p2, p0, Lt3/p;->b:Ll3/i;

    iput-object p3, p0, Lt3/p;->c:Ll3/p;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lt3/p;->a:Lt3/m0;

    iget-object v1, p0, Lt3/p;->b:Ll3/i;

    iget-object v2, p0, Lt3/p;->c:Ll3/p;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, p1}, Lt3/m0;->x(Lt3/m0;Ll3/i;Ll3/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

###### Class t3.q (t3.q)
.class public final synthetic Lt3/q;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt3/m0$b;


# instance fields
.field public final synthetic a:Lt3/m0;

.field public final synthetic b:Ll3/p;


# direct methods
.method public synthetic constructor <init>(Lt3/m0;Ll3/p;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt3/q;->a:Lt3/m0;

    iput-object p2, p0, Lt3/q;->b:Ll3/p;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lt3/q;->a:Lt3/m0;

    iget-object v1, p0, Lt3/q;->b:Ll3/p;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, p1}, Lt3/m0;->i(Lt3/m0;Ll3/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

###### Class t3.r (t3.r)
.class public final synthetic Lt3/r;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt3/m0$b;


# instance fields
.field public final synthetic a:Lt3/m0;

.field public final synthetic b:Ll3/p;


# direct methods
.method public synthetic constructor <init>(Lt3/m0;Ll3/p;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt3/r;->a:Lt3/m0;

    iput-object p2, p0, Lt3/r;->b:Ll3/p;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lt3/r;->a:Lt3/m0;

    iget-object v1, p0, Lt3/r;->b:Ll3/p;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, p1}, Lt3/m0;->p(Lt3/m0;Ll3/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

###### Class t3.s (t3.s)
.class public final synthetic Lt3/s;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt3/m0$b;


# static fields
.field public static final synthetic a:Lt3/s;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lt3/s;

    invoke-direct {v0}, Lt3/s;-><init>()V

    sput-object v0, Lt3/s;->a:Lt3/s;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/database/Cursor;

    invoke-static {p1}, Lt3/m0;->l(Landroid/database/Cursor;)[B

    move-result-object p1

    return-object p1
.end method

###### Class t3.t (t3.t)
.class public final synthetic Lt3/t;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt3/m0$b;


# static fields
.field public static final synthetic a:Lt3/t;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lt3/t;

    invoke-direct {v0}, Lt3/t;-><init>()V

    sput-object v0, Lt3/t;->a:Lt3/t;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/database/Cursor;

    invoke-static {p1}, Lt3/m0;->m(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

###### Class t3.u (t3.u)
.class public final synthetic Lt3/u;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt3/m0$b;


# static fields
.field public static final synthetic a:Lt3/u;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lt3/u;

    invoke-direct {v0}, Lt3/u;-><init>()V

    sput-object v0, Lt3/u;->a:Lt3/u;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/database/Cursor;

    invoke-static {p1}, Lt3/m0;->r(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

###### Class t3.v (t3.v)
.class public final synthetic Lt3/v;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt3/m0$b;


# static fields
.field public static final synthetic a:Lt3/v;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lt3/v;

    invoke-direct {v0}, Lt3/v;-><init>()V

    sput-object v0, Lt3/v;->a:Lt3/v;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/database/Cursor;

    invoke-static {p1}, Lt3/m0;->v(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

###### Class t3.w (t3.w)
.class public final synthetic Lt3/w;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt3/m0$b;


# instance fields
.field public final synthetic a:J


# direct methods
.method public synthetic constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lt3/w;->a:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-wide v0, p0, Lt3/w;->a:J

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, p1}, Lt3/m0;->q(JLandroid/database/sqlite/SQLiteDatabase;)Lo3/f;

    move-result-object p1

    return-object p1
.end method

###### Class t3.x (t3.x)
.class public final synthetic Lt3/x;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt3/m0$b;


# static fields
.field public static final synthetic a:Lt3/x;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lt3/x;

    invoke-direct {v0}, Lt3/x;-><init>()V

    sput-object v0, Lt3/x;->a:Lt3/x;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/database/Cursor;

    invoke-static {p1}, Lt3/m0;->F(Landroid/database/Cursor;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

###### Class t3.y (t3.y)
.class public final synthetic Lt3/y;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt3/m0$b;


# static fields
.field public static final synthetic a:Lt3/y;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lt3/y;

    invoke-direct {v0}, Lt3/y;-><init>()V

    sput-object v0, Lt3/y;->a:Lt3/y;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

###### Class t3.z (t3.z)
.class public final synthetic Lt3/z;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt3/m0$b;


# static fields
.field public static final synthetic a:Lt3/z;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lt3/z;

    invoke-direct {v0}, Lt3/z;-><init>()V

    sput-object v0, Lt3/z;->a:Lt3/z;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1}, Lt3/m0;->E(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
