###### Class x2.e (x2.e)
.class public Lx2/e;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TT;TY;>;"
        }
    .end annotation
.end field

.field private b:I

.field private final c:I

.field private d:I


# direct methods
.method public constructor <init>(I)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x64

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lx2/e;->a:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lx2/e;->d:I

    .line 4
    iput p1, p0, Lx2/e;->c:I

    .line 5
    iput p1, p0, Lx2/e;->b:I

    return-void
.end method

.method private f()V
    .registers 2

    .line 1
    iget v0, p0, Lx2/e;->b:I

    invoke-virtual {p0, v0}, Lx2/e;->m(I)V

    return-void
.end method


# virtual methods
.method public d()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lx2/e;->m(I)V

    return-void
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TY;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lx2/e;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h()I
    .registers 2

    .line 1
    iget v0, p0, Lx2/e;->d:I

    return v0
.end method

.method protected i(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TY;)I"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method protected j(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TY;)V"
        }
    .end annotation

    return-void
.end method

.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TY;)TY;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lx2/e;->i(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget v1, p0, Lx2/e;->b:I

    if-lt v0, v1, :cond_d

    .line 3
    invoke-virtual {p0, p1, p2}, Lx2/e;->j(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_d
    iget-object v0, p0, Lx2/e;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p2, :cond_1e

    .line 5
    iget v0, p0, Lx2/e;->d:I

    invoke-virtual {p0, p2}, Lx2/e;->i(Ljava/lang/Object;)I

    move-result p2

    add-int/2addr v0, p2

    iput v0, p0, Lx2/e;->d:I

    :cond_1e
    if-eqz p1, :cond_29

    .line 6
    iget p2, p0, Lx2/e;->d:I

    invoke-virtual {p0, p1}, Lx2/e;->i(Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p0, Lx2/e;->d:I

    .line 7
    :cond_29
    invoke-direct {p0}, Lx2/e;->f()V

    return-object p1
.end method

.method public l(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TY;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lx2/e;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 2
    iget v0, p0, Lx2/e;->d:I

    invoke-virtual {p0, p1}, Lx2/e;->i(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lx2/e;->d:I

    :cond_11
    return-object p1
.end method

.method protected m(I)V
    .registers 6

    .line 1
    :goto_0
    iget v0, p0, Lx2/e;->d:I

    if-le v0, p1, :cond_2e

    .line 2
    iget-object v0, p0, Lx2/e;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 4
    iget v2, p0, Lx2/e;->d:I

    invoke-virtual {p0, v1}, Lx2/e;->i(Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lx2/e;->d:I

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lx2/e;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, v0, v1}, Lx2/e;->j(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2e
    return-void
.end method
