###### Class l3.q (l3.q)
.class final Ll3/q;
.super Ljava/lang/Object;
.source "TransportFactoryImpl.java"

# interfaces
.implements Lj3/g;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lj3/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ll3/p;

.field private final c:Ll3/t;


# direct methods
.method constructor <init>(Ljava/util/Set;Ll3/p;Ll3/t;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lj3/b;",
            ">;",
            "Ll3/p;",
            "Ll3/t;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll3/q;->a:Ljava/util/Set;

    .line 3
    iput-object p2, p0, Ll3/q;->b:Ll3/p;

    .line 4
    iput-object p3, p0, Ll3/q;->c:Ll3/t;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Class;Lj3/b;Lj3/e;)Lj3/f;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lj3/b;",
            "Lj3/e<",
            "TT;[B>;)",
            "Lj3/f<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Ll3/q;->a:Ljava/util/Set;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 2
    new-instance p2, Ll3/s;

    iget-object v1, p0, Ll3/q;->b:Ll3/p;

    iget-object v5, p0, Ll3/q;->c:Ll3/t;

    move-object v0, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ll3/s;-><init>(Ll3/p;Ljava/lang/String;Lj3/b;Lj3/e;Ll3/t;)V

    return-object p2

    .line 3
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p3, p2, p4

    const/4 p3, 0x1

    iget-object p4, p0, Ll3/q;->a:Ljava/util/Set;

    aput-object p4, p2, p3

    const-string p3, "%s is not supported byt this factory. Supported encodings are: %s."

    .line 4
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
