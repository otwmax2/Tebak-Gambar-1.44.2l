###### Class ja.p (ja.p)
.class public abstract Lja/p;
.super Ljava/lang/Object;
.source "EventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lja/p$c;
    }
.end annotation


# static fields
.field public static final a:Lja/p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lja/p$a;

    invoke-direct {v0}, Lja/p$a;-><init>()V

    sput-object v0, Lja/p;->a:Lja/p;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static k(Lja/p;)Lja/p$c;
    .registers 2

    .line 1
    new-instance v0, Lja/p$b;

    invoke-direct {v0, p0}, Lja/p$b;-><init>(Lja/p;)V

    return-object v0
.end method


# virtual methods
.method public a(Lja/e;)V
    .registers 2

    return-void
.end method

.method public b(Lja/e;Ljava/io/IOException;)V
    .registers 3

    return-void
.end method

.method public c(Lja/e;)V
    .registers 2

    return-void
.end method

.method public d(Lja/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lja/y;)V
    .registers 5
    .param p4    # Lja/y;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public e(Lja/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lja/y;Ljava/io/IOException;)V
    .registers 6
    .param p4    # Lja/y;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public f(Lja/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .registers 4

    return-void
.end method

.method public g(Lja/e;Lja/i;)V
    .registers 3

    return-void
.end method

.method public h(Lja/e;Lja/i;)V
    .registers 3

    return-void
.end method

.method public i(Lja/e;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lja/e;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public j(Lja/e;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public l(Lja/e;J)V
    .registers 4

    return-void
.end method

.method public m(Lja/e;)V
    .registers 2

    return-void
.end method

.method public n(Lja/e;Lja/a0;)V
    .registers 3

    return-void
.end method

.method public o(Lja/e;)V
    .registers 2

    return-void
.end method

.method public p(Lja/e;J)V
    .registers 4

    return-void
.end method

.method public q(Lja/e;)V
    .registers 2

    return-void
.end method

.method public r(Lja/e;Lja/c0;)V
    .registers 3

    return-void
.end method

.method public s(Lja/e;)V
    .registers 2

    return-void
.end method

.method public t(Lja/e;Lja/r;)V
    .registers 3
    .param p2    # Lja/r;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public u(Lja/e;)V
    .registers 2

    return-void
.end method

###### Class ja.p.a (ja.p$a)
.class Lja/p$a;
.super Lja/p;
.source "EventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lja/p;-><init>()V

    return-void
.end method

###### Class ja.p.b (ja.p$b)
.class Lja/p$b;
.super Ljava/lang/Object;
.source "EventListener.java"

# interfaces
.implements Lja/p$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lja/p;->k(Lja/p;)Lja/p$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lja/p;


# direct methods
.method constructor <init>(Lja/p;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lja/p$b;->a:Lja/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lja/e;)Lja/p;
    .registers 2

    .line 1
    iget-object p1, p0, Lja/p$b;->a:Lja/p;

    return-object p1
.end method

###### Class ja.p.c (ja.p$c)
.class public interface abstract Lja/p$c;
.super Ljava/lang/Object;
.source "EventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract a(Lja/e;)Lja/p;
.end method
