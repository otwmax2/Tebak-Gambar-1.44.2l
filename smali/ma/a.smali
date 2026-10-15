###### Class ma.a (ma.a)
.class public final Lma/a;
.super Ljava/lang/Object;
.source "ConnectInterceptor.java"

# interfaces
.implements Lja/u;


# instance fields
.field public final a:Lja/x;


# direct methods
.method public constructor <init>(Lja/x;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lma/a;->a:Lja/x;

    return-void
.end method


# virtual methods
.method public intercept(Lja/u$a;)Lja/c0;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lna/g;

    .line 2
    invoke-virtual {v0}, Lna/g;->f()Lja/a0;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lna/g;->k()Lma/g;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Lja/a0;->f()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 5
    iget-object v4, p0, Lma/a;->a:Lja/x;

    invoke-virtual {v2, v4, p1, v3}, Lma/g;->i(Lja/x;Lja/u$a;Z)Lna/c;

    move-result-object p1

    .line 6
    invoke-virtual {v2}, Lma/g;->d()Lma/c;

    move-result-object v3

    .line 7
    invoke-virtual {v0, v1, v2, p1, v3}, Lna/g;->j(Lja/a0;Lma/g;Lna/c;Lma/c;)Lja/c0;

    move-result-object p1

    return-object p1
.end method
