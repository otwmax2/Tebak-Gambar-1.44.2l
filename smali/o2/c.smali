###### Class o2.c (o2.c)
.class public Lo2/c;
.super Ljava/lang/Object;
.source "GifBitmapWrapperResourceDecoder.java"

# interfaces
.implements Lz1/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo2/c$b;,
        Lo2/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz1/e<",
        "Lg2/g;",
        "Lo2/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final g:Lo2/c$b;

.field private static final h:Lo2/c$a;


# instance fields
.field private final a:Lz1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/e<",
            "Lg2/g;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lz1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/e<",
            "Ljava/io/InputStream;",
            "Ln2/b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lc2/c;

.field private final d:Lo2/c$b;

.field private final e:Lo2/c$a;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lo2/c$b;

    invoke-direct {v0}, Lo2/c$b;-><init>()V

    sput-object v0, Lo2/c;->g:Lo2/c$b;

    .line 2
    new-instance v0, Lo2/c$a;

    invoke-direct {v0}, Lo2/c$a;-><init>()V

    sput-object v0, Lo2/c;->h:Lo2/c$a;

    return-void
.end method

.method public constructor <init>(Lz1/e;Lz1/e;Lc2/c;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/e<",
            "Lg2/g;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lz1/e<",
            "Ljava/io/InputStream;",
            "Ln2/b;",
            ">;",
            "Lc2/c;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v4, Lo2/c;->g:Lo2/c$b;

    sget-object v5, Lo2/c;->h:Lo2/c$a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lo2/c;-><init>(Lz1/e;Lz1/e;Lc2/c;Lo2/c$b;Lo2/c$a;)V

    return-void
.end method

.method constructor <init>(Lz1/e;Lz1/e;Lc2/c;Lo2/c$b;Lo2/c$a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/e<",
            "Lg2/g;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lz1/e<",
            "Ljava/io/InputStream;",
            "Ln2/b;",
            ">;",
            "Lc2/c;",
            "Lo2/c$b;",
            "Lo2/c$a;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lo2/c;->a:Lz1/e;

    .line 4
    iput-object p2, p0, Lo2/c;->b:Lz1/e;

    .line 5
    iput-object p3, p0, Lo2/c;->c:Lc2/c;

    .line 6
    iput-object p4, p0, Lo2/c;->d:Lo2/c$b;

    .line 7
    iput-object p5, p0, Lo2/c;->e:Lo2/c$a;

    return-void
.end method

.method private d(Lg2/g;II[B)Lo2/a;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg2/g;->b()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lo2/c;->g(Lg2/g;II[B)Lo2/a;

    move-result-object p1

    goto :goto_f

    .line 3
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lo2/c;->e(Lg2/g;II)Lo2/a;

    move-result-object p1

    :goto_f
    return-object p1
.end method

.method private e(Lg2/g;II)Lo2/a;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo2/c;->a:Lz1/e;

    invoke-interface {v0, p1, p2, p3}, Lz1/e;->b(Ljava/lang/Object;II)Lb2/l;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_f

    .line 2
    new-instance p3, Lo2/a;

    invoke-direct {p3, p1, p2}, Lo2/a;-><init>(Lb2/l;Lb2/l;)V

    move-object p2, p3

    :cond_f
    return-object p2
.end method

.method private f(Ljava/io/InputStream;II)Lo2/a;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo2/c;->b:Lz1/e;

    invoke-interface {v0, p1, p2, p3}, Lz1/e;->b(Ljava/lang/Object;II)Lb2/l;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2d

    .line 2
    invoke-interface {p1}, Lb2/l;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ln2/b;

    .line 3
    invoke-virtual {p3}, Ln2/b;->f()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1c

    .line 4
    new-instance p3, Lo2/a;

    invoke-direct {p3, p2, p1}, Lo2/a;-><init>(Lb2/l;Lb2/l;)V

    goto :goto_2c

    .line 5
    :cond_1c
    new-instance p1, Lk2/c;

    invoke-virtual {p3}, Ln2/b;->e()Landroid/graphics/Bitmap;

    move-result-object p3

    iget-object v0, p0, Lo2/c;->c:Lc2/c;

    invoke-direct {p1, p3, v0}, Lk2/c;-><init>(Landroid/graphics/Bitmap;Lc2/c;)V

    .line 6
    new-instance p3, Lo2/a;

    invoke-direct {p3, p1, p2}, Lo2/a;-><init>(Lb2/l;Lb2/l;)V

    :goto_2c
    move-object p2, p3

    :cond_2d
    return-object p2
.end method

.method private g(Lg2/g;II[B)Lo2/a;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo2/c;->e:Lo2/c$a;

    invoke-virtual {p1}, Lg2/g;->b()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lo2/c$a;->a(Ljava/io/InputStream;[B)Ljava/io/InputStream;

    move-result-object p4

    const/16 v0, 0x800

    .line 2
    invoke-virtual {p4, v0}, Ljava/io/InputStream;->mark(I)V

    .line 3
    iget-object v0, p0, Lo2/c;->d:Lo2/c$b;

    invoke-virtual {v0, p4}, Lo2/c$b;->a(Ljava/io/InputStream;)Lk2/l$a;

    move-result-object v0

    .line 4
    invoke-virtual {p4}, Ljava/io/InputStream;->reset()V

    .line 5
    sget-object v1, Lk2/l$a;->p:Lk2/l$a;

    if-ne v0, v1, :cond_21

    .line 6
    invoke-direct {p0, p4, p2, p3}, Lo2/c;->f(Ljava/io/InputStream;II)Lo2/a;

    move-result-object v0

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    if-nez v0, :cond_31

    .line 7
    new-instance v0, Lg2/g;

    invoke-virtual {p1}, Lg2/g;->a()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-direct {v0, p4, p1}, Lg2/g;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    .line 8
    invoke-direct {p0, v0, p2, p3}, Lo2/c;->e(Lg2/g;II)Lo2/a;

    move-result-object v0

    :cond_31
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lo2/c;->f:Ljava/lang/String;

    if-nez v0, :cond_21

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo2/c;->b:Lz1/e;

    invoke-interface {v1}, Lz1/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo2/c;->a:Lz1/e;

    invoke-interface {v1}, Lz1/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo2/c;->f:Ljava/lang/String;

    .line 3
    :cond_21
    iget-object v0, p0, Lo2/c;->f:Ljava/lang/String;

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
    check-cast p1, Lg2/g;

    invoke-virtual {p0, p1, p2, p3}, Lo2/c;->c(Lg2/g;II)Lb2/l;

    move-result-object p1

    return-object p1
.end method

.method public c(Lg2/g;II)Lb2/l;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg2/g;",
            "II)",
            "Lb2/l<",
            "Lo2/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lx2/a;->a()Lx2/a;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lx2/a;->b()[B

    move-result-object v1

    .line 3
    :try_start_8
    invoke-direct {p0, p1, p2, p3, v1}, Lo2/c;->d(Lg2/g;II[B)Lo2/a;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_19

    .line 4
    invoke-virtual {v0, v1}, Lx2/a;->c([B)Z

    if-eqz p1, :cond_17

    .line 5
    new-instance p2, Lo2/b;

    invoke-direct {p2, p1}, Lo2/b;-><init>(Lo2/a;)V

    goto :goto_18

    :cond_17
    const/4 p2, 0x0

    :goto_18
    return-object p2

    :catchall_19
    move-exception p1

    .line 6
    invoke-virtual {v0, v1}, Lx2/a;->c([B)Z

    throw p1
.end method

###### Class o2.c.a (o2.c$a)
.class Lo2/c$a;
.super Ljava/lang/Object;
.source "GifBitmapWrapperResourceDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo2/c;
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
.method public a(Ljava/io/InputStream;[B)Ljava/io/InputStream;
    .registers 4

    .line 1
    new-instance v0, Lk2/o;

    invoke-direct {v0, p1, p2}, Lk2/o;-><init>(Ljava/io/InputStream;[B)V

    return-object v0
.end method

###### Class o2.c.b (o2.c$b)
.class Lo2/c$b;
.super Ljava/lang/Object;
.source "GifBitmapWrapperResourceDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lk2/l$a;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lk2/l;

    invoke-direct {v0, p1}, Lk2/l;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lk2/l;->d()Lk2/l$a;

    move-result-object p1

    return-object p1
.end method
