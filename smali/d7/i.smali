###### Class d7.i (d7.i)
.class public final Ld7/i;
.super Ljava/lang/Object;
.source "ReflectiveTypeAdapterFactory.java"

# interfaces
.implements Lcom/google/gson/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld7/i$b;,
        Ld7/i$c;
    }
.end annotation


# instance fields
.field private final o:Lc7/c;

.field private final p:Lcom/google/gson/e;

.field private final q:Lc7/d;

.field private final r:Ld7/d;

.field private final s:Lf7/b;


# direct methods
.method public constructor <init>(Lc7/c;Lcom/google/gson/e;Lc7/d;Ld7/d;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lf7/b;->a()Lf7/b;

    move-result-object v0

    iput-object v0, p0, Ld7/i;->s:Lf7/b;

    .line 3
    iput-object p1, p0, Ld7/i;->o:Lc7/c;

    .line 4
    iput-object p2, p0, Ld7/i;->p:Lcom/google/gson/e;

    .line 5
    iput-object p3, p0, Ld7/i;->q:Lc7/d;

    .line 6
    iput-object p4, p0, Ld7/i;->r:Ld7/d;

    return-void
.end method

.method private b(Lcom/google/gson/f;Ljava/lang/reflect/Field;Ljava/lang/String;Lg7/a;ZZ)Ld7/i$c;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/f;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Lg7/a<",
            "*>;ZZ)",
            "Ld7/i$c;"
        }
    .end annotation

    move-object v11, p0

    move-object v8, p1

    move-object/from16 v9, p4

    .line 1
    invoke-virtual/range {p4 .. p4}, Lg7/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lc7/k;->a(Ljava/lang/reflect/Type;)Z

    move-result v10

    .line 2
    const-class v0, Lb7/b;

    move-object v5, p2

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lb7/b;

    if-eqz v0, :cond_20

    .line 3
    iget-object v1, v11, Ld7/i;->r:Ld7/d;

    iget-object v2, v11, Ld7/i;->o:Lc7/c;

    invoke-virtual {v1, v2, p1, v9, v0}, Ld7/d;->b(Lc7/c;Lcom/google/gson/f;Lg7/a;Lb7/b;)Lcom/google/gson/w;

    move-result-object v0

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    if-eqz v0, :cond_26

    const/4 v1, 0x1

    const/4 v6, 0x1

    goto :goto_28

    :cond_26
    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_28
    if-nez v0, :cond_2e

    .line 4
    invoke-virtual {p1, v9}, Lcom/google/gson/f;->m(Lg7/a;)Lcom/google/gson/w;

    move-result-object v0

    :cond_2e
    move-object v7, v0

    .line 5
    new-instance v12, Ld7/i$a;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move-object v5, p2

    move-object v8, p1

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v10}, Ld7/i$a;-><init>(Ld7/i;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcom/google/gson/w;Lcom/google/gson/f;Lg7/a;Z)V

    return-object v12
.end method

.method static d(Ljava/lang/reflect/Field;ZLc7/d;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lc7/d;->d(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p2, p0, p1}, Lc7/d;->h(Ljava/lang/reflect/Field;Z)Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private e(Lcom/google/gson/f;Lg7/a;Ljava/lang/Class;)Ljava/util/Map;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/f;",
            "Lg7/a<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ld7/i$c;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    .line 1
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_e

    return-object v8

    .line 3
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lg7/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v9

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 4
    :goto_16
    const-class v0, Ljava/lang/Object;

    if-eq v11, v0, :cond_d1

    .line 5
    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v12

    .line 6
    array-length v13, v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_21
    if-ge v15, v13, :cond_bb

    aget-object v6, v12, v15

    const/4 v0, 0x1

    .line 7
    invoke-virtual {v7, v6, v0}, Ld7/i;->c(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    .line 8
    invoke-virtual {v7, v6, v14}, Ld7/i;->c(Ljava/lang/reflect/Field;Z)Z

    move-result v16

    if-nez v0, :cond_34

    if-nez v16, :cond_34

    goto/16 :goto_9b

    .line 9
    :cond_34
    iget-object v1, v7, Ld7/i;->s:Lf7/b;

    invoke-virtual {v1, v6}, Lf7/b;->b(Ljava/lang/reflect/AccessibleObject;)V

    .line 10
    invoke-virtual {v10}, Lg7/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v1, v11, v2}, Lc7/b;->p(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v17

    .line 11
    invoke-direct {v7, v6}, Ld7/i;->f(Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v5

    const/4 v1, 0x0

    .line 12
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    move-object v3, v1

    const/4 v2, 0x0

    :goto_50
    if-ge v2, v4, :cond_98

    .line 13
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v2, :cond_5d

    const/16 v18, 0x0

    goto :goto_5f

    :cond_5d
    move/from16 v18, v0

    .line 14
    :goto_5f
    invoke-static/range {v17 .. v17}, Lg7/a;->get(Ljava/lang/reflect/Type;)Lg7/a;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 p2, v1

    move-object/from16 v1, p1

    move/from16 v20, v2

    move-object v2, v6

    move-object v14, v3

    move-object/from16 v3, p2

    move/from16 v21, v4

    move-object/from16 v4, v19

    move-object/from16 v19, v5

    move/from16 v5, v18

    move-object/from16 v22, v6

    move/from16 v6, v16

    .line 15
    invoke-direct/range {v0 .. v6}, Ld7/i;->b(Lcom/google/gson/f;Ljava/lang/reflect/Field;Ljava/lang/String;Lg7/a;ZZ)Ld7/i$c;

    move-result-object v0

    move-object/from16 v1, p2

    .line 16
    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld7/i$c;

    if-nez v14, :cond_8b

    move-object v3, v0

    goto :goto_8c

    :cond_8b
    move-object v3, v14

    :goto_8c
    add-int/lit8 v2, v20, 0x1

    move/from16 v0, v18

    move-object/from16 v5, v19

    move/from16 v4, v21

    move-object/from16 v6, v22

    const/4 v14, 0x0

    goto :goto_50

    :cond_98
    move-object v14, v3

    if-nez v14, :cond_9f

    :goto_9b
    add-int/lit8 v15, v15, 0x1

    const/4 v14, 0x0

    goto :goto_21

    .line 17
    :cond_9f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " declares multiple JSON fields named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Ld7/i$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_bb
    invoke-virtual {v10}, Lg7/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v11, v1}, Lc7/b;->p(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lg7/a;->get(Ljava/lang/reflect/Type;)Lg7/a;

    move-result-object v10

    .line 19
    invoke-virtual {v10}, Lg7/a;->getRawType()Ljava/lang/Class;

    move-result-object v11

    goto/16 :goto_16

    :cond_d1
    return-object v8
.end method

.method private f(Ljava/lang/reflect/Field;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lb7/c;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lb7/c;

    if-nez v0, :cond_15

    .line 2
    iget-object v0, p0, Ld7/i;->p:Lcom/google/gson/e;

    invoke-interface {v0, p1}, Lcom/google/gson/e;->c(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 4
    :cond_15
    invoke-interface {v0}, Lb7/c;->value()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-interface {v0}, Lb7/c;->alternate()[Ljava/lang/String;

    move-result-object v0

    .line 6
    array-length v1, v0

    if-nez v1, :cond_25

    .line 7
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 8
    :cond_25
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    array-length p1, v0

    const/4 v2, 0x0

    :goto_32
    if-ge v2, p1, :cond_3c

    aget-object v3, v0, v2

    .line 11
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_3c
    return-object v1
.end method


# virtual methods
.method public a(Lcom/google/gson/f;Lg7/a;)Lcom/google/gson/w;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/f;",
            "Lg7/a<",
            "TT;>;)",
            "Lcom/google/gson/w<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lg7/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 2
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_e
    iget-object v1, p0, Ld7/i;->o:Lc7/c;

    invoke-virtual {v1, p2}, Lc7/c;->a(Lg7/a;)Lc7/i;

    move-result-object v1

    .line 4
    new-instance v2, Ld7/i$b;

    invoke-direct {p0, p1, p2, v0}, Ld7/i;->e(Lcom/google/gson/f;Lg7/a;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Ld7/i$b;-><init>(Lc7/i;Ljava/util/Map;)V

    return-object v2
.end method

.method public c(Ljava/lang/reflect/Field;Z)Z
    .registers 4

    .line 1
    iget-object v0, p0, Ld7/i;->q:Lc7/d;

    invoke-static {p1, p2, v0}, Ld7/i;->d(Ljava/lang/reflect/Field;ZLc7/d;)Z

    move-result p1

    return p1
.end method

###### Class d7.i.a (d7.i$a)
.class Ld7/i$a;
.super Ld7/i$c;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld7/i;->b(Lcom/google/gson/f;Ljava/lang/reflect/Field;Ljava/lang/String;Lg7/a;ZZ)Ld7/i$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/reflect/Field;

.field final synthetic e:Z

.field final synthetic f:Lcom/google/gson/w;

.field final synthetic g:Lcom/google/gson/f;

.field final synthetic h:Lg7/a;

.field final synthetic i:Z

.field final synthetic j:Ld7/i;


# direct methods
.method constructor <init>(Ld7/i;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcom/google/gson/w;Lcom/google/gson/f;Lg7/a;Z)V
    .registers 11

    .line 1
    iput-object p1, p0, Ld7/i$a;->j:Ld7/i;

    iput-object p5, p0, Ld7/i$a;->d:Ljava/lang/reflect/Field;

    iput-boolean p6, p0, Ld7/i$a;->e:Z

    iput-object p7, p0, Ld7/i$a;->f:Lcom/google/gson/w;

    iput-object p8, p0, Ld7/i$a;->g:Lcom/google/gson/f;

    iput-object p9, p0, Ld7/i$a;->h:Lg7/a;

    iput-boolean p10, p0, Ld7/i$a;->i:Z

    invoke-direct {p0, p2, p3, p4}, Ld7/i$c;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method a(Lh7/a;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld7/i$a;->f:Lcom/google/gson/w;

    invoke-virtual {v0, p1}, Lcom/google/gson/w;->b(Lh7/a;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_c

    .line 2
    iget-boolean v0, p0, Ld7/i$a;->i:Z

    if-nez v0, :cond_11

    .line 3
    :cond_c
    iget-object v0, p0, Ld7/i$a;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method b(Lh7/c;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld7/i$a;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 2
    iget-boolean v0, p0, Ld7/i$a;->e:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Ld7/i$a;->f:Lcom/google/gson/w;

    goto :goto_1c

    .line 3
    :cond_d
    new-instance v0, Ld7/m;

    iget-object v1, p0, Ld7/i$a;->g:Lcom/google/gson/f;

    iget-object v2, p0, Ld7/i$a;->f:Lcom/google/gson/w;

    iget-object v3, p0, Ld7/i$a;->h:Lg7/a;

    invoke-virtual {v3}, Lg7/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ld7/m;-><init>(Lcom/google/gson/f;Lcom/google/gson/w;Ljava/lang/reflect/Type;)V

    .line 4
    :goto_1c
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/w;->d(Lh7/c;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ld7/i$c;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    iget-object v0, p0, Ld7/i$a;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

###### Class d7.i.b (d7.i$b)
.class public final Ld7/i$b;
.super Lcom/google/gson/w;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld7/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/w<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lc7/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc7/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ld7/i$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lc7/i;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc7/i<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ld7/i$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/gson/w;-><init>()V

    .line 2
    iput-object p1, p0, Ld7/i$b;->a:Lc7/i;

    .line 3
    iput-object p2, p0, Ld7/i$b;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public b(Lh7/a;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh7/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lh7/a;->x()Lh7/b;

    move-result-object v0

    sget-object v1, Lh7/b;->w:Lh7/b;

    if-ne v0, v1, :cond_d

    .line 2
    invoke-virtual {p1}, Lh7/a;->t()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_d
    iget-object v0, p0, Ld7/i$b;->a:Lc7/i;

    invoke-interface {v0}, Lc7/i;->a()Ljava/lang/Object;

    move-result-object v0

    .line 4
    :try_start_13
    invoke-virtual {p1}, Lh7/a;->c()V

    .line 5
    :goto_16
    invoke-virtual {p1}, Lh7/a;->j()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 6
    invoke-virtual {p1}, Lh7/a;->r()Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object v2, p0, Ld7/i$b;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld7/i$c;

    if-eqz v1, :cond_33

    .line 8
    iget-boolean v2, v1, Ld7/i$c;->c:Z

    if-nez v2, :cond_2f

    goto :goto_33

    .line 9
    :cond_2f
    invoke-virtual {v1, p1, v0}, Ld7/i$c;->a(Lh7/a;Ljava/lang/Object;)V

    goto :goto_16

    .line 10
    :cond_33
    :goto_33
    invoke-virtual {p1}, Lh7/a;->J()V
    :try_end_36
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_36} :catch_42
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_36} :catch_3b

    goto :goto_16

    .line 11
    :cond_37
    invoke-virtual {p1}, Lh7/a;->h()V

    return-object v0

    :catch_3b
    move-exception p1

    .line 12
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_42
    move-exception p1

    .line 13
    new-instance v0, Lcom/google/gson/u;

    invoke-direct {v0, p1}, Lcom/google/gson/u;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4a

    :goto_49
    throw v0

    :goto_4a
    goto :goto_49
.end method

.method public d(Lh7/c;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh7/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_6

    .line 1
    invoke-virtual {p1}, Lh7/c;->n()Lh7/c;

    return-void

    .line 2
    :cond_6
    invoke-virtual {p1}, Lh7/c;->e()Lh7/c;

    .line 3
    :try_start_9
    iget-object v0, p0, Ld7/i$b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld7/i$c;

    .line 4
    invoke-virtual {v1, p2}, Ld7/i$c;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 5
    iget-object v2, v1, Ld7/i$c;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lh7/c;->l(Ljava/lang/String;)Lh7/c;

    .line 6
    invoke-virtual {v1, p1, p2}, Ld7/i$c;->b(Lh7/c;Ljava/lang/Object;)V
    :try_end_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_2d} :catch_32

    goto :goto_13

    .line 7
    :cond_2e
    invoke-virtual {p1}, Lh7/c;->h()Lh7/c;

    return-void

    :catch_32
    move-exception p1

    .line 8
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto :goto_3a

    :goto_39
    throw p2

    :goto_3a
    goto :goto_39
.end method

###### Class d7.i.c (d7.i$c)
.class abstract Ld7/i$c;
.super Ljava/lang/Object;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld7/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Z

.field final c:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZZ)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld7/i$c;->a:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Ld7/i$c;->b:Z

    .line 4
    iput-boolean p3, p0, Ld7/i$c;->c:Z

    return-void
.end method


# virtual methods
.method abstract a(Lh7/a;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method abstract b(Lh7/c;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method abstract c(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method
