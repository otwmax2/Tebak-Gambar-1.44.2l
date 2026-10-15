###### Class com.google.gson.f (com.google.gson.f)
.class public final Lcom/google/gson/f;
.super Ljava/lang/Object;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/f$f;
    }
.end annotation


# static fields
.field private static final v:Lg7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg7/a<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lg7/a<",
            "*>;",
            "Lcom/google/gson/f$f<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lg7/a<",
            "*>;",
            "Lcom/google/gson/w<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Lc7/c;

.field private final d:Ld7/d;

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson/x;",
            ">;"
        }
    .end annotation
.end field

.field final f:Lc7/d;

.field final g:Lcom/google/gson/e;

.field final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/h<",
            "*>;>;"
        }
    .end annotation
.end field

.field final i:Z

.field final j:Z

.field final k:Z

.field final l:Z

.field final m:Z

.field final n:Z

.field final o:Z

.field final p:Ljava/lang/String;

.field final q:I

.field final r:I

.field final s:Lcom/google/gson/v;

.field final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson/x;",
            ">;"
        }
    .end annotation
.end field

.field final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lg7/a;->get(Ljava/lang/Class;)Lg7/a;

    move-result-object v0

    sput-object v0, Lcom/google/gson/f;->v:Lg7/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 19

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lc7/d;->u:Lc7/d;

    sget-object v2, Lcom/google/gson/d;->o:Lcom/google/gson/d;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v11, Lcom/google/gson/v;->o:Lcom/google/gson/v;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x2

    .line 5
    invoke-direct/range {v0 .. v17}, Lcom/google/gson/f;-><init>(Lc7/d;Lcom/google/gson/e;Ljava/util/Map;ZZZZZZZLcom/google/gson/v;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lc7/d;Lcom/google/gson/e;Ljava/util/Map;ZZZZZZZLcom/google/gson/v;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc7/d;",
            "Lcom/google/gson/e;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/h<",
            "*>;>;ZZZZZZZ",
            "Lcom/google/gson/v;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/google/gson/x;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/gson/x;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/gson/x;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p5

    move/from16 v5, p10

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v6, Ljava/lang/ThreadLocal;

    invoke-direct {v6}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v6, v0, Lcom/google/gson/f;->a:Ljava/lang/ThreadLocal;

    .line 8
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v6, v0, Lcom/google/gson/f;->b:Ljava/util/Map;

    .line 9
    iput-object v1, v0, Lcom/google/gson/f;->f:Lc7/d;

    .line 10
    iput-object v2, v0, Lcom/google/gson/f;->g:Lcom/google/gson/e;

    .line 11
    iput-object v3, v0, Lcom/google/gson/f;->h:Ljava/util/Map;

    .line 12
    new-instance v6, Lc7/c;

    invoke-direct {v6, p3}, Lc7/c;-><init>(Ljava/util/Map;)V

    iput-object v6, v0, Lcom/google/gson/f;->c:Lc7/c;

    move v3, p4

    .line 13
    iput-boolean v3, v0, Lcom/google/gson/f;->i:Z

    .line 14
    iput-boolean v4, v0, Lcom/google/gson/f;->j:Z

    move/from16 v3, p6

    .line 15
    iput-boolean v3, v0, Lcom/google/gson/f;->k:Z

    move/from16 v3, p7

    .line 16
    iput-boolean v3, v0, Lcom/google/gson/f;->l:Z

    move/from16 v3, p8

    .line 17
    iput-boolean v3, v0, Lcom/google/gson/f;->m:Z

    move/from16 v3, p9

    .line 18
    iput-boolean v3, v0, Lcom/google/gson/f;->n:Z

    .line 19
    iput-boolean v5, v0, Lcom/google/gson/f;->o:Z

    move-object/from16 v3, p11

    .line 20
    iput-object v3, v0, Lcom/google/gson/f;->s:Lcom/google/gson/v;

    move-object/from16 v7, p12

    .line 21
    iput-object v7, v0, Lcom/google/gson/f;->p:Ljava/lang/String;

    move/from16 v7, p13

    .line 22
    iput v7, v0, Lcom/google/gson/f;->q:I

    move/from16 v7, p14

    .line 23
    iput v7, v0, Lcom/google/gson/f;->r:I

    move-object/from16 v7, p15

    .line 24
    iput-object v7, v0, Lcom/google/gson/f;->t:Ljava/util/List;

    move-object/from16 v7, p16

    .line 25
    iput-object v7, v0, Lcom/google/gson/f;->u:Ljava/util/List;

    .line 26
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 27
    sget-object v8, Ld7/n;->Y:Lcom/google/gson/x;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v8, Ld7/h;->b:Lcom/google/gson/x;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, p17

    .line 30
    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    sget-object v8, Ld7/n;->D:Lcom/google/gson/x;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v8, Ld7/n;->m:Lcom/google/gson/x;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v8, Ld7/n;->g:Lcom/google/gson/x;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v8, Ld7/n;->i:Lcom/google/gson/x;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v8, Ld7/n;->k:Lcom/google/gson/x;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-static/range {p11 .. p11}, Lcom/google/gson/f;->p(Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object v3

    .line 37
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Long;

    invoke-static {v8, v9, v3}, Ld7/n;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/w;)Lcom/google/gson/x;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Double;

    .line 39
    invoke-direct {p0, v5}, Lcom/google/gson/f;->e(Z)Lcom/google/gson/w;

    move-result-object v10

    .line 40
    invoke-static {v8, v9, v10}, Ld7/n;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/w;)Lcom/google/gson/x;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Float;

    .line 42
    invoke-direct {p0, v5}, Lcom/google/gson/f;->f(Z)Lcom/google/gson/w;

    move-result-object v5

    .line 43
    invoke-static {v8, v9, v5}, Ld7/n;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/w;)Lcom/google/gson/x;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v5, Ld7/n;->x:Lcom/google/gson/x;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v5, Ld7/n;->o:Lcom/google/gson/x;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v5, Ld7/n;->q:Lcom/google/gson/x;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    const-class v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v3}, Lcom/google/gson/f;->b(Lcom/google/gson/w;)Lcom/google/gson/w;

    move-result-object v8

    invoke-static {v5, v8}, Ld7/n;->b(Ljava/lang/Class;Lcom/google/gson/w;)Lcom/google/gson/x;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    const-class v5, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v3}, Lcom/google/gson/f;->c(Lcom/google/gson/w;)Lcom/google/gson/w;

    move-result-object v3

    invoke-static {v5, v3}, Ld7/n;->b(Ljava/lang/Class;Lcom/google/gson/w;)Lcom/google/gson/x;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v3, Ld7/n;->s:Lcom/google/gson/x;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v3, Ld7/n;->z:Lcom/google/gson/x;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v3, Ld7/n;->F:Lcom/google/gson/x;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v3, Ld7/n;->H:Lcom/google/gson/x;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    const-class v3, Ljava/math/BigDecimal;

    sget-object v5, Ld7/n;->B:Lcom/google/gson/w;

    invoke-static {v3, v5}, Ld7/n;->b(Ljava/lang/Class;Lcom/google/gson/w;)Lcom/google/gson/x;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    const-class v3, Ljava/math/BigInteger;

    sget-object v5, Ld7/n;->C:Lcom/google/gson/w;

    invoke-static {v3, v5}, Ld7/n;->b(Ljava/lang/Class;Lcom/google/gson/w;)Lcom/google/gson/x;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v3, Ld7/n;->J:Lcom/google/gson/x;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v3, Ld7/n;->L:Lcom/google/gson/x;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v3, Ld7/n;->P:Lcom/google/gson/x;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v3, Ld7/n;->R:Lcom/google/gson/x;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v3, Ld7/n;->W:Lcom/google/gson/x;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v3, Ld7/n;->N:Lcom/google/gson/x;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v3, Ld7/n;->d:Lcom/google/gson/x;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v3, Ld7/c;->b:Lcom/google/gson/x;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v3, Ld7/n;->U:Lcom/google/gson/x;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v3, Ld7/k;->b:Lcom/google/gson/x;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v3, Ld7/j;->b:Lcom/google/gson/x;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v3, Ld7/n;->S:Lcom/google/gson/x;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v3, Ld7/a;->c:Lcom/google/gson/x;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v3, Ld7/n;->b:Lcom/google/gson/x;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v3, Ld7/b;

    invoke-direct {v3, v6}, Ld7/b;-><init>(Lc7/c;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v3, Ld7/g;

    invoke-direct {v3, v6, v4}, Ld7/g;-><init>(Lc7/c;Z)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v3, Ld7/d;

    invoke-direct {v3, v6}, Ld7/d;-><init>(Lc7/c;)V

    iput-object v3, v0, Lcom/google/gson/f;->d:Ld7/d;

    .line 72
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v4, Ld7/n;->Z:Lcom/google/gson/x;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v4, Ld7/i;

    invoke-direct {v4, v6, p2, p1, v3}, Ld7/i;-><init>(Lc7/c;Lcom/google/gson/e;Lc7/d;Ld7/d;)V

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gson/f;->e:Ljava/util/List;

    return-void
.end method

.method private static a(Ljava/lang/Object;Lh7/a;)V
    .registers 2

    if-eqz p0, :cond_21

    .line 1
    :try_start_2
    invoke-virtual {p1}, Lh7/a;->x()Lh7/b;

    move-result-object p0

    sget-object p1, Lh7/b;->x:Lh7/b;

    if-ne p0, p1, :cond_b

    goto :goto_21

    .line 2
    :cond_b
    new-instance p0, Lcom/google/gson/m;

    const-string p1, "JSON document was not fully consumed."

    invoke-direct {p0, p1}, Lcom/google/gson/m;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_13
    .catch Lh7/d; {:try_start_2 .. :try_end_13} :catch_1a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_13

    :catch_13
    move-exception p0

    .line 3
    new-instance p1, Lcom/google/gson/m;

    invoke-direct {p1, p0}, Lcom/google/gson/m;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1a
    move-exception p0

    .line 4
    new-instance p1, Lcom/google/gson/u;

    invoke-direct {p1, p0}, Lcom/google/gson/u;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_21
    :goto_21
    return-void
.end method

.method private static b(Lcom/google/gson/w;)Lcom/google/gson/w;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/w<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/google/gson/w<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/gson/f$d;

    invoke-direct {v0, p0}, Lcom/google/gson/f$d;-><init>(Lcom/google/gson/w;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/gson/w;->a()Lcom/google/gson/w;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/google/gson/w;)Lcom/google/gson/w;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/w<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/google/gson/w<",
            "Ljava/util/concurrent/atomic/AtomicLongArray;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/gson/f$e;

    invoke-direct {v0, p0}, Lcom/google/gson/f$e;-><init>(Lcom/google/gson/w;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/gson/w;->a()Lcom/google/gson/w;

    move-result-object p0

    return-object p0
.end method

.method static d(D)V
    .registers 4

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 2
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private e(Z)Lcom/google/gson/w;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/gson/w<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 1
    sget-object p1, Ld7/n;->v:Lcom/google/gson/w;

    return-object p1

    .line 2
    :cond_5
    new-instance p1, Lcom/google/gson/f$a;

    invoke-direct {p1, p0}, Lcom/google/gson/f$a;-><init>(Lcom/google/gson/f;)V

    return-object p1
.end method

.method private f(Z)Lcom/google/gson/w;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/gson/w<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 1
    sget-object p1, Ld7/n;->u:Lcom/google/gson/w;

    return-object p1

    .line 2
    :cond_5
    new-instance p1, Lcom/google/gson/f$b;

    invoke-direct {p1, p0}, Lcom/google/gson/f$b;-><init>(Lcom/google/gson/f;)V

    return-object p1
.end method

.method private static p(Lcom/google/gson/v;)Lcom/google/gson/w;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/v;",
            ")",
            "Lcom/google/gson/w<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/gson/v;->o:Lcom/google/gson/v;

    if-ne p0, v0, :cond_7

    .line 2
    sget-object p0, Ld7/n;->t:Lcom/google/gson/w;

    return-object p0

    .line 3
    :cond_7
    new-instance p0, Lcom/google/gson/f$c;

    invoke-direct {p0}, Lcom/google/gson/f$c;-><init>()V

    return-object p0
.end method


# virtual methods
.method public A(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/l;
    .registers 4

    .line 1
    new-instance v0, Ld7/f;

    invoke-direct {v0}, Ld7/f;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gson/f;->x(Ljava/lang/Object;Ljava/lang/reflect/Type;Lh7/c;)V

    .line 3
    invoke-virtual {v0}, Ld7/f;->F()Lcom/google/gson/l;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/google/gson/l;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/l;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/u;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/f;->h(Lcom/google/gson/l;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    invoke-static {p2}, Lc7/k;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(Lcom/google/gson/l;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/l;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/u;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_4
    new-instance v0, Ld7/e;

    invoke-direct {v0, p1}, Ld7/e;-><init>(Lcom/google/gson/l;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/gson/f;->i(Lh7/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i(Lh7/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lh7/a;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/m;,
            Lcom/google/gson/u;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lh7/a;->k()Z

    move-result v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1}, Lh7/a;->E(Z)V

    .line 3
    :try_start_8
    invoke-virtual {p1}, Lh7/a;->x()Lh7/b;

    const/4 v1, 0x0

    .line 4
    invoke-static {p2}, Lg7/a;->get(Ljava/lang/reflect/Type;)Lg7/a;

    move-result-object p2

    .line 5
    invoke-virtual {p0, p2}, Lcom/google/gson/f;->m(Lg7/a;)Lcom/google/gson/w;

    move-result-object p2

    .line 6
    invoke-virtual {p2, p1}, Lcom/google/gson/w;->b(Lh7/a;)Ljava/lang/Object;

    move-result-object p2
    :try_end_18
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_18} :catch_4b
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_18} :catch_44
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_3d
    .catch Ljava/lang/AssertionError; {:try_start_8 .. :try_end_18} :catch_1e
    .catchall {:try_start_8 .. :try_end_18} :catchall_1c

    .line 7
    invoke-virtual {p1, v0}, Lh7/a;->E(Z)V

    return-object p2

    :catchall_1c
    move-exception p2

    goto :goto_59

    :catch_1e
    move-exception p2

    .line 8
    :try_start_1f
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AssertionError (GSON 2.8.8): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v1, p2}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 10
    throw v1

    :catch_3d
    move-exception p2

    .line 11
    new-instance v1, Lcom/google/gson/u;

    invoke-direct {v1, p2}, Lcom/google/gson/u;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_44
    move-exception p2

    .line 12
    new-instance v1, Lcom/google/gson/u;

    invoke-direct {v1, p2}, Lcom/google/gson/u;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4b
    .catchall {:try_start_1f .. :try_end_4b} :catchall_1c

    :catch_4b
    move-exception p2

    if-eqz v1, :cond_53

    const/4 p2, 0x0

    .line 13
    invoke-virtual {p1, v0}, Lh7/a;->E(Z)V

    return-object p2

    .line 14
    :cond_53
    :try_start_53
    new-instance v1, Lcom/google/gson/u;

    invoke-direct {v1, p2}, Lcom/google/gson/u;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_59
    .catchall {:try_start_53 .. :try_end_59} :catchall_1c

    .line 15
    :goto_59
    invoke-virtual {p1, v0}, Lh7/a;->E(Z)V

    throw p2
.end method

.method public j(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/m;,
            Lcom/google/gson/u;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/gson/f;->q(Ljava/io/Reader;)Lh7/a;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/f;->i(Lh7/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    invoke-static {p2, p1}, Lcom/google/gson/f;->a(Ljava/lang/Object;Lh7/a;)V

    return-object p2
.end method

.method public k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/u;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/f;->l(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    invoke-static {p2}, Lc7/k;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/u;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_4
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0, p2}, Lcom/google/gson/f;->j(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public m(Lg7/a;)Lcom/google/gson/w;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lg7/a<",
            "TT;>;)",
            "Lcom/google/gson/w<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/gson/f;->b:Ljava/util/Map;

    if-nez p1, :cond_7

    sget-object v1, Lcom/google/gson/f;->v:Lg7/a;

    goto :goto_8

    :cond_7
    move-object v1, p1

    :goto_8
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/w;

    if-eqz v0, :cond_11

    return-object v0

    .line 2
    :cond_11
    iget-object v0, p0, Lcom/google/gson/f;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_27

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/google/gson/f;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 5
    :cond_27
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/f$f;

    if-eqz v2, :cond_30

    return-object v2

    .line 6
    :cond_30
    :try_start_30
    new-instance v2, Lcom/google/gson/f$f;

    invoke-direct {v2}, Lcom/google/gson/f$f;-><init>()V

    .line 7
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v3, p0, Lcom/google/gson/f;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/x;

    .line 9
    invoke-interface {v4, p0, p1}, Lcom/google/gson/x;->a(Lcom/google/gson/f;Lg7/a;)Lcom/google/gson/w;

    move-result-object v4

    if-eqz v4, :cond_3e

    .line 10
    invoke-virtual {v2, v4}, Lcom/google/gson/f$f;->e(Lcom/google/gson/w;)V

    .line 11
    iget-object v2, p0, Lcom/google/gson/f;->b:Ljava/util/Map;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_58
    .catchall {:try_start_30 .. :try_end_58} :catchall_7a

    .line 12
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_62

    .line 13
    iget-object p1, p0, Lcom/google/gson/f;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_62
    return-object v4

    .line 14
    :cond_63
    :try_start_63
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON (2.8.8) cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7a
    .catchall {:try_start_63 .. :try_end_7a} :catchall_7a

    :catchall_7a
    move-exception v2

    .line 15
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_85

    .line 16
    iget-object p1, p0, Lcom/google/gson/f;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_85
    goto :goto_87

    :goto_86
    throw v2

    :goto_87
    goto :goto_86
.end method

.method public n(Ljava/lang/Class;)Lcom/google/gson/w;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/gson/w<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lg7/a;->get(Ljava/lang/Class;)Lg7/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/gson/f;->m(Lg7/a;)Lcom/google/gson/w;

    move-result-object p1

    return-object p1
.end method

.method public o(Lcom/google/gson/x;Lg7/a;)Lcom/google/gson/w;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/x;",
            "Lg7/a<",
            "TT;>;)",
            "Lcom/google/gson/w<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/gson/f;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2
    iget-object p1, p0, Lcom/google/gson/f;->d:Ld7/d;

    :cond_a
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lcom/google/gson/f;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/x;

    if-nez v0, :cond_23

    if-ne v2, p1, :cond_11

    const/4 v0, 0x1

    goto :goto_11

    .line 4
    :cond_23
    invoke-interface {v2, p0, p2}, Lcom/google/gson/x;->a(Lcom/google/gson/f;Lg7/a;)Lcom/google/gson/w;

    move-result-object v2

    if-eqz v2, :cond_11

    return-object v2

    .line 5
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSON cannot serialize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_42

    :goto_41
    throw p1

    :goto_42
    goto :goto_41
.end method

.method public q(Ljava/io/Reader;)Lh7/a;
    .registers 3

    .line 1
    new-instance v0, Lh7/a;

    invoke-direct {v0, p1}, Lh7/a;-><init>(Ljava/io/Reader;)V

    .line 2
    iget-boolean p1, p0, Lcom/google/gson/f;->n:Z

    invoke-virtual {v0, p1}, Lh7/a;->E(Z)V

    return-object v0
.end method

.method public r(Ljava/io/Writer;)Lh7/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/gson/f;->k:Z

    if-eqz v0, :cond_9

    const-string v0, ")]}\'\n"

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3
    :cond_9
    new-instance v0, Lh7/c;

    invoke-direct {v0, p1}, Lh7/c;-><init>(Ljava/io/Writer;)V

    .line 4
    iget-boolean p1, p0, Lcom/google/gson/f;->m:Z

    if-eqz p1, :cond_17

    const-string p1, "  "

    .line 5
    invoke-virtual {v0, p1}, Lh7/c;->t(Ljava/lang/String;)V

    .line 6
    :cond_17
    iget-boolean p1, p0, Lcom/google/gson/f;->i:Z

    invoke-virtual {v0, p1}, Lh7/c;->v(Z)V

    return-object v0
.end method

.method public s(Lcom/google/gson/l;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/gson/f;->w(Lcom/google/gson/l;Ljava/lang/Appendable;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public t(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_9

    .line 1
    sget-object p1, Lcom/google/gson/n;->a:Lcom/google/gson/n;

    invoke-virtual {p0, p1}, Lcom/google/gson/f;->s(Lcom/google/gson/l;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/f;->u(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/gson/f;->i:Z

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",factories:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/gson/f;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/gson/f;->c:Lc7/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gson/f;->y(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public v(Lcom/google/gson/l;Lh7/c;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/m;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lh7/c;->k()Z

    move-result v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p2, v1}, Lh7/c;->u(Z)V

    .line 3
    invoke-virtual {p2}, Lh7/c;->j()Z

    move-result v1

    .line 4
    iget-boolean v2, p0, Lcom/google/gson/f;->l:Z

    invoke-virtual {p2, v2}, Lh7/c;->s(Z)V

    .line 5
    invoke-virtual {p2}, Lh7/c;->i()Z

    move-result v2

    .line 6
    iget-boolean v3, p0, Lcom/google/gson/f;->i:Z

    invoke-virtual {p2, v3}, Lh7/c;->v(Z)V

    .line 7
    :try_start_1a
    invoke-static {p1, p2}, Lc7/l;->b(Lcom/google/gson/l;Lh7/c;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_48
    .catch Ljava/lang/AssertionError; {:try_start_1a .. :try_end_1d} :catch_29
    .catchall {:try_start_1a .. :try_end_1d} :catchall_27

    .line 8
    invoke-virtual {p2, v0}, Lh7/c;->u(Z)V

    .line 9
    invoke-virtual {p2, v1}, Lh7/c;->s(Z)V

    .line 10
    invoke-virtual {p2, v2}, Lh7/c;->v(Z)V

    return-void

    :catchall_27
    move-exception p1

    goto :goto_4f

    :catch_29
    move-exception p1

    .line 11
    :try_start_2a
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AssertionError (GSON 2.8.8): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v3, p1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 13
    throw v3

    :catch_48
    move-exception p1

    .line 14
    new-instance v3, Lcom/google/gson/m;

    invoke-direct {v3, p1}, Lcom/google/gson/m;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_4f
    .catchall {:try_start_2a .. :try_end_4f} :catchall_27

    .line 15
    :goto_4f
    invoke-virtual {p2, v0}, Lh7/c;->u(Z)V

    .line 16
    invoke-virtual {p2, v1}, Lh7/c;->s(Z)V

    .line 17
    invoke-virtual {p2, v2}, Lh7/c;->v(Z)V

    throw p1
.end method

.method public w(Lcom/google/gson/l;Ljava/lang/Appendable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/m;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p2}, Lc7/l;->c(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/gson/f;->r(Ljava/io/Writer;)Lh7/c;

    move-result-object p2

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/f;->v(Lcom/google/gson/l;Lh7/c;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p1

    .line 3
    new-instance p2, Lcom/google/gson/m;

    invoke-direct {p2, p1}, Lcom/google/gson/m;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public x(Ljava/lang/Object;Ljava/lang/reflect/Type;Lh7/c;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/m;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lg7/a;->get(Ljava/lang/reflect/Type;)Lg7/a;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/gson/f;->m(Lg7/a;)Lcom/google/gson/w;

    move-result-object p2

    .line 2
    invoke-virtual {p3}, Lh7/c;->k()Z

    move-result v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p3, v1}, Lh7/c;->u(Z)V

    .line 4
    invoke-virtual {p3}, Lh7/c;->j()Z

    move-result v1

    .line 5
    iget-boolean v2, p0, Lcom/google/gson/f;->l:Z

    invoke-virtual {p3, v2}, Lh7/c;->s(Z)V

    .line 6
    invoke-virtual {p3}, Lh7/c;->i()Z

    move-result v2

    .line 7
    iget-boolean v3, p0, Lcom/google/gson/f;->i:Z

    invoke-virtual {p3, v3}, Lh7/c;->v(Z)V

    .line 8
    :try_start_22
    invoke-virtual {p2, p3, p1}, Lcom/google/gson/w;->d(Lh7/c;Ljava/lang/Object;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_50
    .catch Ljava/lang/AssertionError; {:try_start_22 .. :try_end_25} :catch_31
    .catchall {:try_start_22 .. :try_end_25} :catchall_2f

    .line 9
    invoke-virtual {p3, v0}, Lh7/c;->u(Z)V

    .line 10
    invoke-virtual {p3, v1}, Lh7/c;->s(Z)V

    .line 11
    invoke-virtual {p3, v2}, Lh7/c;->v(Z)V

    return-void

    :catchall_2f
    move-exception p1

    goto :goto_57

    :catch_31
    move-exception p1

    .line 12
    :try_start_32
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AssertionError (GSON 2.8.8): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 14
    throw p2

    :catch_50
    move-exception p1

    .line 15
    new-instance p2, Lcom/google/gson/m;

    invoke-direct {p2, p1}, Lcom/google/gson/m;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_57
    .catchall {:try_start_32 .. :try_end_57} :catchall_2f

    .line 16
    :goto_57
    invoke-virtual {p3, v0}, Lh7/c;->u(Z)V

    .line 17
    invoke-virtual {p3, v1}, Lh7/c;->s(Z)V

    .line 18
    invoke-virtual {p3, v2}, Lh7/c;->v(Z)V

    throw p1
.end method

.method public y(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/m;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p3}, Lc7/l;->c(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/gson/f;->r(Ljava/io/Writer;)Lh7/c;

    move-result-object p3

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gson/f;->x(Ljava/lang/Object;Ljava/lang/reflect/Type;Lh7/c;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p1

    .line 3
    new-instance p2, Lcom/google/gson/m;

    invoke-direct {p2, p1}, Lcom/google/gson/m;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public z(Ljava/lang/Object;)Lcom/google/gson/l;
    .registers 3

    if-nez p1, :cond_5

    .line 1
    sget-object p1, Lcom/google/gson/n;->a:Lcom/google/gson/n;

    return-object p1

    .line 2
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/f;->A(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/l;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.gson.f.a (com.google.gson.f$a)
.class Lcom/google/gson/f$a;
.super Lcom/google/gson/w;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/f;->e(Z)Lcom/google/gson/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/w<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/f;


# direct methods
.method constructor <init>(Lcom/google/gson/f;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/gson/f$a;->a:Lcom/google/gson/f;

    invoke-direct {p0}, Lcom/google/gson/w;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lh7/a;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/gson/f$a;->e(Lh7/a;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Lh7/c;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/f$a;->f(Lh7/c;Ljava/lang/Number;)V

    return-void
.end method

.method public e(Lh7/a;)Ljava/lang/Double;
    .registers 4
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
    invoke-virtual {p1}, Lh7/a;->o()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public f(Lh7/c;Ljava/lang/Number;)V
    .registers 5
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
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 3
    invoke-static {v0, v1}, Lcom/google/gson/f;->d(D)V

    .line 4
    invoke-virtual {p1, p2}, Lh7/c;->z(Ljava/lang/Number;)Lh7/c;

    return-void
.end method

###### Class com.google.gson.f.b (com.google.gson.f$b)
.class Lcom/google/gson/f$b;
.super Lcom/google/gson/w;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/f;->f(Z)Lcom/google/gson/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/w<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/f;


# direct methods
.method constructor <init>(Lcom/google/gson/f;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/gson/f$b;->a:Lcom/google/gson/f;

    invoke-direct {p0}, Lcom/google/gson/w;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lh7/a;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/gson/f$b;->e(Lh7/a;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Lh7/c;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/f$b;->f(Lh7/c;Ljava/lang/Number;)V

    return-void
.end method

.method public e(Lh7/a;)Ljava/lang/Float;
    .registers 4
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
    invoke-virtual {p1}, Lh7/a;->o()D

    move-result-wide v0

    double-to-float p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public f(Lh7/c;Ljava/lang/Number;)V
    .registers 5
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
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    float-to-double v0, v0

    .line 3
    invoke-static {v0, v1}, Lcom/google/gson/f;->d(D)V

    .line 4
    invoke-virtual {p1, p2}, Lh7/c;->z(Ljava/lang/Number;)Lh7/c;

    return-void
.end method

###### Class com.google.gson.f.c (com.google.gson.f$c)
.class Lcom/google/gson/f$c;
.super Lcom/google/gson/w;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/f;->p(Lcom/google/gson/v;)Lcom/google/gson/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/w<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/gson/w;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lh7/a;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/gson/f$c;->e(Lh7/a;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Lh7/c;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/f$c;->f(Lh7/c;Ljava/lang/Number;)V

    return-void
.end method

.method public e(Lh7/a;)Ljava/lang/Number;
    .registers 4
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
    invoke-virtual {p1}, Lh7/a;->q()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public f(Lh7/c;Ljava/lang/Number;)V
    .registers 3
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
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lh7/c;->A(Ljava/lang/String;)Lh7/c;

    return-void
.end method

###### Class com.google.gson.f.d (com.google.gson.f$d)
.class Lcom/google/gson/f$d;
.super Lcom/google/gson/w;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/f;->b(Lcom/google/gson/w;)Lcom/google/gson/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/w<",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/w;


# direct methods
.method constructor <init>(Lcom/google/gson/w;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/gson/f$d;->a:Lcom/google/gson/w;

    invoke-direct {p0}, Lcom/google/gson/w;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lh7/a;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/gson/f$d;->e(Lh7/a;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Lh7/c;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/f$d;->f(Lh7/c;Ljava/util/concurrent/atomic/AtomicLong;)V

    return-void
.end method

.method public e(Lh7/a;)Ljava/util/concurrent/atomic/AtomicLong;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/gson/f$d;->a:Lcom/google/gson/w;

    invoke-virtual {v0, p1}, Lcom/google/gson/w;->b(Lh7/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    return-object v0
.end method

.method public f(Lh7/c;Ljava/util/concurrent/atomic/AtomicLong;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/gson/f$d;->a:Lcom/google/gson/w;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/w;->d(Lh7/c;Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.gson.f.e (com.google.gson.f$e)
.class Lcom/google/gson/f$e;
.super Lcom/google/gson/w;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/f;->c(Lcom/google/gson/w;)Lcom/google/gson/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/w<",
        "Ljava/util/concurrent/atomic/AtomicLongArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/w;


# direct methods
.method constructor <init>(Lcom/google/gson/w;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/gson/f$e;->a:Lcom/google/gson/w;

    invoke-direct {p0}, Lcom/google/gson/w;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lh7/a;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/gson/f$e;->e(Lh7/a;)Ljava/util/concurrent/atomic/AtomicLongArray;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Lh7/c;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/f$e;->f(Lh7/c;Ljava/util/concurrent/atomic/AtomicLongArray;)V

    return-void
.end method

.method public e(Lh7/a;)Ljava/util/concurrent/atomic/AtomicLongArray;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Lh7/a;->b()V

    .line 3
    :goto_8
    invoke-virtual {p1}, Lh7/a;->j()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 4
    iget-object v1, p0, Lcom/google/gson/f$e;->a:Lcom/google/gson/w;

    invoke-virtual {v1, p1}, Lcom/google/gson/w;->b(Lh7/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 6
    :cond_22
    invoke-virtual {p1}, Lh7/a;->g()V

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    .line 8
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-direct {v1, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_2f
    if-ge v2, p1, :cond_41

    .line 9
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLongArray;->set(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_41
    return-object v1
.end method

.method public f(Lh7/c;Ljava/util/concurrent/atomic/AtomicLongArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lh7/c;->d()Lh7/c;

    .line 2
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_1a

    .line 3
    iget-object v2, p0, Lcom/google/gson/f$e;->a:Lcom/google/gson/w;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/w;->d(Lh7/c;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 4
    :cond_1a
    invoke-virtual {p1}, Lh7/c;->g()Lh7/c;

    return-void
.end method

###### Class com.google.gson.f.C0128f (com.google.gson.f$f)
.class Lcom/google/gson/f$f;
.super Lcom/google/gson/w;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
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
.field private a:Lcom/google/gson/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/w<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/gson/w;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lh7/a;)Ljava/lang/Object;
    .registers 3
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
    iget-object v0, p0, Lcom/google/gson/f$f;->a:Lcom/google/gson/w;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/gson/w;->b(Lh7/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public d(Lh7/c;Ljava/lang/Object;)V
    .registers 4
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

    .line 1
    iget-object v0, p0, Lcom/google/gson/f$f;->a:Lcom/google/gson/w;

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/w;->d(Lh7/c;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public e(Lcom/google/gson/w;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/w<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/gson/f$f;->a:Lcom/google/gson/w;

    if-nez v0, :cond_7

    .line 2
    iput-object p1, p0, Lcom/google/gson/f$f;->a:Lcom/google/gson/w;

    return-void

    .line 3
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method
