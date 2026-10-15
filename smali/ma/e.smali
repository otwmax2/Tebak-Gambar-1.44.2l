###### Class ma.e (ma.e)
.class public final Lma/e;
.super Ljava/lang/RuntimeException;
.source "RouteException.java"


# instance fields
.field private o:Ljava/io/IOException;

.field private p:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 2
    iput-object p1, p0, Lma/e;->o:Ljava/io/IOException;

    .line 3
    iput-object p1, p0, Lma/e;->p:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/IOException;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lma/e;->o:Ljava/io/IOException;

    invoke-static {v0, p1}, Lka/c;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 2
    iput-object p1, p0, Lma/e;->p:Ljava/io/IOException;

    return-void
.end method

.method public b()Ljava/io/IOException;
    .registers 2

    .line 1
    iget-object v0, p0, Lma/e;->o:Ljava/io/IOException;

    return-object v0
.end method

.method public c()Ljava/io/IOException;
    .registers 2

    .line 1
    iget-object v0, p0, Lma/e;->p:Ljava/io/IOException;

    return-object v0
.end method
