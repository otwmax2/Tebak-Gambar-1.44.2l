###### Class androidx.room.j0 (androidx.room.j0)
.class Landroidx/room/j0;
.super Ljava/lang/Object;
.source "SQLiteCopyOpenHelper.java"

# interfaces
.implements Lb1/h;
.implements Landroidx/room/j;


# instance fields
.field private final o:Landroid/content/Context;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/io/File;

.field private final r:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final s:I

.field private final t:Lb1/h;

.field private u:Landroidx/room/i;

.field private v:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;ILb1/h;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;I",
            "Lb1/h;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/j0;->o:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Landroidx/room/j0;->p:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Landroidx/room/j0;->q:Ljava/io/File;

    .line 5
    iput-object p4, p0, Landroidx/room/j0;->r:Ljava/util/concurrent/Callable;

    .line 6
    iput p5, p0, Landroidx/room/j0;->s:I

    .line 7
    iput-object p6, p0, Landroidx/room/j0;->t:Lb1/h;

    return-void
.end method

.method private c(Ljava/io/File;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/j0;->p:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 2
    iget-object v0, p0, Landroidx/room/j0;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/j0;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    goto :goto_33

    .line 3
    :cond_15
    iget-object v0, p0, Landroidx/room/j0;->q:Ljava/io/File;

    if-eqz v0, :cond_25

    .line 4
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Landroidx/room/j0;->q:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    goto :goto_33

    .line 5
    :cond_25
    iget-object v0, p0, Landroidx/room/j0;->r:Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_bd

    .line 6
    :try_start_29
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2f} :catch_b4

    .line 7
    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    .line 8
    :goto_33
    iget-object v1, p0, Landroidx/room/j0;->o:Landroid/content/Context;

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "room-copy-helper"

    const-string v3, ".tmp"

    .line 10
    invoke-static {v2, v3, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 12
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 13
    invoke-static {v0, v2}, Lz0/d;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/FileChannel;)V

    .line 14
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_7e

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7e

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_63

    goto :goto_7e

    .line 16
    :cond_63
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create directories for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 18
    :cond_7e
    :goto_7e
    invoke-direct {p0, v1, p2}, Landroidx/room/j0;->d(Ljava/io/File;Z)V

    .line 19
    invoke-virtual {v1, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_88

    return-void

    .line 20
    :cond_88
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to move intermediate file ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") to destination ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_b4
    move-exception p1

    .line 23
    new-instance p2, Ljava/io/IOException;

    const-string v0, "inputStreamCallable exception on call"

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 24
    :cond_bd
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "copyFromAssetPath, copyFromFile and copyFromInputStream are all null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d(Ljava/io/File;Z)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/room/j0;->u:Landroidx/room/i;

    if-eqz p1, :cond_6

    iget-object p1, p1, Landroidx/room/i;->f:Landroidx/room/h0$e;

    :cond_6
    return-void
.end method

.method private f(Z)V
    .registers 10

    const-string v0, "ROOM"

    .line 1
    invoke-virtual {p0}, Landroidx/room/j0;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    .line 2
    iget-object v2, p0, Landroidx/room/j0;->o:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 3
    iget-object v3, p0, Landroidx/room/j0;->u:Landroidx/room/i;

    if-eqz v3, :cond_17

    iget-boolean v3, v3, Landroidx/room/i;->m:Z

    if-eqz v3, :cond_15

    goto :goto_17

    :cond_15
    const/4 v3, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v3, 0x1

    .line 4
    :goto_18
    new-instance v4, Lz0/a;

    iget-object v5, p0, Landroidx/room/j0;->o:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v1, v5, v3}, Lz0/a;-><init>(Ljava/lang/String;Ljava/io/File;Z)V

    .line 5
    :try_start_23
    invoke-virtual {v4}, Lz0/a;->b()V

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_94

    const-string v5, "Unable to copy database file."

    if-nez v3, :cond_3c

    .line 7
    :try_start_2e
    invoke-direct {p0, v2, p1}, Landroidx/room/j0;->c(Ljava/io/File;Z)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_35
    .catchall {:try_start_2e .. :try_end_31} :catchall_94

    .line 8
    invoke-virtual {v4}, Lz0/a;->c()V

    return-void

    :catch_35
    move-exception p1

    .line 9
    :try_start_36
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v5, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 10
    :cond_3c
    iget-object v3, p0, Landroidx/room/j0;->u:Landroidx/room/i;
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_94

    if-nez v3, :cond_44

    .line 11
    invoke-virtual {v4}, Lz0/a;->c()V

    return-void

    .line 12
    :cond_44
    :try_start_44
    invoke-static {v2}, Lz0/c;->c(Ljava/io/File;)I

    move-result v3
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_48} :catch_8a
    .catchall {:try_start_44 .. :try_end_48} :catchall_94

    .line 13
    :try_start_48
    iget v6, p0, Landroidx/room/j0;->s:I
    :try_end_4a
    .catchall {:try_start_48 .. :try_end_4a} :catchall_94

    if-ne v3, v6, :cond_50

    .line 14
    invoke-virtual {v4}, Lz0/a;->c()V

    return-void

    .line 15
    :cond_50
    :try_start_50
    iget-object v7, p0, Landroidx/room/j0;->u:Landroidx/room/i;

    invoke-virtual {v7, v3, v6}, Landroidx/room/i;->a(II)Z

    move-result v3
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_94

    if-eqz v3, :cond_5c

    .line 16
    invoke-virtual {v4}, Lz0/a;->c()V

    return-void

    .line 17
    :cond_5c
    :try_start_5c
    iget-object v3, p0, Landroidx/room/j0;->o:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v3
    :try_end_62
    .catchall {:try_start_5c .. :try_end_62} :catchall_94

    if-eqz v3, :cond_6d

    .line 18
    :try_start_64
    invoke-direct {p0, v2, p1}, Landroidx/room/j0;->c(Ljava/io/File;Z)V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68
    .catchall {:try_start_64 .. :try_end_67} :catchall_94

    goto :goto_86

    :catch_68
    move-exception p1

    .line 19
    :try_start_69
    invoke-static {v0, v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_86

    .line 20
    :cond_6d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete database file ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") for a copy destructive migration."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_69 .. :try_end_86} :catchall_94

    .line 21
    :goto_86
    invoke-virtual {v4}, Lz0/a;->c()V

    return-void

    :catch_8a
    move-exception p1

    :try_start_8b
    const-string v1, "Unable to read database version."

    .line 22
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_90
    .catchall {:try_start_8b .. :try_end_90} :catchall_94

    .line 23
    invoke-virtual {v4}, Lz0/a;->c()V

    return-void

    :catchall_94
    move-exception p1

    invoke-virtual {v4}, Lz0/a;->c()V

    .line 24
    throw p1
.end method


# virtual methods
.method public declared-synchronized K1()Lb1/g;
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Landroidx/room/j0;->v:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Landroidx/room/j0;->f(Z)V

    .line 3
    iput-boolean v0, p0, Landroidx/room/j0;->v:Z

    .line 4
    :cond_b
    iget-object v0, p0, Landroidx/room/j0;->t:Lb1/h;

    invoke-interface {v0}, Lb1/h;->K1()Lb1/g;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Lb1/h;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/j0;->t:Lb1/h;

    return-object v0
.end method

.method public declared-synchronized close()V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Landroidx/room/j0;->t:Lb1/h;

    invoke-interface {v0}, Lb1/h;->close()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/room/j0;->v:Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 3
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method e(Landroidx/room/i;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/room/j0;->u:Landroidx/room/i;

    return-void
.end method

.method public getDatabaseName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/j0;->t:Lb1/h;

    invoke-interface {v0}, Lb1/h;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/j0;->t:Lb1/h;

    invoke-interface {v0, p1}, Lb1/h;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method
