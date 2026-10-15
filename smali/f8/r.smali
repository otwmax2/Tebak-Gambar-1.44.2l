###### Class f8.r (f8.r)
.class Lf8/r;
.super Lf8/y;
.source "NetworkRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf8/r$a;
    }
.end annotation


# instance fields
.field private final a:Lf8/j;

.field private final b:Lf8/a0;


# direct methods
.method public constructor <init>(Lf8/j;Lf8/a0;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lf8/y;-><init>()V

    .line 2
    iput-object p1, p0, Lf8/r;->a:Lf8/j;

    .line 3
    iput-object p2, p0, Lf8/r;->b:Lf8/a0;

    return-void
.end method


# virtual methods
.method public c(Lf8/w;)Z
    .registers 3

    .line 1
    iget-object p1, p1, Lf8/w;->d:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    goto :goto_19

    :cond_17
    const/4 p1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p1, 0x1

    :goto_1a
    return p1
.end method

.method e()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public f(Lf8/w;I)Lf8/y$a;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lf8/r;->a:Lf8/j;

    iget-object v0, p1, Lf8/w;->d:Landroid/net/Uri;

    iget p1, p1, Lf8/w;->c:I

    invoke-interface {p2, v0, p1}, Lf8/j;->a(Landroid/net/Uri;I)Lf8/j$a;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_e

    return-object p2

    .line 2
    :cond_e
    iget-boolean v0, p1, Lf8/j$a;->c:Z

    if-eqz v0, :cond_15

    sget-object v0, Lf8/t$e;->q:Lf8/t$e;

    goto :goto_17

    :cond_15
    sget-object v0, Lf8/t$e;->r:Lf8/t$e;

    .line 3
    :goto_17
    invoke-virtual {p1}, Lf8/j$a;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 4
    new-instance p1, Lf8/y$a;

    invoke-direct {p1, v1, v0}, Lf8/y$a;-><init>(Landroid/graphics/Bitmap;Lf8/t$e;)V

    return-object p1

    .line 5
    :cond_23
    invoke-virtual {p1}, Lf8/j$a;->c()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_2a

    return-object p2

    .line 6
    :cond_2a
    sget-object p2, Lf8/t$e;->q:Lf8/t$e;

    const-wide/16 v2, 0x0

    if-ne v0, p2, :cond_44

    invoke-virtual {p1}, Lf8/j$a;->b()J

    move-result-wide v4

    cmp-long p2, v4, v2

    if-eqz p2, :cond_39

    goto :goto_44

    .line 7
    :cond_39
    invoke-static {v1}, Lf8/e0;->e(Ljava/io/InputStream;)V

    .line 8
    new-instance p1, Lf8/r$a;

    const-string p2, "Received response with 0 content-length header."

    invoke-direct {p1, p2}, Lf8/r$a;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_44
    :goto_44
    sget-object p2, Lf8/t$e;->r:Lf8/t$e;

    if-ne v0, p2, :cond_59

    invoke-virtual {p1}, Lf8/j$a;->b()J

    move-result-wide v4

    cmp-long p2, v4, v2

    if-lez p2, :cond_59

    .line 10
    iget-object p2, p0, Lf8/r;->b:Lf8/a0;

    invoke-virtual {p1}, Lf8/j$a;->b()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lf8/a0;->f(J)V

    .line 11
    :cond_59
    new-instance p1, Lf8/y$a;

    invoke-direct {p1, v1, v0}, Lf8/y$a;-><init>(Ljava/io/InputStream;Lf8/t$e;)V

    return-object p1
.end method

.method h(ZLandroid/net/NetworkInfo;)Z
    .registers 3

    if-eqz p2, :cond_b

    .line 1
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    return p1
.end method

.method i()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

###### Class f8.r.a (f8.r$a)
.class Lf8/r$a;
.super Ljava/io/IOException;
.source "NetworkRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf8/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
