###### Class c7.d (c7.d)
.class public final Lc7/d;
.super Ljava/lang/Object;
.source "Excluder.java"

# interfaces
.implements Lcom/google/gson/x;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final u:Lc7/d;


# instance fields
.field private o:D

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson/b;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lc7/d;

    invoke-direct {v0}, Lc7/d;-><init>()V

    sput-object v0, Lc7/d;->u:Lc7/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 2
    iput-wide v0, p0, Lc7/d;->o:D

    const/16 v0, 0x88

    .line 3
    iput v0, p0, Lc7/d;->p:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lc7/d;->q:Z

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc7/d;->s:Ljava/util/List;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc7/d;->t:Ljava/util/List;

    return-void
.end method

.method private f(Ljava/lang/Class;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lc7/d;->o:D

    const/4 v2, 0x1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_20

    const-class v0, Lb7/d;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lb7/d;

    const-class v1, Lb7/e;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lb7/e;

    invoke-direct {p0, v0, v1}, Lc7/d;->n(Lb7/d;Lb7/e;)Z

    move-result v0

    if-nez v0, :cond_20

    return v2

    .line 2
    :cond_20
    iget-boolean v0, p0, Lc7/d;->q:Z

    if-nez v0, :cond_2b

    invoke-direct {p0, p1}, Lc7/d;->j(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2b

    return v2

    .line 3
    :cond_2b
    invoke-direct {p0, p1}, Lc7/d;->i(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_32

    return v2

    :cond_32
    const/4 p1, 0x0

    return p1
.end method

.method private g(Ljava/lang/Class;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)Z"
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 1
    iget-object p2, p0, Lc7/d;->s:Ljava/util/List;

    goto :goto_7

    :cond_5
    iget-object p2, p0, Lc7/d;->t:Ljava/util/List;

    .line 2
    :goto_7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/b;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/gson/b;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 p1, 0x1

    return p1

    :cond_1f
    const/4 p1, 0x0

    return p1
.end method

.method private i(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result p1

    if-eqz p1, :cond_16

    :cond_14
    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method private j(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lc7/d;->k(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private k(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method private l(Lb7/d;)Z
    .registers 6

    if-eqz p1, :cond_e

    .line 1
    invoke-interface {p1}, Lb7/d;->value()D

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lc7/d;->o:D

    cmpl-double p1, v0, v2

    if-lez p1, :cond_e

    const/4 p1, 0x0

    return p1

    :cond_e
    const/4 p1, 0x1

    return p1
.end method

.method private m(Lb7/e;)Z
    .registers 6

    if-eqz p1, :cond_e

    .line 1
    invoke-interface {p1}, Lb7/e;->value()D

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lc7/d;->o:D

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_e

    const/4 p1, 0x0

    return p1

    :cond_e
    const/4 p1, 0x1

    return p1
.end method

.method private n(Lb7/d;Lb7/e;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lc7/d;->l(Lb7/d;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-direct {p0, p2}, Lc7/d;->m(Lb7/e;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method


# virtual methods
.method public a(Lcom/google/gson/f;Lg7/a;)Lcom/google/gson/w;
    .registers 14
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
    invoke-direct {p0, v0}, Lc7/d;->f(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_15

    .line 3
    invoke-direct {p0, v0, v3}, Lc7/d;->g(Ljava/lang/Class;Z)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_15

    :cond_13
    const/4 v8, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v8, 0x1

    :goto_16
    if-nez v1, :cond_21

    .line 4
    invoke-direct {p0, v0, v2}, Lc7/d;->g(Ljava/lang/Class;Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v7, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v7, 0x1

    :goto_22
    if-nez v8, :cond_28

    if-nez v7, :cond_28

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_28
    new-instance v0, Lc7/d$a;

    move-object v5, v0

    move-object v6, p0

    move-object v9, p1

    move-object v10, p2

    invoke-direct/range {v5 .. v10}, Lc7/d$a;-><init>(Lc7/d;ZZLcom/google/gson/f;Lg7/a;)V

    return-object v0
.end method

.method protected b()Lc7/d;
    .registers 3

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc7/d;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc7/d;->b()Lc7/d;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/Class;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lc7/d;->f(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2
    invoke-direct {p0, p1, p2}, Lc7/d;->g(Ljava/lang/Class;Z)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method public h(Ljava/lang/reflect/Field;Z)Z
    .registers 9

    .line 1
    iget v0, p0, Lc7/d;->p:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    return v1

    .line 2
    :cond_b
    iget-wide v2, p0, Lc7/d;->o:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_2a

    const-class v0, Lb7/d;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lb7/d;

    const-class v2, Lb7/e;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lb7/e;

    invoke-direct {p0, v0, v2}, Lc7/d;->n(Lb7/d;Lb7/e;)Z

    move-result v0

    if-nez v0, :cond_2a

    return v1

    .line 4
    :cond_2a
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_31

    return v1

    .line 5
    :cond_31
    iget-boolean v0, p0, Lc7/d;->r:Z

    if-eqz v0, :cond_4f

    .line 6
    const-class v0, Lb7/a;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lb7/a;

    if-eqz v0, :cond_4e

    if-eqz p2, :cond_48

    .line 7
    invoke-interface {v0}, Lb7/a;->serialize()Z

    move-result v0

    if-nez v0, :cond_4f

    goto :goto_4e

    :cond_48
    invoke-interface {v0}, Lb7/a;->deserialize()Z

    move-result v0

    if-nez v0, :cond_4f

    :cond_4e
    :goto_4e
    return v1

    .line 8
    :cond_4f
    iget-boolean v0, p0, Lc7/d;->q:Z

    if-nez v0, :cond_5e

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lc7/d;->j(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5e

    return v1

    .line 9
    :cond_5e
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lc7/d;->i(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_69

    return v1

    :cond_69
    if-eqz p2, :cond_6e

    .line 10
    iget-object p2, p0, Lc7/d;->s:Ljava/util/List;

    goto :goto_70

    :cond_6e
    iget-object p2, p0, Lc7/d;->t:Ljava/util/List;

    .line 11
    :goto_70
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_92

    .line 12
    new-instance v0, Lcom/google/gson/c;

    invoke-direct {v0, p1}, Lcom/google/gson/c;-><init>(Ljava/lang/reflect/Field;)V

    .line 13
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_92

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/gson/b;

    .line 14
    invoke-interface {p2, v0}, Lcom/google/gson/b;->a(Lcom/google/gson/c;)Z

    move-result p2

    if-eqz p2, :cond_7f

    return v1

    :cond_92
    const/4 p1, 0x0

    return p1
.end method

###### Class c7.d.a (c7.d$a)
.class Lc7/d$a;
.super Lcom/google/gson/w;
.source "Excluder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc7/d;->a(Lcom/google/gson/f;Lg7/a;)Lcom/google/gson/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
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

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lcom/google/gson/f;

.field final synthetic e:Lg7/a;

.field final synthetic f:Lc7/d;


# direct methods
.method constructor <init>(Lc7/d;ZZLcom/google/gson/f;Lg7/a;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lc7/d$a;->f:Lc7/d;

    iput-boolean p2, p0, Lc7/d$a;->b:Z

    iput-boolean p3, p0, Lc7/d$a;->c:Z

    iput-object p4, p0, Lc7/d$a;->d:Lcom/google/gson/f;

    iput-object p5, p0, Lc7/d$a;->e:Lg7/a;

    invoke-direct {p0}, Lcom/google/gson/w;-><init>()V

    return-void
.end method

.method private e()Lcom/google/gson/w;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/w<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc7/d$a;->a:Lcom/google/gson/w;

    if-eqz v0, :cond_5

    goto :goto_11

    .line 2
    :cond_5
    iget-object v0, p0, Lc7/d$a;->d:Lcom/google/gson/f;

    iget-object v1, p0, Lc7/d$a;->f:Lc7/d;

    iget-object v2, p0, Lc7/d$a;->e:Lg7/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/f;->o(Lcom/google/gson/x;Lg7/a;)Lcom/google/gson/w;

    move-result-object v0

    iput-object v0, p0, Lc7/d$a;->a:Lcom/google/gson/w;

    :goto_11
    return-object v0
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
    iget-boolean v0, p0, Lc7/d$a;->b:Z

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {p1}, Lh7/a;->J()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_9
    invoke-direct {p0}, Lc7/d$a;->e()Lcom/google/gson/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/w;->b(Lh7/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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
    iget-boolean v0, p0, Lc7/d$a;->c:Z

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {p1}, Lh7/c;->n()Lh7/c;

    return-void

    .line 3
    :cond_8
    invoke-direct {p0}, Lc7/d$a;->e()Lcom/google/gson/w;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/w;->d(Lh7/c;Ljava/lang/Object;)V

    return-void
.end method
