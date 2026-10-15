###### Class c1.b (c1.b)
.class Lc1/b;
.super Ljava/lang/Object;
.source "FrameworkSQLiteOpenHelper.java"

# interfaces
.implements Lb1/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc1/b$a;
    }
.end annotation


# instance fields
.field private final o:Landroid/content/Context;

.field private final p:Ljava/lang/String;

.field private final q:Lb1/h$a;

.field private final r:Z

.field private final s:Ljava/lang/Object;

.field private t:Lc1/b$a;

.field private u:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lb1/h$a;Z)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc1/b;->o:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lc1/b;->p:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lc1/b;->q:Lb1/h$a;

    .line 5
    iput-boolean p4, p0, Lc1/b;->r:Z

    .line 6
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc1/b;->s:Ljava/lang/Object;

    return-void
.end method

.method private b()Lc1/b$a;
    .registers 8

    .line 1
    iget-object v0, p0, Lc1/b;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lc1/b;->t:Lc1/b$a;

    if-nez v1, :cond_4d

    const/4 v1, 0x1

    new-array v1, v1, [Lc1/a;

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_35

    iget-object v3, p0, Lc1/b;->p:Ljava/lang/String;

    if-eqz v3, :cond_35

    iget-boolean v3, p0, Lc1/b;->r:Z

    if-eqz v3, :cond_35

    .line 4
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lc1/b;->o:Landroid/content/Context;

    .line 5
    invoke-static {v4}, Lb1/d;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lc1/b;->p:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    new-instance v4, Lc1/b$a;

    iget-object v5, p0, Lc1/b;->o:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lc1/b;->q:Lb1/h$a;

    invoke-direct {v4, v5, v3, v1, v6}, Lc1/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Lc1/a;Lb1/h$a;)V

    iput-object v4, p0, Lc1/b;->t:Lc1/b$a;

    goto :goto_42

    .line 7
    :cond_35
    new-instance v3, Lc1/b$a;

    iget-object v4, p0, Lc1/b;->o:Landroid/content/Context;

    iget-object v5, p0, Lc1/b;->p:Ljava/lang/String;

    iget-object v6, p0, Lc1/b;->q:Lb1/h$a;

    invoke-direct {v3, v4, v5, v1, v6}, Lc1/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Lc1/a;Lb1/h$a;)V

    iput-object v3, p0, Lc1/b;->t:Lc1/b$a;

    :goto_42
    const/16 v1, 0x10

    if-lt v2, v1, :cond_4d

    .line 8
    iget-object v1, p0, Lc1/b;->t:Lc1/b$a;

    iget-boolean v2, p0, Lc1/b;->u:Z

    invoke-static {v1, v2}, Lb1/b;->d(Landroid/database/sqlite/SQLiteOpenHelper;Z)V

    .line 9
    :cond_4d
    iget-object v1, p0, Lc1/b;->t:Lc1/b$a;

    monitor-exit v0

    return-object v1

    :catchall_51
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw v1
.end method


# virtual methods
.method public K1()Lb1/g;
    .registers 2

    .line 1
    invoke-direct {p0}, Lc1/b;->b()Lc1/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lc1/b$a;->d()Lb1/g;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lc1/b;->b()Lc1/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lc1/b$a;->close()V

    return-void
.end method

.method public getDatabaseName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lc1/b;->p:Ljava/lang/String;

    return-object v0
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lc1/b;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lc1/b;->t:Lc1/b$a;

    if-eqz v1, :cond_a

    .line 3
    invoke-static {v1, p1}, Lb1/b;->d(Landroid/database/sqlite/SQLiteOpenHelper;Z)V

    .line 4
    :cond_a
    iput-boolean p1, p0, Lc1/b;->u:Z

    .line 5
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

###### Class c1.b.a (c1.b$a)
.class Lc1/b$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "FrameworkSQLiteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final o:[Lc1/a;

.field final p:Lb1/h$a;

.field private q:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;[Lc1/a;Lb1/h$a;)V
    .registers 11

    .line 1
    iget v4, p4, Lb1/h$a;->a:I

    new-instance v5, Lc1/b$a$a;

    invoke-direct {v5, p4, p3}, Lc1/b$a$a;-><init>(Lb1/h$a;[Lc1/a;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 2
    iput-object p4, p0, Lc1/b$a;->p:Lb1/h$a;

    .line 3
    iput-object p3, p0, Lc1/b$a;->o:[Lc1/a;

    return-void
.end method

.method static c([Lc1/a;Landroid/database/sqlite/SQLiteDatabase;)Lc1/a;
    .registers 4

    const/4 v0, 0x0

    .line 1
    aget-object v1, p0, v0

    if-eqz v1, :cond_b

    .line 2
    invoke-virtual {v1, p1}, Lc1/a;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 3
    :cond_b
    new-instance v1, Lc1/a;

    invoke-direct {v1, p1}, Lc1/a;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    aput-object v1, p0, v0

    .line 4
    :cond_12
    aget-object p0, p0, v0

    return-object p0
.end method


# virtual methods
.method b(Landroid/database/sqlite/SQLiteDatabase;)Lc1/a;
    .registers 3

    .line 1
    iget-object v0, p0, Lc1/b$a;->o:[Lc1/a;

    invoke-static {v0, p1}, Lc1/b$a;->c([Lc1/a;Landroid/database/sqlite/SQLiteDatabase;)Lc1/a;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized close()V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 2
    iget-object v0, p0, Lc1/b$a;->o:[Lc1/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 3
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized d()Lb1/g;
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_2
    iput-boolean v0, p0, Lc1/b$a;->q:Z

    .line 2
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3
    iget-boolean v1, p0, Lc1/b$a;->q:Z

    if-eqz v1, :cond_15

    .line 4
    invoke-virtual {p0}, Lc1/b$a;->close()V

    .line 5
    invoke-virtual {p0}, Lc1/b$a;->d()Lb1/g;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_1b

    monitor-exit p0

    return-object v0

    .line 6
    :cond_15
    :try_start_15
    invoke-virtual {p0, v0}, Lc1/b$a;->b(Landroid/database/sqlite/SQLiteDatabase;)Lc1/a;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-object v0

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lc1/b$a;->p:Lb1/h$a;

    invoke-virtual {p0, p1}, Lc1/b$a;->b(Landroid/database/sqlite/SQLiteDatabase;)Lc1/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb1/h$a;->b(Lb1/g;)V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lc1/b$a;->p:Lb1/h$a;

    invoke-virtual {p0, p1}, Lc1/b$a;->b(Landroid/database/sqlite/SQLiteDatabase;)Lc1/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb1/h$a;->d(Lb1/g;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc1/b$a;->q:Z

    .line 2
    iget-object v0, p0, Lc1/b$a;->p:Lb1/h$a;

    invoke-virtual {p0, p1}, Lc1/b$a;->b(Landroid/database/sqlite/SQLiteDatabase;)Lc1/a;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lb1/h$a;->e(Lb1/g;II)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lc1/b$a;->q:Z

    if-nez v0, :cond_d

    .line 2
    iget-object v0, p0, Lc1/b$a;->p:Lb1/h$a;

    invoke-virtual {p0, p1}, Lc1/b$a;->b(Landroid/database/sqlite/SQLiteDatabase;)Lc1/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb1/h$a;->f(Lb1/g;)V

    :cond_d
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc1/b$a;->q:Z

    .line 2
    iget-object v0, p0, Lc1/b$a;->p:Lb1/h$a;

    invoke-virtual {p0, p1}, Lc1/b$a;->b(Landroid/database/sqlite/SQLiteDatabase;)Lc1/a;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lb1/h$a;->g(Lb1/g;II)V

    return-void
.end method

###### Class c1.b.a.C0089a (c1.b$a$a)
.class Lc1/b$a$a;
.super Ljava/lang/Object;
.source "FrameworkSQLiteOpenHelper.java"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc1/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Lc1/a;Lb1/h$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb1/h$a;

.field final synthetic b:[Lc1/a;


# direct methods
.method constructor <init>(Lb1/h$a;[Lc1/a;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lc1/b$a$a;->a:Lb1/h$a;

    iput-object p2, p0, Lc1/b$a$a;->b:[Lc1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lc1/b$a$a;->a:Lb1/h$a;

    iget-object v1, p0, Lc1/b$a$a;->b:[Lc1/a;

    invoke-static {v1, p1}, Lc1/b$a;->c([Lc1/a;Landroid/database/sqlite/SQLiteDatabase;)Lc1/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb1/h$a;->c(Lb1/g;)V

    return-void
.end method
