###### Class com.vungle.warren.persistence.DatabaseHelper (com.vungle.warren.persistence.DatabaseHelper)
.class public Lcom/vungle/warren/persistence/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/persistence/DatabaseHelper$NoBackupDatabaseWrapperContext;,
        Lcom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;,
        Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
    }
.end annotation


# static fields
.field public static final DB_NAME:Ljava/lang/String; = "vungle_db"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final o:Lcom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/warren/persistence/DatabaseHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;)V
    .registers 6

    .line 1
    new-instance v0, Lcom/vungle/warren/persistence/DatabaseHelper$NoBackupDatabaseWrapperContext;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/DatabaseHelper$NoBackupDatabaseWrapperContext;-><init>(Landroid/content/Context;)V

    const-string p1, "vungle_db"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 2
    iput-object p3, p0, Lcom/vungle/warren/persistence/DatabaseHelper;->o:Lcom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;

    return-void
.end method

.method private declared-synchronized b()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public delete(Lcom/vungle/warren/persistence/Query;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/vungle/warren/persistence/DatabaseHelper;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p1, Lcom/vungle/warren/persistence/Query;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/vungle/warren/persistence/Query;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/vungle/warren/persistence/Query;->d:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    .line 2
    new-instance v0, Lcom/vungle/warren/persistence/DatabaseHelper$DBException;

    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/DatabaseHelper$DBException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized dropDb()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/persistence/DatabaseHelper;->o:Lcom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;

    invoke-direct {p0}, Lcom/vungle/warren/persistence/DatabaseHelper;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;->deleteData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 3
    invoke-direct {p0}, Lcom/vungle/warren/persistence/DatabaseHelper;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vungle/warren/persistence/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 4
    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public execSQL(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/vungle/warren/persistence/DatabaseHelper;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p1

    .line 2
    new-instance v0, Lcom/vungle/warren/persistence/DatabaseHelper$DBException;

    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/persistence/DatabaseHelper$DBException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/persistence/DatabaseHelper;->b()Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public insertWithConflict(Ljava/lang/String;Landroid/content/ContentValues;I)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/vungle/warren/persistence/DatabaseHelper;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_9} :catch_a

    return-wide p1

    :catch_a
    move-exception p1

    .line 2
    new-instance p2, Lcom/vungle/warren/persistence/DatabaseHelper$DBException;

    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/vungle/warren/persistence/DatabaseHelper$DBException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public declared-synchronized onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/persistence/DatabaseHelper;->o:Lcom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;

    invoke-interface {v0, p1}, Lcom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;->create(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 2
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/persistence/DatabaseHelper;->o:Lcom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;

    invoke-interface {v0, p1, p2, p3}, Lcom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/persistence/DatabaseHelper;->o:Lcom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;

    invoke-interface {v0, p1, p2, p3}, Lcom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public query(Lcom/vungle/warren/persistence/Query;)Landroid/database/Cursor;
    .registers 11

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/persistence/DatabaseHelper;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p1, Lcom/vungle/warren/persistence/Query;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/vungle/warren/persistence/Query;->b:[Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/warren/persistence/Query;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/vungle/warren/persistence/Query;->d:[Ljava/lang/String;

    iget-object v5, p1, Lcom/vungle/warren/persistence/Query;->e:Ljava/lang/String;

    iget-object v6, p1, Lcom/vungle/warren/persistence/Query;->f:Ljava/lang/String;

    iget-object v7, p1, Lcom/vungle/warren/persistence/Query;->g:Ljava/lang/String;

    iget-object v8, p1, Lcom/vungle/warren/persistence/Query;->h:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public queryRaw(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/persistence/DatabaseHelper;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public update(Lcom/vungle/warren/persistence/Query;Landroid/content/ContentValues;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/vungle/warren/persistence/DatabaseHelper;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p1, Lcom/vungle/warren/persistence/Query;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/vungle/warren/persistence/Query;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/vungle/warren/persistence/Query;->d:[Ljava/lang/String;

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_e
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_e} :catch_10

    int-to-long p1, p1

    return-wide p1

    :catch_10
    move-exception p1

    .line 2
    new-instance p2, Lcom/vungle/warren/persistence/DatabaseHelper$DBException;

    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/vungle/warren/persistence/DatabaseHelper$DBException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

###### Class com.vungle.warren.persistence.DatabaseHelper.DBException (com.vungle.warren.persistence.DatabaseHelper$DBException)
.class public Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
.super Ljava/lang/Exception;
.source "DatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/persistence/DatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DBException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

###### Class com.vungle.warren.persistence.DatabaseHelper.DatabaseFactory (com.vungle.warren.persistence.DatabaseHelper$DatabaseFactory)
.class public interface abstract Lcom/vungle/warren/persistence/DatabaseHelper$DatabaseFactory;
.super Ljava/lang/Object;
.source "DatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/persistence/DatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DatabaseFactory"
.end annotation


# virtual methods
.method public abstract create(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public abstract deleteData(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public abstract onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method

.method public abstract onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method

###### Class com.vungle.warren.persistence.DatabaseHelper.NoBackupDatabaseWrapperContext (com.vungle.warren.persistence.DatabaseHelper$NoBackupDatabaseWrapperContext)
.class Lcom/vungle/warren/persistence/DatabaseHelper$NoBackupDatabaseWrapperContext;
.super Landroid/content/ContextWrapper;
.source "DatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/persistence/DatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoBackupDatabaseWrapperContext"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(I)I
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    and-int/lit8 v0, p1, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    const/high16 v0, 0x20000000

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const/high16 v2, 0x10000000

    or-int/2addr v0, v2

    const/16 v2, 0x10

    and-int/2addr p1, v2

    if-eqz p1, :cond_13

    const/16 v1, 0x10

    :cond_13
    or-int p1, v0, v1

    return p1
.end method


# virtual methods
.method public getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    :try_start_11
    new-instance p1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V

    .line 4
    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-journal"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_3a} :catch_3b

    goto :goto_45

    :catch_3b
    const/4 p1, 0x1

    .line 5
    sget-object v0, Lcom/vungle/warren/persistence/DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v2, "DatabaseHelper"

    const-string v3, "Failed to delete old db/-journal"

    invoke-static {p1, v0, v2, v3}, Lcom/vungle/warren/VungleLogger;->error(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_45
    return-object v1
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/vungle/warren/persistence/DatabaseHelper$NoBackupDatabaseWrapperContext;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/vungle/warren/persistence/DatabaseHelper$NoBackupDatabaseWrapperContext;->a(I)I

    move-result p2

    invoke-static {p1, p3, p2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    return-object p1
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 5

    .line 2
    invoke-virtual {p0, p1}, Lcom/vungle/warren/persistence/DatabaseHelper$NoBackupDatabaseWrapperContext;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/vungle/warren/persistence/DatabaseHelper$NoBackupDatabaseWrapperContext;->a(I)I

    move-result p2

    invoke-static {p1, p3, p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    return-object p1
.end method
