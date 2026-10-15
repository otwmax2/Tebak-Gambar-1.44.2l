###### Class com.vungle.warren.network.Response (com.vungle.warren.network.Response)
.class public final Lcom/vungle/warren/network/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lja/c0;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final c:Lja/d0;


# direct methods
.method private constructor <init>(Lja/c0;Ljava/lang/Object;Lja/d0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lja/c0;",
            "TT;",
            "Lja/d0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/network/Response;->a:Lja/c0;

    .line 3
    iput-object p2, p0, Lcom/vungle/warren/network/Response;->b:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/vungle/warren/network/Response;->c:Lja/d0;

    return-void
.end method

.method public static error(ILja/d0;)Lcom/vungle/warren/network/Response;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lja/d0;",
            ")",
            "Lcom/vungle/warren/network/Response<",
            "TT;>;"
        }
    .end annotation

    const/16 v0, 0x190

    if-lt p0, v0, :cond_35

    .line 1
    new-instance v0, Lja/c0$a;

    invoke-direct {v0}, Lja/c0$a;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lja/c0$a;->g(I)Lja/c0$a;

    move-result-object p0

    const-string v0, "Response.error()"

    .line 3
    invoke-virtual {p0, v0}, Lja/c0$a;->k(Ljava/lang/String;)Lja/c0$a;

    move-result-object p0

    sget-object v0, Lja/y;->q:Lja/y;

    .line 4
    invoke-virtual {p0, v0}, Lja/c0$a;->n(Lja/y;)Lja/c0$a;

    move-result-object p0

    new-instance v0, Lja/a0$a;

    invoke-direct {v0}, Lja/a0$a;-><init>()V

    const-string v1, "http://localhost/"

    .line 5
    invoke-virtual {v0, v1}, Lja/a0$a;->j(Ljava/lang/String;)Lja/a0$a;

    move-result-object v0

    invoke-virtual {v0}, Lja/a0$a;->b()Lja/a0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lja/c0$a;->p(Lja/a0;)Lja/c0$a;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lja/c0$a;->c()Lja/c0;

    move-result-object p0

    .line 7
    invoke-static {p1, p0}, Lcom/vungle/warren/network/Response;->error(Lja/d0;Lja/c0;)Lcom/vungle/warren/network/Response;

    move-result-object p0

    return-object p0

    .line 8
    :cond_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code < 400: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static error(Lja/d0;Lja/c0;)Lcom/vungle/warren/network/Response;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lja/d0;",
            "Lja/c0;",
            ")",
            "Lcom/vungle/warren/network/Response<",
            "TT;>;"
        }
    .end annotation

    .line 9
    invoke-virtual {p1}, Lja/c0;->i()Z

    move-result v0

    if-nez v0, :cond_d

    .line 10
    new-instance v0, Lcom/vungle/warren/network/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lcom/vungle/warren/network/Response;-><init>(Lja/c0;Ljava/lang/Object;Lja/d0;)V

    return-object v0

    .line 11
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rawResponse should not be successful response"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static success(Ljava/lang/Object;)Lcom/vungle/warren/network/Response;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/vungle/warren/network/Response<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lja/c0$a;

    invoke-direct {v0}, Lja/c0$a;-><init>()V

    const/16 v1, 0xc8

    .line 2
    invoke-virtual {v0, v1}, Lja/c0$a;->g(I)Lja/c0$a;

    move-result-object v0

    const-string v1, "OK"

    .line 3
    invoke-virtual {v0, v1}, Lja/c0$a;->k(Ljava/lang/String;)Lja/c0$a;

    move-result-object v0

    sget-object v1, Lja/y;->q:Lja/y;

    .line 4
    invoke-virtual {v0, v1}, Lja/c0$a;->n(Lja/y;)Lja/c0$a;

    move-result-object v0

    new-instance v1, Lja/a0$a;

    invoke-direct {v1}, Lja/a0$a;-><init>()V

    const-string v2, "http://localhost/"

    .line 5
    invoke-virtual {v1, v2}, Lja/a0$a;->j(Ljava/lang/String;)Lja/a0$a;

    move-result-object v1

    invoke-virtual {v1}, Lja/a0$a;->b()Lja/a0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lja/c0$a;->p(Lja/a0;)Lja/c0$a;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lja/c0$a;->c()Lja/c0;

    move-result-object v0

    .line 7
    invoke-static {p0, v0}, Lcom/vungle/warren/network/Response;->success(Ljava/lang/Object;Lja/c0;)Lcom/vungle/warren/network/Response;

    move-result-object p0

    return-object p0
.end method

.method public static success(Ljava/lang/Object;Lja/c0;)Lcom/vungle/warren/network/Response;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lja/c0;",
            ")",
            "Lcom/vungle/warren/network/Response<",
            "TT;>;"
        }
    .end annotation

    .line 8
    invoke-virtual {p1}, Lja/c0;->i()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 9
    new-instance v0, Lcom/vungle/warren/network/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/vungle/warren/network/Response;-><init>(Lja/c0;Ljava/lang/Object;Lja/d0;)V

    return-object v0

    .line 10
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rawResponse must be successful response"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public body()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/network/Response;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public code()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/network/Response;->a:Lja/c0;

    invoke-virtual {v0}, Lja/c0;->d()I

    move-result v0

    return v0
.end method

.method public errorBody()Lja/d0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/network/Response;->c:Lja/d0;

    return-object v0
.end method

.method public headers()Lja/s;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/network/Response;->a:Lja/c0;

    invoke-virtual {v0}, Lja/c0;->h()Lja/s;

    move-result-object v0

    return-object v0
.end method

.method public isSuccessful()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/network/Response;->a:Lja/c0;

    invoke-virtual {v0}, Lja/c0;->i()Z

    move-result v0

    return v0
.end method

.method public message()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/network/Response;->a:Lja/c0;

    invoke-virtual {v0}, Lja/c0;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public raw()Lja/c0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/network/Response;->a:Lja/c0;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/network/Response;->a:Lja/c0;

    invoke-virtual {v0}, Lja/c0;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
