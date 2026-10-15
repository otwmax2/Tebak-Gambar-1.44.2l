###### Class n2.i (n2.i)
.class public Ln2/i;
.super Ljava/lang/Object;
.source "GifResourceDecoder.java"

# interfaces
.implements Lz1/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln2/i$b;,
        Ln2/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz1/e<",
        "Ljava/io/InputStream;",
        "Ln2/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final f:Ln2/i$b;

.field private static final g:Ln2/i$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ln2/i$b;

.field private final c:Lc2/c;

.field private final d:Ln2/i$a;

.field private final e:Ln2/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ln2/i$b;

    invoke-direct {v0}, Ln2/i$b;-><init>()V

    sput-object v0, Ln2/i;->f:Ln2/i$b;

    .line 2
    new-instance v0, Ln2/i$a;

    invoke-direct {v0}, Ln2/i$a;-><init>()V

    sput-object v0, Ln2/i;->g:Ln2/i$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc2/c;)V
    .registers 5

    .line 1
    sget-object v0, Ln2/i;->f:Ln2/i$b;

    sget-object v1, Ln2/i;->g:Ln2/i$a;

    invoke-direct {p0, p1, p2, v0, v1}, Ln2/i;-><init>(Landroid/content/Context;Lc2/c;Ln2/i$b;Ln2/i$a;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lc2/c;Ln2/i$b;Ln2/i$a;)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ln2/i;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Ln2/i;->c:Lc2/c;

    .line 5
    iput-object p4, p0, Ln2/i;->d:Ln2/i$a;

    .line 6
    new-instance p1, Ln2/a;

    invoke-direct {p1, p2}, Ln2/a;-><init>(Lc2/c;)V

    iput-object p1, p0, Ln2/i;->e:Ln2/a;

    .line 7
    iput-object p3, p0, Ln2/i;->b:Ln2/i$b;

    return-void
.end method

.method private d([BIILx1/d;Lx1/a;)Ln2/d;
    .registers 16

    .line 1
    invoke-virtual {p4}, Lx1/d;->c()Lx1/c;

    move-result-object v7

    .line 2
    invoke-virtual {v7}, Lx1/c;->a()I

    move-result p4

    const/4 v0, 0x0

    if-lez p4, :cond_32

    invoke-virtual {v7}, Lx1/c;->b()I

    move-result p4

    if-eqz p4, :cond_12

    goto :goto_32

    .line 3
    :cond_12
    invoke-direct {p0, p5, v7, p1}, Ln2/i;->e(Lx1/a;Lx1/c;[B)Landroid/graphics/Bitmap;

    move-result-object v9

    if-nez v9, :cond_19

    return-object v0

    .line 4
    :cond_19
    invoke-static {}, Lj2/d;->c()Lj2/d;

    move-result-object v4

    .line 5
    new-instance p4, Ln2/b;

    iget-object v1, p0, Ln2/i;->a:Landroid/content/Context;

    iget-object v2, p0, Ln2/i;->e:Ln2/a;

    iget-object v3, p0, Ln2/i;->c:Lc2/c;

    move-object v0, p4

    move v5, p2

    move v6, p3

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Ln2/b;-><init>(Landroid/content/Context;Lx1/a$a;Lc2/c;Lz1/g;IILx1/c;[BLandroid/graphics/Bitmap;)V

    .line 6
    new-instance p1, Ln2/d;

    invoke-direct {p1, p4}, Ln2/d;-><init>(Ln2/b;)V

    return-object p1

    :cond_32
    :goto_32
    return-object v0
.end method

.method private e(Lx1/a;Lx1/c;[B)Landroid/graphics/Bitmap;
    .registers 4

    .line 1
    invoke-virtual {p1, p2, p3}, Lx1/a;->n(Lx1/c;[B)V

    .line 2
    invoke-virtual {p1}, Lx1/a;->a()V

    .line 3
    invoke-virtual {p1}, Lx1/a;->i()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private static f(Ljava/io/InputStream;)[B
    .registers 5

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_7
    new-array v1, v1, [B

    .line 2
    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 4
    :cond_15
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_18} :catch_19

    goto :goto_21

    :catch_19
    move-exception p0

    const-string v1, "GifResourceDecoder"

    const-string v2, "Error reading data from stream"

    .line 5
    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :goto_21
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;II)Lb2/l;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Ln2/i;->c(Ljava/io/InputStream;II)Ln2/d;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/io/InputStream;II)Ln2/d;
    .registers 11

    .line 1
    invoke-static {p1}, Ln2/i;->f(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 2
    iget-object p1, p0, Ln2/i;->b:Ln2/i$b;

    invoke-virtual {p1, v1}, Ln2/i$b;->a([B)Lx1/d;

    move-result-object p1

    .line 3
    iget-object v0, p0, Ln2/i;->d:Ln2/i$a;

    iget-object v2, p0, Ln2/i;->e:Ln2/a;

    invoke-virtual {v0, v2}, Ln2/i$a;->a(Lx1/a$a;)Lx1/a;

    move-result-object v6

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p1

    move-object v5, v6

    .line 4
    :try_start_17
    invoke-direct/range {v0 .. v5}, Ln2/i;->d([BIILx1/d;Lx1/a;)Ln2/d;

    move-result-object p2
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_26

    .line 5
    iget-object p3, p0, Ln2/i;->b:Ln2/i$b;

    invoke-virtual {p3, p1}, Ln2/i$b;->b(Lx1/d;)V

    .line 6
    iget-object p1, p0, Ln2/i;->d:Ln2/i$a;

    invoke-virtual {p1, v6}, Ln2/i$a;->b(Lx1/a;)V

    return-object p2

    :catchall_26
    move-exception p2

    .line 7
    iget-object p3, p0, Ln2/i;->b:Ln2/i$b;

    invoke-virtual {p3, p1}, Ln2/i$b;->b(Lx1/d;)V

    .line 8
    iget-object p1, p0, Ln2/i;->d:Ln2/i$a;

    invoke-virtual {p1, v6}, Ln2/i$a;->b(Lx1/a;)V

    throw p2
.end method

###### Class n2.i.a (n2.i$a)
.class Ln2/i$a;
.super Ljava/lang/Object;
.source "GifResourceDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lx1/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lx2/h;->d(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Ln2/i$a;->a:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lx1/a$a;)Lx1/a;
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Ln2/i$a;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx1/a;

    if-nez v0, :cond_10

    .line 2
    new-instance v0, Lx1/a;

    invoke-direct {v0, p1}, Lx1/a;-><init>(Lx1/a$a;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 3
    :cond_10
    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lx1/a;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p1}, Lx1/a;->b()V

    .line 2
    iget-object v0, p0, Ln2/i$a;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 3
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class n2.i.b (n2.i$b)
.class Ln2/i$b;
.super Ljava/lang/Object;
.source "GifResourceDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lx1/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lx2/h;->d(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Ln2/i$b;->a:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public declared-synchronized a([B)Lx1/d;
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Ln2/i$b;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx1/d;

    if-nez v0, :cond_10

    .line 2
    new-instance v0, Lx1/d;

    invoke-direct {v0}, Lx1/d;-><init>()V

    .line 3
    :cond_10
    invoke-virtual {v0, p1}, Lx1/d;->o([B)Lx1/d;

    move-result-object p1
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object p1

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lx1/d;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p1}, Lx1/d;->a()V

    .line 2
    iget-object v0, p0, Ln2/i$b;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 3
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method
