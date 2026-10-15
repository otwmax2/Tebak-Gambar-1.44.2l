###### Class com.google.gson.g (com.google.gson.g)
.class public final Lcom/google/gson/g;
.super Ljava/lang/Object;
.source "GsonBuilder.java"


# instance fields
.field private a:Lc7/d;

.field private b:Lcom/google/gson/v;

.field private c:Lcom/google/gson/e;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/h<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson/x;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson/x;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lc7/d;->u:Lc7/d;

    iput-object v0, p0, Lcom/google/gson/g;->a:Lc7/d;

    .line 3
    sget-object v0, Lcom/google/gson/v;->o:Lcom/google/gson/v;

    iput-object v0, p0, Lcom/google/gson/g;->b:Lcom/google/gson/v;

    .line 4
    sget-object v0, Lcom/google/gson/d;->o:Lcom/google/gson/d;

    iput-object v0, p0, Lcom/google/gson/g;->c:Lcom/google/gson/e;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson/g;->d:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/g;->e:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/g;->f:Ljava/util/List;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/google/gson/g;->g:Z

    const/4 v1, 0x2

    .line 9
    iput v1, p0, Lcom/google/gson/g;->i:I

    .line 10
    iput v1, p0, Lcom/google/gson/g;->j:I

    .line 11
    iput-boolean v0, p0, Lcom/google/gson/g;->k:Z

    .line 12
    iput-boolean v0, p0, Lcom/google/gson/g;->l:Z

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lcom/google/gson/g;->m:Z

    .line 14
    iput-boolean v0, p0, Lcom/google/gson/g;->n:Z

    .line 15
    iput-boolean v0, p0, Lcom/google/gson/g;->o:Z

    .line 16
    iput-boolean v0, p0, Lcom/google/gson/g;->p:Z

    return-void
.end method

.method private a(Ljava/lang/String;IILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/google/gson/x;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_24

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 2
    new-instance p2, Lcom/google/gson/a;

    const-class p3, Ljava/util/Date;

    invoke-direct {p2, p3, p1}, Lcom/google/gson/a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 3
    new-instance p3, Lcom/google/gson/a;

    const-class v0, Ljava/sql/Timestamp;

    invoke-direct {p3, v0, p1}, Lcom/google/gson/a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/google/gson/a;

    const-class v1, Ljava/sql/Date;

    invoke-direct {v0, v1, p1}, Lcom/google/gson/a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_41

    :cond_24
    const/4 p1, 0x2

    if-eq p2, p1, :cond_5c

    if-eq p3, p1, :cond_5c

    .line 5
    new-instance p1, Lcom/google/gson/a;

    const-class v0, Ljava/util/Date;

    invoke-direct {p1, v0, p2, p3}, Lcom/google/gson/a;-><init>(Ljava/lang/Class;II)V

    .line 6
    new-instance v0, Lcom/google/gson/a;

    const-class v1, Ljava/sql/Timestamp;

    invoke-direct {v0, v1, p2, p3}, Lcom/google/gson/a;-><init>(Ljava/lang/Class;II)V

    .line 7
    new-instance v1, Lcom/google/gson/a;

    const-class v2, Ljava/sql/Date;

    invoke-direct {v1, v2, p2, p3}, Lcom/google/gson/a;-><init>(Ljava/lang/Class;II)V

    move-object p2, p1

    move-object p3, v0

    move-object v0, v1

    .line 8
    :goto_41
    const-class p1, Ljava/util/Date;

    invoke-static {p1, p2}, Ld7/n;->b(Ljava/lang/Class;Lcom/google/gson/w;)Lcom/google/gson/x;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    const-class p1, Ljava/sql/Timestamp;

    invoke-static {p1, p3}, Ld7/n;->b(Ljava/lang/Class;Lcom/google/gson/w;)Lcom/google/gson/x;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    const-class p1, Ljava/sql/Date;

    invoke-static {p1, v0}, Ld7/n;->b(Ljava/lang/Class;Lcom/google/gson/w;)Lcom/google/gson/x;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5c
    return-void
.end method


# virtual methods
.method public b()Lcom/google/gson/f;
    .registers 22

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v18, v1

    iget-object v2, v0, Lcom/google/gson/g;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Lcom/google/gson/g;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    iget-object v2, v0, Lcom/google/gson/g;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/google/gson/g;->f:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 6
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    iget-object v2, v0, Lcom/google/gson/g;->h:Ljava/lang/String;

    iget v3, v0, Lcom/google/gson/g;->i:I

    iget v4, v0, Lcom/google/gson/g;->j:I

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/gson/g;->a(Ljava/lang/String;IILjava/util/List;)V

    .line 8
    new-instance v19, Lcom/google/gson/f;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/google/gson/g;->a:Lc7/d;

    iget-object v3, v0, Lcom/google/gson/g;->c:Lcom/google/gson/e;

    iget-object v4, v0, Lcom/google/gson/g;->d:Ljava/util/Map;

    iget-boolean v5, v0, Lcom/google/gson/g;->g:Z

    iget-boolean v6, v0, Lcom/google/gson/g;->k:Z

    iget-boolean v7, v0, Lcom/google/gson/g;->o:Z

    iget-boolean v8, v0, Lcom/google/gson/g;->m:Z

    iget-boolean v9, v0, Lcom/google/gson/g;->n:Z

    iget-boolean v10, v0, Lcom/google/gson/g;->p:Z

    iget-boolean v11, v0, Lcom/google/gson/g;->l:Z

    iget-object v12, v0, Lcom/google/gson/g;->b:Lcom/google/gson/v;

    iget-object v13, v0, Lcom/google/gson/g;->h:Ljava/lang/String;

    iget v14, v0, Lcom/google/gson/g;->i:I

    iget v15, v0, Lcom/google/gson/g;->j:I

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/google/gson/g;->e:Ljava/util/List;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/google/gson/g;->f:Ljava/util/List;

    move-object/from16 v17, v1

    move-object/from16 v1, v20

    invoke-direct/range {v1 .. v18}, Lcom/google/gson/f;-><init>(Lc7/d;Lcom/google/gson/e;Ljava/util/Map;ZZZZZZZLcom/google/gson/v;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v19
.end method

.method public c(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/g;
    .registers 6

    .line 1
    instance-of v0, p2, Lcom/google/gson/t;

    if-nez v0, :cond_13

    instance-of v1, p2, Lcom/google/gson/k;

    if-nez v1, :cond_13

    instance-of v1, p2, Lcom/google/gson/h;

    if-nez v1, :cond_13

    instance-of v1, p2, Lcom/google/gson/w;

    if-eqz v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v1, 0x1

    :goto_14
    invoke-static {v1}, Lc7/a;->a(Z)V

    .line 2
    instance-of v1, p2, Lcom/google/gson/h;

    if-eqz v1, :cond_23

    .line 3
    iget-object v1, p0, Lcom/google/gson/g;->d:Ljava/util/Map;

    move-object v2, p2

    check-cast v2, Lcom/google/gson/h;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    if-nez v0, :cond_29

    .line 4
    instance-of v0, p2, Lcom/google/gson/k;

    if-eqz v0, :cond_36

    .line 5
    :cond_29
    invoke-static {p1}, Lg7/a;->get(Ljava/lang/reflect/Type;)Lg7/a;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/google/gson/g;->e:Ljava/util/List;

    invoke-static {v0, p2}, Ld7/l;->f(Lg7/a;Ljava/lang/Object;)Lcom/google/gson/x;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_36
    instance-of v0, p2, Lcom/google/gson/w;

    if-eqz v0, :cond_49

    .line 8
    iget-object v0, p0, Lcom/google/gson/g;->e:Ljava/util/List;

    invoke-static {p1}, Lg7/a;->get(Ljava/lang/reflect/Type;)Lg7/a;

    move-result-object p1

    check-cast p2, Lcom/google/gson/w;

    invoke-static {p1, p2}, Ld7/n;->a(Lg7/a;Lcom/google/gson/w;)Lcom/google/gson/x;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_49
    return-object p0
.end method

.method public d(Lcom/google/gson/x;)Lcom/google/gson/g;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/g;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
