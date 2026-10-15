###### Class l3.s (l3.s)
.class final Ll3/s;
.super Ljava/lang/Object;
.source "TransportImpl.java"

# interfaces
.implements Lj3/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lj3/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ll3/p;

.field private final b:Ljava/lang/String;

.field private final c:Lj3/b;

.field private final d:Lj3/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj3/e<",
            "TT;[B>;"
        }
    .end annotation
.end field

.field private final e:Ll3/t;


# direct methods
.method constructor <init>(Ll3/p;Ljava/lang/String;Lj3/b;Lj3/e;Ll3/t;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/p;",
            "Ljava/lang/String;",
            "Lj3/b;",
            "Lj3/e<",
            "TT;[B>;",
            "Ll3/t;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll3/s;->a:Ll3/p;

    .line 3
    iput-object p2, p0, Ll3/s;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Ll3/s;->c:Lj3/b;

    .line 5
    iput-object p4, p0, Ll3/s;->d:Lj3/e;

    .line 6
    iput-object p5, p0, Ll3/s;->e:Ll3/t;

    return-void
.end method

.method public static synthetic c(Ljava/lang/Exception;)V
    .registers 1

    invoke-static {p0}, Ll3/s;->e(Ljava/lang/Exception;)V

    return-void
.end method

.method private static synthetic e(Ljava/lang/Exception;)V
    .registers 1

    return-void
.end method


# virtual methods
.method public a(Lj3/c;Lj3/h;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj3/c<",
            "TT;>;",
            "Lj3/h;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll3/s;->e:Ll3/t;

    .line 2
    invoke-static {}, Ll3/o;->a()Ll3/o$a;

    move-result-object v1

    iget-object v2, p0, Ll3/s;->a:Ll3/p;

    .line 3
    invoke-virtual {v1, v2}, Ll3/o$a;->e(Ll3/p;)Ll3/o$a;

    move-result-object v1

    .line 4
    invoke-virtual {v1, p1}, Ll3/o$a;->c(Lj3/c;)Ll3/o$a;

    move-result-object p1

    iget-object v1, p0, Ll3/s;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v1}, Ll3/o$a;->f(Ljava/lang/String;)Ll3/o$a;

    move-result-object p1

    iget-object v1, p0, Ll3/s;->d:Lj3/e;

    .line 6
    invoke-virtual {p1, v1}, Ll3/o$a;->d(Lj3/e;)Ll3/o$a;

    move-result-object p1

    iget-object v1, p0, Ll3/s;->c:Lj3/b;

    .line 7
    invoke-virtual {p1, v1}, Ll3/o$a;->b(Lj3/b;)Ll3/o$a;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ll3/o$a;->a()Ll3/o;

    move-result-object p1

    .line 9
    invoke-interface {v0, p1, p2}, Ll3/t;->a(Ll3/o;Lj3/h;)V

    return-void
.end method

.method public b(Lj3/c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj3/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Ll3/r;->a:Ll3/r;

    invoke-virtual {p0, p1, v0}, Ll3/s;->a(Lj3/c;Lj3/h;)V

    return-void
.end method

.method d()Ll3/p;
    .registers 2

    .line 1
    iget-object v0, p0, Ll3/s;->a:Ll3/p;

    return-object v0
.end method

###### Class l3.r (l3.r)
.class public final synthetic Ll3/r;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lj3/h;


# static fields
.field public static final synthetic a:Ll3/r;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ll3/r;

    invoke-direct {v0}, Ll3/r;-><init>()V

    sput-object v0, Ll3/r;->a:Ll3/r;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .registers 2

    invoke-static {p1}, Ll3/s;->c(Ljava/lang/Exception;)V

    return-void
.end method
