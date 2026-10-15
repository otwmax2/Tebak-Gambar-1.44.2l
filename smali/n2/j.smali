###### Class n2.j (n2.j)
.class public Ln2/j;
.super Ljava/lang/Object;
.source "GifResourceEncoder.java"

# interfaces
.implements Lz1/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln2/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz1/f<",
        "Ln2/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Ln2/j$a;


# instance fields
.field private final a:Lx1/a$a;

.field private final b:Lc2/c;

.field private final c:Ln2/j$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ln2/j$a;

    invoke-direct {v0}, Ln2/j$a;-><init>()V

    sput-object v0, Ln2/j;->d:Ln2/j$a;

    return-void
.end method

.method public constructor <init>(Lc2/c;)V
    .registers 3

    .line 1
    sget-object v0, Ln2/j;->d:Ln2/j$a;

    invoke-direct {p0, p1, v0}, Ln2/j;-><init>(Lc2/c;Ln2/j$a;)V

    return-void
.end method

.method constructor <init>(Lc2/c;Ln2/j$a;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ln2/j;->b:Lc2/c;

    .line 4
    new-instance v0, Ln2/a;

    invoke-direct {v0, p1}, Ln2/a;-><init>(Lc2/c;)V

    iput-object v0, p0, Ln2/j;->a:Lx1/a$a;

    .line 5
    iput-object p2, p0, Ln2/j;->c:Ln2/j$a;

    return-void
.end method

.method private c([B)Lx1/a;
    .registers 5

    .line 1
    iget-object v0, p0, Ln2/j;->c:Ln2/j$a;

    invoke-virtual {v0}, Ln2/j$a;->d()Lx1/d;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lx1/d;->o([B)Lx1/d;

    .line 3
    invoke-virtual {v0}, Lx1/d;->c()Lx1/c;

    move-result-object v0

    .line 4
    iget-object v1, p0, Ln2/j;->c:Ln2/j$a;

    iget-object v2, p0, Ln2/j;->a:Lx1/a$a;

    invoke-virtual {v1, v2}, Ln2/j$a;->a(Lx1/a$a;)Lx1/a;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0, p1}, Lx1/a;->n(Lx1/c;[B)V

    .line 6
    invoke-virtual {v1}, Lx1/a;->a()V

    return-object v1
.end method

.method private e(Landroid/graphics/Bitmap;Lz1/g;Ln2/b;)Lb2/l;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lz1/g<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ln2/b;",
            ")",
            "Lb2/l<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln2/j;->c:Ln2/j$a;

    iget-object v1, p0, Ln2/j;->b:Lc2/c;

    invoke-virtual {v0, p1, v1}, Ln2/j$a;->c(Landroid/graphics/Bitmap;Lc2/c;)Lb2/l;

    move-result-object p1

    .line 2
    invoke-virtual {p3}, Ln2/b;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Ln2/b;->getIntrinsicHeight()I

    move-result p3

    invoke-interface {p2, p1, v0, p3}, Lz1/g;->b(Lb2/l;II)Lb2/l;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1d

    .line 4
    invoke-interface {p1}, Lb2/l;->b()V

    :cond_1d
    return-object p2
.end method

.method private f([BLjava/io/OutputStream;)Z
    .registers 4

    .line 1
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p1, 0x1

    goto :goto_15

    :catch_5
    move-exception p1

    const/4 p2, 0x3

    const-string v0, "GifEncoder"

    .line 2
    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_14

    const-string p2, "Failed to write data to output stream in GifResourceEncoder"

    .line 3
    invoke-static {v0, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .registers 3

    .line 1
    check-cast p1, Lb2/l;

    invoke-virtual {p0, p1, p2}, Ln2/j;->d(Lb2/l;Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method

.method public d(Lb2/l;Ljava/io/OutputStream;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb2/l<",
            "Ln2/b;",
            ">;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-static {}, Lx2/d;->b()J

    move-result-wide v0

    .line 2
    invoke-interface {p1}, Lb2/l;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln2/b;

    .line 3
    invoke-virtual {p1}, Ln2/b;->g()Lz1/g;

    move-result-object v2

    .line 4
    instance-of v3, v2, Lj2/d;

    if-eqz v3, :cond_1b

    .line 5
    invoke-virtual {p1}, Ln2/b;->d()[B

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ln2/j;->f([BLjava/io/OutputStream;)Z

    move-result p1

    return p1

    .line 6
    :cond_1b
    invoke-virtual {p1}, Ln2/b;->d()[B

    move-result-object v3

    invoke-direct {p0, v3}, Ln2/j;->c([B)Lx1/a;

    move-result-object v3

    .line 7
    iget-object v4, p0, Ln2/j;->c:Ln2/j$a;

    invoke-virtual {v4}, Ln2/j$a;->b()Ly1/a;

    move-result-object v4

    .line 8
    invoke-virtual {v4, p2}, Ly1/a;->h(Ljava/io/OutputStream;)Z

    move-result p2

    const/4 v5, 0x0

    if-nez p2, :cond_31

    return v5

    :cond_31
    const/4 p2, 0x0

    .line 9
    :goto_32
    invoke-virtual {v3}, Lx1/a;->f()I

    move-result v6

    if-ge p2, v6, :cond_69

    .line 10
    invoke-virtual {v3}, Lx1/a;->i()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 11
    invoke-direct {p0, v6, v2, p1}, Ln2/j;->e(Landroid/graphics/Bitmap;Lz1/g;Ln2/b;)Lb2/l;

    move-result-object v6

    .line 12
    :try_start_40
    invoke-interface {v6}, Lb2/l;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v7}, Ly1/a;->a(Landroid/graphics/Bitmap;)Z

    move-result v7
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_64

    if-nez v7, :cond_50

    .line 13
    invoke-interface {v6}, Lb2/l;->b()V

    return v5

    .line 14
    :cond_50
    :try_start_50
    invoke-virtual {v3}, Lx1/a;->d()I

    move-result v7

    .line 15
    invoke-virtual {v3, v7}, Lx1/a;->e(I)I

    move-result v7

    .line 16
    invoke-virtual {v4, v7}, Ly1/a;->f(I)V

    .line 17
    invoke-virtual {v3}, Lx1/a;->a()V
    :try_end_5e
    .catchall {:try_start_50 .. :try_end_5e} :catchall_64

    .line 18
    invoke-interface {v6}, Lb2/l;->b()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_32

    :catchall_64
    move-exception p1

    invoke-interface {v6}, Lb2/l;->b()V

    throw p1

    .line 19
    :cond_69
    invoke-virtual {v4}, Ly1/a;->d()Z

    move-result p2

    const/4 v2, 0x2

    const-string v4, "GifEncoder"

    .line 20
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encoded gif with "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lx1/a;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " frames and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ln2/b;->d()[B

    move-result-object p1

    array-length p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes in "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lx2/d;->a(J)D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ac
    return p2
.end method

###### Class n2.j.a (n2.j$a)
.class Ln2/j$a;
.super Ljava/lang/Object;
.source "GifResourceEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln2/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx1/a$a;)Lx1/a;
    .registers 3

    .line 1
    new-instance v0, Lx1/a;

    invoke-direct {v0, p1}, Lx1/a;-><init>(Lx1/a$a;)V

    return-object v0
.end method

.method public b()Ly1/a;
    .registers 2

    .line 1
    new-instance v0, Ly1/a;

    invoke-direct {v0}, Ly1/a;-><init>()V

    return-object v0
.end method

.method public c(Landroid/graphics/Bitmap;Lc2/c;)Lb2/l;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lc2/c;",
            ")",
            "Lb2/l<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lk2/c;

    invoke-direct {v0, p1, p2}, Lk2/c;-><init>(Landroid/graphics/Bitmap;Lc2/c;)V

    return-object v0
.end method

.method public d()Lx1/d;
    .registers 2

    .line 1
    new-instance v0, Lx1/d;

    invoke-direct {v0}, Lx1/d;-><init>()V

    return-object v0
.end method
