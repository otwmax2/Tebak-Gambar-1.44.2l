###### Class com.vungle.warren.persistence.Repository (com.vungle.warren.persistence.Repository)
.class public Lcom/vungle/warren/persistence/Repository;
.super Ljava/lang/Object;
.source "Repository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/persistence/Repository$VungleDatabaseCreator;,
        Lcom/vungle/warren/persistence/Repository$SaveCallback;,
        Lcom/vungle/warren/persistence/Repository$LoadCallback;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "Repository"


# instance fields
.field protected a:Lcom/vungle/warren/persistence/DatabaseHelper;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Ljava/util/concurrent/ExecutorService;

.field private final d:Lcom/vungle/warren/persistence/Designer;

.field private final e:Landroid/content/Context;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/vungle/warren/persistence/DBAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vungle/warren/persistence/Designer;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .registers 11

    const/16 v5, 0x9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/vungle/warren/persistence/Repository;-><init>(Landroid/content/Context;Lcom/vungle/warren/persistence/Designer;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vungle/warren/persistence/Designer;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;I)V
    .registers 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/persistence/Repository;->f:Ljava/util/Map;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/persistence/Repository;->e:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/vungle/warren/persistence/Repository;->b:Ljava/util/concurrent/ExecutorService;

    .line 6
    iput-object p4, p0, Lcom/vungle/warren/persistence/Repository;->c:Ljava/util/concurrent/ExecutorService;

    .line 7
    new-instance p3, Lcom/vungle/warren/persistence/DatabaseHelper;

    new-instance p4, Lcom/vungle/warren/persistence/Repository$VungleDatabaseCreator;

    invoke-direct {p4, v0}, Lcom/vungle/warren/persistence/Repository$VungleDatabaseCreator;-><init>(Landroid/content/Context;)V

    invoke-direct {p3, p1, p5, p4}, Lcom/vungle/warren/persistence/DatabaseHelper;-><init>(Landroid/content/Context;ILcom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;)V

    iput-object p3, p0, Lcom/vungle/warren/persistence/Repository;->a:Lcom/vungle/warren/persistence/DatabaseHelper;

    .line 8
    iput-object p2, p0, Lcom/vungle/warren/persistence/Repository;->d:Lcom/vungle/warren/persistence/Designer;

    .line 9
    iget-object p1, p0, Lcom/vungle/warren/persistence/Repository;->f:Ljava/util/Map;

    const-class p2, Lcom/vungle/warren/model/Placement;

    new-instance p3, Lcom/vungle/warren/model/PlacementDBAdapter;

    invoke-direct {p3}, Lcom/vungle/warren/model/PlacementDBAdapter;-><init>()V

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p1, p0, Lcom/vungle/warren/persistence/Repository;->f:Ljava/util/Map;

    const-class p2, Lcom/vungle/warren/model/Cookie;

    new-instance p3, Lcom/vungle/warren/model/CookieDBAdapter;

    invoke-direct {p3}, Lcom/vungle/warren/model/CookieDBAdapter;-><init>()V

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Lcom/vungle/warren/persistence/Repository;->f:Ljava/util/Map;

    const-class p2, Lcom/vungle/warren/model/Report;

    new-instance p3, Lcom/vungle/warren/model/ReportDBAdapter;

    invoke-direct {p3}, Lcom/vungle/warren/model/ReportDBAdapter;-><init>()V

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p1, p0, Lcom/vungle/warren/persistence/Repository;->f:Ljava/util/Map;

    const-class p2, Lcom/vungle/warren/model/Advertisement;

    new-instance p3, Lcom/vungle/warren/model/AdvertisementDBAdapter;

    invoke-direct {p3}, Lcom/vungle/warren/model/AdvertisementDBAdapter;-><init>()V

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Lcom/vungle/warren/persistence/Repository;->f:Ljava/util/Map;

    const-class p2, Lcom/vungle/warren/model/AdAsset;

    new-instance p3, Lcom/vungle/warren/model/AdAssetDBAdapter;

    invoke-direct {p3}, Lcom/vungle/warren/model/AdAssetDBAdapter;-><init>()V

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Lcom/vungle/warren/persistence/Repository;->f:Ljava/util/Map;

    const-class p2, Lcom/vungle/warren/model/VisionData;

    new-instance p3, Lcom/vungle/warren/model/VisionDataDBAdapter;

    invoke-direct {p3}, Lcom/vungle/warren/model/VisionDataDBAdapter;-><init>()V

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p1, p0, Lcom/vungle/warren/persistence/Repository;->f:Ljava/util/Map;

    const-class p2, Lcom/vungle/warren/model/AnalyticUrl;

    new-instance p3, Lcom/vungle/warren/model/AnalyticUrlDBAdapter;

    invoke-direct {p3}, Lcom/vungle/warren/model/AnalyticUrlDBAdapter;-><init>()V

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object p1, p0, Lcom/vungle/warren/persistence/Repository;->f:Ljava/util/Map;

    const-class p2, Lcom/vungle/warren/model/CacheBust;

    new-instance p3, Lcom/vungle/warren/model/CacheBustDBAdapter;

    invoke-direct {p3}, Lcom/vungle/warren/model/CacheBustDBAdapter;-><init>()V

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private A(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vungle/warren/persistence/DBAdapter;

    .line 2
    new-instance v0, Lcom/vungle/warren/persistence/Query;

    invoke-interface {p2}, Lcom/vungle/warren/persistence/DBAdapter;->tableName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    const-string v1, "item_id = ? "

    .line 3
    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->c:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 4
    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->d:[Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/vungle/warren/persistence/Repository;->a:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {p1, v0}, Lcom/vungle/warren/persistence/DatabaseHelper;->query(Lcom/vungle/warren/persistence/Query;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_44

    .line 6
    :try_start_25
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 7
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 8
    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 9
    invoke-interface {p2, v0}, Lcom/vungle/warren/persistence/DBAdapter;->fromContentValues(Landroid/content/ContentValues;)Ljava/lang/Object;

    move-result-object p2
    :try_end_37
    .catchall {:try_start_25 .. :try_end_37} :catchall_3f

    .line 10
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :cond_3b
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_44

    :catchall_3f
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 11
    throw p2

    :cond_44
    :goto_44
    const/4 p1, 0x0

    return-object p1
.end method

.method private B()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/vungle/warren/persistence/Query;

    const-string v1, "placement"

    invoke-direct {v0, v1}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    const-string v1, "is_valid = ?"

    .line 2
    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->c:Ljava/lang/String;

    const-string v1, "1"

    .line 3
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->d:[Ljava/lang/String;

    const-string v1, "item_id"

    .line 4
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/warren/persistence/Query;->b:[Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcom/vungle/warren/persistence/Repository;->a:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v2, v0}, Lcom/vungle/warren/persistence/DatabaseHelper;->query(Lcom/vungle/warren/persistence/Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_43

    .line 7
    :goto_28
    :try_start_28
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 8
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catchall {:try_start_28 .. :try_end_39} :catchall_3e

    goto :goto_28

    .line 9
    :cond_3a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_43

    :catchall_3e
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 10
    throw v1

    :cond_43
    :goto_43
    return-object v2
.end method

.method private C(Ljava/util/concurrent/Callable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_9} :catch_1a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_2a

    :catch_a
    move-exception p1

    .line 2
    sget-object v0, Lcom/vungle/warren/persistence/Repository;->g:Ljava/lang/String;

    const-string v1, "InterruptedException "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2a

    :catch_1a
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/vungle/warren/persistence/DatabaseHelper$DBException;

    if-nez v0, :cond_2b

    .line 5
    sget-object v0, Lcom/vungle/warren/persistence/Repository;->g:Ljava/lang/String;

    const-string v1, "Exception during runAndWait"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2a
    return-void

    .line 6
    :cond_2b
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/persistence/DatabaseHelper$DBException;

    throw p1
.end method

.method private D(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->f:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/persistence/DBAdapter;

    .line 2
    invoke-interface {v0, p1}, Lcom/vungle/warren/persistence/DBAdapter;->toContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->a:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-interface {v0}, Lcom/vungle/warren/persistence/DBAdapter;->tableName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v1, v0, p1, v2}, Lcom/vungle/warren/persistence/DatabaseHelper;->insertWithConflict(Ljava/lang/String;Landroid/content/ContentValues;I)J

    return-void
.end method

.method static synthetic a(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/persistence/Repository;->A(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/vungle/warren/persistence/Repository;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/persistence/Repository;->c:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic c(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/persistence/Repository;->q(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/vungle/warren/persistence/Repository;)Lcom/vungle/warren/persistence/Designer;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/persistence/Repository;->d:Lcom/vungle/warren/persistence/Designer;

    return-object p0
.end method

.method static synthetic e(Lcom/vungle/warren/persistence/Repository;)Ljava/util/List;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/persistence/Repository;->B()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/warren/persistence/Repository;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)Ljava/util/List;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/persistence/Repository;->x(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/persistence/Repository;->s(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/persistence/Repository;->D(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic j(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/warren/model/Advertisement;
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/persistence/Repository;->v(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/warren/model/Advertisement;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lcom/vungle/warren/persistence/Repository;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/persistence/Repository;->f:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic l(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/persistence/Repository;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Class;)Ljava/util/List;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/persistence/Repository;->z(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Class;Landroid/database/Cursor;)Ljava/util/List;
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/persistence/Repository;->u(Ljava/lang/Class;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)Ljava/util/List;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/persistence/Repository;->y(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic p(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/persistence/Repository;->t(Ljava/lang/Object;)V

    return-void
.end method

.method private q(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-direct {p0, p1}, Lcom/vungle/warren/persistence/Repository;->r(Ljava/lang/String;)V

    .line 3
    const-class v0, Lcom/vungle/warren/model/Advertisement;

    invoke-direct {p0, v0, p1}, Lcom/vungle/warren/persistence/Repository;->s(Ljava/lang/Class;Ljava/lang/String;)V

    .line 4
    :try_start_f
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->d:Lcom/vungle/warren/persistence/Designer;

    invoke-interface {v0, p1}, Lcom/vungle/warren/persistence/Designer;->deleteAssets(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception p1

    .line 5
    sget-object v0, Lcom/vungle/warren/persistence/Repository;->g:Ljava/lang/String;

    const-string v1, "IOException "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    return-void
.end method

.method private r(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->f:Ljava/util/Map;

    const-class v1, Lcom/vungle/warren/model/AdAsset;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/persistence/DBAdapter;

    .line 2
    new-instance v1, Lcom/vungle/warren/persistence/Query;

    invoke-interface {v0}, Lcom/vungle/warren/persistence/DBAdapter;->tableName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    const-string v0, "ad_identifier=?"

    .line 3
    iput-object v0, v1, Lcom/vungle/warren/persistence/Query;->c:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 4
    iput-object v0, v1, Lcom/vungle/warren/persistence/Query;->d:[Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/vungle/warren/persistence/Repository;->a:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {p1, v1}, Lcom/vungle/warren/persistence/DatabaseHelper;->delete(Lcom/vungle/warren/persistence/Query;)V

    return-void
.end method

.method private s(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/persistence/DBAdapter;

    .line 2
    new-instance v0, Lcom/vungle/warren/persistence/Query;

    invoke-interface {p1}, Lcom/vungle/warren/persistence/DBAdapter;->tableName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    const-string p1, "item_id=?"

    .line 3
    iput-object p1, v0, Lcom/vungle/warren/persistence/Query;->c:Ljava/lang/String;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, p1, v1

    .line 4
    iput-object p1, v0, Lcom/vungle/warren/persistence/Query;->d:[Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/vungle/warren/persistence/Repository;->a:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {p1, v0}, Lcom/vungle/warren/persistence/DatabaseHelper;->delete(Lcom/vungle/warren/persistence/Query;)V

    return-void
.end method

.method private t(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->f:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/persistence/DBAdapter;

    .line 2
    invoke-interface {v0, p1}, Lcom/vungle/warren/persistence/DBAdapter;->toContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "item_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/persistence/Repository;->s(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method private u(Ljava/lang/Class;Landroid/database/Cursor;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p2, :cond_35

    .line 1
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_35

    .line 2
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :try_start_e
    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/persistence/DBAdapter;

    .line 4
    :goto_16
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 5
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 6
    invoke-static {p2, v1}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 7
    invoke-interface {p1, v1}, Lcom/vungle/warren/persistence/DBAdapter;->fromContentValues(Landroid/content/ContentValues;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_30

    goto :goto_16

    .line 8
    :cond_2c
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_30
    move-exception p1

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 9
    throw p1

    .line 10
    :cond_35
    :goto_35
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private v(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/warren/model/Advertisement;
    .registers 13

    .line 1
    sget-object v0, Lcom/vungle/warren/persistence/Repository;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Searching for valid advertisement for placement with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "event ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcom/vungle/warren/persistence/Query;

    const-string v1, "advertisement"

    invoke-direct {v0, v1}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placement_id = ? AND "

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(state = ? OR "

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "state = ?) AND "

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "expire_time > ?"

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz p2, :cond_6b

    const-string v9, " AND item_id = ?"

    .line 8
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/String;

    aput-object p1, v9, v8

    .line 9
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v9, v7

    .line 10
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v9, v5

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v9, v4

    aput-object p2, v9, v6

    goto :goto_86

    :cond_6b
    new-array v9, v6, [Ljava/lang/String;

    aput-object p1, v9, v8

    .line 12
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v9, v7

    .line 13
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v9, v5

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    div-long/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v9, v4

    .line 15
    :goto_86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/vungle/warren/persistence/Query;->c:Ljava/lang/String;

    .line 16
    iput-object v9, v0, Lcom/vungle/warren/persistence/Query;->d:[Ljava/lang/String;

    const-string p1, "1"

    .line 17
    iput-object p1, v0, Lcom/vungle/warren/persistence/Query;->h:Ljava/lang/String;

    .line 18
    iget-object p1, p0, Lcom/vungle/warren/persistence/Repository;->a:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {p1, v0}, Lcom/vungle/warren/persistence/DatabaseHelper;->query(Lcom/vungle/warren/persistence/Query;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    .line 19
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->f:Ljava/util/Map;

    const-class v1, Lcom/vungle/warren/model/Advertisement;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/AdvertisementDBAdapter;

    if-eqz p1, :cond_b9

    if-eqz v0, :cond_b9

    .line 20
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 21
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 22
    invoke-static {p1, p2}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 23
    invoke-virtual {v0, p2}, Lcom/vungle/warren/model/AdvertisementDBAdapter;->fromContentValues(Landroid/content/ContentValues;)Lcom/vungle/warren/model/Advertisement;

    move-result-object p2

    :cond_b9
    if-eqz p1, :cond_be

    .line 24
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_be
    return-object p2
.end method

.method private w(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/Advertisement;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/warren/persistence/Repository;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Searching for valid advertisement for placement with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "event ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcom/vungle/warren/persistence/Query;

    const-string v1, "advertisement"

    invoke-direct {v0, v1}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placement_id = ? AND "

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(state = ? OR "

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "state = ?) AND "

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "expire_time > ?"

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz p2, :cond_6b

    const-string v9, " AND item_id = ?"

    .line 8
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/String;

    aput-object p1, v9, v8

    .line 9
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v9, v7

    .line 10
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v9, v5

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v9, v4

    aput-object p2, v9, v6

    goto :goto_86

    :cond_6b
    new-array v9, v6, [Ljava/lang/String;

    aput-object p1, v9, v8

    .line 12
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v9, v7

    .line 13
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v9, v5

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    div-long/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v9, v4

    .line 15
    :goto_86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/vungle/warren/persistence/Query;->c:Ljava/lang/String;

    .line 16
    iput-object v9, v0, Lcom/vungle/warren/persistence/Query;->d:[Ljava/lang/String;

    const-string p1, "state DESC"

    .line 17
    iput-object p1, v0, Lcom/vungle/warren/persistence/Query;->g:Ljava/lang/String;

    .line 18
    iget-object p1, p0, Lcom/vungle/warren/persistence/Repository;->a:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {p1, v0}, Lcom/vungle/warren/persistence/DatabaseHelper;->query(Lcom/vungle/warren/persistence/Query;)Landroid/database/Cursor;

    move-result-object p1

    .line 19
    iget-object p2, p0, Lcom/vungle/warren/persistence/Repository;->f:Ljava/util/Map;

    const-class v0, Lcom/vungle/warren/model/Advertisement;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vungle/warren/model/AdvertisementDBAdapter;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_a7
    if-eqz p1, :cond_c1

    if-eqz p2, :cond_c1

    .line 21
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 22
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 23
    invoke-static {p1, v1}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 24
    invoke-virtual {p2, v1}, Lcom/vungle/warren/model/AdvertisementDBAdapter;->fromContentValues(Landroid/content/ContentValues;)Lcom/vungle/warren/model/Advertisement;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a7

    :cond_c1
    if-eqz p1, :cond_c6

    .line 25
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_c6
    return-object v0
.end method

.method private x(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/vungle/warren/persistence/Query;

    const-string v1, "advertisement"

    invoke-direct {v0, v1}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    const-string v1, "item_id"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/warren/persistence/Query;->b:[Ljava/lang/String;

    const-string v2, "placement_id=?"

    .line 3
    iput-object v2, v0, Lcom/vungle/warren/persistence/Query;->c:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 4
    iput-object v2, v0, Lcom/vungle/warren/persistence/Query;->d:[Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/vungle/warren/persistence/Repository;->a:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {p1, v0}, Lcom/vungle/warren/persistence/DatabaseHelper;->query(Lcom/vungle/warren/persistence/Query;)Landroid/database/Cursor;

    move-result-object p1

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_26
    if-eqz p1, :cond_3a

    .line 7
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 8
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_3a
    if-eqz p1, :cond_3f

    .line 9
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3f
    return-object v0
.end method

.method private y(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/AdAsset;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/vungle/warren/persistence/Query;

    const-string v1, "adAsset"

    invoke-direct {v0, v1}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    const-string v1, "ad_identifier = ? "

    .line 2
    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->c:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 3
    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->d:[Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/vungle/warren/persistence/Repository;->a:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {p1, v0}, Lcom/vungle/warren/persistence/DatabaseHelper;->query(Lcom/vungle/warren/persistence/Query;)Landroid/database/Cursor;

    move-result-object p1

    .line 5
    const-class v0, Lcom/vungle/warren/model/AdAsset;

    invoke-direct {p0, v0, p1}, Lcom/vungle/warren/persistence/Repository;->u(Ljava/lang/Class;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private z(Ljava/lang/Class;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/persistence/DBAdapter;

    if-nez v0, :cond_d

    .line 2
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 3
    :cond_d
    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->a:Lcom/vungle/warren/persistence/DatabaseHelper;

    new-instance v2, Lcom/vungle/warren/persistence/Query;

    invoke-interface {v0}, Lcom/vungle/warren/persistence/DBAdapter;->tableName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/vungle/warren/persistence/DatabaseHelper;->query(Lcom/vungle/warren/persistence/Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/persistence/Repository;->u(Ljava/lang/Class;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public clearAllData()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->a:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/DatabaseHelper;->dropDb()V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->d:Lcom/vungle/warren/persistence/Designer;

    invoke-interface {v0}, Lcom/vungle/warren/persistence/Designer;->clearCache()V

    return-void
.end method

.method public close()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->a:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method

.method public delete(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/vungle/warren/persistence/Repository$14;

    invoke-direct {v0, p0, p1}, Lcom/vungle/warren/persistence/Repository$14;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/vungle/warren/persistence/Repository;->C(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public deleteAdvertisement(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/vungle/warren/persistence/Repository$15;

    invoke-direct {v0, p0, p1}, Lcom/vungle/warren/persistence/Repository$15;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/vungle/warren/persistence/Repository;->C(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public findAdsForPlacement(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/vungle/warren/persistence/FutureResult<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$21;

    invoke-direct {v2, p0, p1}, Lcom/vungle/warren/persistence/Repository$21;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public findPotentiallyExpiredAd(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vungle/warren/persistence/FutureResult<",
            "Lcom/vungle/warren/model/Advertisement;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/warren/persistence/Repository;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Searching for valid advertisement for placement with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "event ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$7;

    invoke-direct {v2, p0, p2, p1}, Lcom/vungle/warren/persistence/Repository$7;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public findValidAdvertisementForPlacement(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vungle/warren/persistence/FutureResult<",
            "Lcom/vungle/warren/model/Advertisement;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$6;

    invoke-direct {v2, p0, p1, p2}, Lcom/vungle/warren/persistence/Repository$6;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public findValidAdvertisementsForPlacement(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vungle/warren/persistence/FutureResult<",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/Advertisement;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$8;

    invoke-direct {v2, p0, p1, p2}, Lcom/vungle/warren/persistence/Repository$8;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public getAdsByCampaign(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/Advertisement;",
            ">;"
        }
    .end annotation

    .line 8
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vungle/warren/persistence/Repository;->getAdsByCampaign(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAdsByCampaign(Ljava/util/Collection;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/Advertisement;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 3
    const-class v1, Lcom/vungle/warren/model/Advertisement;

    invoke-direct {p0, v1}, Lcom/vungle/warren/persistence/Repository;->z(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/model/Advertisement;

    .line 5
    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getCampaignId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 6
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 7
    :cond_2e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAdsByCreative(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/Advertisement;",
            ">;"
        }
    .end annotation

    .line 8
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vungle/warren/persistence/Repository;->getAdsByCreative(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAdsByCreative(Ljava/util/Collection;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/Advertisement;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 3
    const-class v1, Lcom/vungle/warren/model/Advertisement;

    invoke-direct {p0, v1}, Lcom/vungle/warren/persistence/Repository;->z(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/model/Advertisement;

    .line 5
    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getCreativeId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 6
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 7
    :cond_2e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAdvertisementAssetDirectory(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/vungle/warren/persistence/FutureResult<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$17;

    invoke-direct {v2, p0, p1}, Lcom/vungle/warren/persistence/Repository$17;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public getAvailableBidTokens(II)Lcom/vungle/warren/persistence/FutureResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/vungle/warren/persistence/FutureResult<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$19;

    invoke-direct {v2, p0, p1, p2}, Lcom/vungle/warren/persistence/Repository$19;-><init>(Lcom/vungle/warren/persistence/Repository;II)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public getPlacementIdByAd(Lcom/vungle/warren/model/Advertisement;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUnProcessedBusts()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/CacheBust;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/vungle/warren/model/CacheBust;

    invoke-direct {p0, v0}, Lcom/vungle/warren/persistence/Repository;->z(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/model/CacheBust;

    .line 4
    invoke-virtual {v2}, Lcom/vungle/warren/model/CacheBust;->getTimestampProcessed()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_f

    .line 5
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_29
    return-object v1
.end method

.method public getValidPlacementIds()Lcom/vungle/warren/persistence/FutureResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/warren/persistence/FutureResult<",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$18;

    invoke-direct {v2, p0}, Lcom/vungle/warren/persistence/Repository$18;-><init>(Lcom/vungle/warren/persistence/Repository;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public getVisionAggregationData(JILjava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            ")",
            "Lcom/vungle/warren/persistence/FutureResult<",
            "Ljava/util/List<",
            "Lcom/vungle/warren/vision/VisionAggregationData;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/vungle/warren/persistence/Repository$25;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p4

    move v5, p3

    move-wide v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/vungle/warren/persistence/Repository$25;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;IJ)V

    invoke-interface {v1, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public getVisionAggregationInfo(J)Lcom/vungle/warren/persistence/FutureResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/vungle/warren/persistence/FutureResult<",
            "Lcom/vungle/warren/vision/VisionAggregationInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$24;

    invoke-direct {v2, p0, p1, p2}, Lcom/vungle/warren/persistence/Repository$24;-><init>(Lcom/vungle/warren/persistence/Repository;J)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public init()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/vungle/warren/persistence/Repository$1;

    invoke-direct {v0, p0}, Lcom/vungle/warren/persistence/Repository$1;-><init>(Lcom/vungle/warren/persistence/Repository;)V

    invoke-direct {p0, v0}, Lcom/vungle/warren/persistence/Repository;->C(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/vungle/warren/persistence/FutureResult<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/vungle/warren/persistence/Repository$2;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public load(Ljava/lang/String;Ljava/lang/Class;Lcom/vungle/warren/persistence/Repository$LoadCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/vungle/warren/persistence/Repository$LoadCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/persistence/Repository$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/vungle/warren/persistence/Repository$3;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/Class;Lcom/vungle/warren/persistence/Repository$LoadCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadAll(Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/vungle/warren/persistence/FutureResult<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$9;

    invoke-direct {v2, p0, p1}, Lcom/vungle/warren/persistence/Repository$9;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Class;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public loadAllAdAssets(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/vungle/warren/persistence/FutureResult<",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/AdAsset;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$13;

    invoke-direct {v2, p0, p1}, Lcom/vungle/warren/persistence/Repository$13;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public loadAllReportToSend()Lcom/vungle/warren/persistence/FutureResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/warren/persistence/FutureResult<",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/Report;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$10;

    invoke-direct {v2, p0}, Lcom/vungle/warren/persistence/Repository$10;-><init>(Lcom/vungle/warren/persistence/Repository;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public loadReadyOrFailedReportToSend()Lcom/vungle/warren/persistence/FutureResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/warren/persistence/FutureResult<",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/Report;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$11;

    invoke-direct {v2, p0}, Lcom/vungle/warren/persistence/Repository$11;-><init>(Lcom/vungle/warren/persistence/Repository;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public loadValidPlacements()Lcom/vungle/warren/persistence/FutureResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/warren/persistence/FutureResult<",
            "Ljava/util/Collection<",
            "Lcom/vungle/warren/model/Placement;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/vungle/warren/persistence/FutureResult;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vungle/warren/persistence/Repository$16;

    invoke-direct {v2, p0}, Lcom/vungle/warren/persistence/Repository$16;-><init>(Lcom/vungle/warren/persistence/Repository;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public save(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/vungle/warren/persistence/Repository$4;

    invoke-direct {v0, p0, p1}, Lcom/vungle/warren/persistence/Repository$4;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/vungle/warren/persistence/Repository;->C(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/vungle/warren/persistence/Repository$SaveCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, p1, p2, v0}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;Z)V

    return-void
.end method

.method public save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/vungle/warren/persistence/Repository$SaveCallback;",
            "Z)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/persistence/Repository$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/vungle/warren/persistence/Repository$5;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-eqz p3, :cond_29

    .line 3
    :try_start_d
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_1a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_29

    :catch_11
    move-exception p1

    .line 4
    sget-object p2, Lcom/vungle/warren/persistence/Repository;->g:Ljava/lang/String;

    const-string p3, "Error on execution during saving"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    :catch_1a
    move-exception p1

    .line 5
    sget-object p2, Lcom/vungle/warren/persistence/Repository;->g:Ljava/lang/String;

    const-string p3, "InterruptedException "

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_29
    :goto_29
    return-void
.end method

.method public saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    .registers 5
    .param p3    # I
        .annotation build Lcom/vungle/warren/model/Advertisement$State;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/vungle/warren/persistence/Repository$22;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/vungle/warren/persistence/Repository$22;-><init>(Lcom/vungle/warren/persistence/Repository;ILcom/vungle/warren/model/Advertisement;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/vungle/warren/persistence/Repository;->C(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public setMockDBHelper(Lcom/vungle/warren/persistence/DatabaseHelper;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository;->a:Lcom/vungle/warren/persistence/DatabaseHelper;

    return-void
.end method

.method public setValidPlacements(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/Placement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/vungle/warren/persistence/Repository$20;

    invoke-direct {v0, p0, p1}, Lcom/vungle/warren/persistence/Repository$20;-><init>(Lcom/vungle/warren/persistence/Repository;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/vungle/warren/persistence/Repository;->C(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public trimVisionData(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/vungle/warren/persistence/Repository$23;

    invoke-direct {v0, p0, p1}, Lcom/vungle/warren/persistence/Repository$23;-><init>(Lcom/vungle/warren/persistence/Repository;I)V

    invoke-direct {p0, v0}, Lcom/vungle/warren/persistence/Repository;->C(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public updateAndSaveReportState(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/vungle/warren/persistence/Repository$12;

    move-object v0, v6

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vungle/warren/persistence/Repository$12;-><init>(Lcom/vungle/warren/persistence/Repository;ILjava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/vungle/warren/persistence/Repository;->C(Ljava/util/concurrent/Callable;)V

    return-void
.end method

###### Class com.vungle.warren.persistence.Repository.AnonymousClass1 (com.vungle.warren.persistence.Repository$1)
.class Lcom/vungle/warren/persistence/Repository$1;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$1;->a:Lcom/vungle/warren/persistence/Repository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/Repository$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$1;->a:Lcom/vungle/warren/persistence/Repository;

    iget-object v0, v0, Lcom/vungle/warren/persistence/Repository;->a:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/DatabaseHelper;->init()V

    .line 3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x3

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5
    new-instance v1, Lcom/vungle/warren/persistence/Query;

    const-string v2, "advertisement"

    invoke-direct {v1, v2}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    const-string v2, "state=?"

    .line 6
    iput-object v2, v1, Lcom/vungle/warren/persistence/Query;->c:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x2

    .line 7
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iput-object v2, v1, Lcom/vungle/warren/persistence/Query;->d:[Ljava/lang/String;

    .line 8
    iget-object v2, p0, Lcom/vungle/warren/persistence/Repository$1;->a:Lcom/vungle/warren/persistence/Repository;

    iget-object v2, v2, Lcom/vungle/warren/persistence/Repository;->a:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v2, v1, v0}, Lcom/vungle/warren/persistence/DatabaseHelper;->update(Lcom/vungle/warren/persistence/Query;Landroid/content/ContentValues;)J

    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.vungle.warren.persistence.Repository.AnonymousClass10 (com.vungle.warren.persistence.Repository$10)
.class Lcom/vungle/warren/persistence/Repository$10;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->loadAllReportToSend()Lcom/vungle/warren/persistence/FutureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/vungle/warren/model/Report;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$10;->a:Lcom/vungle/warren/persistence/Repository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/Repository$10;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/Report;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$10;->a:Lcom/vungle/warren/persistence/Repository;

    const-class v1, Lcom/vungle/warren/model/Report;

    invoke-static {v0, v1}, Lcom/vungle/warren/persistence/Repository;->m(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/model/Report;

    const/4 v3, 0x2

    .line 4
    invoke-virtual {v2, v3}, Lcom/vungle/warren/model/Report;->setStatus(I)V

    .line 5
    :try_start_1c
    iget-object v3, p0, Lcom/vungle/warren/persistence/Repository$10;->a:Lcom/vungle/warren/persistence/Repository;

    invoke-static {v3, v2}, Lcom/vungle/warren/persistence/Repository;->i(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V
    :try_end_21
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_1c .. :try_end_21} :catch_22

    goto :goto_c

    :catch_22
    const/4 v0, 0x0

    :cond_23
    return-object v0
.end method

###### Class com.vungle.warren.persistence.Repository.AnonymousClass11 (com.vungle.warren.persistence.Repository$11)
.class Lcom/vungle/warren/persistence/Repository$11;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->loadReadyOrFailedReportToSend()Lcom/vungle/warren/persistence/FutureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/vungle/warren/model/Report;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$11;->a:Lcom/vungle/warren/persistence/Repository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/Repository$11;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/Report;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/vungle/warren/persistence/Query;

    const-string v1, "report"

    invoke-direct {v0, v1}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    const-string v1, "status = ?  OR status = ? "

    .line 3
    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->c:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x1

    .line 4
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iput-object v2, v0, Lcom/vungle/warren/persistence/Query;->d:[Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcom/vungle/warren/persistence/Repository$11;->a:Lcom/vungle/warren/persistence/Repository;

    iget-object v2, v2, Lcom/vungle/warren/persistence/Repository;->a:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v2, v0}, Lcom/vungle/warren/persistence/DatabaseHelper;->query(Lcom/vungle/warren/persistence/Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcom/vungle/warren/persistence/Repository$11;->a:Lcom/vungle/warren/persistence/Repository;

    const-class v3, Lcom/vungle/warren/model/Report;

    invoke-static {v2, v3, v0}, Lcom/vungle/warren/persistence/Repository;->n(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Class;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/model/Report;

    .line 8
    invoke-virtual {v3, v1}, Lcom/vungle/warren/model/Report;->setStatus(I)V

    .line 9
    :try_start_42
    iget-object v4, p0, Lcom/vungle/warren/persistence/Repository$11;->a:Lcom/vungle/warren/persistence/Repository;

    invoke-static {v4, v3}, Lcom/vungle/warren/persistence/Repository;->i(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V
    :try_end_47
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_42 .. :try_end_47} :catch_48

    goto :goto_33

    :catch_48
    const/4 v0, 0x0

    :cond_49
    return-object v0
.end method

###### Class com.vungle.warren.persistence.Repository.AnonymousClass12 (com.vungle.warren.persistence.Repository$12)
.class Lcom/vungle/warren/persistence/Repository$12;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->updateAndSaveReportState(Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;ILjava/lang/String;ILjava/lang/String;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$12;->e:Lcom/vungle/warren/persistence/Repository;

    iput p2, p0, Lcom/vungle/warren/persistence/Repository$12;->a:I

    iput-object p3, p0, Lcom/vungle/warren/persistence/Repository$12;->b:Ljava/lang/String;

    iput p4, p0, Lcom/vungle/warren/persistence/Repository$12;->c:I

    iput-object p5, p0, Lcom/vungle/warren/persistence/Repository$12;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/Repository$12;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3
    iget v1, p0, Lcom/vungle/warren/persistence/Repository$12;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4
    new-instance v1, Lcom/vungle/warren/persistence/Query;

    const-string v2, "report"

    invoke-direct {v1, v2}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    const-string v2, "placementId = ?  AND status = ?  AND appId = ? "

    .line 5
    iput-object v2, v1, Lcom/vungle/warren/persistence/Query;->c:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lcom/vungle/warren/persistence/Repository$12;->b:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/vungle/warren/persistence/Repository$12;->c:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/vungle/warren/persistence/Repository$12;->d:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iput-object v2, v1, Lcom/vungle/warren/persistence/Query;->d:[Ljava/lang/String;

    .line 7
    iget-object v2, p0, Lcom/vungle/warren/persistence/Repository$12;->e:Lcom/vungle/warren/persistence/Repository;

    iget-object v2, v2, Lcom/vungle/warren/persistence/Repository;->a:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v2, v1, v0}, Lcom/vungle/warren/persistence/DatabaseHelper;->update(Lcom/vungle/warren/persistence/Query;Landroid/content/ContentValues;)J

    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.vungle.warren.persistence.Repository.AnonymousClass13 (com.vungle.warren.persistence.Repository$13)
.class Lcom/vungle/warren/persistence/Repository$13;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->loadAllAdAssets(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/vungle/warren/model/AdAsset;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$13;->b:Lcom/vungle/warren/persistence/Repository;

    iput-object p2, p0, Lcom/vungle/warren/persistence/Repository$13;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/Repository$13;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/AdAsset;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$13;->b:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$13;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vungle/warren/persistence/Repository;->o(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.persistence.Repository.AnonymousClass14 (com.vungle.warren.persistence.Repository$14)
.class Lcom/vungle/warren/persistence/Repository$14;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->delete(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$14;->b:Lcom/vungle/warren/persistence/Repository;

    iput-object p2, p0, Lcom/vungle/warren/persistence/Repository$14;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/Repository$14;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$14;->b:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$14;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/vungle/warren/persistence/Repository;->p(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.vungle.warren.persistence.Repository.AnonymousClass15 (com.vungle.warren.persistence.Repository$15)
.class Lcom/vungle/warren/persistence/Repository$15;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->deleteAdvertisement(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$15;->b:Lcom/vungle/warren/persistence/Repository;

    iput-object p2, p0, Lcom/vungle/warren/persistence/Repository$15;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/Repository$15;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$15;->b:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$15;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vungle/warren/persistence/Repository;->c(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.vungle.warren.persistence.Repository.AnonymousClass16 (com.vungle.warren.persistence.Repository$16)
.class Lcom/vungle/warren/persistence/Repository$16;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->loadValidPlacements()Lcom/vungle/warren/persistence/FutureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/Collection<",
        "Lcom/vungle/warren/model/Placement;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$16;->a:Lcom/vungle/warren/persistence/Repository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/Repository$16;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/Placement;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$16;->a:Lcom/vungle/warren/persistence/Repository;

    monitor-enter v0

    .line 3
    :try_start_3
    new-instance v1, Lcom/vungle/warren/persistence/Query;

    const-string v2, "placement"

    invoke-direct {v1, v2}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    const-string v2, "is_valid = ?"

    .line 4
    iput-object v2, v1, Lcom/vungle/warren/persistence/Query;->c:Ljava/lang/String;

    const-string v2, "1"

    .line 5
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vungle/warren/persistence/Query;->d:[Ljava/lang/String;

    .line 6
    iget-object v2, p0, Lcom/vungle/warren/persistence/Repository$16;->a:Lcom/vungle/warren/persistence/Repository;

    iget-object v2, v2, Lcom/vungle/warren/persistence/Repository;->a:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v2, v1}, Lcom/vungle/warren/persistence/DatabaseHelper;->query(Lcom/vungle/warren/persistence/Query;)Landroid/database/Cursor;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/vungle/warren/persistence/Repository$16;->a:Lcom/vungle/warren/persistence/Repository;

    const-class v3, Lcom/vungle/warren/model/Placement;

    invoke-static {v2, v3, v1}, Lcom/vungle/warren/persistence/Repository;->n(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Class;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_28
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

###### Class com.vungle.warren.persistence.Repository.AnonymousClass17 (com.vungle.warren.persistence.Repository$17)
.class Lcom/vungle/warren/persistence/Repository$17;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->getAdvertisementAssetDirectory(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$17;->b:Lcom/vungle/warren/persistence/Repository;

    iput-object p2, p0, Lcom/vungle/warren/persistence/Repository$17;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/io/File;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$17;->b:Lcom/vungle/warren/persistence/Repository;

    invoke-static {v0}, Lcom/vungle/warren/persistence/Repository;->d(Lcom/vungle/warren/persistence/Repository;)Lcom/vungle/warren/persistence/Designer;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$17;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/vungle/warren/persistence/Designer;->getAssetDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/Repository$17;->call()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.persistence.Repository.AnonymousClass18 (com.vungle.warren.persistence.Repository$18)
.class Lcom/vungle/warren/persistence/Repository$18;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->getValidPlacementIds()Lcom/vungle/warren/persistence/FutureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/Collection<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$18;->a:Lcom/vungle/warren/persistence/Repository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/Repository$18;->call()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$18;->a:Lcom/vungle/warren/persistence/Repository;

    monitor-enter v0

    .line 3
    :try_start_3
    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$18;->a:Lcom/vungle/warren/persistence/Repository;

    invoke-static {v1}, Lcom/vungle/warren/persistence/Repository;->e(Lcom/vungle/warren/persistence/Repository;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

###### Class com.vungle.warren.persistence.Repository.AnonymousClass19 (com.vungle.warren.persistence.Repository$19)
.class Lcom/vungle/warren/persistence/Repository$19;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->getAvailableBidTokens(II)Lcom/vungle/warren/persistence/FutureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;II)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$19;->c:Lcom/vungle/warren/persistence/Repository;

    iput p2, p0, Lcom/vungle/warren/persistence/Repository$19;->a:I

    iput p3, p0, Lcom/vungle/warren/persistence/Repository$19;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/Repository$19;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$19;->c:Lcom/vungle/warren/persistence/Repository;

    monitor-enter v0

    .line 3
    :try_start_3
    new-instance v1, Lcom/vungle/warren/persistence/Query;

    const-string v2, "advertisement"

    invoke-direct {v1, v2}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    const-string v2, "bid_token != \'\' AND ( state = ? OR state = ? ) AND expire_time > ?"

    .line 4
    iput-object v2, v1, Lcom/vungle/warren/persistence/Query;->c:Ljava/lang/String;

    const-string v2, "bid_token"

    .line 5
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vungle/warren/persistence/Query;->b:[Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 6
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v4, 0x1

    .line 7
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    iput-object v2, v1, Lcom/vungle/warren/persistence/Query;->d:[Ljava/lang/String;

    .line 9
    iget-object v2, p0, Lcom/vungle/warren/persistence/Repository$19;->c:Lcom/vungle/warren/persistence/Repository;

    iget-object v2, v2, Lcom/vungle/warren/persistence/Repository;->a:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v2, v1}, Lcom/vungle/warren/persistence/DatabaseHelper;->query(Lcom/vungle/warren/persistence/Query;)Landroid/database/Cursor;

    move-result-object v1

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_7c

    if-eqz v1, :cond_7a

    .line 11
    :cond_46
    :goto_46
    :try_start_46
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_71

    iget v4, p0, Lcom/vungle/warren/persistence/Repository$19;->a:I

    if-ge v3, v4, :cond_71

    const-string v4, "bid_token"

    .line 12
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 13
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v5, v3

    iget v6, p0, Lcom/vungle/warren/persistence/Repository$19;->a:I

    if-gt v5, v6, :cond_46

    .line 15
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    iget v6, p0, Lcom/vungle/warren/persistence/Repository$19;->b:I

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 16
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_70
    .catchall {:try_start_46 .. :try_end_70} :catchall_75

    goto :goto_46

    .line 17
    :cond_71
    :try_start_71
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_7a

    :catchall_75
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 18
    throw v2

    .line 19
    :cond_7a
    :goto_7a
    monitor-exit v0

    return-object v2

    :catchall_7c
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_71 .. :try_end_7e} :catchall_7c

    goto :goto_80

    :goto_7f
    throw v1

    :goto_80
    goto :goto_7f
.end method

###### Class com.vungle.warren.persistence.Repository.AnonymousClass2 (com.vungle.warren.persistence.Repository$2)
.class Lcom/vungle/warren/persistence/Repository$2;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Class;

.field final synthetic c:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$2;->c:Lcom/vungle/warren/persistence/Repository;

    iput-object p2, p0, Lcom/vungle/warren/persistence/Repository$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/warren/persistence/Repository$2;->b:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$2;->c:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/persistence/Repository$2;->b:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/vungle/warren/persistence/Repository;->a(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.persistence.Repository.AnonymousClass20 (com.vungle.warren.persistence.Repository$20)
.class Lcom/vungle/warren/persistence/Repository$20;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->setValidPlacements(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;Ljava/util/List;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$20;->b:Lcom/vungle/warren/persistence/Repository;

    iput-object p2, p0, Lcom/vungle/warren/persistence/Repository$20;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/Repository$20;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    const-class v0, Lcom/vungle/warren/model/Placement;

    const-class v1, Lcom/vungle/warren/persistence/Repository;

    monitor-enter v1

    .line 3
    :try_start_5
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "is_valid"

    .line 4
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5
    iget-object v3, p0, Lcom/vungle/warren/persistence/Repository$20;->b:Lcom/vungle/warren/persistence/Repository;

    iget-object v3, v3, Lcom/vungle/warren/persistence/Repository;->a:Lcom/vungle/warren/persistence/DatabaseHelper;

    new-instance v4, Lcom/vungle/warren/persistence/Query;

    const-string v5, "placement"

    invoke-direct {v4, v5}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v2}, Lcom/vungle/warren/persistence/DatabaseHelper;->update(Lcom/vungle/warren/persistence/Query;Landroid/content/ContentValues;)J

    .line 6
    iget-object v2, p0, Lcom/vungle/warren/persistence/Repository$20;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_cd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/model/Placement;

    .line 7
    iget-object v4, p0, Lcom/vungle/warren/persistence/Repository$20;->b:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v3}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/vungle/warren/persistence/Repository;->a(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vungle/warren/model/Placement;

    if-eqz v4, :cond_9d

    .line 8
    invoke-virtual {v4}, Lcom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v5

    invoke-virtual {v3}, Lcom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v6

    if-ne v5, v6, :cond_53

    .line 9
    invoke-virtual {v4}, Lcom/vungle/warren/model/Placement;->isHeaderBidding()Z

    move-result v5

    invoke-virtual {v3}, Lcom/vungle/warren/model/Placement;->isHeaderBidding()Z

    move-result v6

    if-eq v5, v6, :cond_9d

    .line 10
    :cond_53
    invoke-static {}, Lcom/vungle/warren/persistence/Repository;->f()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Placements data for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is different from disc, deleting old"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v5, p0, Lcom/vungle/warren/persistence/Repository$20;->b:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v3}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vungle/warren/persistence/Repository;->g(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 12
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_82
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_94

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 13
    iget-object v7, p0, Lcom/vungle/warren/persistence/Repository$20;->b:Lcom/vungle/warren/persistence/Repository;

    invoke-static {v7, v6}, Lcom/vungle/warren/persistence/Repository;->c(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)V

    goto :goto_82

    .line 14
    :cond_94
    iget-object v5, p0, Lcom/vungle/warren/persistence/Repository$20;->b:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v4}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v0, v6}, Lcom/vungle/warren/persistence/Repository;->h(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Class;Ljava/lang/String;)V

    :cond_9d
    if-eqz v4, :cond_ad

    .line 15
    invoke-virtual {v4}, Lcom/vungle/warren/model/Placement;->getWakeupTime()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/vungle/warren/model/Placement;->setWakeupTime(J)V

    .line 16
    invoke-virtual {v4}, Lcom/vungle/warren/model/Placement;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vungle/warren/model/Placement;->setAdSize(Lcom/vungle/warren/AdConfig$AdSize;)V

    .line 17
    :cond_ad
    invoke-virtual {v3}, Lcom/vungle/warren/model/Placement;->getPlacementAdType()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq v4, v5, :cond_b7

    const/4 v4, 0x1

    goto :goto_b8

    :cond_b7
    const/4 v4, 0x0

    :goto_b8
    invoke-virtual {v3, v4}, Lcom/vungle/warren/model/Placement;->setValid(Z)V

    .line 18
    invoke-virtual {v3}, Lcom/vungle/warren/model/Placement;->getMaxHbCache()I

    move-result v4

    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_c6

    .line 19
    invoke-virtual {v3, v6}, Lcom/vungle/warren/model/Placement;->setValid(Z)V

    .line 20
    :cond_c6
    iget-object v4, p0, Lcom/vungle/warren/persistence/Repository$20;->b:Lcom/vungle/warren/persistence/Repository;

    invoke-static {v4, v3}, Lcom/vungle/warren/persistence/Repository;->i(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V

    goto/16 :goto_25

    .line 21
    :cond_cd
    monitor-exit v1

    const/4 v0, 0x0

    return-object v0

    :catchall_d0
    move-exception v0

    monitor-exit v1
    :try_end_d2
    .catchall {:try_start_5 .. :try_end_d2} :catchall_d0

    goto :goto_d4

    :goto_d3
    throw v0

    :goto_d4
    goto :goto_d3
.end method

###### Class com.vungle.warren.persistence.Repository.AnonymousClass21 (com.vungle.warren.persistence.Repository$21)
.class Lcom/vungle/warren/persistence/Repository$21;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->findAdsForPlacement(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$21;->b:Lcom/vungle/warren/persistence/Repository;

    iput-object p2, p0, Lcom/vungle/warren/persistence/Repository$21;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/Repository$21;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$21;->b:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$21;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vungle/warren/persistence/Repository;->g(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.persistence.Repository.AnonymousClass22 (com.vungle.warren.persistence.Repository$22)
.class Lcom/vungle/warren/persistence/Repository$22;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/vungle/warren/model/Advertisement;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;ILcom/vungle/warren/model/Advertisement;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$22;->d:Lcom/vungle/warren/persistence/Repository;

    iput p2, p0, Lcom/vungle/warren/persistence/Repository$22;->a:I

    iput-object p3, p0, Lcom/vungle/warren/persistence/Repository$22;->b:Lcom/vungle/warren/model/Advertisement;

    iput-object p4, p0, Lcom/vungle/warren/persistence/Repository$22;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/Repository$22;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/vungle/warren/persistence/Repository;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vungle/warren/persistence/Repository$22;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for adv "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/persistence/Repository$22;->b:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and pl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/persistence/Repository$22;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$22;->b:Lcom/vungle/warren/model/Advertisement;

    iget v1, p0, Lcom/vungle/warren/persistence/Repository$22;->a:I

    invoke-virtual {v0, v1}, Lcom/vungle/warren/model/Advertisement;->setState(I)V

    .line 4
    iget v0, p0, Lcom/vungle/warren/persistence/Repository$22;->a:I

    const/4 v1, 0x0

    if-eqz v0, :cond_67

    const/4 v2, 0x1

    if-eq v0, v2, :cond_67

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5a

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4e

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4e

    const/4 v2, 0x5

    if-eq v0, v2, :cond_67

    goto :goto_75

    .line 5
    :cond_4e
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$22;->d:Lcom/vungle/warren/persistence/Repository;

    iget-object v2, p0, Lcom/vungle/warren/persistence/Repository$22;->b:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/warren/persistence/Repository;->c(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)V

    goto :goto_75

    .line 6
    :cond_5a
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$22;->b:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/model/Advertisement;->setPlacementId(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$22;->d:Lcom/vungle/warren/persistence/Repository;

    iget-object v2, p0, Lcom/vungle/warren/persistence/Repository$22;->b:Lcom/vungle/warren/model/Advertisement;

    invoke-static {v0, v2}, Lcom/vungle/warren/persistence/Repository;->i(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V

    goto :goto_75

    .line 8
    :cond_67
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$22;->b:Lcom/vungle/warren/model/Advertisement;

    iget-object v2, p0, Lcom/vungle/warren/persistence/Repository$22;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/vungle/warren/model/Advertisement;->setPlacementId(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$22;->d:Lcom/vungle/warren/persistence/Repository;

    iget-object v2, p0, Lcom/vungle/warren/persistence/Repository$22;->b:Lcom/vungle/warren/model/Advertisement;

    invoke-static {v0, v2}, Lcom/vungle/warren/persistence/Repository;->i(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V

    :goto_75
    return-object v1
.end method

###### Class com.vungle.warren.persistence.Repository.AnonymousClass23 (com.vungle.warren.persistence.Repository$23)
.class Lcom/vungle/warren/persistence/Repository$23;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->trimVisionData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$23;->b:Lcom/vungle/warren/persistence/Repository;

    iput p2, p0, Lcom/vungle/warren/persistence/Repository$23;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/Repository$23;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/vungle/warren/persistence/Query;

    const-string v1, "vision_data"

    invoke-direct {v0, v1}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    const-string v1, "_id <= ( SELECT MAX( _id ) FROM vision_data ) - ?"

    .line 3
    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->c:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 4
    iget v2, p0, Lcom/vungle/warren/persistence/Repository$23;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->d:[Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$23;->b:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, v1, Lcom/vungle/warren/persistence/Repository;->a:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v1, v0}, Lcom/vungle/warren/persistence/DatabaseHelper;->delete(Lcom/vungle/warren/persistence/Query;)V

    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.vungle.warren.persistence.Repository.AnonymousClass24 (com.vungle.warren.persistence.Repository$24)
.class Lcom/vungle/warren/persistence/Repository$24;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->getVisionAggregationInfo(J)Lcom/vungle/warren/persistence/FutureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/vungle/warren/vision/VisionAggregationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;J)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$24;->b:Lcom/vungle/warren/persistence/Repository;

    iput-wide p2, p0, Lcom/vungle/warren/persistence/Repository$24;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/vungle/warren/vision/VisionAggregationInfo;
    .registers 5

    .line 2
    new-instance v0, Lcom/vungle/warren/persistence/Query;

    const-string v1, "vision_data"

    invoke-direct {v0, v1}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    const-string v1, "timestamp >= ?"

    .line 3
    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->c:Ljava/lang/String;

    const-string v1, "_id DESC"

    .line 4
    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->g:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 5
    iget-wide v2, p0, Lcom/vungle/warren/persistence/Repository$24;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->d:[Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$24;->b:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, v1, Lcom/vungle/warren/persistence/Repository;->a:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v1, v0}, Lcom/vungle/warren/persistence/DatabaseHelper;->query(Lcom/vungle/warren/persistence/Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$24;->b:Lcom/vungle/warren/persistence/Repository;

    invoke-static {v1}, Lcom/vungle/warren/persistence/Repository;->k(Lcom/vungle/warren/persistence/Repository;)Ljava/util/Map;

    move-result-object v1

    const-class v2, Lcom/vungle/warren/model/VisionData;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/VisionDataDBAdapter;

    if-eqz v0, :cond_61

    if-eqz v1, :cond_61

    .line 8
    :try_start_37
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 9
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 10
    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 11
    invoke-virtual {v1, v2}, Lcom/vungle/warren/model/VisionDataDBAdapter;->fromContentValues(Landroid/content/ContentValues;)Lcom/vungle/warren/model/VisionData;

    move-result-object v1

    .line 12
    new-instance v2, Lcom/vungle/warren/vision/VisionAggregationInfo;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iget-object v1, v1, Lcom/vungle/warren/model/VisionData;->creative:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/vungle/warren/vision/VisionAggregationInfo;-><init>(ILjava/lang/String;)V
    :try_end_54
    .catchall {:try_start_37 .. :try_end_54} :catchall_5c

    .line 13
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    :cond_58
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_61

    :catchall_5c
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 14
    throw v1

    :cond_61
    :goto_61
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/Repository$24;->call()Lcom/vungle/warren/vision/VisionAggregationInfo;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.persistence.Repository.AnonymousClass25 (com.vungle.warren.persistence.Repository$25)
.class Lcom/vungle/warren/persistence/Repository$25;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->getVisionAggregationData(JILjava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/vungle/warren/vision/VisionAggregationData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;IJ)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$25;->d:Lcom/vungle/warren/persistence/Repository;

    iput-object p2, p0, Lcom/vungle/warren/persistence/Repository$25;->a:Ljava/lang/String;

    iput p3, p0, Lcom/vungle/warren/persistence/Repository$25;->b:I

    iput-wide p4, p0, Lcom/vungle/warren/persistence/Repository$25;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/Repository$25;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vungle/warren/vision/VisionAggregationData;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$25;->a:Ljava/lang/String;

    const-string v2, "advertiser"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$25;->a:Ljava/lang/String;

    const-string v2, "campaign"

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$25;->a:Ljava/lang/String;

    const-string v2, "creative"

    .line 5
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return-object v0

    .line 6
    :cond_24
    new-instance v1, Lcom/vungle/warren/persistence/Query;

    const-string v2, "vision_data"

    invoke-direct {v1, v2}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "COUNT ( * ) as viewCount"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "MAX ( timestamp ) as lastTimeStamp"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    .line 7
    iget-object v6, p0, Lcom/vungle/warren/persistence/Repository$25;->a:Ljava/lang/String;

    aput-object v6, v2, v3

    iput-object v2, v1, Lcom/vungle/warren/persistence/Query;->b:[Ljava/lang/String;

    const-string v2, "timestamp >= ?"

    .line 8
    iput-object v2, v1, Lcom/vungle/warren/persistence/Query;->c:Ljava/lang/String;

    .line 9
    iput-object v6, v1, Lcom/vungle/warren/persistence/Query;->e:Ljava/lang/String;

    const-string v2, "_id DESC"

    .line 10
    iput-object v2, v1, Lcom/vungle/warren/persistence/Query;->g:Ljava/lang/String;

    .line 11
    iget v2, p0, Lcom/vungle/warren/persistence/Repository$25;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vungle/warren/persistence/Query;->h:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/String;

    .line 12
    iget-wide v5, p0, Lcom/vungle/warren/persistence/Repository$25;->c:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iput-object v2, v1, Lcom/vungle/warren/persistence/Query;->d:[Ljava/lang/String;

    .line 13
    iget-object v2, p0, Lcom/vungle/warren/persistence/Repository$25;->d:Lcom/vungle/warren/persistence/Repository;

    iget-object v2, v2, Lcom/vungle/warren/persistence/Repository;->a:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v2, v1}, Lcom/vungle/warren/persistence/DatabaseHelper;->query(Lcom/vungle/warren/persistence/Query;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_a1

    .line 14
    :goto_67
    :try_start_67
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_98

    .line 15
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 16
    invoke-static {v1, v2}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 17
    new-instance v3, Lcom/vungle/warren/vision/VisionAggregationData;

    iget-object v4, p0, Lcom/vungle/warren/persistence/Repository$25;->a:Ljava/lang/String;

    .line 18
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "viewCount"

    .line 19
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "lastTimeStamp"

    .line 20
    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/vungle/warren/vision/VisionAggregationData;-><init>(Ljava/lang/String;IJ)V

    .line 21
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_97
    .catchall {:try_start_67 .. :try_end_97} :catchall_9c

    goto :goto_67

    .line 22
    :cond_98
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_a1

    :catchall_9c
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 23
    throw v0

    :cond_a1
    :goto_a1
    return-object v0
.end method

###### Class com.vungle.warren.persistence.Repository.AnonymousClass3 (com.vungle.warren.persistence.Repository$3)
.class Lcom/vungle/warren/persistence/Repository$3;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;Lcom/vungle/warren/persistence/Repository$LoadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/String;

.field final synthetic p:Ljava/lang/Class;

.field final synthetic q:Lcom/vungle/warren/persistence/Repository$LoadCallback;

.field final synthetic r:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/Class;Lcom/vungle/warren/persistence/Repository$LoadCallback;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$3;->r:Lcom/vungle/warren/persistence/Repository;

    iput-object p2, p0, Lcom/vungle/warren/persistence/Repository$3;->o:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/warren/persistence/Repository$3;->p:Ljava/lang/Class;

    iput-object p4, p0, Lcom/vungle/warren/persistence/Repository$3;->q:Lcom/vungle/warren/persistence/Repository$LoadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$3;->r:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$3;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/persistence/Repository$3;->p:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/vungle/warren/persistence/Repository;->a(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$3;->r:Lcom/vungle/warren/persistence/Repository;

    invoke-static {v1}, Lcom/vungle/warren/persistence/Repository;->b(Lcom/vungle/warren/persistence/Repository;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/vungle/warren/persistence/Repository$3$1;

    invoke-direct {v2, p0, v0}, Lcom/vungle/warren/persistence/Repository$3$1;-><init>(Lcom/vungle/warren/persistence/Repository$3;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.vungle.warren.persistence.Repository.AnonymousClass3.AnonymousClass1 (com.vungle.warren.persistence.Repository$3$1)
.class Lcom/vungle/warren/persistence/Repository$3$1;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/Object;

.field final synthetic p:Lcom/vungle/warren/persistence/Repository$3;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository$3;Ljava/lang/Object;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$3$1;->p:Lcom/vungle/warren/persistence/Repository$3;

    iput-object p2, p0, Lcom/vungle/warren/persistence/Repository$3$1;->o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$3$1;->p:Lcom/vungle/warren/persistence/Repository$3;

    iget-object v0, v0, Lcom/vungle/warren/persistence/Repository$3;->q:Lcom/vungle/warren/persistence/Repository$LoadCallback;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$3$1;->o:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/vungle/warren/persistence/Repository$LoadCallback;->onLoaded(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.vungle.warren.persistence.Repository.AnonymousClass4 (com.vungle.warren.persistence.Repository$4)
.class Lcom/vungle/warren/persistence/Repository$4;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$4;->b:Lcom/vungle/warren/persistence/Repository;

    iput-object p2, p0, Lcom/vungle/warren/persistence/Repository$4;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/Repository$4;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$4;->b:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$4;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/vungle/warren/persistence/Repository;->i(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.vungle.warren.persistence.Repository.AnonymousClass5 (com.vungle.warren.persistence.Repository$5)
.class Lcom/vungle/warren/persistence/Repository$5;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/Object;

.field final synthetic p:Lcom/vungle/warren/persistence/Repository$SaveCallback;

.field final synthetic q:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$5;->q:Lcom/vungle/warren/persistence/Repository;

    iput-object p2, p0, Lcom/vungle/warren/persistence/Repository$5;->o:Ljava/lang/Object;

    iput-object p3, p0, Lcom/vungle/warren/persistence/Repository$5;->p:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$5;->q:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$5;->o:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/vungle/warren/persistence/Repository;->i(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V
    :try_end_7
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_7} :catch_1a

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$5;->p:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    if-eqz v0, :cond_19

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$5;->q:Lcom/vungle/warren/persistence/Repository;

    invoke-static {v0}, Lcom/vungle/warren/persistence/Repository;->b(Lcom/vungle/warren/persistence/Repository;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/vungle/warren/persistence/Repository$5$2;

    invoke-direct {v1, p0}, Lcom/vungle/warren/persistence/Repository$5$2;-><init>(Lcom/vungle/warren/persistence/Repository$5;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_19
    return-void

    :catch_1a
    move-exception v0

    .line 4
    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$5;->p:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    if-eqz v1, :cond_2d

    .line 5
    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$5;->q:Lcom/vungle/warren/persistence/Repository;

    invoke-static {v1}, Lcom/vungle/warren/persistence/Repository;->b(Lcom/vungle/warren/persistence/Repository;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/vungle/warren/persistence/Repository$5$1;

    invoke-direct {v2, p0, v0}, Lcom/vungle/warren/persistence/Repository$5$1;-><init>(Lcom/vungle/warren/persistence/Repository$5;Lcom/vungle/warren/persistence/DatabaseHelper$DBException;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_2d
    return-void
.end method

###### Class com.vungle.warren.persistence.Repository.AnonymousClass5.AnonymousClass1 (com.vungle.warren.persistence.Repository$5$1)
.class Lcom/vungle/warren/persistence/Repository$5$1;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/persistence/DatabaseHelper$DBException;

.field final synthetic p:Lcom/vungle/warren/persistence/Repository$5;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository$5;Lcom/vungle/warren/persistence/DatabaseHelper$DBException;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$5$1;->p:Lcom/vungle/warren/persistence/Repository$5;

    iput-object p2, p0, Lcom/vungle/warren/persistence/Repository$5$1;->o:Lcom/vungle/warren/persistence/DatabaseHelper$DBException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$5$1;->p:Lcom/vungle/warren/persistence/Repository$5;

    iget-object v0, v0, Lcom/vungle/warren/persistence/Repository$5;->p:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$5$1;->o:Lcom/vungle/warren/persistence/DatabaseHelper$DBException;

    invoke-interface {v0, v1}, Lcom/vungle/warren/persistence/Repository$SaveCallback;->onError(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.vungle.warren.persistence.Repository.AnonymousClass5.AnonymousClass2 (com.vungle.warren.persistence.Repository$5$2)
.class Lcom/vungle/warren/persistence/Repository$5$2;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/persistence/Repository$5;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository$5;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$5$2;->o:Lcom/vungle/warren/persistence/Repository$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$5$2;->o:Lcom/vungle/warren/persistence/Repository$5;

    iget-object v0, v0, Lcom/vungle/warren/persistence/Repository$5;->p:Lcom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-interface {v0}, Lcom/vungle/warren/persistence/Repository$SaveCallback;->onSaved()V

    return-void
.end method

###### Class com.vungle.warren.persistence.Repository.AnonymousClass6 (com.vungle.warren.persistence.Repository$6)
.class Lcom/vungle/warren/persistence/Repository$6;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->findValidAdvertisementForPlacement(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/vungle/warren/model/Advertisement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$6;->c:Lcom/vungle/warren/persistence/Repository;

    iput-object p2, p0, Lcom/vungle/warren/persistence/Repository$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/warren/persistence/Repository$6;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/vungle/warren/model/Advertisement;
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$6;->c:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$6;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/persistence/Repository$6;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/vungle/warren/persistence/Repository;->j(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/warren/model/Advertisement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/Repository$6;->call()Lcom/vungle/warren/model/Advertisement;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.persistence.Repository.AnonymousClass7 (com.vungle.warren.persistence.Repository$7)
.class Lcom/vungle/warren/persistence/Repository$7;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->findPotentiallyExpiredAd(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/vungle/warren/model/Advertisement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$7;->c:Lcom/vungle/warren/persistence/Repository;

    iput-object p2, p0, Lcom/vungle/warren/persistence/Repository$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/warren/persistence/Repository$7;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/vungle/warren/model/Advertisement;
    .registers 9

    .line 2
    new-instance v0, Lcom/vungle/warren/persistence/Query;

    const-string v1, "advertisement"

    invoke-direct {v0, v1}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placement_id = ? AND "

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(state = ? OR "

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "state = ?)"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v2, p0, Lcom/vungle/warren/persistence/Repository$7;->a:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_40

    const-string v2, " AND item_id = ?"

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    .line 9
    iget-object v7, p0, Lcom/vungle/warren/persistence/Repository$7;->b:Ljava/lang/String;

    aput-object v7, v2, v6

    .line 10
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    .line 11
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    iget-object v3, p0, Lcom/vungle/warren/persistence/Repository$7;->a:Ljava/lang/String;

    aput-object v3, v2, v4

    goto :goto_52

    :cond_40
    new-array v2, v4, [Ljava/lang/String;

    .line 12
    iget-object v4, p0, Lcom/vungle/warren/persistence/Repository$7;->b:Ljava/lang/String;

    aput-object v4, v2, v6

    .line 13
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    .line 14
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 15
    :goto_52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->c:Ljava/lang/String;

    .line 16
    iput-object v2, v0, Lcom/vungle/warren/persistence/Query;->d:[Ljava/lang/String;

    .line 17
    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$7;->c:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, v1, Lcom/vungle/warren/persistence/Repository;->a:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v1, v0}, Lcom/vungle/warren/persistence/DatabaseHelper;->query(Lcom/vungle/warren/persistence/Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$7;->c:Lcom/vungle/warren/persistence/Repository;

    .line 19
    invoke-static {v1}, Lcom/vungle/warren/persistence/Repository;->k(Lcom/vungle/warren/persistence/Repository;)Ljava/util/Map;

    move-result-object v1

    const-class v2, Lcom/vungle/warren/model/Advertisement;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/AdvertisementDBAdapter;

    const/4 v2, 0x0

    if-eqz v0, :cond_87

    if-eqz v1, :cond_87

    .line 20
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_87

    .line 21
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 22
    invoke-static {v0, v2}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 23
    invoke-virtual {v1, v2}, Lcom/vungle/warren/model/AdvertisementDBAdapter;->fromContentValues(Landroid/content/ContentValues;)Lcom/vungle/warren/model/Advertisement;

    move-result-object v2

    :cond_87
    if-eqz v0, :cond_8c

    .line 24
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8c
    return-object v2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/Repository$7;->call()Lcom/vungle/warren/model/Advertisement;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.persistence.Repository.AnonymousClass8 (com.vungle.warren.persistence.Repository$8)
.class Lcom/vungle/warren/persistence/Repository$8;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->findValidAdvertisementsForPlacement(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/vungle/warren/model/Advertisement;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$8;->c:Lcom/vungle/warren/persistence/Repository;

    iput-object p2, p0, Lcom/vungle/warren/persistence/Repository$8;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/warren/persistence/Repository$8;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/Repository$8;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/Advertisement;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$8;->c:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$8;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/persistence/Repository$8;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/vungle/warren/persistence/Repository;->l(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.persistence.Repository.AnonymousClass9 (com.vungle.warren.persistence.Repository$9)
.class Lcom/vungle/warren/persistence/Repository$9;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->loadAll(Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Class;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$9;->b:Lcom/vungle/warren/persistence/Repository;

    iput-object p2, p0, Lcom/vungle/warren/persistence/Repository$9;->a:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/Repository$9;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$9;->b:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$9;->a:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/vungle/warren/persistence/Repository;->m(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.persistence.Repository.LoadCallback (com.vungle.warren.persistence.Repository$LoadCallback)
.class public interface abstract Lcom/vungle/warren/persistence/Repository$LoadCallback;
.super Ljava/lang/Object;
.source "Repository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/persistence/Repository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadCallback"
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
.method public abstract onLoaded(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

###### Class com.vungle.warren.persistence.Repository.SaveCallback (com.vungle.warren.persistence.Repository$SaveCallback)
.class public interface abstract Lcom/vungle/warren/persistence/Repository$SaveCallback;
.super Ljava/lang/Object;
.source "Repository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/persistence/Repository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SaveCallback"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onSaved()V
.end method

###### Class com.vungle.warren.persistence.Repository.VungleDatabaseCreator (com.vungle.warren.persistence.Repository$VungleDatabaseCreator)
.class Lcom/vungle/warren/persistence/Repository$VungleDatabaseCreator;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Lcom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/persistence/Repository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VungleDatabaseCreator"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$VungleDatabaseCreator;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$VungleDatabaseCreator;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    return-void
.end method

.method private b()V
    .registers 6

    const-string v0, "vungle"

    .line 1
    invoke-direct {p0, v0}, Lcom/vungle/warren/persistence/Repository$VungleDatabaseCreator;->a(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$VungleDatabaseCreator;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    if-eqz v1, :cond_1c

    const/4 v2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    const-string v3, "IOException "

    if-eqz v2, :cond_3a

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 5
    new-instance v2, Ljava/io/File;

    const-string v4, ".vungle"

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    :try_start_2e
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_3a

    :catch_32
    move-exception v1

    .line 7
    invoke-static {}, Lcom/vungle/warren/persistence/Repository;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    :cond_3a
    :goto_3a
    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$VungleDatabaseCreator;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 10
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    :try_start_4b
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_57

    :catch_4f
    move-exception v0

    .line 12
    invoke-static {}, Lcom/vungle/warren/persistence/Repository;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    :cond_57
    :goto_57
    :try_start_57
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vungle/warren/persistence/Repository$VungleDatabaseCreator;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "downloads_vungle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_7b} :catch_7c

    goto :goto_84

    :catch_7c
    move-exception v0

    .line 14
    invoke-static {}, Lcom/vungle/warren/persistence/Repository;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_84
    return-void
.end method


# virtual methods
.method public create(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/persistence/Repository$VungleDatabaseCreator;->b()V

    const-string v0, "CREATE TABLE IF NOT EXISTS advertisement(_id INTEGER PRIMARY KEY AUTOINCREMENT,  item_id TEXT UNIQUE, ad_config TEXT,ad_type INT, expire_time NUMERIC, delay NUMERIC, show_close_delay INT, show_close_incentivized INT, countdown INT, video_height INT, video_width INT, cta_overlay_enabled SHORT, cta_click_area NUMERIC, retry_count INT, requires_non_market_install SHORT, app_id TEXT, campaign TEXT, video_url TEXT, md5 TEXT, postroll_bundle_url TEXT, cta_destination_url TEXT, cta_url TEXT, ad_token TEXT, video_identifier TEXT, template_url TEXT, TEMPLATE_ID TEXT, TEMPLATE_TYPE TEXT, ad_market_id TEXT,bid_token TEXT,  checkpoints TEXT, template_settings TEXT, mraid_files TEXT, cacheable_assets TEXT, state INT, placement_id TEXT, tt_download NUMERIC,asset_download_timestamp NUMERIC,asset_download_duration NUMERIC,ad_request_start_time NUMERIC,column_enable_om_sdk SHORT,column_om_sdk_extra_vast TEXT,column_request_timestamp NUMERIC, dynamic_events_and_urls TEXT, column_assets_fully_downloaded SHORT)"

    .line 2
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS placement(_id INTEGER PRIMARY KEY AUTOINCREMENT, item_id TEXT UNIQUE, incentivized SHORT, auto_cached SHORT, is_valid SHORT, wakeup_time NUMERIC, header_bidding SHORT, refresh_duration NUMERIC, supported_template_types NUMERIC, ad_size TEXT, autocache_priority NUMERIC, max_hb_cache NUMERIC, recommended_ad_size TEXT)"

    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS cookie(_id INTEGER PRIMARY KEY AUTOINCREMENT, item_id TEXT UNIQUE, bools TEXT, ints TEXT, longs TEXT, strings TEXT )"

    .line 4
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS report(_id INTEGER PRIMARY KEY AUTOINCREMENT, item_id TEXT UNIQUE,appId TEXT, placementId TEXT, adToken TEXT, incentivized SHORT, header_bidding SHORT, adStartTime NUMERIC, url TEXT, ad_duration NUMERIC, tt_download NUMERIC, campaign TEXT, videoViewed NUMERIC, ad_type TEXT, template_id TEXT, was_CTAC_licked SHORT, clicked_through TEXT, errors TEXT, user_actions TEXT, user_id TEXT, ordinal INT, videoLength NUMERIC, status INT, ad_size TEXT, init_timestamp NUMERIC, asset_download_duration NUMERIC,play_remote_url SHORT )"

    .line 5
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS adAsset ( _id INTEGER PRIMARY KEY AUTOINCREMENT, item_id TEXT UNIQUE, paren_id TEXT , ad_identifier TEXT NOT NULL, server_path TEXT, local_path TEXT NOT NULL, file_status SHORT, file_type SHORT, file_size INT, retry_count SHORT, retry_error SHORT, unique ( local_path, ad_identifier ));"

    .line 6
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS vision_data(_id INTEGER PRIMARY KEY AUTOINCREMENT, timestamp NUMERIC, creative TEXT, campaign TEXT, advertiser TEXT )"

    .line 7
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS analytic_url(_id INTEGER PRIMARY KEY AUTOINCREMENT,  item_id TEXT UNIQUE)"

    .line 8
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS cache_bust(_id INTEGER PRIMARY KEY AUTOINCREMENT, item_id TEXT UNIQUE, id TEXT, time_window_end INTEGER, id_type INTEGER, event_ids TEXT, timestamp_processed INTEGER )"

    .line 9
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public deleteData(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "DROP TABLE IF EXISTS advertisement"

    .line 1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS cookie"

    .line 2
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS placement"

    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS report"

    .line 4
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS adAsset"

    .line 5
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS vision_data"

    .line 6
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS analytic_url"

    .line 7
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS cache_bust"

    .line 8
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6

    .line 1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string p3, "SELECT * FROM sqlite_master WHERE type=\'table\'"

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    :cond_c
    :goto_c
    if-eqz p3, :cond_2d

    .line 3
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x1

    .line 4
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android_metadata"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "sqlite_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 6
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_2d
    if-eqz p3, :cond_32

    .line 7
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 8
    :cond_32
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_36
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_57

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_36

    .line 10
    :cond_57
    invoke-virtual {p0, p1}, Lcom/vungle/warren/persistence/Repository$VungleDatabaseCreator;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    const/4 p3, 0x2

    if-ge p2, p3, :cond_8

    const-string p3, "ALTER TABLE report ADD COLUMN status INTEGER DEFAULT 1"

    .line 1
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_8
    const/4 p3, 0x3

    if-ge p2, p3, :cond_29

    const-string p3, "CREATE TABLE IF NOT EXISTS vision_data(_id INTEGER PRIMARY KEY AUTOINCREMENT, timestamp NUMERIC, creative TEXT, campaign TEXT, advertiser TEXT )"

    .line 2
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "ALTER TABLE report ADD COLUMN ad_size TEXT "

    .line 3
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "ALTER TABLE advertisement ADD COLUMN tt_download NUMERIC DEFAULT -1"

    .line 4
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "ALTER TABLE placement ADD COLUMN ad_size TEXT "

    .line 5
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "ALTER TABLE placement ADD COLUMN refresh_duration NUMERIC DEFAULT 0"

    .line 6
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "ALTER TABLE placement ADD COLUMN supported_template_types NUMERIC DEFAULT 0"

    .line 7
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_29
    const/4 p3, 0x4

    if-ge p2, p3, :cond_36

    const-string p3, "ALTER TABLE placement ADD COLUMN header_bidding SHORT "

    .line 8
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "ALTER TABLE report ADD COLUMN header_bidding SHORT "

    .line 9
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_36
    const/4 p3, 0x5

    if-ge p2, p3, :cond_57

    const-string p3, "ALTER TABLE placement ADD COLUMN autocache_priority NUMERIC DEFAULT 2147483647"

    .line 10
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "ALTER TABLE advertisement ADD COLUMN asset_download_timestamp NUMERIC DEFAULT 0"

    .line 11
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "ALTER TABLE advertisement ADD COLUMN asset_download_duration NUMERIC DEFAULT 0"

    .line 12
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "ALTER TABLE advertisement ADD COLUMN ad_request_start_time NUMERIC DEFAULT 0"

    .line 13
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "ALTER TABLE report ADD COLUMN init_timestamp NUMERIC DEFAULT 0"

    .line 14
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "ALTER TABLE report ADD COLUMN asset_download_duration NUMERIC DEFAULT 0"

    .line 15
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_57
    const/4 p3, 0x6

    if-ge p2, p3, :cond_64

    const-string p3, "ALTER TABLE advertisement ADD COLUMN column_enable_om_sdk NUMERIC DEFAULT 0"

    .line 16
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "ALTER TABLE advertisement ADD COLUMN column_om_sdk_extra_vast TEXT "

    .line 17
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_64
    const/4 p3, 0x7

    if-ge p2, p3, :cond_6c

    const-string p3, "CREATE TABLE IF NOT EXISTS analytic_url(_id INTEGER PRIMARY KEY AUTOINCREMENT,  item_id TEXT UNIQUE)"

    .line 18
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_6c
    const/16 p3, 0x8

    if-ge p2, p3, :cond_84

    const-string p3, "CREATE TABLE IF NOT EXISTS cache_bust(_id INTEGER PRIMARY KEY AUTOINCREMENT, item_id TEXT UNIQUE, id TEXT, time_window_end INTEGER, id_type INTEGER, event_ids TEXT, timestamp_processed INTEGER )"

    .line 19
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "ALTER TABLE advertisement ADD COLUMN column_request_timestamp NUMERIC DEFAULT 0"

    .line 20
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "ALTER TABLE placement ADD COLUMN max_hb_cache NUMERIC DEFAULT 0"

    .line 21
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "ALTER TABLE placement ADD COLUMN recommended_ad_size TEXT "

    .line 22
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_84
    const/16 p3, 0x9

    if-ge p2, p3, :cond_92

    const-string p2, "ALTER TABLE report ADD COLUMN play_remote_url SHORT DEFAULT 0"

    .line 23
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "ALTER TABLE advertisement ADD COLUMN column_assets_fully_downloaded SHORT DEFAULT 0"

    .line 24
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_92
    return-void
.end method
