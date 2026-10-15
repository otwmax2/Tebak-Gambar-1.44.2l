###### Class v1.e (v1.e)
.class public Lv1/e;
.super Ljava/lang/Object;
.source "GenericRequestBuilder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        "TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private A:Lt2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt2/f<",
            "-TModelType;TTranscodeType;>;"
        }
    .end annotation
.end field

.field private B:Ljava/lang/Float;

.field private C:Lv1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv1/e<",
            "***TTranscodeType;>;"
        }
    .end annotation
.end field

.field private D:Ljava/lang/Float;

.field private E:Landroid/graphics/drawable/Drawable;

.field private F:Landroid/graphics/drawable/Drawable;

.field private G:Lv1/i;

.field private H:Z

.field private I:Lu2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu2/d<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private J:I

.field private K:I

.field private L:Lb2/b;

.field private M:Lz1/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/g<",
            "TResourceType;>;"
        }
    .end annotation
.end field

.field private N:Z

.field private O:Z

.field private P:Landroid/graphics/drawable/Drawable;

.field private Q:I

.field protected final o:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TModelType;>;"
        }
    .end annotation
.end field

.field protected final p:Landroid/content/Context;

.field protected final q:Lv1/g;

.field protected final r:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field protected final s:Lq2/m;

.field protected final t:Lq2/g;

.field private u:Ls2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls2/a<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation
.end field

.field private v:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModelType;"
        }
    .end annotation
.end field

.field private w:Lz1/c;

.field private x:Z

.field private y:I

.field private z:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ls2/f;Ljava/lang/Class;Lv1/g;Lq2/m;Lq2/g;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TModelType;>;",
            "Ls2/f<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lv1/g;",
            "Lq2/m;",
            "Lq2/g;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {}, Lw2/b;->b()Lw2/b;

    move-result-object v0

    iput-object v0, p0, Lv1/e;->w:Lz1/c;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lv1/e;->D:Ljava/lang/Float;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lv1/e;->G:Lv1/i;

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lv1/e;->H:Z

    .line 12
    invoke-static {}, Lu2/e;->d()Lu2/d;

    move-result-object v1

    iput-object v1, p0, Lv1/e;->I:Lu2/d;

    const/4 v1, -0x1

    .line 13
    iput v1, p0, Lv1/e;->J:I

    .line 14
    iput v1, p0, Lv1/e;->K:I

    .line 15
    sget-object v1, Lb2/b;->t:Lb2/b;

    iput-object v1, p0, Lv1/e;->L:Lb2/b;

    .line 16
    invoke-static {}, Lj2/d;->c()Lj2/d;

    move-result-object v1

    iput-object v1, p0, Lv1/e;->M:Lz1/g;

    .line 17
    iput-object p1, p0, Lv1/e;->p:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lv1/e;->o:Ljava/lang/Class;

    .line 19
    iput-object p4, p0, Lv1/e;->r:Ljava/lang/Class;

    .line 20
    iput-object p5, p0, Lv1/e;->q:Lv1/g;

    .line 21
    iput-object p6, p0, Lv1/e;->s:Lq2/m;

    .line 22
    iput-object p7, p0, Lv1/e;->t:Lq2/g;

    if-eqz p3, :cond_3f

    .line 23
    new-instance v0, Ls2/a;

    invoke-direct {v0, p3}, Ls2/a;-><init>(Ls2/f;)V

    :cond_3f
    iput-object v0, p0, Lv1/e;->u:Ls2/a;

    const-string p4, "Context can\'t be null"

    .line 24
    invoke-static {p1, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_4d

    const-string p1, "LoadProvider must not be null"

    .line 25
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_4d
    return-void
.end method

.method constructor <init>(Ls2/f;Ljava/lang/Class;Lv1/e;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls2/f<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lv1/e<",
            "TModelType;***>;)V"
        }
    .end annotation

    .line 1
    iget-object v1, p3, Lv1/e;->p:Landroid/content/Context;

    iget-object v2, p3, Lv1/e;->o:Ljava/lang/Class;

    iget-object v5, p3, Lv1/e;->q:Lv1/g;

    iget-object v6, p3, Lv1/e;->s:Lq2/m;

    iget-object v7, p3, Lv1/e;->t:Lq2/g;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lv1/e;-><init>(Landroid/content/Context;Ljava/lang/Class;Ls2/f;Ljava/lang/Class;Lv1/g;Lq2/m;Lq2/g;)V

    .line 2
    iget-object p1, p3, Lv1/e;->v:Ljava/lang/Object;

    iput-object p1, p0, Lv1/e;->v:Ljava/lang/Object;

    .line 3
    iget-boolean p1, p3, Lv1/e;->x:Z

    iput-boolean p1, p0, Lv1/e;->x:Z

    .line 4
    iget-object p1, p3, Lv1/e;->w:Lz1/c;

    iput-object p1, p0, Lv1/e;->w:Lz1/c;

    .line 5
    iget-object p1, p3, Lv1/e;->L:Lb2/b;

    iput-object p1, p0, Lv1/e;->L:Lb2/b;

    .line 6
    iget-boolean p1, p3, Lv1/e;->H:Z

    iput-boolean p1, p0, Lv1/e;->H:Z

    return-void
.end method

.method private f(Lv2/j;)Lt2/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/j<",
            "TTranscodeType;>;)",
            "Lt2/c;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv1/e;->G:Lv1/i;

    if-nez v0, :cond_8

    .line 2
    sget-object v0, Lv1/i;->q:Lv1/i;

    iput-object v0, p0, Lv1/e;->G:Lv1/i;

    :cond_8
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lv1/e;->g(Lv2/j;Lt2/h;)Lt2/c;

    move-result-object p1

    return-object p1
.end method

.method private g(Lv2/j;Lt2/h;)Lt2/c;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/j<",
            "TTranscodeType;>;",
            "Lt2/h;",
            ")",
            "Lt2/c;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv1/e;->C:Lv1/e;

    if-eqz v0, :cond_6e

    .line 2
    iget-boolean v1, p0, Lv1/e;->O:Z

    if-nez v1, :cond_66

    .line 3
    iget-object v0, v0, Lv1/e;->I:Lu2/d;

    invoke-static {}, Lu2/e;->d()Lu2/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4
    iget-object v0, p0, Lv1/e;->C:Lv1/e;

    iget-object v1, p0, Lv1/e;->I:Lu2/d;

    iput-object v1, v0, Lv1/e;->I:Lu2/d;

    .line 5
    :cond_1a
    iget-object v0, p0, Lv1/e;->C:Lv1/e;

    iget-object v1, v0, Lv1/e;->G:Lv1/i;

    if-nez v1, :cond_26

    .line 6
    invoke-direct {p0}, Lv1/e;->n()Lv1/i;

    move-result-object v1

    iput-object v1, v0, Lv1/e;->G:Lv1/i;

    .line 7
    :cond_26
    iget v0, p0, Lv1/e;->K:I

    iget v1, p0, Lv1/e;->J:I

    invoke-static {v0, v1}, Lx2/h;->l(II)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lv1/e;->C:Lv1/e;

    iget v1, v0, Lv1/e;->K:I

    iget v0, v0, Lv1/e;->J:I

    invoke-static {v1, v0}, Lx2/h;->l(II)Z

    move-result v0

    if-nez v0, :cond_45

    .line 8
    iget-object v0, p0, Lv1/e;->C:Lv1/e;

    iget v1, p0, Lv1/e;->K:I

    iget v2, p0, Lv1/e;->J:I

    invoke-virtual {v0, v1, v2}, Lv1/e;->u(II)Lv1/e;

    .line 9
    :cond_45
    new-instance v0, Lt2/h;

    invoke-direct {v0, p2}, Lt2/h;-><init>(Lt2/d;)V

    .line 10
    iget-object p2, p0, Lv1/e;->D:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v1, p0, Lv1/e;->G:Lv1/i;

    invoke-direct {p0, p1, p2, v1, v0}, Lv1/e;->t(Lv2/j;FLv1/i;Lt2/d;)Lt2/c;

    move-result-object p2

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lv1/e;->O:Z

    .line 12
    iget-object v1, p0, Lv1/e;->C:Lv1/e;

    invoke-direct {v1, p1, v0}, Lv1/e;->g(Lv2/j;Lt2/h;)Lt2/c;

    move-result-object p1

    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Lv1/e;->O:Z

    .line 14
    invoke-virtual {v0, p2, p1}, Lt2/h;->m(Lt2/c;Lt2/c;)V

    return-object v0

    .line 15
    :cond_66
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_6e
    iget-object v0, p0, Lv1/e;->B:Ljava/lang/Float;

    if-eqz v0, :cond_95

    .line 17
    new-instance v0, Lt2/h;

    invoke-direct {v0, p2}, Lt2/h;-><init>(Lt2/d;)V

    .line 18
    iget-object p2, p0, Lv1/e;->D:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v1, p0, Lv1/e;->G:Lv1/i;

    invoke-direct {p0, p1, p2, v1, v0}, Lv1/e;->t(Lv2/j;FLv1/i;Lt2/d;)Lt2/c;

    move-result-object p2

    .line 19
    iget-object v1, p0, Lv1/e;->B:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0}, Lv1/e;->n()Lv1/i;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, v0}, Lv1/e;->t(Lv2/j;FLv1/i;Lt2/d;)Lt2/c;

    move-result-object p1

    .line 20
    invoke-virtual {v0, p2, p1}, Lt2/h;->m(Lt2/c;Lt2/c;)V

    return-object v0

    .line 21
    :cond_95
    iget-object v0, p0, Lv1/e;->D:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lv1/e;->G:Lv1/i;

    invoke-direct {p0, p1, v0, v1, p2}, Lv1/e;->t(Lv2/j;FLv1/i;Lt2/d;)Lt2/c;

    move-result-object p1

    return-object p1
.end method

.method private n()Lv1/i;
    .registers 3

    .line 1
    iget-object v0, p0, Lv1/e;->G:Lv1/i;

    sget-object v1, Lv1/i;->r:Lv1/i;

    if-ne v0, v1, :cond_9

    .line 2
    sget-object v0, Lv1/i;->q:Lv1/i;

    goto :goto_12

    .line 3
    :cond_9
    sget-object v1, Lv1/i;->q:Lv1/i;

    if-ne v0, v1, :cond_10

    .line 4
    sget-object v0, Lv1/i;->p:Lv1/i;

    goto :goto_12

    .line 5
    :cond_10
    sget-object v0, Lv1/i;->o:Lv1/i;

    :goto_12
    return-object v0
.end method

.method private t(Lv2/j;FLv1/i;Lt2/d;)Lt2/c;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/j<",
            "TTranscodeType;>;F",
            "Lv1/i;",
            "Lt2/d;",
            ")",
            "Lt2/c;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v5, p3

    move-object/from16 v15, p4

    .line 1
    iget-object v1, v0, Lv1/e;->u:Ls2/a;

    iget-object v2, v0, Lv1/e;->v:Ljava/lang/Object;

    iget-object v3, v0, Lv1/e;->w:Lz1/c;

    iget-object v4, v0, Lv1/e;->p:Landroid/content/Context;

    iget-object v8, v0, Lv1/e;->E:Landroid/graphics/drawable/Drawable;

    iget v9, v0, Lv1/e;->y:I

    iget-object v10, v0, Lv1/e;->F:Landroid/graphics/drawable/Drawable;

    iget v11, v0, Lv1/e;->z:I

    iget-object v12, v0, Lv1/e;->P:Landroid/graphics/drawable/Drawable;

    iget v13, v0, Lv1/e;->Q:I

    iget-object v14, v0, Lv1/e;->A:Lt2/f;

    move-object/from16 p1, v1

    iget-object v1, v0, Lv1/e;->q:Lv1/g;

    invoke-virtual {v1}, Lv1/g;->p()Lb2/c;

    move-result-object v16

    iget-object v1, v0, Lv1/e;->M:Lz1/g;

    move-object/from16 v17, v1

    iget-object v1, v0, Lv1/e;->r:Ljava/lang/Class;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lv1/e;->H:Z

    move/from16 v19, v1

    iget-object v1, v0, Lv1/e;->I:Lu2/d;

    move-object/from16 v20, v1

    iget v1, v0, Lv1/e;->K:I

    move/from16 v21, v1

    iget v1, v0, Lv1/e;->J:I

    move/from16 v22, v1

    iget-object v1, v0, Lv1/e;->L:Lb2/b;

    move-object/from16 v23, v1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v23}, Lt2/b;->v(Ls2/f;Ljava/lang/Object;Lz1/c;Landroid/content/Context;Lv1/i;Lv2/j;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILt2/f;Lt2/d;Lb2/c;Lz1/g;Ljava/lang/Class;ZLu2/d;IILb2/b;)Lt2/b;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public A(Lz1/b;)Lv1/e;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/b<",
            "TDataType;>;)",
            "Lv1/e<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv1/e;->u:Ls2/a;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Ls2/a;->k(Lz1/b;)V

    :cond_7
    return-object p0
.end method

.method public varargs B([Lz1/g;)Lv1/e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lz1/g<",
            "TResourceType;>;)",
            "Lv1/e<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lv1/e;->N:Z

    .line 2
    array-length v1, p1

    if-ne v1, v0, :cond_c

    const/4 v0, 0x0

    .line 3
    aget-object p1, p1, v0

    iput-object p1, p0, Lv1/e;->M:Lz1/g;

    goto :goto_13

    .line 4
    :cond_c
    new-instance v0, Lz1/d;

    invoke-direct {v0, p1}, Lz1/d;-><init>([Lz1/g;)V

    iput-object v0, p0, Lv1/e;->M:Lz1/g;

    :goto_13
    return-object p0
.end method

.method public a(Lu2/d;)Lv1/e;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu2/d<",
            "TTranscodeType;>;)",
            "Lv1/e<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    const-string v0, "Animation factory must not be null!"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lv1/e;->I:Lu2/d;

    return-object p0
.end method

.method b()V
    .registers 1

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lv1/e;->h()Lv1/e;

    move-result-object v0

    return-object v0
.end method

.method d()V
    .registers 1

    return-void
.end method

.method public h()Lv1/e;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv1/e<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv1/e;

    .line 2
    iget-object v1, p0, Lv1/e;->u:Ls2/a;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ls2/a;->i()Ls2/a;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    iput-object v1, v0, Lv1/e;->u:Ls2/a;
    :try_end_12
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v0

    :catch_13
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public i(Lz1/e;)Lv1/e;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/e<",
            "TDataType;TResourceType;>;)",
            "Lv1/e<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv1/e;->u:Ls2/a;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Ls2/a;->j(Lz1/e;)V

    :cond_7
    return-object p0
.end method

.method public j(Lb2/b;)Lv1/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb2/b;",
            ")",
            "Lv1/e<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lv1/e;->L:Lb2/b;

    return-object p0
.end method

.method public k()Lv1/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv1/e<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lu2/e;->d()Lu2/d;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lv1/e;->a(Lu2/d;)Lv1/e;

    move-result-object v0

    return-object v0
.end method

.method public l(I)Lv1/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lv1/e<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lv1/e;->z:I

    return-object p0
.end method

.method public m(Landroid/graphics/drawable/Drawable;)Lv1/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lv1/e<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lv1/e;->F:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public o(II)Lt2/a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lt2/a<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lt2/e;

    iget-object v1, p0, Lv1/e;->q:Lv1/g;

    invoke-virtual {v1}, Lv1/g;->r()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lt2/e;-><init>(Landroid/os/Handler;II)V

    .line 2
    iget-object p1, p0, Lv1/e;->q:Lv1/g;

    invoke-virtual {p1}, Lv1/g;->r()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lv1/e$a;

    invoke-direct {p2, p0, v0}, Lv1/e$a;-><init>(Lv1/e;Lt2/e;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method public p(Landroid/widget/ImageView;)Lv2/j;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lv2/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lx2/h;->b()V

    if-eqz p1, :cond_3c

    .line 2
    iget-boolean v0, p0, Lv1/e;->N:Z

    if-nez v0, :cond_2f

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 3
    sget-object v0, Lv1/e$b;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_28

    const/4 v1, 0x3

    if-eq v0, v1, :cond_28

    const/4 v1, 0x4

    if-eq v0, v1, :cond_28

    goto :goto_2f

    .line 4
    :cond_28
    invoke-virtual {p0}, Lv1/e;->d()V

    goto :goto_2f

    .line 5
    :cond_2c
    invoke-virtual {p0}, Lv1/e;->b()V

    .line 6
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lv1/e;->q:Lv1/g;

    iget-object v1, p0, Lv1/e;->r:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lv1/g;->c(Landroid/widget/ImageView;Ljava/lang/Class;)Lv2/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv1/e;->q(Lv2/j;)Lv2/j;

    move-result-object p1

    return-object p1

    .line 7
    :cond_3c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must pass in a non null View"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q(Lv2/j;)Lv2/j;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lv2/j<",
            "TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lx2/h;->b()V

    if-eqz p1, :cond_34

    .line 2
    iget-boolean v0, p0, Lv1/e;->x:Z

    if-eqz v0, :cond_2c

    .line 3
    invoke-interface {p1}, Lv2/j;->k()Lt2/c;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 4
    invoke-interface {v0}, Lt2/c;->clear()V

    .line 5
    iget-object v1, p0, Lv1/e;->s:Lq2/m;

    invoke-virtual {v1, v0}, Lq2/m;->c(Lt2/c;)V

    .line 6
    invoke-interface {v0}, Lt2/c;->b()V

    .line 7
    :cond_1a
    invoke-direct {p0, p1}, Lv1/e;->f(Lv2/j;)Lt2/c;

    move-result-object v0

    .line 8
    invoke-interface {p1, v0}, Lv2/j;->m(Lt2/c;)V

    .line 9
    iget-object v1, p0, Lv1/e;->t:Lq2/g;

    invoke-interface {v1, p1}, Lq2/g;->a(Lq2/h;)V

    .line 10
    iget-object v1, p0, Lv1/e;->s:Lq2/m;

    invoke-virtual {v1, v0}, Lq2/m;->f(Lt2/c;)V

    return-object p1

    .line 11
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must first set a model (try #load())"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must pass in a non null Target"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r(Lt2/f;)Lv1/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt2/f<",
            "-TModelType;TTranscodeType;>;)",
            "Lv1/e<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lv1/e;->A:Lt2/f;

    return-object p0
.end method

.method public s(Ljava/lang/Object;)Lv1/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lv1/e<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lv1/e;->v:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lv1/e;->x:Z

    return-object p0
.end method

.method public u(II)Lv1/e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lv1/e<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lx2/h;->l(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    iput p1, p0, Lv1/e;->K:I

    .line 3
    iput p2, p0, Lv1/e;->J:I

    return-object p0

    .line 4
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width and height must be Target#SIZE_ORIGINAL or > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public v(I)Lv1/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lv1/e<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lv1/e;->y:I

    return-object p0
.end method

.method public w(Landroid/graphics/drawable/Drawable;)Lv1/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lv1/e<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lv1/e;->E:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public x(Lv1/i;)Lv1/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv1/i;",
            ")",
            "Lv1/e<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lv1/e;->G:Lv1/i;

    return-object p0
.end method

.method public y(Lz1/c;)Lv1/e;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/c;",
            ")",
            "Lv1/e<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    const-string v0, "Signature must not be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lv1/e;->w:Lz1/c;

    return-object p0
.end method

.method public z(Z)Lv1/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lv1/e<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    xor-int/lit8 p1, p1, 0x1

    .line 1
    iput-boolean p1, p0, Lv1/e;->H:Z

    return-object p0
.end method

###### Class v1.e.a (v1.e$a)
.class Lv1/e$a;
.super Ljava/lang/Object;
.source "GenericRequestBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv1/e;->o(II)Lt2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lt2/e;

.field final synthetic p:Lv1/e;


# direct methods
.method constructor <init>(Lv1/e;Lt2/e;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lv1/e$a;->p:Lv1/e;

    iput-object p2, p0, Lv1/e$a;->o:Lt2/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lv1/e$a;->o:Lt2/e;

    invoke-virtual {v0}, Lt2/e;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2
    iget-object v0, p0, Lv1/e$a;->p:Lv1/e;

    iget-object v1, p0, Lv1/e$a;->o:Lt2/e;

    invoke-virtual {v0, v1}, Lv1/e;->q(Lv2/j;)Lv2/j;

    :cond_f
    return-void
.end method

###### Class v1.e.b (v1.e$b)
.class synthetic Lv1/e$b;
.super Ljava/lang/Object;
.source "GenericRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lv1/e$b;->a:[I

    :try_start_9
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lv1/e$b;->a:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lv1/e$b;->a:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lv1/e$b;->a:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method
