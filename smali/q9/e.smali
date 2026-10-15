###### Class q9.e (q9.e)
.class public final Lq9/e;
.super Ljava/lang/Object;
.source "FileTreeWalk.kt"

# interfaces
.implements Laa/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq9/e$c;,
        Lq9/e$a;,
        Lq9/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laa/b<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Lq9/f;

.field private final c:Ls9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls9/l<",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ls9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls9/l<",
            "Ljava/io/File;",
            "Lh9/t;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ls9/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls9/p<",
            "Ljava/io/File;",
            "Ljava/io/IOException;",
            "Lh9/t;",
            ">;"
        }
    .end annotation
.end field

.field private final f:I


# direct methods
.method public constructor <init>(Ljava/io/File;Lq9/f;)V
    .registers 13

    const-string v0, "start"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 10
    invoke-direct/range {v1 .. v9}, Lq9/e;-><init>(Ljava/io/File;Lq9/f;Ls9/l;Ls9/l;Ls9/p;IILt9/g;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Lq9/f;Ls9/l;Ls9/l;Ls9/p;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lq9/f;",
            "Ls9/l<",
            "-",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ls9/l<",
            "-",
            "Ljava/io/File;",
            "Lh9/t;",
            ">;",
            "Ls9/p<",
            "-",
            "Ljava/io/File;",
            "-",
            "Ljava/io/IOException;",
            "Lh9/t;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq9/e;->a:Ljava/io/File;

    .line 3
    iput-object p2, p0, Lq9/e;->b:Lq9/f;

    .line 4
    iput-object p3, p0, Lq9/e;->c:Ls9/l;

    .line 5
    iput-object p4, p0, Lq9/e;->d:Ls9/l;

    .line 6
    iput-object p5, p0, Lq9/e;->e:Ls9/p;

    .line 7
    iput p6, p0, Lq9/e;->f:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;Lq9/f;Ls9/l;Ls9/l;Ls9/p;IILt9/g;)V
    .registers 16

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_6

    .line 8
    sget-object p2, Lq9/f;->o:Lq9/f;

    :cond_6
    move-object v2, p2

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_12

    const p6, 0x7fffffff

    const v6, 0x7fffffff

    goto :goto_13

    :cond_12
    move v6, p6

    :goto_13
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 9
    invoke-direct/range {v0 .. v6}, Lq9/e;-><init>(Ljava/io/File;Lq9/f;Ls9/l;Ls9/l;Ls9/p;I)V

    return-void
.end method

.method public static final synthetic a(Lq9/e;)Lq9/f;
    .registers 1

    .line 1
    iget-object p0, p0, Lq9/e;->b:Lq9/f;

    return-object p0
.end method

.method public static final synthetic b(Lq9/e;)I
    .registers 1

    .line 1
    iget p0, p0, Lq9/e;->f:I

    return p0
.end method

.method public static final synthetic c(Lq9/e;)Ls9/l;
    .registers 1

    .line 1
    iget-object p0, p0, Lq9/e;->c:Ls9/l;

    return-object p0
.end method

.method public static final synthetic d(Lq9/e;)Ls9/p;
    .registers 1

    .line 1
    iget-object p0, p0, Lq9/e;->e:Ls9/p;

    return-object p0
.end method

.method public static final synthetic e(Lq9/e;)Ls9/l;
    .registers 1

    .line 1
    iget-object p0, p0, Lq9/e;->d:Ls9/l;

    return-object p0
.end method

.method public static final synthetic f(Lq9/e;)Ljava/io/File;
    .registers 1

    .line 1
    iget-object p0, p0, Lq9/e;->a:Ljava/io/File;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lq9/e$b;

    invoke-direct {v0, p0}, Lq9/e$b;-><init>(Lq9/e;)V

    return-object v0
.end method

###### Class q9.e.a (q9.e$a)
.class abstract Lq9/e$a;
.super Lq9/e$c;
.source "FileTreeWalk.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq9/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    const-string v0, "rootDir"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lq9/e$c;-><init>(Ljava/io/File;)V

    return-void
.end method

###### Class q9.e.b (q9.e$b)
.class final Lq9/e$b;
.super Li9/a;
.source "FileTreeWalk.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq9/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq9/e$b$a;,
        Lq9/e$b$c;,
        Lq9/e$b$b;,
        Lq9/e$b$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li9/a<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final q:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lq9/e$c;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic r:Lq9/e;


# direct methods
.method public constructor <init>(Lq9/e;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lq9/e$b;->r:Lq9/e;

    invoke-direct {p0}, Li9/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lq9/e$b;->q:Ljava/util/ArrayDeque;

    .line 3
    invoke-static {p1}, Lq9/e;->f(Lq9/e;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-static {p1}, Lq9/e;->f(Lq9/e;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lq9/e$b;->f(Ljava/io/File;)Lq9/e$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_3c

    .line 4
    :cond_22
    invoke-static {p1}, Lq9/e;->f(Lq9/e;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_39

    new-instance v1, Lq9/e$b$b;

    invoke-static {p1}, Lq9/e;->f(Lq9/e;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lq9/e$b$b;-><init>(Lq9/e$b;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_3c

    .line 5
    :cond_39
    invoke-virtual {p0}, Li9/a;->b()V

    :goto_3c
    return-void
.end method

.method private final f(Ljava/io/File;)Lq9/e$a;
    .registers 4

    .line 1
    iget-object v0, p0, Lq9/e$b;->r:Lq9/e;

    invoke-static {v0}, Lq9/e;->a(Lq9/e;)Lq9/f;

    move-result-object v0

    sget-object v1, Lq9/e$b$d;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    .line 2
    new-instance v0, Lq9/e$b$a;

    invoke-direct {v0, p0, p1}, Lq9/e$b$a;-><init>(Lq9/e$b;Ljava/io/File;)V

    goto :goto_25

    :cond_1a
    new-instance p1, Lh9/l;

    invoke-direct {p1}, Lh9/l;-><init>()V

    throw p1

    .line 3
    :cond_20
    new-instance v0, Lq9/e$b$c;

    invoke-direct {v0, p0, p1}, Lq9/e$b$c;-><init>(Lq9/e$b;Ljava/io/File;)V

    :goto_25
    return-object v0
.end method

.method private final g()Ljava/io/File;
    .registers 4

    .line 1
    :goto_0
    iget-object v0, p0, Lq9/e$b;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq9/e$c;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_c
    invoke-virtual {v0}, Lq9/e$c;->b()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_18

    .line 3
    iget-object v0, p0, Lq9/e$b;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_18
    invoke-virtual {v0}, Lq9/e$c;->a()Ljava/io/File;

    move-result-object v0

    invoke-static {v1, v0}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lq9/e$b;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget-object v2, p0, Lq9/e$b;->r:Lq9/e;

    invoke-static {v2}, Lq9/e;->b(Lq9/e;)I

    move-result v2

    if-lt v0, v2, :cond_37

    goto :goto_41

    .line 5
    :cond_37
    iget-object v0, p0, Lq9/e$b;->q:Ljava/util/ArrayDeque;

    invoke-direct {p0, v1}, Lq9/e$b;->f(Ljava/io/File;)Lq9/e$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_41
    :goto_41
    return-object v1
.end method


# virtual methods
.method protected a()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lq9/e$b;->g()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {p0, v0}, Li9/a;->d(Ljava/lang/Object;)V

    goto :goto_d

    .line 3
    :cond_a
    invoke-virtual {p0}, Li9/a;->b()V

    :goto_d
    return-void
.end method

###### Class q9.e.b.a (q9.e$b$a)
.class final Lq9/e$b$a;
.super Lq9/e$a;
.source "FileTreeWalk.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq9/e$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private b:Z

.field private c:[Ljava/io/File;

.field private d:I

.field private e:Z

.field final synthetic f:Lq9/e$b;


# direct methods
.method public constructor <init>(Lq9/e$b;Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const-string v0, "rootDir"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lq9/e$b$a;->f:Lq9/e$b;

    invoke-direct {p0, p2}, Lq9/e$a;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/io/File;
    .registers 12

    .line 1
    iget-boolean v0, p0, Lq9/e$b$a;->e:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_57

    iget-object v0, p0, Lq9/e$b$a;->c:[Ljava/io/File;

    if-nez v0, :cond_57

    .line 2
    iget-object v0, p0, Lq9/e$b$a;->f:Lq9/e$b;

    iget-object v0, v0, Lq9/e$b;->r:Lq9/e;

    invoke-static {v0}, Lq9/e;->c(Lq9/e;)Ls9/l;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lq9/e$c;->a()Ljava/io/File;

    move-result-object v4

    invoke-interface {v0, v4}, Ls9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v3, 0x1

    :cond_26
    if-eqz v3, :cond_29

    return-object v1

    .line 3
    :cond_29
    invoke-virtual {p0}, Lq9/e$c;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lq9/e$b$a;->c:[Ljava/io/File;

    if-nez v0, :cond_57

    .line 4
    iget-object v0, p0, Lq9/e$b$a;->f:Lq9/e$b;

    iget-object v0, v0, Lq9/e$b;->r:Lq9/e;

    invoke-static {v0}, Lq9/e;->d(Lq9/e;)Ls9/p;

    move-result-object v0

    if-eqz v0, :cond_55

    invoke-virtual {p0}, Lq9/e$c;->a()Ljava/io/File;

    move-result-object v3

    new-instance v10, Lq9/a;

    invoke-virtual {p0}, Lq9/e$c;->a()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    const-string v7, "Cannot list files in a directory"

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lq9/a;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILt9/g;)V

    invoke-interface {v0, v3, v10}, Ls9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_55
    iput-boolean v2, p0, Lq9/e$b$a;->e:Z

    .line 6
    :cond_57
    iget-object v0, p0, Lq9/e$b$a;->c:[Ljava/io/File;

    if-eqz v0, :cond_71

    iget v3, p0, Lq9/e$b$a;->d:I

    invoke-static {v0}, Lt9/m;->b(Ljava/lang/Object;)V

    array-length v0, v0

    if-ge v3, v0, :cond_71

    .line 7
    iget-object v0, p0, Lq9/e$b$a;->c:[Ljava/io/File;

    invoke-static {v0}, Lt9/m;->b(Ljava/lang/Object;)V

    iget v1, p0, Lq9/e$b$a;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lq9/e$b$a;->d:I

    aget-object v0, v0, v1

    return-object v0

    .line 8
    :cond_71
    iget-boolean v0, p0, Lq9/e$b$a;->b:Z

    if-nez v0, :cond_7c

    .line 9
    iput-boolean v2, p0, Lq9/e$b$a;->b:Z

    .line 10
    invoke-virtual {p0}, Lq9/e$c;->a()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 11
    :cond_7c
    iget-object v0, p0, Lq9/e$b$a;->f:Lq9/e$b;

    iget-object v0, v0, Lq9/e$b;->r:Lq9/e;

    invoke-static {v0}, Lq9/e;->e(Lq9/e;)Ls9/l;

    move-result-object v0

    if-eqz v0, :cond_8d

    invoke-virtual {p0}, Lq9/e$c;->a()Ljava/io/File;

    move-result-object v2

    invoke-interface {v0, v2}, Ls9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8d
    return-object v1
.end method

###### Class q9.e.b.C0223b (q9.e$b$b)
.class final Lq9/e$b$b;
.super Lq9/e$c;
.source "FileTreeWalk.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq9/e$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private b:Z

.field final synthetic c:Lq9/e$b;


# direct methods
.method public constructor <init>(Lq9/e$b;Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const-string v0, "rootFile"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lq9/e$b$b;->c:Lq9/e$b;

    invoke-direct {p0, p2}, Lq9/e$c;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/io/File;
    .registers 2

    .line 1
    iget-boolean v0, p0, Lq9/e$b$b;->b:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lq9/e$b$b;->b:Z

    .line 3
    invoke-virtual {p0}, Lq9/e$c;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

###### Class q9.e.b.c (q9.e$b$c)
.class final Lq9/e$b$c;
.super Lq9/e$a;
.source "FileTreeWalk.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq9/e$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private b:Z

.field private c:[Ljava/io/File;

.field private d:I

.field final synthetic e:Lq9/e$b;


# direct methods
.method public constructor <init>(Lq9/e$b;Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const-string v0, "rootDir"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lq9/e$b$c;->e:Lq9/e$b;

    invoke-direct {p0, p2}, Lq9/e$a;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/io/File;
    .registers 11

    .line 1
    iget-boolean v0, p0, Lq9/e$b$c;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2c

    .line 2
    iget-object v0, p0, Lq9/e$b$c;->e:Lq9/e$b;

    iget-object v0, v0, Lq9/e$b;->r:Lq9/e;

    invoke-static {v0}, Lq9/e;->c(Lq9/e;)Ls9/l;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lq9/e$c;->a()Ljava/io/File;

    move-result-object v4

    invoke-interface {v0, v4}, Ls9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v2, 0x1

    :cond_22
    if-eqz v2, :cond_25

    return-object v1

    .line 3
    :cond_25
    iput-boolean v3, p0, Lq9/e$b$c;->b:Z

    .line 4
    invoke-virtual {p0}, Lq9/e$c;->a()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 5
    :cond_2c
    iget-object v0, p0, Lq9/e$b$c;->c:[Ljava/io/File;

    if-eqz v0, :cond_4b

    iget v2, p0, Lq9/e$b$c;->d:I

    invoke-static {v0}, Lt9/m;->b(Ljava/lang/Object;)V

    array-length v0, v0

    if-ge v2, v0, :cond_39

    goto :goto_4b

    .line 6
    :cond_39
    iget-object v0, p0, Lq9/e$b$c;->e:Lq9/e$b;

    iget-object v0, v0, Lq9/e$b;->r:Lq9/e;

    invoke-static {v0}, Lq9/e;->e(Lq9/e;)Ls9/l;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Lq9/e$c;->a()Ljava/io/File;

    move-result-object v2

    invoke-interface {v0, v2}, Ls9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    return-object v1

    .line 7
    :cond_4b
    :goto_4b
    iget-object v0, p0, Lq9/e$b$c;->c:[Ljava/io/File;

    if-nez v0, :cond_97

    .line 8
    invoke-virtual {p0}, Lq9/e$c;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lq9/e$b$c;->c:[Ljava/io/File;

    if-nez v0, :cond_7b

    .line 9
    iget-object v0, p0, Lq9/e$b$c;->e:Lq9/e$b;

    iget-object v0, v0, Lq9/e$b;->r:Lq9/e;

    invoke-static {v0}, Lq9/e;->d(Lq9/e;)Ls9/p;

    move-result-object v0

    if-eqz v0, :cond_7b

    invoke-virtual {p0}, Lq9/e$c;->a()Ljava/io/File;

    move-result-object v2

    new-instance v9, Lq9/a;

    invoke-virtual {p0}, Lq9/e$c;->a()Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-string v6, "Cannot list files in a directory"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lq9/a;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILt9/g;)V

    invoke-interface {v0, v2, v9}, Ls9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_7b
    iget-object v0, p0, Lq9/e$b$c;->c:[Ljava/io/File;

    if-eqz v0, :cond_85

    invoke-static {v0}, Lt9/m;->b(Ljava/lang/Object;)V

    array-length v0, v0

    if-nez v0, :cond_97

    .line 11
    :cond_85
    iget-object v0, p0, Lq9/e$b$c;->e:Lq9/e$b;

    iget-object v0, v0, Lq9/e$b;->r:Lq9/e;

    invoke-static {v0}, Lq9/e;->e(Lq9/e;)Ls9/l;

    move-result-object v0

    if-eqz v0, :cond_96

    invoke-virtual {p0}, Lq9/e$c;->a()Ljava/io/File;

    move-result-object v2

    invoke-interface {v0, v2}, Ls9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_96
    return-object v1

    .line 12
    :cond_97
    iget-object v0, p0, Lq9/e$b$c;->c:[Ljava/io/File;

    invoke-static {v0}, Lt9/m;->b(Ljava/lang/Object;)V

    iget v1, p0, Lq9/e$b$c;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lq9/e$b$c;->d:I

    aget-object v0, v0, v1

    return-object v0
.end method

###### Class q9.e.b.d (q9.e$b$d)
.class public final synthetic Lq9/e$b$d;
.super Ljava/lang/Object;
.source "FileTreeWalk.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq9/e$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "d"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lq9/f;->values()[Lq9/f;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lq9/f;->o:Lq9/f;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lq9/f;->p:Lq9/f;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sput-object v0, Lq9/e$b$d;->a:[I

    return-void
.end method

###### Class q9.e.c (q9.e$c)
.class abstract Lq9/e$c;
.super Ljava/lang/Object;
.source "FileTreeWalk.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq9/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    const-string v0, "root"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq9/e$c;->a:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .registers 2

    .line 1
    iget-object v0, p0, Lq9/e$c;->a:Ljava/io/File;

    return-object v0
.end method

.method public abstract b()Ljava/io/File;
.end method
