###### Class com.google.gson.o (com.google.gson.o)
.class public final Lcom/google/gson/o;
.super Lcom/google/gson/l;
.source "JsonObject.java"


# instance fields
.field private final a:Lc7/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc7/h<",
            "Ljava/lang/String;",
            "Lcom/google/gson/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/gson/l;-><init>()V

    .line 2
    new-instance v0, Lc7/h;

    invoke-direct {v0}, Lc7/h;-><init>()V

    iput-object v0, p0, Lcom/google/gson/o;->a:Lc7/h;

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)Lcom/google/gson/l;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/o;->a:Lc7/h;

    invoke-virtual {v0, p1}, Lc7/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/l;

    return-object p1
.end method

.method public B(Ljava/lang/String;)Lcom/google/gson/i;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/o;->a:Lc7/h;

    invoke-virtual {v0, p1}, Lc7/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/i;

    return-object p1
.end method

.method public C(Ljava/lang/String;)Lcom/google/gson/o;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/o;->a:Lc7/h;

    invoke-virtual {v0, p1}, Lc7/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/o;

    return-object p1
.end method

.method public D(Ljava/lang/String;)Lcom/google/gson/r;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/o;->a:Lc7/h;

    invoke-virtual {v0, p1}, Lc7/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/r;

    return-object p1
.end method

.method public E(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/o;->a:Lc7/h;

    invoke-virtual {v0, p1}, Lc7/h;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public H()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/gson/o;->a:Lc7/h;

    invoke-virtual {v0}, Lc7/h;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p0, :cond_15

    .line 1
    instance-of v0, p1, Lcom/google/gson/o;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/google/gson/o;

    iget-object p1, p1, Lcom/google/gson/o;->a:Lc7/h;

    iget-object v0, p0, Lcom/google/gson/o;->a:Lc7/h;

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    :goto_16
    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/gson/o;->a:Lc7/h;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public t(Ljava/lang/String;Lcom/google/gson/l;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/gson/o;->a:Lc7/h;

    if-nez p2, :cond_6

    sget-object p2, Lcom/google/gson/n;->a:Lcom/google/gson/n;

    :cond_6
    invoke-virtual {v0, p1, p2}, Lc7/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public u(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4

    if-nez p2, :cond_5

    .line 1
    sget-object p2, Lcom/google/gson/n;->a:Lcom/google/gson/n;

    goto :goto_b

    :cond_5
    new-instance v0, Lcom/google/gson/r;

    invoke-direct {v0, p2}, Lcom/google/gson/r;-><init>(Ljava/lang/Boolean;)V

    move-object p2, v0

    :goto_b
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/Number;)V
    .registers 4

    if-nez p2, :cond_5

    .line 1
    sget-object p2, Lcom/google/gson/n;->a:Lcom/google/gson/n;

    goto :goto_b

    :cond_5
    new-instance v0, Lcom/google/gson/r;

    invoke-direct {v0, p2}, Lcom/google/gson/r;-><init>(Ljava/lang/Number;)V

    move-object p2, v0

    :goto_b
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    return-void
.end method

.method public x(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-nez p2, :cond_5

    .line 1
    sget-object p2, Lcom/google/gson/n;->a:Lcom/google/gson/n;

    goto :goto_b

    :cond_5
    new-instance v0, Lcom/google/gson/r;

    invoke-direct {v0, p2}, Lcom/google/gson/r;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    :goto_b
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    return-void
.end method

.method public y()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/google/gson/l;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/gson/o;->a:Lc7/h;

    invoke-virtual {v0}, Lc7/h;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
