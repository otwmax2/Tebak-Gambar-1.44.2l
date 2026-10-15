###### Class t2.b (t2.b)
.class public final Lt2/b;
.super Ljava/lang/Object;
.source "GenericRequest.java"

# interfaces
.implements Lt2/c;
.implements Lv2/h;
.implements Lt2/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt2/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lt2/c;",
        "Lv2/h;",
        "Lt2/g;"
    }
.end annotation


# static fields
.field private static final D:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lt2/b<",
            "****>;>;"
        }
    .end annotation
.end field


# instance fields
.field private A:Lb2/c$c;

.field private B:J

.field private C:Lt2/b$a;

.field private final a:Ljava/lang/String;

.field private b:Lz1/c;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/content/Context;

.field private h:Lz1/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/g<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private i:Ls2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls2/f<",
            "TA;TT;TZ;TR;>;"
        }
    .end annotation
.end field

.field private j:Lt2/d;

.field private k:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TR;>;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Lv1/i;

.field private o:Lv2/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv2/j<",
            "TR;>;"
        }
    .end annotation
.end field

.field private p:Lt2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt2/f<",
            "-TA;TR;>;"
        }
    .end annotation
.end field

.field private q:F

.field private r:Lb2/c;

.field private s:Lu2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu2/d<",
            "TR;>;"
        }
    .end annotation
.end field

.field private t:I

.field private u:I

.field private v:Lb2/b;

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Z

.field private z:Lb2/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/l<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lx2/h;->d(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lt2/b;->D:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lt2/b;->a:Ljava/lang/String;

    return-void
.end method

.method private j()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lt2/b;->j:Lt2/d;

    if-eqz v0, :cond_d

    invoke-interface {v0, p0}, Lt2/d;->a(Lt2/c;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private k()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lt2/b;->j:Lt2/d;

    if-eqz v0, :cond_d

    invoke-interface {v0, p0}, Lt2/d;->c(Lt2/c;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private static m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_20

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, " must not be null"

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_16

    const-string p0, ", "

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_16
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    return-void
.end method

.method private n()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    iget-object v0, p0, Lt2/b;->x:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_16

    iget v0, p0, Lt2/b;->f:I

    if-lez v0, :cond_16

    .line 2
    iget-object v0, p0, Lt2/b;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lt2/b;->f:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lt2/b;->x:Landroid/graphics/drawable/Drawable;

    .line 3
    :cond_16
    iget-object v0, p0, Lt2/b;->x:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private o()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    iget-object v0, p0, Lt2/b;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_16

    iget v0, p0, Lt2/b;->d:I

    if-lez v0, :cond_16

    .line 2
    iget-object v0, p0, Lt2/b;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lt2/b;->d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lt2/b;->c:Landroid/graphics/drawable/Drawable;

    .line 3
    :cond_16
    iget-object v0, p0, Lt2/b;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private p()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    iget-object v0, p0, Lt2/b;->w:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_16

    iget v0, p0, Lt2/b;->e:I

    if-lez v0, :cond_16

    .line 2
    iget-object v0, p0, Lt2/b;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lt2/b;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lt2/b;->w:Landroid/graphics/drawable/Drawable;

    .line 3
    :cond_16
    iget-object v0, p0, Lt2/b;->w:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private q(Ls2/f;Ljava/lang/Object;Lz1/c;Landroid/content/Context;Lv1/i;Lv2/j;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILt2/f;Lt2/d;Lb2/c;Lz1/g;Ljava/lang/Class;ZLu2/d;IILb2/b;)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls2/f<",
            "TA;TT;TZ;TR;>;TA;",
            "Lz1/c;",
            "Landroid/content/Context;",
            "Lv1/i;",
            "Lv2/j<",
            "TR;>;F",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Lt2/f<",
            "-TA;TR;>;",
            "Lt2/d;",
            "Lb2/c;",
            "Lz1/g<",
            "TZ;>;",
            "Ljava/lang/Class<",
            "TR;>;Z",
            "Lu2/d<",
            "TR;>;II",
            "Lb2/b;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p17

    move-object v3, p1

    .line 1
    iput-object v3, v0, Lt2/b;->i:Ls2/f;

    .line 2
    iput-object v1, v0, Lt2/b;->k:Ljava/lang/Object;

    move-object v4, p3

    .line 3
    iput-object v4, v0, Lt2/b;->b:Lz1/c;

    move-object/from16 v4, p12

    .line 4
    iput-object v4, v0, Lt2/b;->c:Landroid/graphics/drawable/Drawable;

    move/from16 v4, p13

    .line 5
    iput v4, v0, Lt2/b;->d:I

    .line 6
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, v0, Lt2/b;->g:Landroid/content/Context;

    move-object v4, p5

    .line 7
    iput-object v4, v0, Lt2/b;->n:Lv1/i;

    move-object v4, p6

    .line 8
    iput-object v4, v0, Lt2/b;->o:Lv2/j;

    move v4, p7

    .line 9
    iput v4, v0, Lt2/b;->q:F

    move-object v4, p8

    .line 10
    iput-object v4, v0, Lt2/b;->w:Landroid/graphics/drawable/Drawable;

    move/from16 v4, p9

    .line 11
    iput v4, v0, Lt2/b;->e:I

    move-object/from16 v4, p10

    .line 12
    iput-object v4, v0, Lt2/b;->x:Landroid/graphics/drawable/Drawable;

    move/from16 v4, p11

    .line 13
    iput v4, v0, Lt2/b;->f:I

    move-object/from16 v4, p14

    .line 14
    iput-object v4, v0, Lt2/b;->p:Lt2/f;

    move-object/from16 v4, p15

    .line 15
    iput-object v4, v0, Lt2/b;->j:Lt2/d;

    move-object/from16 v4, p16

    .line 16
    iput-object v4, v0, Lt2/b;->r:Lb2/c;

    .line 17
    iput-object v2, v0, Lt2/b;->h:Lz1/g;

    move-object/from16 v4, p18

    .line 18
    iput-object v4, v0, Lt2/b;->l:Ljava/lang/Class;

    move/from16 v4, p19

    .line 19
    iput-boolean v4, v0, Lt2/b;->m:Z

    move-object/from16 v4, p20

    .line 20
    iput-object v4, v0, Lt2/b;->s:Lu2/d;

    move/from16 v4, p21

    .line 21
    iput v4, v0, Lt2/b;->t:I

    move/from16 v4, p22

    .line 22
    iput v4, v0, Lt2/b;->u:I

    move-object/from16 v4, p23

    .line 23
    iput-object v4, v0, Lt2/b;->v:Lb2/b;

    .line 24
    sget-object v5, Lt2/b$a;->o:Lt2/b$a;

    iput-object v5, v0, Lt2/b;->C:Lt2/b$a;

    if-eqz v1, :cond_c0

    .line 25
    invoke-interface {p1}, Ls2/f;->h()Lg2/l;

    move-result-object v1

    const-string v5, "ModelLoader"

    const-string v6, "try .using(ModelLoader)"

    invoke-static {v5, v1, v6}, Lt2/b;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-interface {p1}, Ls2/f;->b()Lp2/c;

    move-result-object v1

    const-string v5, "Transcoder"

    const-string v6, "try .as*(Class).transcode(ResourceTranscoder)"

    invoke-static {v5, v1, v6}, Lt2/b;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Transformation"

    const-string v5, "try .transform(UnitTransformation.get())"

    .line 27
    invoke-static {v1, v2, v5}, Lt2/b;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual/range {p23 .. p23}, Lb2/b;->e()Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 29
    invoke-interface {p1}, Ls2/b;->a()Lz1/b;

    move-result-object v1

    const-string v2, "SourceEncoder"

    const-string v5, "try .sourceEncoder(Encoder) or .diskCacheStrategy(NONE/RESULT)"

    invoke-static {v2, v1, v5}, Lt2/b;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_98

    .line 30
    :cond_8d
    invoke-interface {p1}, Ls2/b;->f()Lz1/e;

    move-result-object v1

    const-string v2, "SourceDecoder"

    const-string v5, "try .decoder/.imageDecoder/.videoDecoder(ResourceDecoder) or .diskCacheStrategy(ALL/SOURCE)"

    invoke-static {v2, v1, v5}, Lt2/b;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    :goto_98
    invoke-virtual/range {p23 .. p23}, Lb2/b;->e()Z

    move-result v1

    if-nez v1, :cond_a4

    invoke-virtual/range {p23 .. p23}, Lb2/b;->c()Z

    move-result v1

    if-eqz v1, :cond_af

    .line 32
    :cond_a4
    invoke-interface {p1}, Ls2/b;->g()Lz1/e;

    move-result-object v1

    const-string v2, "CacheDecoder"

    const-string v5, "try .cacheDecoder(ResouceDecoder) or .diskCacheStrategy(NONE)"

    invoke-static {v2, v1, v5}, Lt2/b;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    :cond_af
    invoke-virtual/range {p23 .. p23}, Lb2/b;->c()Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 34
    invoke-interface {p1}, Ls2/b;->d()Lz1/f;

    move-result-object v1

    const-string v2, "Encoder"

    const-string v3, "try .encode(ResourceEncoder) or .diskCacheStrategy(NONE/SOURCE)"

    invoke-static {v2, v1, v3}, Lt2/b;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_c0
    return-void
.end method

.method private s()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lt2/b;->j:Lt2/d;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lt2/d;->d()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private t(Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " this: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lt2/b;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GenericRequest"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private u()V
    .registers 2

    .line 1
    iget-object v0, p0, Lt2/b;->j:Lt2/d;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p0}, Lt2/d;->g(Lt2/c;)V

    :cond_7
    return-void
.end method

.method public static v(Ls2/f;Ljava/lang/Object;Lz1/c;Landroid/content/Context;Lv1/i;Lv2/j;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILt2/f;Lt2/d;Lb2/c;Lz1/g;Ljava/lang/Class;ZLu2/d;IILb2/b;)Lt2/b;
    .registers 48
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ls2/f<",
            "TA;TT;TZ;TR;>;TA;",
            "Lz1/c;",
            "Landroid/content/Context;",
            "Lv1/i;",
            "Lv2/j<",
            "TR;>;F",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Lt2/f<",
            "-TA;TR;>;",
            "Lt2/d;",
            "Lb2/c;",
            "Lz1/g<",
            "TZ;>;",
            "Ljava/lang/Class<",
            "TR;>;Z",
            "Lu2/d<",
            "TR;>;II",
            "Lb2/b;",
            ")",
            "Lt2/b<",
            "TA;TT;TZ;TR;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lt2/b;->D:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt2/b;

    if-nez v0, :cond_f

    .line 2
    new-instance v0, Lt2/b;

    invoke-direct {v0}, Lt2/b;-><init>()V

    :cond_f
    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move/from16 v20, p18

    move-object/from16 v21, p19

    move/from16 v22, p20

    move/from16 v23, p21

    move-object/from16 v24, p22

    .line 3
    invoke-direct/range {v1 .. v24}, Lt2/b;->q(Ls2/f;Ljava/lang/Object;Lz1/c;Landroid/content/Context;Lv1/i;Lv2/j;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILt2/f;Lt2/d;Lb2/c;Lz1/g;Ljava/lang/Class;ZLu2/d;IILb2/b;)V

    return-object v0
.end method

.method private w(Lb2/l;Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb2/l<",
            "*>;TR;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lt2/b;->s()Z

    move-result v6

    .line 2
    sget-object v0, Lt2/b$a;->r:Lt2/b$a;

    iput-object v0, p0, Lt2/b;->C:Lt2/b$a;

    .line 3
    iput-object p1, p0, Lt2/b;->z:Lb2/l;

    .line 4
    iget-object v0, p0, Lt2/b;->p:Lt2/f;

    if-eqz v0, :cond_1c

    iget-object v2, p0, Lt2/b;->k:Ljava/lang/Object;

    iget-object v3, p0, Lt2/b;->o:Lv2/j;

    iget-boolean v4, p0, Lt2/b;->y:Z

    move-object v1, p2

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lt2/f;->a(Ljava/lang/Object;Ljava/lang/Object;Lv2/j;ZZ)Z

    move-result v0

    if-nez v0, :cond_29

    .line 5
    :cond_1c
    iget-object v0, p0, Lt2/b;->s:Lu2/d;

    iget-boolean v1, p0, Lt2/b;->y:Z

    invoke-interface {v0, v1, v6}, Lu2/d;->a(ZZ)Lu2/c;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lt2/b;->o:Lv2/j;

    invoke-interface {v1, p2, v0}, Lv2/j;->c(Ljava/lang/Object;Lu2/c;)V

    .line 7
    :cond_29
    invoke-direct {p0}, Lt2/b;->u()V

    const/4 p2, 0x2

    const-string v0, "GenericRequest"

    .line 8
    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_6d

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Resource ready in "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lt2/b;->B:J

    invoke-static {v0, v1}, Lx2/d;->a(J)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " size: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lb2/l;->c()I

    move-result p1

    int-to-double v0, p1

    const-wide/high16 v2, 0x3eb0000000000000L    # 9.5367431640625E-7

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " fromCache: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lt2/b;->y:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lt2/b;->t(Ljava/lang/String;)V

    :cond_6d
    return-void
.end method

.method private x(Lb2/l;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lt2/b;->r:Lb2/c;

    invoke-virtual {v0, p1}, Lb2/c;->k(Lb2/l;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lt2/b;->z:Lb2/l;

    return-void
.end method

.method private y(Ljava/lang/Exception;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lt2/b;->j()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    iget-object v0, p0, Lt2/b;->k:Ljava/lang/Object;

    if-nez v0, :cond_10

    invoke-direct {p0}, Lt2/b;->o()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-nez v0, :cond_17

    .line 3
    invoke-direct {p0}, Lt2/b;->n()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_17
    if-nez v0, :cond_1d

    .line 4
    invoke-direct {p0}, Lt2/b;->p()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5
    :cond_1d
    iget-object v1, p0, Lt2/b;->o:Lv2/j;

    invoke-interface {v1, p1, v0}, Lv2/j;->g(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 6

    const-string v0, "GenericRequest"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "load failed"

    .line 2
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3
    :cond_e
    sget-object v0, Lt2/b$a;->s:Lt2/b$a;

    iput-object v0, p0, Lt2/b;->C:Lt2/b$a;

    .line 4
    iget-object v0, p0, Lt2/b;->p:Lt2/f;

    if-eqz v0, :cond_24

    iget-object v1, p0, Lt2/b;->k:Ljava/lang/Object;

    iget-object v2, p0, Lt2/b;->o:Lv2/j;

    invoke-direct {p0}, Lt2/b;->s()Z

    move-result v3

    invoke-interface {v0, p1, v1, v2, v3}, Lt2/f;->b(Ljava/lang/Exception;Ljava/lang/Object;Lv2/j;Z)Z

    move-result v0

    if-nez v0, :cond_27

    .line 5
    :cond_24
    invoke-direct {p0, p1}, Lt2/b;->y(Ljava/lang/Exception;)V

    :cond_27
    return-void
.end method

.method public b()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lt2/b;->i:Ls2/f;

    .line 2
    iput-object v0, p0, Lt2/b;->k:Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Lt2/b;->g:Landroid/content/Context;

    .line 4
    iput-object v0, p0, Lt2/b;->o:Lv2/j;

    .line 5
    iput-object v0, p0, Lt2/b;->w:Landroid/graphics/drawable/Drawable;

    .line 6
    iput-object v0, p0, Lt2/b;->x:Landroid/graphics/drawable/Drawable;

    .line 7
    iput-object v0, p0, Lt2/b;->c:Landroid/graphics/drawable/Drawable;

    .line 8
    iput-object v0, p0, Lt2/b;->p:Lt2/f;

    .line 9
    iput-object v0, p0, Lt2/b;->j:Lt2/d;

    .line 10
    iput-object v0, p0, Lt2/b;->h:Lz1/g;

    .line 11
    iput-object v0, p0, Lt2/b;->s:Lu2/d;

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lt2/b;->y:Z

    .line 13
    iput-object v0, p0, Lt2/b;->A:Lb2/c$c;

    .line 14
    sget-object v0, Lt2/b;->D:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .registers 4

    .line 1
    invoke-static {}, Lx2/h;->b()V

    .line 2
    iget-object v0, p0, Lt2/b;->C:Lt2/b$a;

    sget-object v1, Lt2/b$a;->u:Lt2/b$a;

    if-ne v0, v1, :cond_a

    return-void

    .line 3
    :cond_a
    invoke-virtual {p0}, Lt2/b;->l()V

    .line 4
    iget-object v0, p0, Lt2/b;->z:Lb2/l;

    if-eqz v0, :cond_14

    .line 5
    invoke-direct {p0, v0}, Lt2/b;->x(Lb2/l;)V

    .line 6
    :cond_14
    invoke-direct {p0}, Lt2/b;->j()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 7
    iget-object v0, p0, Lt2/b;->o:Lv2/j;

    invoke-direct {p0}, Lt2/b;->p()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v2}, Lv2/j;->l(Landroid/graphics/drawable/Drawable;)V

    .line 8
    :cond_23
    iput-object v1, p0, Lt2/b;->C:Lt2/b$a;

    return-void
.end method

.method public d(Lb2/l;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb2/l<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_23

    .line 1
    new-instance p1, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lt2/b;->l:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " inside, but instead got null."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lt2/b;->a(Ljava/lang/Exception;)V

    return-void

    .line 2
    :cond_23
    invoke-interface {p1}, Lb2/l;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 3
    iget-object v1, p0, Lt2/b;->l:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_36

    goto :goto_48

    .line 4
    :cond_36
    invoke-direct {p0}, Lt2/b;->k()Z

    move-result v1

    if-nez v1, :cond_44

    .line 5
    invoke-direct {p0, p1}, Lt2/b;->x(Lb2/l;)V

    .line 6
    sget-object p1, Lt2/b$a;->r:Lt2/b$a;

    iput-object p1, p0, Lt2/b;->C:Lt2/b$a;

    return-void

    .line 7
    :cond_44
    invoke-direct {p0, p1, v0}, Lt2/b;->w(Lb2/l;Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_48
    :goto_48
    invoke-direct {p0, p1}, Lt2/b;->x(Lb2/l;)V

    .line 9
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected to receive an object of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lt2/b;->l:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but instead got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_6b

    :cond_6a
    move-object v4, v3

    :goto_6b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "{"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " inside Resource{"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "}."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_8b

    goto :goto_8d

    :cond_8b
    const-string v3, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    :goto_8d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lt2/b;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public e()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lt2/b;->clear()V

    .line 2
    sget-object v0, Lt2/b$a;->v:Lt2/b$a;

    iput-object v0, p0, Lt2/b;->C:Lt2/b$a;

    return-void
.end method

.method public f()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lt2/b;->i()Z

    move-result v0

    return v0
.end method

.method public g(II)V
    .registers 19

    move-object/from16 v12, p0

    const-string v13, "GenericRequest"

    const/4 v14, 0x2

    .line 1
    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got onSizeReady in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v12, Lt2/b;->B:J

    invoke-static {v1, v2}, Lx2/d;->a(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Lt2/b;->t(Ljava/lang/String;)V

    .line 3
    :cond_25
    iget-object v0, v12, Lt2/b;->C:Lt2/b$a;

    sget-object v1, Lt2/b$a;->q:Lt2/b$a;

    if-eq v0, v1, :cond_2c

    return-void

    .line 4
    :cond_2c
    sget-object v0, Lt2/b$a;->p:Lt2/b$a;

    iput-object v0, v12, Lt2/b;->C:Lt2/b$a;

    .line 5
    iget v0, v12, Lt2/b;->q:F

    move/from16 v1, p1

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 6
    iget v0, v12, Lt2/b;->q:F

    move/from16 v1, p2

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 7
    iget-object v0, v12, Lt2/b;->i:Ls2/f;

    invoke-interface {v0}, Ls2/f;->h()Lg2/l;

    move-result-object v0

    .line 8
    iget-object v1, v12, Lt2/b;->k:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lg2/l;->a(Ljava/lang/Object;II)La2/c;

    move-result-object v4

    if-nez v4, :cond_75

    .line 9
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load model: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lt2/b;->k:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Lt2/b;->a(Ljava/lang/Exception;)V

    return-void

    .line 10
    :cond_75
    iget-object v0, v12, Lt2/b;->i:Ls2/f;

    invoke-interface {v0}, Ls2/f;->b()Lp2/c;

    move-result-object v7

    .line 11
    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished setup for calling load in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v12, Lt2/b;->B:J

    invoke-static {v5, v6}, Lx2/d;->a(J)D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Lt2/b;->t(Ljava/lang/String;)V

    :cond_9b
    const/4 v15, 0x1

    .line 13
    iput-boolean v15, v12, Lt2/b;->y:Z

    .line 14
    iget-object v0, v12, Lt2/b;->r:Lb2/c;

    iget-object v1, v12, Lt2/b;->b:Lz1/c;

    iget-object v5, v12, Lt2/b;->i:Ls2/f;

    iget-object v6, v12, Lt2/b;->h:Lz1/g;

    iget-object v8, v12, Lt2/b;->n:Lv1/i;

    iget-boolean v9, v12, Lt2/b;->m:Z

    iget-object v10, v12, Lt2/b;->v:Lb2/b;

    move-object/from16 v11, p0

    invoke-virtual/range {v0 .. v11}, Lb2/c;->g(Lz1/c;IILa2/c;Ls2/b;Lz1/g;Lp2/c;Lv1/i;ZLb2/b;Lt2/g;)Lb2/c$c;

    move-result-object v0

    iput-object v0, v12, Lt2/b;->A:Lb2/c$c;

    .line 15
    iget-object v0, v12, Lt2/b;->z:Lb2/l;

    if-eqz v0, :cond_b9

    goto :goto_ba

    :cond_b9
    const/4 v15, 0x0

    :goto_ba
    iput-boolean v15, v12, Lt2/b;->y:Z

    .line 16
    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished onSizeReady in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v12, Lt2/b;->B:J

    invoke-static {v1, v2}, Lx2/d;->a(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Lt2/b;->t(Ljava/lang/String;)V

    :cond_dc
    return-void
.end method

.method public h()V
    .registers 4

    .line 1
    invoke-static {}, Lx2/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lt2/b;->B:J

    .line 2
    iget-object v0, p0, Lt2/b;->k:Ljava/lang/Object;

    if-nez v0, :cond_f

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lt2/b;->a(Ljava/lang/Exception;)V

    return-void

    .line 4
    :cond_f
    sget-object v0, Lt2/b$a;->q:Lt2/b$a;

    iput-object v0, p0, Lt2/b;->C:Lt2/b$a;

    .line 5
    iget v0, p0, Lt2/b;->t:I

    iget v1, p0, Lt2/b;->u:I

    invoke-static {v0, v1}, Lx2/h;->l(II)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 6
    iget v0, p0, Lt2/b;->t:I

    iget v1, p0, Lt2/b;->u:I

    invoke-virtual {p0, v0, v1}, Lt2/b;->g(II)V

    goto :goto_2a

    .line 7
    :cond_25
    iget-object v0, p0, Lt2/b;->o:Lv2/j;

    invoke-interface {v0, p0}, Lv2/j;->i(Lv2/h;)V

    .line 8
    :goto_2a
    invoke-virtual {p0}, Lt2/b;->i()Z

    move-result v0

    if-nez v0, :cond_45

    invoke-virtual {p0}, Lt2/b;->r()Z

    move-result v0

    if-nez v0, :cond_45

    invoke-direct {p0}, Lt2/b;->j()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 9
    iget-object v0, p0, Lt2/b;->o:Lv2/j;

    invoke-direct {p0}, Lt2/b;->p()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lv2/j;->j(Landroid/graphics/drawable/Drawable;)V

    :cond_45
    const/4 v0, 0x2

    const-string v1, "GenericRequest"

    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished run method in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lt2/b;->B:J

    invoke-static {v1, v2}, Lx2/d;->a(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lt2/b;->t(Ljava/lang/String;)V

    :cond_68
    return-void
.end method

.method public i()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lt2/b;->C:Lt2/b$a;

    sget-object v1, Lt2/b$a;->r:Lt2/b$a;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isCancelled()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lt2/b;->C:Lt2/b$a;

    sget-object v1, Lt2/b$a;->t:Lt2/b$a;

    if-eq v0, v1, :cond_d

    sget-object v1, Lt2/b$a;->u:Lt2/b$a;

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public isRunning()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lt2/b;->C:Lt2/b$a;

    sget-object v1, Lt2/b$a;->p:Lt2/b$a;

    if-eq v0, v1, :cond_d

    sget-object v1, Lt2/b$a;->q:Lt2/b$a;

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method l()V
    .registers 2

    .line 1
    sget-object v0, Lt2/b$a;->t:Lt2/b$a;

    iput-object v0, p0, Lt2/b;->C:Lt2/b$a;

    .line 2
    iget-object v0, p0, Lt2/b;->A:Lb2/c$c;

    if-eqz v0, :cond_e

    .line 3
    invoke-virtual {v0}, Lb2/c$c;->a()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lt2/b;->A:Lb2/c$c;

    :cond_e
    return-void
.end method

.method public r()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lt2/b;->C:Lt2/b$a;

    sget-object v1, Lt2/b$a;->s:Lt2/b$a;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

###### Class t2.b.a (t2.b$a)
.class final enum Lt2/b$a;
.super Ljava/lang/Enum;
.source "GenericRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lt2/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Lt2/b$a;

.field public static final enum p:Lt2/b$a;

.field public static final enum q:Lt2/b$a;

.field public static final enum r:Lt2/b$a;

.field public static final enum s:Lt2/b$a;

.field public static final enum t:Lt2/b$a;

.field public static final enum u:Lt2/b$a;

.field public static final enum v:Lt2/b$a;

.field private static final synthetic w:[Lt2/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 1
    new-instance v0, Lt2/b$a;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lt2/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lt2/b$a;->o:Lt2/b$a;

    .line 2
    new-instance v1, Lt2/b$a;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lt2/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lt2/b$a;->p:Lt2/b$a;

    .line 3
    new-instance v3, Lt2/b$a;

    const-string v5, "WAITING_FOR_SIZE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lt2/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lt2/b$a;->q:Lt2/b$a;

    .line 4
    new-instance v5, Lt2/b$a;

    const-string v7, "COMPLETE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lt2/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lt2/b$a;->r:Lt2/b$a;

    .line 5
    new-instance v7, Lt2/b$a;

    const-string v9, "FAILED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lt2/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lt2/b$a;->s:Lt2/b$a;

    .line 6
    new-instance v9, Lt2/b$a;

    const-string v11, "CANCELLED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lt2/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lt2/b$a;->t:Lt2/b$a;

    .line 7
    new-instance v11, Lt2/b$a;

    const-string v13, "CLEARED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lt2/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lt2/b$a;->u:Lt2/b$a;

    .line 8
    new-instance v13, Lt2/b$a;

    const-string v15, "PAUSED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lt2/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lt2/b$a;->v:Lt2/b$a;

    const/16 v15, 0x8

    new-array v15, v15, [Lt2/b$a;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 9
    sput-object v15, Lt2/b$a;->w:[Lt2/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lt2/b$a;
    .registers 2

    .line 1
    const-class v0, Lt2/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lt2/b$a;

    return-object p0
.end method

.method public static values()[Lt2/b$a;
    .registers 1

    .line 1
    sget-object v0, Lt2/b$a;->w:[Lt2/b$a;

    invoke-virtual {v0}, [Lt2/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lt2/b$a;

    return-object v0
.end method
