###### Class d7.l (d7.l)
.class public final Ld7/l;
.super Lcom/google/gson/w;
.source "TreeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld7/l$b;,
        Ld7/l$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/w<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/gson/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/t<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/gson/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/k<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Lcom/google/gson/f;

.field private final d:Lg7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg7/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/gson/x;

.field private final f:Ld7/l$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld7/l<",
            "TT;>.b;"
        }
    .end annotation
.end field

.field private g:Lcom/google/gson/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/w<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/t;Lcom/google/gson/k;Lcom/google/gson/f;Lg7/a;Lcom/google/gson/x;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/t<",
            "TT;>;",
            "Lcom/google/gson/k<",
            "TT;>;",
            "Lcom/google/gson/f;",
            "Lg7/a<",
            "TT;>;",
            "Lcom/google/gson/x;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/gson/w;-><init>()V

    .line 2
    new-instance v0, Ld7/l$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ld7/l$b;-><init>(Ld7/l;Ld7/l$a;)V

    iput-object v0, p0, Ld7/l;->f:Ld7/l$b;

    .line 3
    iput-object p1, p0, Ld7/l;->a:Lcom/google/gson/t;

    .line 4
    iput-object p2, p0, Ld7/l;->b:Lcom/google/gson/k;

    .line 5
    iput-object p3, p0, Ld7/l;->c:Lcom/google/gson/f;

    .line 6
    iput-object p4, p0, Ld7/l;->d:Lg7/a;

    .line 7
    iput-object p5, p0, Ld7/l;->e:Lcom/google/gson/x;

    return-void
.end method

.method private e()Lcom/google/gson/w;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/w<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld7/l;->g:Lcom/google/gson/w;

    if-eqz v0, :cond_5

    goto :goto_11

    .line 2
    :cond_5
    iget-object v0, p0, Ld7/l;->c:Lcom/google/gson/f;

    iget-object v1, p0, Ld7/l;->e:Lcom/google/gson/x;

    iget-object v2, p0, Ld7/l;->d:Lg7/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/f;->o(Lcom/google/gson/x;Lg7/a;)Lcom/google/gson/w;

    move-result-object v0

    iput-object v0, p0, Ld7/l;->g:Lcom/google/gson/w;

    :goto_11
    return-object v0
.end method

.method public static f(Lg7/a;Ljava/lang/Object;)Lcom/google/gson/x;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/x;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lg7/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lg7/a;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 2
    :goto_d
    new-instance v1, Ld7/l$c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v0, v2}, Ld7/l$c;-><init>(Ljava/lang/Object;Lg7/a;ZLjava/lang/Class;)V

    return-object v1
.end method


# virtual methods
.method public b(Lh7/a;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh7/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld7/l;->b:Lcom/google/gson/k;

    if-nez v0, :cond_d

    .line 2
    invoke-direct {p0}, Ld7/l;->e()Lcom/google/gson/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/w;->b(Lh7/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_d
    invoke-static {p1}, Lc7/l;->a(Lh7/a;)Lcom/google/gson/l;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/gson/l;->q()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_19
    iget-object v0, p0, Ld7/l;->b:Lcom/google/gson/k;

    iget-object v1, p0, Ld7/l;->d:Lg7/a;

    invoke-virtual {v1}, Lg7/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Ld7/l;->f:Ld7/l$b;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/gson/k;->a(Lcom/google/gson/l;Ljava/lang/reflect/Type;Lcom/google/gson/j;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Lh7/c;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh7/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld7/l;->a:Lcom/google/gson/t;

    if-nez v0, :cond_c

    .line 2
    invoke-direct {p0}, Ld7/l;->e()Lcom/google/gson/w;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/w;->d(Lh7/c;Ljava/lang/Object;)V

    return-void

    :cond_c
    if-nez p2, :cond_12

    .line 3
    invoke-virtual {p1}, Lh7/c;->n()Lh7/c;

    return-void

    .line 4
    :cond_12
    iget-object v1, p0, Ld7/l;->d:Lg7/a;

    invoke-virtual {v1}, Lg7/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Ld7/l;->f:Ld7/l$b;

    invoke-interface {v0, p2, v1, v2}, Lcom/google/gson/t;->b(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/s;)Lcom/google/gson/l;

    move-result-object p2

    .line 5
    invoke-static {p2, p1}, Lc7/l;->b(Lcom/google/gson/l;Lh7/c;)V

    return-void
.end method

###### Class d7.l.a (d7.l$a)
.class synthetic Ld7/l$a;
.super Ljava/lang/Object;
.source "TreeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld7/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class d7.l.b (d7.l$b)
.class final Ld7/l$b;
.super Ljava/lang/Object;
.source "TreeTypeAdapter.java"

# interfaces
.implements Lcom/google/gson/s;
.implements Lcom/google/gson/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld7/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Ld7/l;


# direct methods
.method private constructor <init>(Ld7/l;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ld7/l$b;->a:Ld7/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ld7/l;Ld7/l$a;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Ld7/l$b;-><init>(Ld7/l;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/l;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/l;",
            "Ljava/lang/reflect/Type;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/p;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld7/l$b;->a:Ld7/l;

    iget-object v0, v0, Ld7/l;->c:Lcom/google/gson/f;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/f;->h(Lcom/google/gson/l;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class d7.l.c (d7.l$c)
.class final Ld7/l$c;
.super Ljava/lang/Object;
.source "TreeTypeAdapter.java"

# interfaces
.implements Lcom/google/gson/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld7/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final o:Lg7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg7/a<",
            "*>;"
        }
    .end annotation
.end field

.field private final p:Z

.field private final q:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final r:Lcom/google/gson/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/t<",
            "*>;"
        }
    .end annotation
.end field

.field private final s:Lcom/google/gson/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/k<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lg7/a;ZLjava/lang/Class;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lg7/a<",
            "*>;Z",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    instance-of v0, p1, Lcom/google/gson/t;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/google/gson/t;

    goto :goto_d

    :cond_c
    move-object v0, v1

    .line 4
    :goto_d
    iput-object v0, p0, Ld7/l$c;->r:Lcom/google/gson/t;

    .line 5
    instance-of v2, p1, Lcom/google/gson/k;

    if-eqz v2, :cond_16

    .line 6
    move-object v1, p1

    check-cast v1, Lcom/google/gson/k;

    .line 7
    :cond_16
    iput-object v1, p0, Ld7/l$c;->s:Lcom/google/gson/k;

    if-nez v0, :cond_1f

    if-eqz v1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    .line 8
    :goto_20
    invoke-static {p1}, Lc7/a;->a(Z)V

    .line 9
    iput-object p2, p0, Ld7/l$c;->o:Lg7/a;

    .line 10
    iput-boolean p3, p0, Ld7/l$c;->p:Z

    .line 11
    iput-object p4, p0, Ld7/l$c;->q:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/f;Lg7/a;)Lcom/google/gson/w;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/f;",
            "Lg7/a<",
            "TT;>;)",
            "Lcom/google/gson/w<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld7/l$c;->o:Lg7/a;

    if-eqz v0, :cond_1f

    .line 2
    invoke-virtual {v0, p2}, Lg7/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Ld7/l$c;->p:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Ld7/l$c;->o:Lg7/a;

    invoke-virtual {v0}, Lg7/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lg7/a;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_29

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    goto :goto_29

    .line 3
    :cond_1f
    iget-object v0, p0, Ld7/l$c;->q:Ljava/lang/Class;

    invoke-virtual {p2}, Lg7/a;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    :goto_29
    if-eqz v0, :cond_39

    .line 4
    new-instance v0, Ld7/l;

    iget-object v2, p0, Ld7/l$c;->r:Lcom/google/gson/t;

    iget-object v3, p0, Ld7/l$c;->s:Lcom/google/gson/k;

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Ld7/l;-><init>(Lcom/google/gson/t;Lcom/google/gson/k;Lcom/google/gson/f;Lg7/a;Lcom/google/gson/x;)V

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    :goto_3a
    return-object v0
.end method
