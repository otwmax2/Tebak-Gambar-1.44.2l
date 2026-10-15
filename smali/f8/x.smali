###### Class f8.x (f8.x)
.class public Lf8/x;
.super Ljava/lang/Object;
.source "RequestCreator.java"


# static fields
.field private static final m:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final a:Lf8/t;

.field private final b:Lf8/w$b;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lf8/x;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Lf8/t;Landroid/net/Uri;I)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lf8/x;->e:Z

    .line 3
    iget-boolean v0, p1, Lf8/t;->o:Z

    if-nez v0, :cond_16

    .line 4
    iput-object p1, p0, Lf8/x;->a:Lf8/t;

    .line 5
    new-instance v0, Lf8/w$b;

    iget-object p1, p1, Lf8/t;->l:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, p2, p3, p1}, Lf8/w$b;-><init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lf8/x;->b:Lf8/w$b;

    return-void

    .line 6
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Picasso instance already shut down. Cannot submit new requests."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(J)Lf8/w;
    .registers 10

    .line 1
    sget-object v0, Lf8/x;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 2
    iget-object v1, p0, Lf8/x;->b:Lf8/w$b;

    invoke-virtual {v1}, Lf8/w$b;->a()Lf8/w;

    move-result-object v1

    .line 3
    iput v0, v1, Lf8/w;->a:I

    .line 4
    iput-wide p1, v1, Lf8/w;->b:J

    .line 5
    iget-object v2, p0, Lf8/x;->a:Lf8/t;

    iget-boolean v2, v2, Lf8/t;->n:Z

    const-string v3, "Main"

    if-eqz v2, :cond_25

    .line 6
    invoke-virtual {v1}, Lf8/w;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lf8/w;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "created"

    invoke-static {v3, v6, v4, v5}, Lf8/e0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_25
    iget-object v4, p0, Lf8/x;->a:Lf8/t;

    invoke-virtual {v4, v1}, Lf8/t;->n(Lf8/w;)Lf8/w;

    move-result-object v4

    if-eq v4, v1, :cond_4d

    .line 8
    iput v0, v4, Lf8/w;->a:I

    .line 9
    iput-wide p1, v4, Lf8/w;->b:J

    if-eqz v2, :cond_4d

    .line 10
    invoke-virtual {v4}, Lf8/w;->d()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "into "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "changed"

    invoke-static {v3, v0, p1, p2}, Lf8/e0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4d
    return-object v4
.end method

.method private b()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    iget v0, p0, Lf8/x;->f:I

    if-eqz v0, :cond_13

    .line 2
    iget-object v0, p0, Lf8/x;->a:Lf8/t;

    iget-object v0, v0, Lf8/t;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lf8/x;->f:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 3
    :cond_13
    iget-object v0, p0, Lf8/x;->j:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public c(Landroid/widget/ImageView;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lf8/x;->d(Landroid/widget/ImageView;Lf8/e;)V

    return-void
.end method

.method public d(Landroid/widget/ImageView;Lf8/e;)V
    .registers 18

    move-object v0, p0

    move-object/from16 v3, p1

    move-object/from16 v11, p2

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 2
    invoke-static {}, Lf8/e0;->c()V

    if-eqz v3, :cond_e8

    .line 3
    iget-object v4, v0, Lf8/x;->b:Lf8/w$b;

    invoke-virtual {v4}, Lf8/w$b;->b()Z

    move-result v4

    if-nez v4, :cond_27

    .line 4
    iget-object v1, v0, Lf8/x;->a:Lf8/t;

    invoke-virtual {v1, v3}, Lf8/t;->c(Landroid/widget/ImageView;)V

    .line 5
    iget-boolean v1, v0, Lf8/x;->e:Z

    if-eqz v1, :cond_26

    .line 6
    invoke-direct {p0}, Lf8/x;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v3, v1}, Lf8/u;->d(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_26
    return-void

    .line 7
    :cond_27
    iget-boolean v4, v0, Lf8/x;->d:Z

    if-eqz v4, :cond_64

    .line 8
    iget-object v4, v0, Lf8/x;->b:Lf8/w$b;

    invoke-virtual {v4}, Lf8/w$b;->c()Z

    move-result v4

    if-nez v4, :cond_5c

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    if-eqz v4, :cond_46

    if-nez v5, :cond_40

    goto :goto_46

    .line 11
    :cond_40
    iget-object v6, v0, Lf8/x;->b:Lf8/w$b;

    invoke-virtual {v6, v4, v5}, Lf8/w$b;->d(II)Lf8/w$b;

    goto :goto_64

    .line 12
    :cond_46
    :goto_46
    iget-boolean v1, v0, Lf8/x;->e:Z

    if-eqz v1, :cond_51

    .line 13
    invoke-direct {p0}, Lf8/x;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v3, v1}, Lf8/u;->d(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 14
    :cond_51
    iget-object v1, v0, Lf8/x;->a:Lf8/t;

    new-instance v2, Lf8/h;

    invoke-direct {v2, p0, v3, v11}, Lf8/h;-><init>(Lf8/x;Landroid/widget/ImageView;Lf8/e;)V

    invoke-virtual {v1, v3, v2}, Lf8/t;->e(Landroid/widget/ImageView;Lf8/h;)V

    return-void

    .line 15
    :cond_5c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fit cannot be used with resize."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_64
    :goto_64
    invoke-direct {p0, v1, v2}, Lf8/x;->a(J)Lf8/w;

    move-result-object v7

    .line 17
    invoke-static {v7}, Lf8/e0;->h(Lf8/w;)Ljava/lang/String;

    move-result-object v9

    .line 18
    iget v1, v0, Lf8/x;->h:I

    invoke-static {v1}, Lf8/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 19
    iget-object v1, v0, Lf8/x;->a:Lf8/t;

    invoke-virtual {v1, v9}, Lf8/t;->k(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_ba

    .line 20
    iget-object v1, v0, Lf8/x;->a:Lf8/t;

    invoke-virtual {v1, v3}, Lf8/t;->c(Landroid/widget/ImageView;)V

    .line 21
    iget-object v1, v0, Lf8/x;->a:Lf8/t;

    iget-object v2, v1, Lf8/t;->e:Landroid/content/Context;

    sget-object v8, Lf8/t$e;->p:Lf8/t$e;

    iget-boolean v5, v0, Lf8/x;->c:Z

    iget-boolean v6, v1, Lf8/t;->m:Z

    move-object/from16 v1, p1

    move-object v3, v4

    move-object v4, v8

    invoke-static/range {v1 .. v6}, Lf8/u;->c(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lf8/t$e;ZZ)V

    .line 22
    iget-object v1, v0, Lf8/x;->a:Lf8/t;

    iget-boolean v1, v1, Lf8/t;->n:Z

    if-eqz v1, :cond_b4

    .line 23
    invoke-virtual {v7}, Lf8/w;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Main"

    const-string v4, "completed"

    invoke-static {v3, v4, v1, v2}, Lf8/e0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b4
    if-eqz v11, :cond_b9

    .line 24
    invoke-interface/range {p2 .. p2}, Lf8/e;->onSuccess()V

    :cond_b9
    return-void

    .line 25
    :cond_ba
    iget-boolean v1, v0, Lf8/x;->e:Z

    if-eqz v1, :cond_c5

    .line 26
    invoke-direct {p0}, Lf8/x;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v3, v1}, Lf8/u;->d(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 27
    :cond_c5
    new-instance v13, Lf8/l;

    iget-object v2, v0, Lf8/x;->a:Lf8/t;

    iget v5, v0, Lf8/x;->h:I

    iget v6, v0, Lf8/x;->i:I

    iget v8, v0, Lf8/x;->g:I

    iget-object v10, v0, Lf8/x;->k:Landroid/graphics/drawable/Drawable;

    iget-object v12, v0, Lf8/x;->l:Ljava/lang/Object;

    iget-boolean v14, v0, Lf8/x;->c:Z

    move-object v1, v13

    move-object/from16 v3, p1

    move-object v4, v7

    move v7, v8

    move-object v8, v10

    move-object v10, v12

    move-object/from16 v11, p2

    move v12, v14

    invoke-direct/range {v1 .. v12}, Lf8/l;-><init>(Lf8/t;Landroid/widget/ImageView;Lf8/w;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Lf8/e;Z)V

    .line 28
    iget-object v1, v0, Lf8/x;->a:Lf8/t;

    invoke-virtual {v1, v13}, Lf8/t;->g(Lf8/a;)V

    return-void

    .line 29
    :cond_e8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Target must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public e(Landroid/graphics/drawable/Drawable;)Lf8/x;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lf8/x;->e:Z

    if-eqz v0, :cond_13

    .line 2
    iget v0, p0, Lf8/x;->f:I

    if-nez v0, :cond_b

    .line 3
    iput-object p1, p0, Lf8/x;->j:Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 4
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Placeholder image already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already explicitly declared as no placeholder."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(II)Lf8/x;
    .registers 4

    .line 1
    iget-object v0, p0, Lf8/x;->b:Lf8/w$b;

    invoke-virtual {v0, p1, p2}, Lf8/w$b;->d(II)Lf8/w$b;

    return-object p0
.end method

.method g()Lf8/x;
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lf8/x;->d:Z

    return-object p0
.end method
