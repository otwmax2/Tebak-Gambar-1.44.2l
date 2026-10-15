###### Class wa.l (wa.l)
.class public final Lwa/l;
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

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final c:Lja/d0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lja/c0;Ljava/lang/Object;Lja/d0;)V
    .registers 4
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lja/d0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
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
    iput-object p1, p0, Lwa/l;->a:Lja/c0;

    .line 3
    iput-object p2, p0, Lwa/l;->b:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lwa/l;->c:Lja/d0;

    return-void
.end method

.method public static c(Lja/d0;Lja/c0;)Lwa/l;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lja/d0;",
            "Lja/c0;",
            ")",
            "Lwa/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "body == null"

    .line 1
    invoke-static {p0, v0}, Lwa/o;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "rawResponse == null"

    .line 2
    invoke-static {p1, v0}, Lwa/o;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lja/c0;->i()Z

    move-result v0

    if-nez v0, :cond_17

    .line 4
    new-instance v0, Lwa/l;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lwa/l;-><init>(Lja/c0;Ljava/lang/Object;Lja/d0;)V

    return-object v0

    .line 5
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rawResponse should not be successful response"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(Ljava/lang/Object;Lja/c0;)Lwa/l;
    .registers 4
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lja/c0;",
            ")",
            "Lwa/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "rawResponse == null"

    .line 1
    invoke-static {p1, v0}, Lwa/o;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lja/c0;->i()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3
    new-instance v0, Lwa/l;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lwa/l;-><init>(Lja/c0;Ljava/lang/Object;Lja/d0;)V

    return-object v0

    .line 4
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rawResponse must be successful response"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lwa/l;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public b()I
    .registers 2

    .line 1
    iget-object v0, p0, Lwa/l;->a:Lja/c0;

    invoke-virtual {v0}, Lja/c0;->d()I

    move-result v0

    return v0
.end method

.method public d()Lja/d0;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lwa/l;->c:Lja/d0;

    return-object v0
.end method

.method public e()Lja/s;
    .registers 2

    .line 1
    iget-object v0, p0, Lwa/l;->a:Lja/c0;

    invoke-virtual {v0}, Lja/c0;->h()Lja/s;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lwa/l;->a:Lja/c0;

    invoke-virtual {v0}, Lja/c0;->i()Z

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lwa/l;->a:Lja/c0;

    invoke-virtual {v0}, Lja/c0;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lwa/l;->a:Lja/c0;

    invoke-virtual {v0}, Lja/c0;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
