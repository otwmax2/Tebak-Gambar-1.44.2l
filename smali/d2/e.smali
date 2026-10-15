###### Class d2.e (d2.e)
.class public Ld2/e;
.super Ljava/lang/Object;
.source "DiskLruCacheWrapper.java"

# interfaces
.implements Ld2/a;


# static fields
.field private static f:Ld2/e;


# instance fields
.field private final a:Ld2/c;

.field private final b:Ld2/j;

.field private final c:Ljava/io/File;

.field private final d:I

.field private e:Lw1/a;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method protected constructor <init>(Ljava/io/File;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ld2/c;

    invoke-direct {v0}, Ld2/c;-><init>()V

    iput-object v0, p0, Ld2/e;->a:Ld2/c;

    .line 3
    iput-object p1, p0, Ld2/e;->c:Ljava/io/File;

    .line 4
    iput p2, p0, Ld2/e;->d:I

    .line 5
    new-instance p1, Ld2/j;

    invoke-direct {p1}, Ld2/j;-><init>()V

    iput-object p1, p0, Ld2/e;->b:Ld2/j;

    return-void
.end method

.method public static declared-synchronized d(Ljava/io/File;I)Ld2/a;
    .registers 4

    const-class v0, Ld2/e;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Ld2/e;->f:Ld2/e;

    if-nez v1, :cond_e

    .line 2
    new-instance v1, Ld2/e;

    invoke-direct {v1, p0, p1}, Ld2/e;-><init>(Ljava/io/File;I)V

    sput-object v1, Ld2/e;->f:Ld2/e;

    .line 3
    :cond_e
    sget-object p0, Ld2/e;->f:Ld2/e;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized e()Lw1/a;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Ld2/e;->e:Lw1/a;

    if-nez v0, :cond_11

    .line 2
    iget-object v0, p0, Ld2/e;->c:Ljava/io/File;

    iget v1, p0, Ld2/e;->d:I

    int-to-long v1, v1

    const/4 v3, 0x1

    invoke-static {v0, v3, v3, v1, v2}, Lw1/a;->r(Ljava/io/File;IIJ)Lw1/a;

    move-result-object v0

    iput-object v0, p0, Ld2/e;->e:Lw1/a;

    .line 3
    :cond_11
    iget-object v0, p0, Ld2/e;->e:Lw1/a;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Lz1/c;Ld2/a$b;)V
    .registers 6

    const-string v0, "DiskLruCacheWrapper"

    .line 1
    iget-object v1, p0, Ld2/e;->b:Ld2/j;

    invoke-virtual {v1, p1}, Ld2/j;->a(Lz1/c;)Ljava/lang/String;

    move-result-object v1

    .line 2
    iget-object v2, p0, Ld2/e;->a:Ld2/c;

    invoke-virtual {v2, p1}, Ld2/c;->a(Lz1/c;)V

    .line 3
    :try_start_d
    invoke-direct {p0}, Ld2/e;->e()Lw1/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lw1/a;->n(Ljava/lang/String;)Lw1/a$b;

    move-result-object v1
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_15} :catch_36
    .catchall {:try_start_d .. :try_end_15} :catchall_34

    if-eqz v1, :cond_2e

    const/4 v2, 0x0

    .line 4
    :try_start_18
    invoke-virtual {v1, v2}, Lw1/a$b;->f(I)Ljava/io/File;

    move-result-object v2

    .line 5
    invoke-interface {p2, v2}, Ld2/a$b;->a(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_25

    .line 6
    invoke-virtual {v1}, Lw1/a$b;->e()V
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_29

    .line 7
    :cond_25
    :try_start_25
    invoke-virtual {v1}, Lw1/a$b;->b()V

    goto :goto_2e

    :catchall_29
    move-exception p2

    invoke-virtual {v1}, Lw1/a$b;->b()V

    throw p2
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2e} :catch_36
    .catchall {:try_start_25 .. :try_end_2e} :catchall_34

    .line 8
    :cond_2e
    :goto_2e
    iget-object p2, p0, Ld2/e;->a:Ld2/c;

    invoke-virtual {p2, p1}, Ld2/c;->b(Lz1/c;)V

    goto :goto_44

    :catchall_34
    move-exception p2

    goto :goto_45

    :catch_36
    move-exception p2

    const/4 v1, 0x5

    .line 9
    :try_start_38
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string v1, "Unable to put to disk cache"

    .line 10
    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_38 .. :try_end_43} :catchall_34

    goto :goto_2e

    :goto_44
    return-void

    .line 11
    :goto_45
    iget-object v0, p0, Ld2/e;->a:Ld2/c;

    invoke-virtual {v0, p1}, Ld2/c;->b(Lz1/c;)V

    goto :goto_4c

    :goto_4b
    throw p2

    :goto_4c
    goto :goto_4b
.end method

.method public b(Lz1/c;)V
    .registers 4

    .line 1
    iget-object v0, p0, Ld2/e;->b:Ld2/j;

    invoke-virtual {v0, p1}, Ld2/j;->a(Lz1/c;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :try_start_6
    invoke-direct {p0}, Ld2/e;->e()Lw1/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lw1/a;->w(Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_e

    goto :goto_1d

    :catch_e
    move-exception p1

    const/4 v0, 0x5

    const-string v1, "DiskLruCacheWrapper"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "Unable to delete from disk cache"

    .line 4
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    :goto_1d
    return-void
.end method

.method public c(Lz1/c;)Ljava/io/File;
    .registers 5

    .line 1
    iget-object v0, p0, Ld2/e;->b:Ld2/j;

    invoke-virtual {v0, p1}, Ld2/j;->a(Lz1/c;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    :try_start_7
    invoke-direct {p0}, Ld2/e;->e()Lw1/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lw1/a;->p(Ljava/lang/String;)Lw1/a$d;

    move-result-object p1

    if-eqz p1, :cond_27

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1}, Lw1/a$d;->a(I)Ljava/io/File;

    move-result-object p1
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_16} :catch_18

    move-object v0, p1

    goto :goto_27

    :catch_18
    move-exception p1

    const/4 v1, 0x5

    const-string v2, "DiskLruCacheWrapper"

    .line 4
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "Unable to get from disk cache"

    .line 5
    invoke-static {v2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_27
    :goto_27
    return-object v0
.end method
