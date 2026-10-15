###### Class f8.w (f8.w)
.class public final Lf8/w;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf8/w$b;
    }
.end annotation


# static fields
.field private static final s:J


# instance fields
.field a:I

.field b:J

.field c:I

.field public final d:Landroid/net/Uri;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf8/c0;",
            ">;"
        }
    .end annotation
.end field

.field public final h:I

.field public final i:I

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:F

.field public final n:F

.field public final o:F

.field public final p:Z

.field public final q:Landroid/graphics/Bitmap$Config;

.field public final r:Lf8/t$f;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lf8/w;->s:J

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZZFFFZLandroid/graphics/Bitmap$Config;Lf8/t$f;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lf8/c0;",
            ">;IIZZZFFFZ",
            "Landroid/graphics/Bitmap$Config;",
            "Lf8/t$f;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lf8/w;->d:Landroid/net/Uri;

    .line 4
    iput p2, p0, Lf8/w;->e:I

    .line 5
    iput-object p3, p0, Lf8/w;->f:Ljava/lang/String;

    if-nez p4, :cond_f

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lf8/w;->g:Ljava/util/List;

    goto :goto_15

    .line 7
    :cond_f
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf8/w;->g:Ljava/util/List;

    .line 8
    :goto_15
    iput p5, p0, Lf8/w;->h:I

    .line 9
    iput p6, p0, Lf8/w;->i:I

    .line 10
    iput-boolean p7, p0, Lf8/w;->j:Z

    .line 11
    iput-boolean p8, p0, Lf8/w;->k:Z

    .line 12
    iput-boolean p9, p0, Lf8/w;->l:Z

    .line 13
    iput p10, p0, Lf8/w;->m:F

    .line 14
    iput p11, p0, Lf8/w;->n:F

    .line 15
    iput p12, p0, Lf8/w;->o:F

    .line 16
    iput-boolean p13, p0, Lf8/w;->p:Z

    .line 17
    iput-object p14, p0, Lf8/w;->q:Landroid/graphics/Bitmap$Config;

    .line 18
    iput-object p15, p0, Lf8/w;->r:Lf8/t$f;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZZFFFZLandroid/graphics/Bitmap$Config;Lf8/t$f;Lf8/w$a;)V
    .registers 17

    .line 1
    invoke-direct/range {p0 .. p15}, Lf8/w;-><init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZZFFFZLandroid/graphics/Bitmap$Config;Lf8/t$f;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lf8/w;->d:Landroid/net/Uri;

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_d
    iget v0, p0, Lf8/w;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lf8/w;->g:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public c()Z
    .registers 2

    .line 1
    iget v0, p0, Lf8/w;->h:I

    if-nez v0, :cond_b

    iget v0, p0, Lf8/w;->i:I

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method d()Ljava/lang/String;
    .registers 7

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lf8/w;->b:J

    sub-long/2addr v0, v2

    .line 2
    sget-wide v2, Lf8/w;->s:J

    const/16 v4, 0x2b

    cmp-long v5, v0, v2

    if-lez v5, :cond_31

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lf8/w;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x73

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lf8/w;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method e()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lf8/w;->c()Z

    move-result v0

    if-nez v0, :cond_10

    iget v0, p0, Lf8/w;->m:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method f()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lf8/w;->e()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lf8/w;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method g()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[R"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf8/w;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget v1, p0, Lf8/w;->e:I

    if-lez v1, :cond_f

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 4
    :cond_f
    iget-object v1, p0, Lf8/w;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5
    :goto_14
    iget-object v1, p0, Lf8/w;->g:Ljava/util/List;

    const/16 v2, 0x20

    if-eqz v1, :cond_3d

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 6
    iget-object v1, p0, Lf8/w;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf8/c0;

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lf8/c0;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 8
    :cond_3d
    iget-object v1, p0, Lf8/w;->f:Ljava/lang/String;

    const/16 v3, 0x29

    if-eqz v1, :cond_50

    const-string v1, " stableKey("

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf8/w;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    :cond_50
    iget v1, p0, Lf8/w;->h:I

    const/16 v4, 0x2c

    if-lez v1, :cond_6b

    const-string v1, " resize("

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf8/w;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lf8/w;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    :cond_6b
    iget-boolean v1, p0, Lf8/w;->j:Z

    if-eqz v1, :cond_74

    const-string v1, " centerCrop"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_74
    iget-boolean v1, p0, Lf8/w;->k:Z

    if-eqz v1, :cond_7d

    const-string v1, " centerInside"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_7d
    iget v1, p0, Lf8/w;->m:F

    const/4 v5, 0x0

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_a7

    const-string v1, " rotation("

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf8/w;->m:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 18
    iget-boolean v1, p0, Lf8/w;->p:Z

    if-eqz v1, :cond_a4

    const-string v1, " @ "

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf8/w;->n:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lf8/w;->o:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 20
    :cond_a4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    :cond_a7
    iget-object v1, p0, Lf8/w;->q:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_b3

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf8/w;->q:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_b3
    const/16 v1, 0x7d

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class f8.w.a (f8.w$a)
.class synthetic Lf8/w$a;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf8/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class f8.w.b (f8.w$b)
.class public final Lf8/w$b;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf8/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/net/Uri;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:F

.field private j:F

.field private k:F

.field private l:Z

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf8/c0;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/graphics/Bitmap$Config;

.field private o:Lf8/t$f;


# direct methods
.method constructor <init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf8/w$b;->a:Landroid/net/Uri;

    .line 3
    iput p2, p0, Lf8/w$b;->b:I

    .line 4
    iput-object p3, p0, Lf8/w$b;->n:Landroid/graphics/Bitmap$Config;

    return-void
.end method


# virtual methods
.method public a()Lf8/w;
    .registers 21

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lf8/w$b;->g:Z

    if-eqz v1, :cond_13

    iget-boolean v2, v0, Lf8/w$b;->f:Z

    if-nez v2, :cond_b

    goto :goto_13

    .line 2
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Center crop and center inside can not be used together."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_13
    :goto_13
    iget-boolean v2, v0, Lf8/w$b;->f:Z

    if-eqz v2, :cond_28

    iget v2, v0, Lf8/w$b;->d:I

    if-nez v2, :cond_28

    iget v2, v0, Lf8/w$b;->e:I

    if-eqz v2, :cond_20

    goto :goto_28

    .line 4
    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Center crop requires calling resize with positive width and height."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_28
    :goto_28
    if-eqz v1, :cond_3b

    .line 5
    iget v1, v0, Lf8/w$b;->d:I

    if-nez v1, :cond_3b

    iget v1, v0, Lf8/w$b;->e:I

    if-eqz v1, :cond_33

    goto :goto_3b

    .line 6
    :cond_33
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Center inside requires calling resize with positive width and height."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_3b
    :goto_3b
    iget-object v1, v0, Lf8/w$b;->o:Lf8/t$f;

    if-nez v1, :cond_43

    .line 8
    sget-object v1, Lf8/t$f;->p:Lf8/t$f;

    iput-object v1, v0, Lf8/w$b;->o:Lf8/t$f;

    .line 9
    :cond_43
    new-instance v1, Lf8/w;

    move-object v2, v1

    iget-object v3, v0, Lf8/w$b;->a:Landroid/net/Uri;

    iget v4, v0, Lf8/w$b;->b:I

    iget-object v5, v0, Lf8/w$b;->c:Ljava/lang/String;

    iget-object v6, v0, Lf8/w$b;->m:Ljava/util/List;

    iget v7, v0, Lf8/w$b;->d:I

    iget v8, v0, Lf8/w$b;->e:I

    iget-boolean v9, v0, Lf8/w$b;->f:Z

    iget-boolean v10, v0, Lf8/w$b;->g:Z

    iget-boolean v11, v0, Lf8/w$b;->h:Z

    iget v12, v0, Lf8/w$b;->i:F

    iget v13, v0, Lf8/w$b;->j:F

    iget v14, v0, Lf8/w$b;->k:F

    iget-boolean v15, v0, Lf8/w$b;->l:Z

    move-object/from16 v19, v1

    iget-object v1, v0, Lf8/w$b;->n:Landroid/graphics/Bitmap$Config;

    move-object/from16 v16, v1

    iget-object v1, v0, Lf8/w$b;->o:Lf8/t$f;

    move-object/from16 v17, v1

    const/16 v18, 0x0

    invoke-direct/range {v2 .. v18}, Lf8/w;-><init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZZFFFZLandroid/graphics/Bitmap$Config;Lf8/t$f;Lf8/w$a;)V

    return-object v19
.end method

.method b()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lf8/w$b;->a:Landroid/net/Uri;

    if-nez v0, :cond_b

    iget v0, p0, Lf8/w$b;->b:I

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method c()Z
    .registers 2

    .line 1
    iget v0, p0, Lf8/w$b;->d:I

    if-nez v0, :cond_b

    iget v0, p0, Lf8/w$b;->e:I

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public d(II)Lf8/w$b;
    .registers 3

    if-ltz p1, :cond_1e

    if-ltz p2, :cond_16

    if-nez p2, :cond_11

    if-eqz p1, :cond_9

    goto :goto_11

    .line 1
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At least one dimension has to be positive number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_11
    :goto_11
    iput p1, p0, Lf8/w$b;->d:I

    .line 3
    iput p2, p0, Lf8/w$b;->e:I

    return-object p0

    .line 4
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Height must be positive number or 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width must be positive number or 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
