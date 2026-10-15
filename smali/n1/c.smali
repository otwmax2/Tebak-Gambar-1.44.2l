###### Class n1.c (n1.c)
.class public abstract Ln1/c;
.super Ljava/lang/Object;
.source "ConstraintController.java"

# interfaces
.implements Lm1/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln1/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lm1/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private c:Lo1/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field private d:Ln1/c$a;


# direct methods
.method constructor <init>(Lo1/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo1/d<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln1/c;->a:Ljava/util/List;

    .line 3
    iput-object p1, p0, Ln1/c;->c:Lo1/d;

    return-void
.end method

.method private h(Ln1/c$a;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln1/c$a;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln1/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    if-nez p1, :cond_b

    goto :goto_1f

    :cond_b
    if-eqz p2, :cond_1a

    .line 2
    invoke-virtual {p0, p2}, Ln1/c;->c(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    goto :goto_1a

    .line 3
    :cond_14
    iget-object p2, p0, Ln1/c;->a:Ljava/util/List;

    invoke-interface {p1, p2}, Ln1/c$a;->a(Ljava/util/List;)V

    goto :goto_1f

    .line 4
    :cond_1a
    :goto_1a
    iget-object p2, p0, Ln1/c;->a:Ljava/util/List;

    invoke-interface {p1, p2}, Ln1/c$a;->b(Ljava/util/List;)V

    :cond_1f
    :goto_1f
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ln1/c;->b:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ln1/c;->d:Ln1/c$a;

    invoke-direct {p0, v0, p1}, Ln1/c;->h(Ln1/c$a;Ljava/lang/Object;)V

    return-void
.end method

.method abstract b(Lq1/p;)Z
.end method

.method abstract c(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public d(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Ln1/c;->b:Ljava/lang/Object;

    if-eqz v0, :cond_14

    invoke-virtual {p0, v0}, Ln1/c;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Ln1/c;->a:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method public e(Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lq1/p;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln1/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq1/p;

    .line 3
    invoke-virtual {p0, v0}, Ln1/c;->b(Lq1/p;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4
    iget-object v1, p0, Ln1/c;->a:Ljava/util/List;

    iget-object v0, v0, Lq1/p;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 5
    :cond_23
    iget-object p1, p0, Ln1/c;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 6
    iget-object p1, p0, Ln1/c;->c:Lo1/d;

    invoke-virtual {p1, p0}, Lo1/d;->c(Lm1/a;)V

    goto :goto_36

    .line 7
    :cond_31
    iget-object p1, p0, Ln1/c;->c:Lo1/d;

    invoke-virtual {p1, p0}, Lo1/d;->a(Lm1/a;)V

    .line 8
    :goto_36
    iget-object p1, p0, Ln1/c;->d:Ln1/c$a;

    iget-object v0, p0, Ln1/c;->b:Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Ln1/c;->h(Ln1/c$a;Ljava/lang/Object;)V

    return-void
.end method

.method public f()V
    .registers 2

    .line 1
    iget-object v0, p0, Ln1/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2
    iget-object v0, p0, Ln1/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Ln1/c;->c:Lo1/d;

    invoke-virtual {v0, p0}, Lo1/d;->c(Lm1/a;)V

    :cond_12
    return-void
.end method

.method public g(Ln1/c$a;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ln1/c;->d:Ln1/c$a;

    if-eq v0, p1, :cond_b

    .line 2
    iput-object p1, p0, Ln1/c;->d:Ln1/c$a;

    .line 3
    iget-object v0, p0, Ln1/c;->b:Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Ln1/c;->h(Ln1/c$a;Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

###### Class n1.c.a (n1.c$a)
.class public interface abstract Ln1/c$a;
.super Ljava/lang/Object;
.source "ConstraintController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
