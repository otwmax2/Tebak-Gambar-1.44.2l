###### Class androidx.datastore.preferences.protobuf.j1 (androidx.datastore.preferences.protobuf.j1)
.class Landroidx/datastore/preferences/protobuf/j1;
.super Ljava/util/AbstractMap;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/j1$d;,
        Landroidx/datastore/preferences/protobuf/j1$b;,
        Landroidx/datastore/preferences/protobuf/j1$f;,
        Landroidx/datastore/preferences/protobuf/j1$c;,
        Landroidx/datastore/preferences/protobuf/j1$g;,
        Landroidx/datastore/preferences/protobuf/j1$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final o:I

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/datastore/preferences/protobuf/j1<",
            "TK;TV;>.e;>;"
        }
    .end annotation
.end field

.field private q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private r:Z

.field private volatile s:Landroidx/datastore/preferences/protobuf/j1$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/j1<",
            "TK;TV;>.g;"
        }
    .end annotation
.end field

.field private t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile u:Landroidx/datastore/preferences/protobuf/j1$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/j1<",
            "TK;TV;>.c;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 3
    iput p1, p0, Landroidx/datastore/preferences/protobuf/j1;->o:I

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/j1;->p:Ljava/util/List;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/j1;->q:Ljava/util/Map;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/j1;->t:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(ILandroidx/datastore/preferences/protobuf/j1$a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/j1;-><init>(I)V

    return-void
.end method

.method static synthetic a(Landroidx/datastore/preferences/protobuf/j1;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/j1;->h()V

    return-void
.end method

.method static synthetic b(Landroidx/datastore/preferences/protobuf/j1;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/j1;->p:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Landroidx/datastore/preferences/protobuf/j1;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/j1;->q:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic d(Landroidx/datastore/preferences/protobuf/j1;I)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/j1;->u(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Landroidx/datastore/preferences/protobuf/j1;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/j1;->t:Ljava/util/Map;

    return-object p0
.end method

.method private f(Ljava/lang/Comparable;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_23

    .line 2
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j1;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/j1$e;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/j1$e;->f()Ljava/lang/Comparable;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_20

    add-int/lit8 v0, v0, 0x2

    neg-int p1, v0

    return p1

    :cond_20
    if-nez v1, :cond_23

    return v0

    :cond_23
    const/4 v1, 0x0

    :goto_24
    if-gt v1, v0, :cond_47

    add-int v2, v1, v0

    .line 3
    div-int/lit8 v2, v2, 0x2

    .line 4
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/j1;->p:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/datastore/preferences/protobuf/j1$e;

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/j1$e;->f()Ljava/lang/Comparable;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_40

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_24

    :cond_40
    if-lez v3, :cond_46

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_24

    :cond_46
    return v2

    :cond_47
    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    return p1
.end method

.method private h()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/j1;->r:Z

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private k()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/j1;->h()V

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->p:Ljava/util/List;

    instance-of v0, v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1a

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j1;->o:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->p:Ljava/util/List;

    :cond_1a
    return-void
.end method

.method private p()Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/j1;->h()V

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->q:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-nez v0, :cond_21

    .line 3
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->q:Ljava/util/Map;

    .line 4
    move-object v1, v0

    check-cast v1, Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->t:Ljava/util/Map;

    .line 5
    :cond_21
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->q:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method static s(I)Landroidx/datastore/preferences/protobuf/j1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FieldDescriptorType::",
            "Landroidx/datastore/preferences/protobuf/u$b<",
            "TFieldDescriptorType;>;>(I)",
            "Landroidx/datastore/preferences/protobuf/j1<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/j1$a;

    invoke-direct {v0, p0}, Landroidx/datastore/preferences/protobuf/j1$a;-><init>(I)V

    return-object v0
.end method

.method private u(I)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/j1;->h()V

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/preferences/protobuf/j1$e;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/j1$e;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    .line 4
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/j1;->p()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j1;->p:Ljava/util/List;

    new-instance v2, Landroidx/datastore/preferences/protobuf/j1$e;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-direct {v2, p0, v3}, Landroidx/datastore/preferences/protobuf/j1$e;-><init>(Landroidx/datastore/preferences/protobuf/j1;Ljava/util/Map$Entry;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_36
    return-object p1
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/j1;->h()V

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    :cond_10
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1d
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    .line 2
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/j1;->f(Ljava/lang/Comparable;)I

    move-result v0

    if-gez v0, :cond_13

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->s:Landroidx/datastore/preferences/protobuf/j1$g;

    if-nez v0, :cond_c

    .line 2
    new-instance v0, Landroidx/datastore/preferences/protobuf/j1$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/datastore/preferences/protobuf/j1$g;-><init>(Landroidx/datastore/preferences/protobuf/j1;Landroidx/datastore/preferences/protobuf/j1$a;)V

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->s:Landroidx/datastore/preferences/protobuf/j1$g;

    .line 3
    :cond_c
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->s:Landroidx/datastore/preferences/protobuf/j1$g;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Landroidx/datastore/preferences/protobuf/j1;

    if-nez v1, :cond_d

    .line 2
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_d
    check-cast p1, Landroidx/datastore/preferences/protobuf/j1;

    .line 4
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j1;->size()I

    move-result v1

    .line 5
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/j1;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 6
    :cond_1b
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j1;->m()I

    move-result v2

    .line 7
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/j1;->m()I

    move-result v4

    if-eq v2, v4, :cond_32

    .line 8
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j1;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/j1;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_32
    const/4 v4, 0x0

    :goto_33
    if-ge v4, v2, :cond_47

    .line 9
    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/j1;->l(I)Ljava/util/Map$Entry;

    move-result-object v5

    invoke-virtual {p1, v4}, Landroidx/datastore/preferences/protobuf/j1;->l(I)Ljava/util/Map$Entry;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    return v3

    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_47
    if-eq v2, v1, :cond_52

    .line 10
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->q:Ljava/util/Map;

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/j1;->q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_52
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    .line 2
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/j1;->f(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_15

    .line 3
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j1;->p:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/preferences/protobuf/j1$e;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/j1$e;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_15
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j1;->m()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v1, v0, :cond_18

    .line 2
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/j1;->p:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/datastore/preferences/protobuf/j1$e;

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/j1$e;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 3
    :cond_18
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j1;->n()I

    move-result v0

    if-lez v0, :cond_25

    .line 4
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    :cond_25
    return v2
.end method

.method j()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->u:Landroidx/datastore/preferences/protobuf/j1$c;

    if-nez v0, :cond_c

    .line 2
    new-instance v0, Landroidx/datastore/preferences/protobuf/j1$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/datastore/preferences/protobuf/j1$c;-><init>(Landroidx/datastore/preferences/protobuf/j1;Landroidx/datastore/preferences/protobuf/j1$a;)V

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->u:Landroidx/datastore/preferences/protobuf/j1$c;

    .line 3
    :cond_c
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->u:Landroidx/datastore/preferences/protobuf/j1$c;

    return-object v0
.end method

.method public l(I)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    return-object p1
.end method

.method public m()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public n()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public o()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/j1$d;->b()Ljava/lang/Iterable;

    move-result-object v0

    goto :goto_13

    :cond_d
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->q:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    :goto_13
    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/j1;->t(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public q()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/j1;->r:Z

    return v0
.end method

.method public r()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/j1;->r:Z

    if-nez v0, :cond_31

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->q:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_17

    :cond_11
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->q:Ljava/util/Map;

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_17
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->q:Ljava/util/Map;

    .line 6
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->t:Ljava/util/Map;

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_2c

    :cond_26
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->t:Ljava/util/Map;

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_2c
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->t:Ljava/util/Map;

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Landroidx/datastore/preferences/protobuf/j1;->r:Z

    :cond_31
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/j1;->h()V

    .line 2
    check-cast p1, Ljava/lang/Comparable;

    .line 3
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/j1;->f(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_10

    .line 4
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j1;->u(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_10
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_1a
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j1;->q:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public t(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/j1;->h()V

    .line 2
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/j1;->f(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_16

    .line 3
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/j1;->p:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/preferences/protobuf/j1$e;

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/j1$e;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_16
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/j1;->k()V

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 5
    iget v1, p0, Landroidx/datastore/preferences/protobuf/j1;->o:I

    if-lt v0, v1, :cond_29

    .line 6
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/j1;->p()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_29
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j1;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Landroidx/datastore/preferences/protobuf/j1;->o:I

    if-ne v1, v2, :cond_4c

    .line 8
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j1;->p:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/j1$e;

    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/j1;->p()Ljava/util/SortedMap;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/j1$e;->f()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/j1$e;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_4c
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j1;->p:Ljava/util/List;

    new-instance v2, Landroidx/datastore/preferences/protobuf/j1$e;

    invoke-direct {v2, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/j1$e;-><init>(Landroidx/datastore/preferences/protobuf/j1;Ljava/lang/Comparable;Ljava/lang/Object;)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

###### Class androidx.datastore.preferences.protobuf.j1.a (androidx.datastore.preferences.protobuf.j1$a)
.class final Landroidx/datastore/preferences/protobuf/j1$a;
.super Landroidx/datastore/preferences/protobuf/j1;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/datastore/preferences/protobuf/j1;->s(I)Landroidx/datastore/preferences/protobuf/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/j1<",
        "TFieldDescriptorType;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/j1;-><init>(ILandroidx/datastore/preferences/protobuf/j1$a;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Landroidx/datastore/preferences/protobuf/u$b;

    invoke-super {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/j1;->t(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public r()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j1;->q()Z

    move-result v0

    if-nez v0, :cond_5b

    const/4 v0, 0x0

    .line 2
    :goto_7
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j1;->m()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 3
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/j1;->l(I)Ljava/util/Map$Entry;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/datastore/preferences/protobuf/u$b;

    invoke-interface {v2}, Landroidx/datastore/preferences/protobuf/u$b;->w()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 6
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 7
    :cond_2d
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j1;->o()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_35
    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/datastore/preferences/protobuf/u$b;

    invoke-interface {v2}, Landroidx/datastore/preferences/protobuf/u$b;->w()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 10
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    .line 11
    :cond_5b
    invoke-super {p0}, Landroidx/datastore/preferences/protobuf/j1;->r()V

    return-void
.end method

###### Class androidx.datastore.preferences.protobuf.j1.b (androidx.datastore.preferences.protobuf.j1$b)
.class Landroidx/datastore/preferences/protobuf/j1$b;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private o:I

.field private p:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic q:Landroidx/datastore/preferences/protobuf/j1;


# direct methods
.method private constructor <init>(Landroidx/datastore/preferences/protobuf/j1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/j1$b;->q:Landroidx/datastore/preferences/protobuf/j1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/j1;->b(Landroidx/datastore/preferences/protobuf/j1;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Landroidx/datastore/preferences/protobuf/j1$b;->o:I

    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/j1;Landroidx/datastore/preferences/protobuf/j1$a;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/j1$b;-><init>(Landroidx/datastore/preferences/protobuf/j1;)V

    return-void
.end method

.method private a()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1$b;->p:Ljava/util/Iterator;

    if-nez v0, :cond_14

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1$b;->q:Landroidx/datastore/preferences/protobuf/j1;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/j1;->e(Landroidx/datastore/preferences/protobuf/j1;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/j1$b;->p:Ljava/util/Iterator;

    .line 3
    :cond_14
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1$b;->p:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/j1$b;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/j1$b;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 3
    :cond_15
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1$b;->q:Landroidx/datastore/preferences/protobuf/j1;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/j1;->b(Landroidx/datastore/preferences/protobuf/j1;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j1$b;->o:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/j1$b;->o:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public hasNext()Z
    .registers 3

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/j1$b;->o:I

    if-lez v0, :cond_10

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j1$b;->q:Landroidx/datastore/preferences/protobuf/j1;

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/j1;->b(Landroidx/datastore/preferences/protobuf/j1;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1a

    :cond_10
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/j1$b;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j1$b;->b()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

###### Class androidx.datastore.preferences.protobuf.j1.c (androidx.datastore.preferences.protobuf.j1$c)
.class Landroidx/datastore/preferences/protobuf/j1$c;
.super Landroidx/datastore/preferences/protobuf/j1$g;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/j1<",
        "TK;TV;>.g;"
    }
.end annotation


# instance fields
.field final synthetic p:Landroidx/datastore/preferences/protobuf/j1;


# direct methods
.method private constructor <init>(Landroidx/datastore/preferences/protobuf/j1;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/j1$c;->p:Landroidx/datastore/preferences/protobuf/j1;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/j1$g;-><init>(Landroidx/datastore/preferences/protobuf/j1;Landroidx/datastore/preferences/protobuf/j1$a;)V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/j1;Landroidx/datastore/preferences/protobuf/j1$a;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/j1$c;-><init>(Landroidx/datastore/preferences/protobuf/j1;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/j1$b;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j1$c;->p:Landroidx/datastore/preferences/protobuf/j1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/datastore/preferences/protobuf/j1$b;-><init>(Landroidx/datastore/preferences/protobuf/j1;Landroidx/datastore/preferences/protobuf/j1$a;)V

    return-object v0
.end method

###### Class androidx.datastore.preferences.protobuf.j1.d (androidx.datastore.preferences.protobuf.j1$d)
.class Landroidx/datastore/preferences/protobuf/j1$d;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# static fields
.field private static final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/j1$d$a;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/j1$d$a;-><init>()V

    sput-object v0, Landroidx/datastore/preferences/protobuf/j1$d;->a:Ljava/util/Iterator;

    .line 2
    new-instance v0, Landroidx/datastore/preferences/protobuf/j1$d$b;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/j1$d$b;-><init>()V

    sput-object v0, Landroidx/datastore/preferences/protobuf/j1$d;->b:Ljava/lang/Iterable;

    return-void
.end method

.method static synthetic a()Ljava/util/Iterator;
    .registers 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/j1$d;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method static b()Ljava/lang/Iterable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/j1$d;->b:Ljava/lang/Iterable;

    return-object v0
.end method

###### Class androidx.datastore.preferences.protobuf.j1.d.a (androidx.datastore.preferences.protobuf.j1$d$a)
.class final Landroidx/datastore/preferences/protobuf/j1$d$a;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/j1$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

###### Class androidx.datastore.preferences.protobuf.j1.d.b (androidx.datastore.preferences.protobuf.j1$d$b)
.class final Landroidx/datastore/preferences/protobuf/j1$d$b;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/j1$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/j1$d;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.datastore.preferences.protobuf.j1.e (androidx.datastore.preferences.protobuf.j1$e)
.class Landroidx/datastore/preferences/protobuf/j1$e;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;",
        "Ljava/lang/Comparable<",
        "Landroidx/datastore/preferences/protobuf/j1<",
        "TK;TV;>.e;>;"
    }
.end annotation


# instance fields
.field private final o:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field final synthetic q:Landroidx/datastore/preferences/protobuf/j1;


# direct methods
.method constructor <init>(Landroidx/datastore/preferences/protobuf/j1;Ljava/lang/Comparable;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/j1$e;->q:Landroidx/datastore/preferences/protobuf/j1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Landroidx/datastore/preferences/protobuf/j1$e;->o:Ljava/lang/Comparable;

    .line 4
    iput-object p3, p0, Landroidx/datastore/preferences/protobuf/j1$e;->p:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroidx/datastore/preferences/protobuf/j1;Ljava/util/Map$Entry;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Landroidx/datastore/preferences/protobuf/j1$e;-><init>(Landroidx/datastore/preferences/protobuf/j1;Ljava/lang/Comparable;Ljava/lang/Object;)V

    return-void
.end method

.method private e(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-nez p1, :cond_8

    if-nez p2, :cond_6

    const/4 p1, 0x1

    goto :goto_c

    :cond_6
    const/4 p1, 0x0

    goto :goto_c

    .line 1
    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_c
    return p1
.end method


# virtual methods
.method public c(Landroidx/datastore/preferences/protobuf/j1$e;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/preferences/protobuf/j1<",
            "TK;TV;>.e;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j1$e;->f()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/j1$e;->f()Ljava/lang/Comparable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Landroidx/datastore/preferences/protobuf/j1$e;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/j1$e;->c(Landroidx/datastore/preferences/protobuf/j1$e;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2
    :cond_a
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j1$e;->o:Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Landroidx/datastore/preferences/protobuf/j1$e;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j1$e;->p:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/j1$e;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    return v0
.end method

.method public f()Ljava/lang/Comparable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1$e;->o:Ljava/lang/Comparable;

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j1$e;->f()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1$e;->p:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1$e;->o:Ljava/lang/Comparable;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/j1$e;->p:Ljava/lang/Object;

    if-nez v2, :cond_10

    goto :goto_14

    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_14
    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1$e;->q:Landroidx/datastore/preferences/protobuf/j1;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/j1;->a(Landroidx/datastore/preferences/protobuf/j1;)V

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1$e;->p:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/j1$e;->p:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j1$e;->o:Ljava/lang/Comparable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j1$e;->p:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.datastore.preferences.protobuf.j1.f (androidx.datastore.preferences.protobuf.j1$f)
.class Landroidx/datastore/preferences/protobuf/j1$f;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private o:I

.field private p:Z

.field private q:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic r:Landroidx/datastore/preferences/protobuf/j1;


# direct methods
.method private constructor <init>(Landroidx/datastore/preferences/protobuf/j1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/j1$f;->r:Landroidx/datastore/preferences/protobuf/j1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Landroidx/datastore/preferences/protobuf/j1$f;->o:I

    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/j1;Landroidx/datastore/preferences/protobuf/j1$a;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/j1$f;-><init>(Landroidx/datastore/preferences/protobuf/j1;)V

    return-void
.end method

.method private a()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1$f;->q:Ljava/util/Iterator;

    if-nez v0, :cond_14

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1$f;->r:Landroidx/datastore/preferences/protobuf/j1;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/j1;->c(Landroidx/datastore/preferences/protobuf/j1;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/j1$f;->q:Ljava/util/Iterator;

    .line 3
    :cond_14
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1$f;->q:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/datastore/preferences/protobuf/j1$f;->p:Z

    .line 2
    iget v1, p0, Landroidx/datastore/preferences/protobuf/j1$f;->o:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/datastore/preferences/protobuf/j1$f;->o:I

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1$f;->r:Landroidx/datastore/preferences/protobuf/j1;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/j1;->b(Landroidx/datastore/preferences/protobuf/j1;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    .line 3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1$f;->r:Landroidx/datastore/preferences/protobuf/j1;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/j1;->b(Landroidx/datastore/preferences/protobuf/j1;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j1$f;->o:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 4
    :cond_23
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/j1$f;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public hasNext()Z
    .registers 4

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/j1$f;->o:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/j1$f;->r:Landroidx/datastore/preferences/protobuf/j1;

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/j1;->b(Landroidx/datastore/preferences/protobuf/j1;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_28

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1$f;->r:Landroidx/datastore/preferences/protobuf/j1;

    .line 2
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/j1;->c(Landroidx/datastore/preferences/protobuf/j1;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/j1$f;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :cond_28
    :goto_28
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/j1$f;->b()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/j1$f;->p:Z

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/datastore/preferences/protobuf/j1$f;->p:Z

    .line 3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1$f;->r:Landroidx/datastore/preferences/protobuf/j1;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/j1;->a(Landroidx/datastore/preferences/protobuf/j1;)V

    .line 4
    iget v0, p0, Landroidx/datastore/preferences/protobuf/j1$f;->o:I

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j1$f;->r:Landroidx/datastore/preferences/protobuf/j1;

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/j1;->b(Landroidx/datastore/preferences/protobuf/j1;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1$f;->r:Landroidx/datastore/preferences/protobuf/j1;

    iget v1, p0, Landroidx/datastore/preferences/protobuf/j1$f;->o:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Landroidx/datastore/preferences/protobuf/j1$f;->o:I

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/j1;->d(Landroidx/datastore/preferences/protobuf/j1;I)Ljava/lang/Object;

    goto :goto_2d

    .line 6
    :cond_26
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/j1$f;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :goto_2d
    return-void

    .line 7
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() was called before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class androidx.datastore.preferences.protobuf.j1.g (androidx.datastore.preferences.protobuf.j1$g)
.class Landroidx/datastore/preferences/protobuf/j1$g;
.super Ljava/util/AbstractSet;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic o:Landroidx/datastore/preferences/protobuf/j1;


# direct methods
.method private constructor <init>(Landroidx/datastore/preferences/protobuf/j1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/j1$g;->o:Landroidx/datastore/preferences/protobuf/j1;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/j1;Landroidx/datastore/preferences/protobuf/j1$a;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/j1$g;-><init>(Landroidx/datastore/preferences/protobuf/j1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/j1$g;->c(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/j1$g;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1$g;->o:Landroidx/datastore/preferences/protobuf/j1;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/datastore/preferences/protobuf/j1;->t(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_17
    const/4 p1, 0x0

    return p1
.end method

.method public clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1$g;->o:Landroidx/datastore/preferences/protobuf/j1;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j1;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1$g;->o:Landroidx/datastore/preferences/protobuf/j1;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/j1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eq v0, p1, :cond_1d

    if-eqz v0, :cond_1b

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p1, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p1, 0x1

    :goto_1e
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/j1$f;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/j1$g;->o:Landroidx/datastore/preferences/protobuf/j1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/datastore/preferences/protobuf/j1$f;-><init>(Landroidx/datastore/preferences/protobuf/j1;Landroidx/datastore/preferences/protobuf/j1$a;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/j1$g;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1$g;->o:Landroidx/datastore/preferences/protobuf/j1;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/j1;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j1$g;->o:Landroidx/datastore/preferences/protobuf/j1;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j1;->size()I

    move-result v0

    return v0
.end method
