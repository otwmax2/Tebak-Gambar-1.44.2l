###### Class p.d (p.d)
.class public Lp/d;
.super Ljava/lang/Object;
.source "LinearSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp/d$a;,
        Lp/d$b;
    }
.end annotation


# static fields
.field public static r:Z = false

.field public static s:Z = true

.field public static t:Z = true

.field public static u:Z = true

.field public static v:Z = false

.field private static w:I = 0x3e8

.field public static x:Lp/e;

.field public static y:J

.field public static z:J


# instance fields
.field public a:Z

.field b:I

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lp/i;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lp/d$a;

.field private e:I

.field private f:I

.field g:[Lp/b;

.field public h:Z

.field public i:Z

.field private j:[Z

.field k:I

.field l:I

.field private m:I

.field final n:Lp/c;

.field private o:[Lp/i;

.field private p:I

.field private q:Lp/d$a;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lp/d;->a:Z

    .line 3
    iput v0, p0, Lp/d;->b:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lp/d;->c:Ljava/util/HashMap;

    const/16 v2, 0x20

    .line 5
    iput v2, p0, Lp/d;->e:I

    .line 6
    iput v2, p0, Lp/d;->f:I

    .line 7
    iput-object v1, p0, Lp/d;->g:[Lp/b;

    .line 8
    iput-boolean v0, p0, Lp/d;->h:Z

    .line 9
    iput-boolean v0, p0, Lp/d;->i:Z

    new-array v1, v2, [Z

    .line 10
    iput-object v1, p0, Lp/d;->j:[Z

    const/4 v1, 0x1

    .line 11
    iput v1, p0, Lp/d;->k:I

    .line 12
    iput v0, p0, Lp/d;->l:I

    .line 13
    iput v2, p0, Lp/d;->m:I

    .line 14
    sget v1, Lp/d;->w:I

    new-array v1, v1, [Lp/i;

    iput-object v1, p0, Lp/d;->o:[Lp/i;

    .line 15
    iput v0, p0, Lp/d;->p:I

    new-array v0, v2, [Lp/b;

    .line 16
    iput-object v0, p0, Lp/d;->g:[Lp/b;

    .line 17
    invoke-direct {p0}, Lp/d;->C()V

    .line 18
    new-instance v0, Lp/c;

    invoke-direct {v0}, Lp/c;-><init>()V

    iput-object v0, p0, Lp/d;->n:Lp/c;

    .line 19
    new-instance v1, Lp/h;

    invoke-direct {v1, v0}, Lp/h;-><init>(Lp/c;)V

    iput-object v1, p0, Lp/d;->d:Lp/d$a;

    .line 20
    sget-boolean v1, Lp/d;->v:Z

    if-eqz v1, :cond_4b

    .line 21
    new-instance v1, Lp/d$b;

    invoke-direct {v1, p0, v0}, Lp/d$b;-><init>(Lp/d;Lp/c;)V

    iput-object v1, p0, Lp/d;->q:Lp/d$a;

    goto :goto_52

    .line 22
    :cond_4b
    new-instance v1, Lp/b;

    invoke-direct {v1, v0}, Lp/b;-><init>(Lp/c;)V

    iput-object v1, p0, Lp/d;->q:Lp/d$a;

    :goto_52
    return-void
.end method

.method private final B(Lp/d$a;Z)I
    .registers 13

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 1
    :goto_2
    iget v1, p0, Lp/d;->k:I

    if-ge v0, v1, :cond_d

    .line 2
    iget-object v1, p0, Lp/d;->j:[Z

    aput-boolean p2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_d
    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_f
    :goto_f
    if-nez v0, :cond_92

    add-int/lit8 v1, v1, 0x1

    .line 3
    iget v2, p0, Lp/d;->k:I

    mul-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_1a

    return v1

    .line 4
    :cond_1a
    invoke-interface {p1}, Lp/d$a;->getKey()Lp/i;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2b

    .line 5
    iget-object v2, p0, Lp/d;->j:[Z

    invoke-interface {p1}, Lp/d$a;->getKey()Lp/i;

    move-result-object v4

    iget v4, v4, Lp/i;->q:I

    aput-boolean v3, v2, v4

    .line 6
    :cond_2b
    iget-object v2, p0, Lp/d;->j:[Z

    invoke-interface {p1, p0, v2}, Lp/d$a;->b(Lp/d;[Z)Lp/i;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 7
    iget-object v4, p0, Lp/d;->j:[Z

    iget v5, v2, Lp/i;->q:I

    aget-boolean v6, v4, v5

    if-eqz v6, :cond_3c

    return v1

    .line 8
    :cond_3c
    aput-boolean v3, v4, v5

    :cond_3e
    if-eqz v2, :cond_8f

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 9
    :goto_46
    iget v7, p0, Lp/d;->l:I

    if-ge v5, v7, :cond_7a

    .line 10
    iget-object v7, p0, Lp/d;->g:[Lp/b;

    aget-object v7, v7, v5

    .line 11
    iget-object v8, v7, Lp/b;->a:Lp/i;

    .line 12
    iget-object v8, v8, Lp/i;->x:Lp/i$a;

    sget-object v9, Lp/i$a;->o:Lp/i$a;

    if-ne v8, v9, :cond_57

    goto :goto_77

    .line 13
    :cond_57
    iget-boolean v8, v7, Lp/b;->f:Z

    if-eqz v8, :cond_5c

    goto :goto_77

    .line 14
    :cond_5c
    invoke-virtual {v7, v2}, Lp/b;->t(Lp/i;)Z

    move-result v8

    if-eqz v8, :cond_77

    .line 15
    iget-object v8, v7, Lp/b;->e:Lp/b$a;

    invoke-interface {v8, v2}, Lp/b$a;->j(Lp/i;)F

    move-result v8

    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_77

    .line 16
    iget v7, v7, Lp/b;->b:F

    neg-float v7, v7

    div-float/2addr v7, v8

    cmpg-float v8, v7, v3

    if-gez v8, :cond_77

    move v6, v5

    move v3, v7

    :cond_77
    :goto_77
    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    :cond_7a
    if-le v6, v4, :cond_f

    .line 17
    iget-object v3, p0, Lp/d;->g:[Lp/b;

    aget-object v3, v3, v6

    .line 18
    iget-object v5, v3, Lp/b;->a:Lp/i;

    iput v4, v5, Lp/i;->r:I

    .line 19
    invoke-virtual {v3, v2}, Lp/b;->x(Lp/i;)V

    .line 20
    iget-object v2, v3, Lp/b;->a:Lp/i;

    iput v6, v2, Lp/i;->r:I

    .line 21
    invoke-virtual {v2, p0, v3}, Lp/i;->l(Lp/d;Lp/b;)V

    goto :goto_f

    :cond_8f
    const/4 v0, 0x1

    goto/16 :goto_f

    :cond_92
    return v1
.end method

.method private C()V
    .registers 5

    .line 1
    sget-boolean v0, Lp/d;->v:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    .line 2
    :goto_6
    iget v0, p0, Lp/d;->l:I

    if-ge v2, v0, :cond_36

    .line 3
    iget-object v0, p0, Lp/d;->g:[Lp/b;

    aget-object v0, v0, v2

    if-eqz v0, :cond_17

    .line 4
    iget-object v3, p0, Lp/d;->n:Lp/c;

    iget-object v3, v3, Lp/c;->a:Lp/f;

    invoke-interface {v3, v0}, Lp/f;->a(Ljava/lang/Object;)Z

    .line 5
    :cond_17
    iget-object v0, p0, Lp/d;->g:[Lp/b;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 6
    :cond_1e
    :goto_1e
    iget v0, p0, Lp/d;->l:I

    if-ge v2, v0, :cond_36

    .line 7
    iget-object v0, p0, Lp/d;->g:[Lp/b;

    aget-object v0, v0, v2

    if-eqz v0, :cond_2f

    .line 8
    iget-object v3, p0, Lp/d;->n:Lp/c;

    iget-object v3, v3, Lp/c;->b:Lp/f;

    invoke-interface {v3, v0}, Lp/f;->a(Ljava/lang/Object;)Z

    .line 9
    :cond_2f
    iget-object v0, p0, Lp/d;->g:[Lp/b;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_36
    return-void
.end method

.method private a(Lp/i$a;Ljava/lang/String;)Lp/i;
    .registers 5

    .line 1
    iget-object v0, p0, Lp/d;->n:Lp/c;

    iget-object v0, v0, Lp/c;->c:Lp/f;

    invoke-interface {v0}, Lp/f;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/i;

    if-nez v0, :cond_15

    .line 2
    new-instance v0, Lp/i;

    invoke-direct {v0, p1, p2}, Lp/i;-><init>(Lp/i$a;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1, p2}, Lp/i;->k(Lp/i$a;Ljava/lang/String;)V

    goto :goto_1b

    .line 4
    :cond_15
    invoke-virtual {v0}, Lp/i;->i()V

    .line 5
    invoke-virtual {v0, p1, p2}, Lp/i;->k(Lp/i$a;Ljava/lang/String;)V

    .line 6
    :goto_1b
    iget p1, p0, Lp/d;->p:I

    sget p2, Lp/d;->w:I

    if-lt p1, p2, :cond_2f

    mul-int/lit8 p2, p2, 0x2

    .line 7
    sput p2, Lp/d;->w:I

    .line 8
    iget-object p1, p0, Lp/d;->o:[Lp/i;

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lp/i;

    iput-object p1, p0, Lp/d;->o:[Lp/i;

    .line 9
    :cond_2f
    iget-object p1, p0, Lp/d;->o:[Lp/i;

    iget p2, p0, Lp/d;->p:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lp/d;->p:I

    aput-object v0, p1, p2

    return-object v0
.end method

.method private final l(Lp/b;)V
    .registers 9

    .line 1
    sget-boolean v0, Lp/d;->t:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p1, Lp/b;->f:Z

    if-eqz v0, :cond_10

    .line 2
    iget-object v0, p1, Lp/b;->a:Lp/i;

    iget p1, p1, Lp/b;->b:F

    invoke-virtual {v0, p0, p1}, Lp/i;->j(Lp/d;F)V

    goto :goto_21

    .line 3
    :cond_10
    iget-object v0, p0, Lp/d;->g:[Lp/b;

    iget v1, p0, Lp/d;->l:I

    aput-object p1, v0, v1

    .line 4
    iget-object v0, p1, Lp/b;->a:Lp/i;

    iput v1, v0, Lp/i;->r:I

    add-int/lit8 v1, v1, 0x1

    .line 5
    iput v1, p0, Lp/d;->l:I

    .line 6
    invoke-virtual {v0, p0, p1}, Lp/i;->l(Lp/d;Lp/b;)V

    .line 7
    :goto_21
    sget-boolean p1, Lp/d;->t:Z

    if-eqz p1, :cond_9d

    iget-boolean p1, p0, Lp/d;->a:Z

    if-eqz p1, :cond_9d

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 8
    :goto_2b
    iget v1, p0, Lp/d;->l:I

    if-ge v0, v1, :cond_9b

    .line 9
    iget-object v1, p0, Lp/d;->g:[Lp/b;

    aget-object v1, v1, v0

    if-nez v1, :cond_3c

    .line 10
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "WTF"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11
    :cond_3c
    iget-object v1, p0, Lp/d;->g:[Lp/b;

    aget-object v2, v1, v0

    if-eqz v2, :cond_98

    aget-object v2, v1, v0

    iget-boolean v2, v2, Lp/b;->f:Z

    if-eqz v2, :cond_98

    .line 12
    aget-object v1, v1, v0

    .line 13
    iget-object v2, v1, Lp/b;->a:Lp/i;

    iget v3, v1, Lp/b;->b:F

    invoke-virtual {v2, p0, v3}, Lp/i;->j(Lp/d;F)V

    .line 14
    sget-boolean v2, Lp/d;->v:Z

    if-eqz v2, :cond_5d

    .line 15
    iget-object v2, p0, Lp/d;->n:Lp/c;

    iget-object v2, v2, Lp/c;->a:Lp/f;

    invoke-interface {v2, v1}, Lp/f;->a(Ljava/lang/Object;)Z

    goto :goto_64

    .line 16
    :cond_5d
    iget-object v2, p0, Lp/d;->n:Lp/c;

    iget-object v2, v2, Lp/c;->b:Lp/f;

    invoke-interface {v2, v1}, Lp/f;->a(Ljava/lang/Object;)Z

    .line 17
    :goto_64
    iget-object v1, p0, Lp/d;->g:[Lp/b;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    move v3, v1

    .line 18
    :goto_6c
    iget v4, p0, Lp/d;->l:I

    if-ge v1, v4, :cond_8c

    .line 19
    iget-object v3, p0, Lp/d;->g:[Lp/b;

    add-int/lit8 v4, v1, -0x1

    aget-object v5, v3, v1

    aput-object v5, v3, v4

    .line 20
    aget-object v5, v3, v4

    iget-object v5, v5, Lp/b;->a:Lp/i;

    iget v5, v5, Lp/i;->r:I

    if-ne v5, v1, :cond_86

    .line 21
    aget-object v3, v3, v4

    iget-object v3, v3, Lp/b;->a:Lp/i;

    iput v4, v3, Lp/i;->r:I

    :cond_86
    add-int/lit8 v3, v1, 0x1

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_6c

    :cond_8c
    if-ge v3, v4, :cond_92

    .line 22
    iget-object v1, p0, Lp/d;->g:[Lp/b;

    aput-object v2, v1, v3

    :cond_92
    add-int/lit8 v4, v4, -0x1

    .line 23
    iput v4, p0, Lp/d;->l:I

    add-int/lit8 v0, v0, -0x1

    :cond_98
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 24
    :cond_9b
    iput-boolean p1, p0, Lp/d;->a:Z

    :cond_9d
    return-void
.end method

.method private n()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget v1, p0, Lp/d;->l:I

    if-ge v0, v1, :cond_12

    .line 2
    iget-object v1, p0, Lp/d;->g:[Lp/b;

    aget-object v1, v1, v0

    .line 3
    iget-object v2, v1, Lp/b;->a:Lp/i;

    iget v1, v1, Lp/b;->b:F

    iput v1, v2, Lp/i;->t:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method

.method public static s(Lp/d;Lp/i;Lp/i;F)Lp/b;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lp/d;->r()Lp/b;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lp/b;->j(Lp/i;Lp/i;F)Lp/b;

    move-result-object p0

    return-object p0
.end method

.method private u(Lp/d$a;)I
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v2, 0x0

    .line 1
    :goto_3
    iget v3, v0, Lp/d;->l:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_22

    .line 2
    iget-object v3, v0, Lp/d;->g:[Lp/b;

    aget-object v6, v3, v2

    iget-object v6, v6, Lp/b;->a:Lp/i;

    .line 3
    iget-object v6, v6, Lp/i;->x:Lp/i$a;

    sget-object v7, Lp/i$a;->o:Lp/i$a;

    if-ne v6, v7, :cond_15

    goto :goto_1f

    .line 4
    :cond_15
    aget-object v3, v3, v2

    iget v3, v3, Lp/b;->b:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1f

    const/4 v2, 0x1

    goto :goto_23

    :cond_1f
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_22
    const/4 v2, 0x0

    :goto_23
    if-eqz v2, :cond_ef

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_27
    :goto_27
    if-nez v2, :cond_ed

    add-int/lit8 v3, v3, 0x1

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 5
    :goto_32
    iget v12, v0, Lp/d;->l:I

    if-ge v8, v12, :cond_c7

    .line 6
    iget-object v12, v0, Lp/d;->g:[Lp/b;

    aget-object v12, v12, v8

    .line 7
    iget-object v13, v12, Lp/b;->a:Lp/i;

    .line 8
    iget-object v13, v13, Lp/i;->x:Lp/i$a;

    sget-object v14, Lp/i$a;->o:Lp/i$a;

    if-ne v13, v14, :cond_44

    goto/16 :goto_c3

    .line 9
    :cond_44
    iget-boolean v13, v12, Lp/b;->f:Z

    if-eqz v13, :cond_4a

    goto/16 :goto_c3

    .line 10
    :cond_4a
    iget v13, v12, Lp/b;->b:F

    cmpg-float v13, v13, v4

    if-gez v13, :cond_c3

    .line 11
    sget-boolean v13, Lp/d;->u:Z

    const/16 v14, 0x9

    if-eqz v13, :cond_8f

    .line 12
    iget-object v13, v12, Lp/b;->e:Lp/b$a;

    invoke-interface {v13}, Lp/b$a;->c()I

    move-result v13

    const/4 v15, 0x0

    :goto_5d
    if-ge v15, v13, :cond_c3

    .line 13
    iget-object v1, v12, Lp/b;->e:Lp/b$a;

    invoke-interface {v1, v15}, Lp/b$a;->d(I)Lp/i;

    move-result-object v1

    .line 14
    iget-object v5, v12, Lp/b;->e:Lp/b$a;

    invoke-interface {v5, v1}, Lp/b$a;->j(Lp/i;)F

    move-result v5

    cmpg-float v16, v5, v4

    if-gtz v16, :cond_70

    goto :goto_8a

    :cond_70
    const/4 v7, 0x0

    :goto_71
    if-ge v7, v14, :cond_8a

    .line 15
    iget-object v14, v1, Lp/i;->v:[F

    aget v14, v14, v7

    div-float/2addr v14, v5

    cmpg-float v18, v14, v6

    if-gez v18, :cond_7e

    if-eq v7, v11, :cond_80

    :cond_7e
    if-le v7, v11, :cond_85

    .line 16
    :cond_80
    iget v10, v1, Lp/i;->q:I

    move v11, v7

    move v9, v8

    move v6, v14

    :cond_85
    add-int/lit8 v7, v7, 0x1

    const/16 v14, 0x9

    goto :goto_71

    :cond_8a
    :goto_8a
    add-int/lit8 v15, v15, 0x1

    const/16 v14, 0x9

    goto :goto_5d

    :cond_8f
    const/4 v1, 0x1

    .line 17
    :goto_90
    iget v5, v0, Lp/d;->k:I

    if-ge v1, v5, :cond_c3

    .line 18
    iget-object v5, v0, Lp/d;->n:Lp/c;

    iget-object v5, v5, Lp/c;->d:[Lp/i;

    aget-object v5, v5, v1

    .line 19
    iget-object v7, v12, Lp/b;->e:Lp/b$a;

    invoke-interface {v7, v5}, Lp/b$a;->j(Lp/i;)F

    move-result v7

    cmpg-float v13, v7, v4

    if-gtz v13, :cond_a7

    const/16 v14, 0x9

    goto :goto_c0

    :cond_a7
    const/4 v13, 0x0

    const/16 v14, 0x9

    :goto_aa
    if-ge v13, v14, :cond_c0

    .line 20
    iget-object v15, v5, Lp/i;->v:[F

    aget v15, v15, v13

    div-float/2addr v15, v7

    cmpg-float v17, v15, v6

    if-gez v17, :cond_b7

    if-eq v13, v11, :cond_b9

    :cond_b7
    if-le v13, v11, :cond_bd

    :cond_b9
    move v10, v1

    move v9, v8

    move v11, v13

    move v6, v15

    :cond_bd
    add-int/lit8 v13, v13, 0x1

    goto :goto_aa

    :cond_c0
    :goto_c0
    add-int/lit8 v1, v1, 0x1

    goto :goto_90

    :cond_c3
    :goto_c3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_32

    :cond_c7
    const/4 v1, -0x1

    if-eq v9, v1, :cond_e3

    .line 21
    iget-object v5, v0, Lp/d;->g:[Lp/b;

    aget-object v5, v5, v9

    .line 22
    iget-object v6, v5, Lp/b;->a:Lp/i;

    iput v1, v6, Lp/i;->r:I

    .line 23
    iget-object v1, v0, Lp/d;->n:Lp/c;

    iget-object v1, v1, Lp/c;->d:[Lp/i;

    aget-object v1, v1, v10

    invoke-virtual {v5, v1}, Lp/b;->x(Lp/i;)V

    .line 24
    iget-object v1, v5, Lp/b;->a:Lp/i;

    iput v9, v1, Lp/i;->r:I

    .line 25
    invoke-virtual {v1, v0, v5}, Lp/i;->l(Lp/d;Lp/b;)V

    goto :goto_e4

    :cond_e3
    const/4 v2, 0x1

    .line 26
    :goto_e4
    iget v1, v0, Lp/d;->k:I

    div-int/lit8 v1, v1, 0x2

    if-le v3, v1, :cond_27

    const/4 v2, 0x1

    goto/16 :goto_27

    :cond_ed
    move v1, v3

    goto :goto_f0

    :cond_ef
    const/4 v1, 0x0

    :goto_f0
    return v1
.end method

.method public static w()Lp/e;
    .registers 1

    .line 1
    sget-object v0, Lp/d;->x:Lp/e;

    return-object v0
.end method

.method private y()V
    .registers 4

    .line 1
    iget v0, p0, Lp/d;->e:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lp/d;->e:I

    .line 2
    iget-object v1, p0, Lp/d;->g:[Lp/b;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp/b;

    iput-object v0, p0, Lp/d;->g:[Lp/b;

    .line 3
    iget-object v0, p0, Lp/d;->n:Lp/c;

    iget-object v1, v0, Lp/c;->d:[Lp/i;

    iget v2, p0, Lp/d;->e:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lp/i;

    iput-object v1, v0, Lp/c;->d:[Lp/i;

    .line 4
    iget v0, p0, Lp/d;->e:I

    new-array v1, v0, [Z

    iput-object v1, p0, Lp/d;->j:[Z

    .line 5
    iput v0, p0, Lp/d;->f:I

    .line 6
    iput v0, p0, Lp/d;->m:I

    return-void
.end method


# virtual methods
.method A(Lp/d$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lp/d;->u(Lp/d$a;)I

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lp/d;->B(Lp/d$a;Z)I

    .line 3
    invoke-direct {p0}, Lp/d;->n()V

    return-void
.end method

.method public D()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    iget-object v2, p0, Lp/d;->n:Lp/c;

    iget-object v3, v2, Lp/c;->d:[Lp/i;

    array-length v4, v3

    if-ge v1, v4, :cond_13

    .line 2
    aget-object v2, v3, v1

    if-eqz v2, :cond_10

    .line 3
    invoke-virtual {v2}, Lp/i;->i()V

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4
    :cond_13
    iget-object v1, v2, Lp/c;->c:Lp/f;

    iget-object v2, p0, Lp/d;->o:[Lp/i;

    iget v3, p0, Lp/d;->p:I

    invoke-interface {v1, v2, v3}, Lp/f;->c([Ljava/lang/Object;I)V

    .line 5
    iput v0, p0, Lp/d;->p:I

    .line 6
    iget-object v1, p0, Lp/d;->n:Lp/c;

    iget-object v1, v1, Lp/c;->d:[Lp/i;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lp/d;->c:Ljava/util/HashMap;

    if-eqz v1, :cond_2d

    .line 8
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 9
    :cond_2d
    iput v0, p0, Lp/d;->b:I

    .line 10
    iget-object v1, p0, Lp/d;->d:Lp/d$a;

    invoke-interface {v1}, Lp/d$a;->clear()V

    const/4 v1, 0x1

    .line 11
    iput v1, p0, Lp/d;->k:I

    const/4 v1, 0x0

    .line 12
    :goto_38
    iget v2, p0, Lp/d;->l:I

    if-ge v1, v2, :cond_49

    .line 13
    iget-object v2, p0, Lp/d;->g:[Lp/b;

    aget-object v3, v2, v1

    if-eqz v3, :cond_46

    .line 14
    aget-object v2, v2, v1

    iput-boolean v0, v2, Lp/b;->c:Z

    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 15
    :cond_49
    invoke-direct {p0}, Lp/d;->C()V

    .line 16
    iput v0, p0, Lp/d;->l:I

    .line 17
    sget-boolean v0, Lp/d;->v:Z

    if-eqz v0, :cond_5c

    .line 18
    new-instance v0, Lp/d$b;

    iget-object v1, p0, Lp/d;->n:Lp/c;

    invoke-direct {v0, p0, v1}, Lp/d$b;-><init>(Lp/d;Lp/c;)V

    iput-object v0, p0, Lp/d;->q:Lp/d$a;

    goto :goto_65

    .line 19
    :cond_5c
    new-instance v0, Lp/b;

    iget-object v1, p0, Lp/d;->n:Lp/c;

    invoke-direct {v0, v1}, Lp/b;-><init>(Lp/c;)V

    iput-object v0, p0, Lp/d;->q:Lp/d$a;

    :goto_65
    return-void
.end method

.method public b(Ls/e;Ls/e;FI)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    sget-object v3, Ls/d$b;->p:Ls/d$b;

    invoke-virtual {v1, v3}, Ls/e;->m(Ls/d$b;)Ls/d;

    move-result-object v4

    invoke-virtual {v0, v4}, Lp/d;->q(Ljava/lang/Object;)Lp/i;

    move-result-object v6

    .line 2
    sget-object v4, Ls/d$b;->q:Ls/d$b;

    invoke-virtual {v1, v4}, Ls/e;->m(Ls/d$b;)Ls/d;

    move-result-object v5

    invoke-virtual {v0, v5}, Lp/d;->q(Ljava/lang/Object;)Lp/i;

    move-result-object v8

    .line 3
    sget-object v5, Ls/d$b;->r:Ls/d$b;

    invoke-virtual {v1, v5}, Ls/e;->m(Ls/d$b;)Ls/d;

    move-result-object v7

    invoke-virtual {v0, v7}, Lp/d;->q(Ljava/lang/Object;)Lp/i;

    move-result-object v13

    .line 4
    sget-object v7, Ls/d$b;->s:Ls/d$b;

    invoke-virtual {v1, v7}, Ls/e;->m(Ls/d$b;)Ls/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lp/d;->q(Ljava/lang/Object;)Lp/i;

    move-result-object v9

    .line 5
    invoke-virtual {v2, v3}, Ls/e;->m(Ls/d$b;)Ls/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lp/d;->q(Ljava/lang/Object;)Lp/i;

    move-result-object v1

    .line 6
    invoke-virtual {v2, v4}, Ls/e;->m(Ls/d$b;)Ls/d;

    move-result-object v3

    invoke-virtual {v0, v3}, Lp/d;->q(Ljava/lang/Object;)Lp/i;

    move-result-object v10

    .line 7
    invoke-virtual {v2, v5}, Ls/e;->m(Ls/d$b;)Ls/d;

    move-result-object v3

    invoke-virtual {v0, v3}, Lp/d;->q(Ljava/lang/Object;)Lp/i;

    move-result-object v3

    .line 8
    invoke-virtual {v2, v7}, Ls/e;->m(Ls/d$b;)Ls/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lp/d;->q(Ljava/lang/Object;)Lp/i;

    move-result-object v11

    .line 9
    invoke-virtual/range {p0 .. p0}, Lp/d;->r()Lp/b;

    move-result-object v2

    move/from16 v4, p3

    float-to-double v4, v4

    .line 10
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    move/from16 v7, p4

    move-object/from16 p1, v3

    move-wide/from16 p2, v4

    int-to-double v3, v7

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v3

    double-to-float v12, v14

    move-object v7, v2

    .line 11
    invoke-virtual/range {v7 .. v12}, Lp/b;->q(Lp/i;Lp/i;Lp/i;Lp/i;F)Lp/b;

    .line 12
    invoke-virtual {v0, v2}, Lp/d;->d(Lp/b;)V

    .line 13
    invoke-virtual/range {p0 .. p0}, Lp/d;->r()Lp/b;

    move-result-object v2

    .line 14
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v3

    double-to-float v10, v7

    move-object v5, v2

    move-object v7, v13

    move-object v8, v1

    move-object/from16 v9, p1

    .line 15
    invoke-virtual/range {v5 .. v10}, Lp/b;->q(Lp/i;Lp/i;Lp/i;Lp/i;F)Lp/b;

    .line 16
    invoke-virtual {v0, v2}, Lp/d;->d(Lp/b;)V

    return-void
.end method

.method public c(Lp/i;Lp/i;IFLp/i;Lp/i;II)V
    .registers 20

    move-object v0, p0

    move/from16 v1, p8

    .line 1
    invoke-virtual {p0}, Lp/d;->r()Lp/b;

    move-result-object v10

    move-object v2, v10

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 2
    invoke-virtual/range {v2 .. v9}, Lp/b;->h(Lp/i;Lp/i;IFLp/i;Lp/i;I)Lp/b;

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1c

    .line 3
    invoke-virtual {v10, p0, v1}, Lp/b;->d(Lp/d;I)Lp/b;

    .line 4
    :cond_1c
    invoke-virtual {p0, v10}, Lp/d;->d(Lp/b;)V

    return-void
.end method

.method public d(Lp/b;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    iget v0, p0, Lp/d;->l:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lp/d;->m:I

    if-ge v0, v2, :cond_12

    iget v0, p0, Lp/d;->k:I

    add-int/2addr v0, v1

    iget v2, p0, Lp/d;->f:I

    if-lt v0, v2, :cond_15

    .line 2
    :cond_12
    invoke-direct {p0}, Lp/d;->y()V

    :cond_15
    const/4 v0, 0x0

    .line 3
    iget-boolean v2, p1, Lp/b;->f:Z

    if-nez v2, :cond_84

    .line 4
    invoke-virtual {p1, p0}, Lp/b;->D(Lp/d;)V

    .line 5
    invoke-virtual {p1}, Lp/b;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_24

    return-void

    .line 6
    :cond_24
    invoke-virtual {p1}, Lp/b;->r()V

    .line 7
    invoke-virtual {p1, p0}, Lp/b;->f(Lp/d;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 8
    invoke-virtual {p0}, Lp/d;->p()Lp/i;

    move-result-object v2

    .line 9
    iput-object v2, p1, Lp/b;->a:Lp/i;

    .line 10
    iget v3, p0, Lp/d;->l:I

    .line 11
    invoke-direct {p0, p1}, Lp/d;->l(Lp/b;)V

    .line 12
    iget v4, p0, Lp/d;->l:I

    add-int/2addr v3, v1

    if-ne v4, v3, :cond_7b

    .line 13
    iget-object v0, p0, Lp/d;->q:Lp/d$a;

    invoke-interface {v0, p1}, Lp/d$a;->c(Lp/d$a;)V

    .line 14
    iget-object v0, p0, Lp/d;->q:Lp/d$a;

    invoke-direct {p0, v0, v1}, Lp/d;->B(Lp/d$a;Z)I

    .line 15
    iget v0, v2, Lp/i;->r:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_7c

    .line 16
    iget-object v0, p1, Lp/b;->a:Lp/i;

    if-ne v0, v2, :cond_59

    .line 17
    invoke-virtual {p1, v2}, Lp/b;->v(Lp/i;)Lp/i;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 18
    invoke-virtual {p1, v0}, Lp/b;->x(Lp/i;)V

    .line 19
    :cond_59
    iget-boolean v0, p1, Lp/b;->f:Z

    if-nez v0, :cond_62

    .line 20
    iget-object v0, p1, Lp/b;->a:Lp/i;

    invoke-virtual {v0, p0, p1}, Lp/i;->l(Lp/d;Lp/b;)V

    .line 21
    :cond_62
    sget-boolean v0, Lp/d;->v:Z

    if-eqz v0, :cond_6e

    .line 22
    iget-object v0, p0, Lp/d;->n:Lp/c;

    iget-object v0, v0, Lp/c;->a:Lp/f;

    invoke-interface {v0, p1}, Lp/f;->a(Ljava/lang/Object;)Z

    goto :goto_75

    .line 23
    :cond_6e
    iget-object v0, p0, Lp/d;->n:Lp/c;

    iget-object v0, v0, Lp/c;->b:Lp/f;

    invoke-interface {v0, p1}, Lp/f;->a(Ljava/lang/Object;)Z

    .line 24
    :goto_75
    iget v0, p0, Lp/d;->l:I

    sub-int/2addr v0, v1

    iput v0, p0, Lp/d;->l:I

    goto :goto_7c

    :cond_7b
    const/4 v1, 0x0

    .line 25
    :cond_7c
    :goto_7c
    invoke-virtual {p1}, Lp/b;->s()Z

    move-result v0

    if-nez v0, :cond_83

    return-void

    :cond_83
    move v0, v1

    :cond_84
    if-nez v0, :cond_89

    .line 26
    invoke-direct {p0, p1}, Lp/d;->l(Lp/b;)V

    :cond_89
    return-void
.end method

.method public e(Lp/i;Lp/i;II)Lp/b;
    .registers 8

    .line 1
    sget-boolean v0, Lp/d;->s:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_1a

    if-ne p4, v1, :cond_1a

    iget-boolean v0, p2, Lp/i;->u:Z

    if-eqz v0, :cond_1a

    iget v0, p1, Lp/i;->r:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1a

    .line 2
    iget p2, p2, Lp/i;->t:F

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p0, p2}, Lp/i;->j(Lp/d;F)V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_1a
    invoke-virtual {p0}, Lp/d;->r()Lp/b;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lp/b;->n(Lp/i;Lp/i;I)Lp/b;

    if-eq p4, v1, :cond_26

    .line 5
    invoke-virtual {v0, p0, p4}, Lp/b;->d(Lp/d;I)Lp/b;

    .line 6
    :cond_26
    invoke-virtual {p0, v0}, Lp/d;->d(Lp/b;)V

    return-object v0
.end method

.method public f(Lp/i;I)V
    .registers 8

    .line 1
    sget-boolean v0, Lp/d;->s:Z

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_30

    iget v0, p1, Lp/i;->r:I

    if-ne v0, v1, :cond_30

    int-to-float p2, p2

    .line 2
    invoke-virtual {p1, p0, p2}, Lp/i;->j(Lp/d;F)V

    const/4 v0, 0x0

    .line 3
    :goto_f
    iget v1, p0, Lp/d;->b:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_2f

    .line 4
    iget-object v1, p0, Lp/d;->n:Lp/c;

    iget-object v1, v1, Lp/c;->d:[Lp/i;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2c

    .line 5
    iget-boolean v3, v1, Lp/i;->B:Z

    if-eqz v3, :cond_2c

    iget v3, v1, Lp/i;->C:I

    iget v4, p1, Lp/i;->q:I

    if-ne v3, v4, :cond_2c

    .line 6
    iget v3, v1, Lp/i;->D:F

    add-float/2addr v3, p2

    invoke-virtual {v1, p0, v3}, Lp/i;->j(Lp/d;F)V

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_2f
    return-void

    .line 7
    :cond_30
    iget v0, p1, Lp/i;->r:I

    if-eq v0, v1, :cond_59

    .line 8
    iget-object v1, p0, Lp/d;->g:[Lp/b;

    aget-object v0, v1, v0

    .line 9
    iget-boolean v1, v0, Lp/b;->f:Z

    if-eqz v1, :cond_40

    int-to-float p1, p2

    .line 10
    iput p1, v0, Lp/b;->b:F

    goto :goto_63

    .line 11
    :cond_40
    iget-object v1, v0, Lp/b;->e:Lp/b$a;

    invoke-interface {v1}, Lp/b$a;->c()I

    move-result v1

    if-nez v1, :cond_4e

    .line 12
    iput-boolean v2, v0, Lp/b;->f:Z

    int-to-float p1, p2

    .line 13
    iput p1, v0, Lp/b;->b:F

    goto :goto_63

    .line 14
    :cond_4e
    invoke-virtual {p0}, Lp/d;->r()Lp/b;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p1, p2}, Lp/b;->m(Lp/i;I)Lp/b;

    .line 16
    invoke-virtual {p0, v0}, Lp/d;->d(Lp/b;)V

    goto :goto_63

    .line 17
    :cond_59
    invoke-virtual {p0}, Lp/d;->r()Lp/b;

    move-result-object v0

    .line 18
    invoke-virtual {v0, p1, p2}, Lp/b;->i(Lp/i;I)Lp/b;

    .line 19
    invoke-virtual {p0, v0}, Lp/d;->d(Lp/b;)V

    :goto_63
    return-void
.end method

.method public g(Lp/i;Lp/i;IZ)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lp/d;->r()Lp/b;

    move-result-object p4

    .line 2
    invoke-virtual {p0}, Lp/d;->t()Lp/i;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lp/i;->s:I

    .line 4
    invoke-virtual {p4, p1, p2, v0, p3}, Lp/b;->o(Lp/i;Lp/i;Lp/i;I)Lp/b;

    .line 5
    invoke-virtual {p0, p4}, Lp/d;->d(Lp/b;)V

    return-void
.end method

.method public h(Lp/i;Lp/i;II)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lp/d;->r()Lp/b;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lp/d;->t()Lp/i;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    iput v2, v1, Lp/i;->s:I

    .line 4
    invoke-virtual {v0, p1, p2, v1, p3}, Lp/b;->o(Lp/i;Lp/i;Lp/i;I)Lp/b;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_20

    .line 5
    iget-object p1, v0, Lp/b;->e:Lp/b$a;

    invoke-interface {p1, v1}, Lp/b$a;->j(Lp/i;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 6
    invoke-virtual {p0, v0, p1, p4}, Lp/d;->m(Lp/b;II)V

    .line 7
    :cond_20
    invoke-virtual {p0, v0}, Lp/d;->d(Lp/b;)V

    return-void
.end method

.method public i(Lp/i;Lp/i;IZ)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lp/d;->r()Lp/b;

    move-result-object p4

    .line 2
    invoke-virtual {p0}, Lp/d;->t()Lp/i;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lp/i;->s:I

    .line 4
    invoke-virtual {p4, p1, p2, v0, p3}, Lp/b;->p(Lp/i;Lp/i;Lp/i;I)Lp/b;

    .line 5
    invoke-virtual {p0, p4}, Lp/d;->d(Lp/b;)V

    return-void
.end method

.method public j(Lp/i;Lp/i;II)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lp/d;->r()Lp/b;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lp/d;->t()Lp/i;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    iput v2, v1, Lp/i;->s:I

    .line 4
    invoke-virtual {v0, p1, p2, v1, p3}, Lp/b;->p(Lp/i;Lp/i;Lp/i;I)Lp/b;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_20

    .line 5
    iget-object p1, v0, Lp/b;->e:Lp/b$a;

    invoke-interface {p1, v1}, Lp/b$a;->j(Lp/i;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 6
    invoke-virtual {p0, v0, p1, p4}, Lp/d;->m(Lp/b;II)V

    .line 7
    :cond_20
    invoke-virtual {p0, v0}, Lp/d;->d(Lp/b;)V

    return-void
.end method

.method public k(Lp/i;Lp/i;Lp/i;Lp/i;FI)V
    .registers 14

    .line 1
    invoke-virtual {p0}, Lp/d;->r()Lp/b;

    move-result-object v6

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 2
    invoke-virtual/range {v0 .. v5}, Lp/b;->k(Lp/i;Lp/i;Lp/i;Lp/i;F)Lp/b;

    const/16 p1, 0x8

    if-eq p6, p1, :cond_14

    .line 3
    invoke-virtual {v6, p0, p6}, Lp/b;->d(Lp/d;I)Lp/b;

    .line 4
    :cond_14
    invoke-virtual {p0, v6}, Lp/d;->d(Lp/b;)V

    return-void
.end method

.method m(Lp/b;II)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p3, v0}, Lp/d;->o(ILjava/lang/String;)Lp/i;

    move-result-object p3

    .line 2
    invoke-virtual {p1, p3, p2}, Lp/b;->e(Lp/i;I)Lp/b;

    return-void
.end method

.method public o(ILjava/lang/String;)Lp/i;
    .registers 5

    .line 1
    iget v0, p0, Lp/d;->k:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lp/d;->f:I

    if-lt v0, v1, :cond_b

    .line 2
    invoke-direct {p0}, Lp/d;->y()V

    .line 3
    :cond_b
    sget-object v0, Lp/i$a;->r:Lp/i$a;

    invoke-direct {p0, v0, p2}, Lp/d;->a(Lp/i$a;Ljava/lang/String;)Lp/i;

    move-result-object p2

    .line 4
    iget v0, p0, Lp/d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lp/d;->b:I

    .line 5
    iget v1, p0, Lp/d;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lp/d;->k:I

    .line 6
    iput v0, p2, Lp/i;->q:I

    .line 7
    iput p1, p2, Lp/i;->s:I

    .line 8
    iget-object p1, p0, Lp/d;->n:Lp/c;

    iget-object p1, p1, Lp/c;->d:[Lp/i;

    aput-object p2, p1, v0

    .line 9
    iget-object p1, p0, Lp/d;->d:Lp/d$a;

    invoke-interface {p1, p2}, Lp/d$a;->a(Lp/i;)V

    return-object p2
.end method

.method public p()Lp/i;
    .registers 4

    .line 1
    iget v0, p0, Lp/d;->k:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lp/d;->f:I

    if-lt v0, v1, :cond_b

    .line 2
    invoke-direct {p0}, Lp/d;->y()V

    .line 3
    :cond_b
    sget-object v0, Lp/i$a;->q:Lp/i$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lp/d;->a(Lp/i$a;Ljava/lang/String;)Lp/i;

    move-result-object v0

    .line 4
    iget v1, p0, Lp/d;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lp/d;->b:I

    .line 5
    iget v2, p0, Lp/d;->k:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lp/d;->k:I

    .line 6
    iput v1, v0, Lp/i;->q:I

    .line 7
    iget-object v2, p0, Lp/d;->n:Lp/c;

    iget-object v2, v2, Lp/c;->d:[Lp/i;

    aput-object v0, v2, v1

    return-object v0
.end method

.method public q(Ljava/lang/Object;)Lp/i;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1
    :cond_4
    iget v1, p0, Lp/d;->k:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lp/d;->f:I

    if-lt v1, v2, :cond_f

    .line 2
    invoke-direct {p0}, Lp/d;->y()V

    .line 3
    :cond_f
    instance-of v1, p1, Ls/d;

    if-eqz v1, :cond_53

    .line 4
    check-cast p1, Ls/d;

    invoke-virtual {p1}, Ls/d;->h()Lp/i;

    move-result-object v0

    if-nez v0, :cond_25

    .line 5
    iget-object v0, p0, Lp/d;->n:Lp/c;

    invoke-virtual {p1, v0}, Ls/d;->r(Lp/c;)V

    .line 6
    invoke-virtual {p1}, Ls/d;->h()Lp/i;

    move-result-object p1

    move-object v0, p1

    .line 7
    :cond_25
    iget p1, v0, Lp/i;->q:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_36

    iget v2, p0, Lp/d;->b:I

    if-gt p1, v2, :cond_36

    iget-object v2, p0, Lp/d;->n:Lp/c;

    iget-object v2, v2, Lp/c;->d:[Lp/i;

    aget-object v2, v2, p1

    if-nez v2, :cond_53

    :cond_36
    if-eq p1, v1, :cond_3b

    .line 8
    invoke-virtual {v0}, Lp/i;->i()V

    .line 9
    :cond_3b
    iget p1, p0, Lp/d;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lp/d;->b:I

    .line 10
    iget v1, p0, Lp/d;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lp/d;->k:I

    .line 11
    iput p1, v0, Lp/i;->q:I

    .line 12
    sget-object v1, Lp/i$a;->o:Lp/i$a;

    iput-object v1, v0, Lp/i;->x:Lp/i$a;

    .line 13
    iget-object v1, p0, Lp/d;->n:Lp/c;

    iget-object v1, v1, Lp/c;->d:[Lp/i;

    aput-object v0, v1, p1

    :cond_53
    return-object v0
.end method

.method public r()Lp/b;
    .registers 6

    .line 1
    sget-boolean v0, Lp/d;->v:Z

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_23

    .line 2
    iget-object v0, p0, Lp/d;->n:Lp/c;

    iget-object v0, v0, Lp/c;->a:Lp/f;

    invoke-interface {v0}, Lp/f;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/b;

    if-nez v0, :cond_1f

    .line 3
    new-instance v0, Lp/d$b;

    iget-object v3, p0, Lp/d;->n:Lp/c;

    invoke-direct {v0, p0, v3}, Lp/d$b;-><init>(Lp/d;Lp/c;)V

    .line 4
    sget-wide v3, Lp/d;->z:J

    add-long/2addr v3, v1

    sput-wide v3, Lp/d;->z:J

    goto :goto_3f

    .line 5
    :cond_1f
    invoke-virtual {v0}, Lp/b;->y()V

    goto :goto_3f

    .line 6
    :cond_23
    iget-object v0, p0, Lp/d;->n:Lp/c;

    iget-object v0, v0, Lp/c;->b:Lp/f;

    invoke-interface {v0}, Lp/f;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/b;

    if-nez v0, :cond_3c

    .line 7
    new-instance v0, Lp/b;

    iget-object v3, p0, Lp/d;->n:Lp/c;

    invoke-direct {v0, v3}, Lp/b;-><init>(Lp/c;)V

    .line 8
    sget-wide v3, Lp/d;->y:J

    add-long/2addr v3, v1

    sput-wide v3, Lp/d;->y:J

    goto :goto_3f

    .line 9
    :cond_3c
    invoke-virtual {v0}, Lp/b;->y()V

    .line 10
    :goto_3f
    invoke-static {}, Lp/i;->f()V

    return-object v0
.end method

.method public t()Lp/i;
    .registers 4

    .line 1
    iget v0, p0, Lp/d;->k:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lp/d;->f:I

    if-lt v0, v1, :cond_b

    .line 2
    invoke-direct {p0}, Lp/d;->y()V

    .line 3
    :cond_b
    sget-object v0, Lp/i$a;->q:Lp/i$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lp/d;->a(Lp/i$a;Ljava/lang/String;)Lp/i;

    move-result-object v0

    .line 4
    iget v1, p0, Lp/d;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lp/d;->b:I

    .line 5
    iget v2, p0, Lp/d;->k:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lp/d;->k:I

    .line 6
    iput v1, v0, Lp/i;->q:I

    .line 7
    iget-object v2, p0, Lp/d;->n:Lp/c;

    iget-object v2, v2, Lp/c;->d:[Lp/i;

    aput-object v0, v2, v1

    return-object v0
.end method

.method public v()Lp/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lp/d;->n:Lp/c;

    return-object v0
.end method

.method public x(Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Ls/d;

    .line 2
    invoke-virtual {p1}, Ls/d;->h()Lp/i;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 3
    iget p1, p1, Lp/i;->t:F

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public z()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp/d;->d:Lp/d$a;

    invoke-interface {v0}, Lp/d$a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2
    invoke-direct {p0}, Lp/d;->n()V

    return-void

    .line 3
    :cond_c
    iget-boolean v0, p0, Lp/d;->h:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lp/d;->i:Z

    if-eqz v0, :cond_15

    goto :goto_1b

    .line 4
    :cond_15
    iget-object v0, p0, Lp/d;->d:Lp/d$a;

    invoke-virtual {p0, v0}, Lp/d;->A(Lp/d$a;)V

    goto :goto_39

    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_1d
    iget v2, p0, Lp/d;->l:I

    if-ge v1, v2, :cond_2d

    .line 6
    iget-object v2, p0, Lp/d;->g:[Lp/b;

    aget-object v2, v2, v1

    .line 7
    iget-boolean v2, v2, Lp/b;->f:Z

    if-nez v2, :cond_2a

    goto :goto_2e

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_2d
    const/4 v0, 0x1

    :goto_2e
    if-nez v0, :cond_36

    .line 8
    iget-object v0, p0, Lp/d;->d:Lp/d$a;

    invoke-virtual {p0, v0}, Lp/d;->A(Lp/d$a;)V

    goto :goto_39

    .line 9
    :cond_36
    invoke-direct {p0}, Lp/d;->n()V

    :goto_39
    return-void
.end method

###### Class p.d.a (p.d$a)
.class interface abstract Lp/d$a;
.super Ljava/lang/Object;
.source "LinearSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Lp/i;)V
.end method

.method public abstract b(Lp/d;[Z)Lp/i;
.end method

.method public abstract c(Lp/d$a;)V
.end method

.method public abstract clear()V
.end method

.method public abstract getKey()Lp/i;
.end method

.method public abstract isEmpty()Z
.end method

###### Class p.d.b (p.d$b)
.class Lp/d$b;
.super Lp/b;
.source "LinearSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic g:Lp/d;


# direct methods
.method public constructor <init>(Lp/d;Lp/c;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lp/d$b;->g:Lp/d;

    invoke-direct {p0}, Lp/b;-><init>()V

    .line 2
    new-instance p1, Lp/j;

    invoke-direct {p1, p0, p2}, Lp/j;-><init>(Lp/b;Lp/c;)V

    iput-object p1, p0, Lp/b;->e:Lp/b$a;

    return-void
.end method
