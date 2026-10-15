###### Class d9.b (d9.b)
.class public Ld9/b;
.super Ljava/lang/Object;
.source "GuestAuthNetworkInterceptor.java"

# interfaces
.implements Lja/u;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lja/u$a;)Lja/c0;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lja/u$a;->f()Lja/a0;

    move-result-object v0

    invoke-interface {p1, v0}, Lja/u$a;->e(Lja/a0;)Lja/c0;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lja/c0;->d()I

    move-result v0

    const/16 v1, 0x193

    if-ne v0, v1, :cond_24

    .line 3
    invoke-virtual {p1}, Lja/c0;->k()Lja/c0$a;

    move-result-object p1

    const/16 v0, 0x191

    invoke-virtual {p1, v0}, Lja/c0$a;->g(I)Lja/c0$a;

    move-result-object p1

    const-string v0, "Unauthorized"

    invoke-virtual {p1, v0}, Lja/c0$a;->k(Ljava/lang/String;)Lja/c0$a;

    move-result-object p1

    invoke-virtual {p1}, Lja/c0$a;->c()Lja/c0;

    move-result-object p1

    :cond_24
    return-object p1
.end method
