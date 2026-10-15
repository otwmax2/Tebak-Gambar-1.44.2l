###### Class aa.i (aa.i)
.class public final Laa/i;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Laa/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Laa/b<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final a:Laa/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laa/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Ls9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls9/l<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Laa/b;Ls9/l;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laa/b<",
            "+TT;>;",
            "Ls9/l<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformer"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Laa/i;->a:Laa/b;

    iput-object p2, p0, Laa/i;->b:Ls9/l;

    return-void
.end method

.method public static final synthetic a(Laa/i;)Laa/b;
    .registers 1

    .line 1
    iget-object p0, p0, Laa/i;->a:Laa/b;

    return-object p0
.end method

.method public static final synthetic b(Laa/i;)Ls9/l;
    .registers 1

    .line 1
    iget-object p0, p0, Laa/i;->b:Ls9/l;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Laa/i$a;

    invoke-direct {v0, p0}, Laa/i$a;-><init>(Laa/i;)V

    return-object v0
.end method

###### Class aa.i.a (aa.i$a)
.class public final Laa/i$a;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lu9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laa/i;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TR;>;",
        "Lu9/a;"
    }
.end annotation


# instance fields
.field private final o:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic p:Laa/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laa/i<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Laa/i;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laa/i<",
            "TT;TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Laa/i$a;->p:Laa/i;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Laa/i;->a(Laa/i;)Laa/b;

    move-result-object p1

    invoke-interface {p1}, Laa/b;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Laa/i$a;->o:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 1
    iget-object v0, p0, Laa/i$a;->o:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Laa/i$a;->p:Laa/i;

    invoke-static {v0}, Laa/i;->b(Laa/i;)Ls9/l;

    move-result-object v0

    iget-object v1, p0, Laa/i$a;->o:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ls9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
