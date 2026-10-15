###### Class t.p (t.p)
.class public abstract Lt/p;
.super Ljava/lang/Object;
.source "WidgetRun.java"

# interfaces
.implements Lt/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt/p$b;
    }
.end annotation


# instance fields
.field public a:I

.field b:Ls/e;

.field c:Lt/m;

.field protected d:Ls/e$b;

.field e:Lt/g;

.field public f:I

.field g:Z

.field public h:Lt/f;

.field public i:Lt/f;

.field protected j:Lt/p$b;


# direct methods
.method public constructor <init>(Ls/e;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lt/g;

    invoke-direct {v0, p0}, Lt/g;-><init>(Lt/p;)V

    iput-object v0, p0, Lt/p;->e:Lt/g;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lt/p;->f:I

    .line 4
    iput-boolean v0, p0, Lt/p;->g:Z

    .line 5
    new-instance v0, Lt/f;

    invoke-direct {v0, p0}, Lt/f;-><init>(Lt/p;)V

    iput-object v0, p0, Lt/p;->h:Lt/f;

    .line 6
    new-instance v0, Lt/f;

    invoke-direct {v0, p0}, Lt/f;-><init>(Lt/p;)V

    iput-object v0, p0, Lt/p;->i:Lt/f;

    .line 7
    sget-object v0, Lt/p$b;->o:Lt/p$b;

    iput-object v0, p0, Lt/p;->j:Lt/p$b;

    .line 8
    iput-object p1, p0, Lt/p;->b:Ls/e;

    return-void
.end method

.method private l(II)V
    .registers 10

    .line 1
    iget v0, p0, Lt/p;->a:I

    if-eqz v0, :cond_94

    const/4 v1, 0x1

    if-eq v0, v1, :cond_82

    const/4 p2, 0x2

    const/high16 v2, 0x3f000000    # 0.5f

    if-eq v0, p2, :cond_53

    const/4 p2, 0x3

    if-eq v0, p2, :cond_11

    goto/16 :goto_9d

    .line 2
    :cond_11
    iget-object v0, p0, Lt/p;->b:Ls/e;

    iget-object v3, v0, Ls/e;->e:Lt/l;

    iget-object v4, v3, Lt/p;->d:Ls/e$b;

    sget-object v5, Ls/e$b;->q:Ls/e$b;

    if-ne v4, v5, :cond_2b

    iget v4, v3, Lt/p;->a:I

    if-ne v4, p2, :cond_2b

    iget-object v4, v0, Ls/e;->f:Lt/n;

    iget-object v6, v4, Lt/p;->d:Ls/e$b;

    if-ne v6, v5, :cond_2b

    iget v4, v4, Lt/p;->a:I

    if-ne v4, p2, :cond_2b

    goto/16 :goto_9d

    :cond_2b
    if-nez p1, :cond_2f

    .line 3
    iget-object v3, v0, Ls/e;->f:Lt/n;

    .line 4
    :cond_2f
    iget-object p2, v3, Lt/p;->e:Lt/g;

    iget-boolean p2, p2, Lt/f;->j:Z

    if-eqz p2, :cond_9d

    .line 5
    invoke-virtual {v0}, Ls/e;->t()F

    move-result p2

    if-ne p1, v1, :cond_44

    .line 6
    iget-object p1, v3, Lt/p;->e:Lt/g;

    iget p1, p1, Lt/f;->g:I

    int-to-float p1, p1

    div-float/2addr p1, p2

    add-float/2addr p1, v2

    float-to-int p1, p1

    goto :goto_4d

    .line 7
    :cond_44
    iget-object p1, v3, Lt/p;->e:Lt/g;

    iget p1, p1, Lt/f;->g:I

    int-to-float p1, p1

    mul-float p2, p2, p1

    add-float/2addr p2, v2

    float-to-int p1, p2

    .line 8
    :goto_4d
    iget-object p2, p0, Lt/p;->e:Lt/g;

    invoke-virtual {p2, p1}, Lt/g;->d(I)V

    goto :goto_9d

    .line 9
    :cond_53
    iget-object p2, p0, Lt/p;->b:Ls/e;

    invoke-virtual {p2}, Ls/e;->I()Ls/e;

    move-result-object p2

    if-eqz p2, :cond_9d

    if-nez p1, :cond_60

    .line 10
    iget-object p2, p2, Ls/e;->e:Lt/l;

    goto :goto_62

    :cond_60
    iget-object p2, p2, Ls/e;->f:Lt/n;

    .line 11
    :goto_62
    iget-object p2, p2, Lt/p;->e:Lt/g;

    iget-boolean v0, p2, Lt/f;->j:Z

    if-eqz v0, :cond_9d

    .line 12
    iget-object v0, p0, Lt/p;->b:Ls/e;

    if-nez p1, :cond_6f

    iget v0, v0, Ls/e;->B:F

    goto :goto_71

    :cond_6f
    iget v0, v0, Ls/e;->E:F

    .line 13
    :goto_71
    iget p2, p2, Lt/f;->g:I

    int-to-float p2, p2

    mul-float p2, p2, v0

    add-float/2addr p2, v2

    float-to-int p2, p2

    .line 14
    iget-object v0, p0, Lt/p;->e:Lt/g;

    invoke-virtual {p0, p2, p1}, Lt/p;->g(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lt/g;->d(I)V

    goto :goto_9d

    .line 15
    :cond_82
    iget-object v0, p0, Lt/p;->e:Lt/g;

    iget v0, v0, Lt/g;->m:I

    invoke-virtual {p0, v0, p1}, Lt/p;->g(II)I

    move-result p1

    .line 16
    iget-object v0, p0, Lt/p;->e:Lt/g;

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lt/g;->d(I)V

    goto :goto_9d

    .line 17
    :cond_94
    iget-object v0, p0, Lt/p;->e:Lt/g;

    invoke-virtual {p0, p2, p1}, Lt/p;->g(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lt/g;->d(I)V

    :cond_9d
    :goto_9d
    return-void
.end method


# virtual methods
.method public a(Lt/d;)V
    .registers 2

    return-void
.end method

.method protected final b(Lt/f;Lt/f;I)V
    .registers 5

    .line 1
    iget-object v0, p1, Lt/f;->l:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iput p3, p1, Lt/f;->f:I

    .line 3
    iget-object p2, p2, Lt/f;->k:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final c(Lt/f;Lt/f;ILt/g;)V
    .registers 7

    .line 1
    iget-object v0, p1, Lt/f;->l:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p1, Lt/f;->l:Ljava/util/List;

    iget-object v1, p0, Lt/p;->e:Lt/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iput p3, p1, Lt/f;->h:I

    .line 4
    iput-object p4, p1, Lt/f;->i:Lt/g;

    .line 5
    iget-object p2, p2, Lt/f;->k:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p2, p4, Lt/f;->k:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method abstract d()V
.end method

.method abstract e()V
.end method

.method abstract f()V
.end method

.method protected final g(II)I
    .registers 4

    if-nez p2, :cond_15

    .line 1
    iget-object p2, p0, Lt/p;->b:Ls/e;

    iget v0, p2, Ls/e;->A:I

    .line 2
    iget p2, p2, Ls/e;->z:I

    .line 3
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lez v0, :cond_12

    .line 4
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_12
    if-eq p2, p1, :cond_28

    goto :goto_27

    .line 5
    :cond_15
    iget-object p2, p0, Lt/p;->b:Ls/e;

    iget v0, p2, Ls/e;->D:I

    .line 6
    iget p2, p2, Ls/e;->C:I

    .line 7
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lez v0, :cond_25

    .line 8
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_25
    if-eq p2, p1, :cond_28

    :goto_27
    move p1, p2

    :cond_28
    return p1
.end method

.method protected final h(Ls/d;)Lt/f;
    .registers 5

    .line 1
    iget-object p1, p1, Ls/d;->f:Ls/d;

    const/4 v0, 0x0

    if-nez p1, :cond_6

    return-object v0

    .line 2
    :cond_6
    iget-object v1, p1, Ls/d;->d:Ls/e;

    .line 3
    iget-object p1, p1, Ls/d;->e:Ls/d$b;

    .line 4
    sget-object v2, Lt/p$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_36

    const/4 v2, 0x2

    if-eq p1, v2, :cond_31

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2c

    const/4 v2, 0x4

    if-eq p1, v2, :cond_27

    const/4 v2, 0x5

    if-eq p1, v2, :cond_22

    goto :goto_3a

    .line 5
    :cond_22
    iget-object p1, v1, Ls/e;->f:Lt/n;

    .line 6
    iget-object v0, p1, Lt/p;->i:Lt/f;

    goto :goto_3a

    .line 7
    :cond_27
    iget-object p1, v1, Ls/e;->f:Lt/n;

    .line 8
    iget-object v0, p1, Lt/n;->k:Lt/f;

    goto :goto_3a

    .line 9
    :cond_2c
    iget-object p1, v1, Ls/e;->f:Lt/n;

    .line 10
    iget-object v0, p1, Lt/p;->h:Lt/f;

    goto :goto_3a

    .line 11
    :cond_31
    iget-object p1, v1, Ls/e;->e:Lt/l;

    .line 12
    iget-object v0, p1, Lt/p;->i:Lt/f;

    goto :goto_3a

    .line 13
    :cond_36
    iget-object p1, v1, Ls/e;->e:Lt/l;

    .line 14
    iget-object v0, p1, Lt/p;->h:Lt/f;

    :goto_3a
    return-object v0
.end method

.method protected final i(Ls/d;I)Lt/f;
    .registers 5

    .line 1
    iget-object p1, p1, Ls/d;->f:Ls/d;

    const/4 v0, 0x0

    if-nez p1, :cond_6

    return-object v0

    .line 2
    :cond_6
    iget-object v1, p1, Ls/d;->d:Ls/e;

    if-nez p2, :cond_d

    .line 3
    iget-object p2, v1, Ls/e;->e:Lt/l;

    goto :goto_f

    :cond_d
    iget-object p2, v1, Ls/e;->f:Lt/n;

    .line 4
    :goto_f
    iget-object p1, p1, Ls/d;->e:Ls/d$b;

    .line 5
    sget-object v1, Lt/p$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_29

    const/4 v1, 0x2

    if-eq p1, v1, :cond_26

    const/4 v1, 0x3

    if-eq p1, v1, :cond_29

    const/4 v1, 0x5

    if-eq p1, v1, :cond_26

    goto :goto_2b

    .line 6
    :cond_26
    iget-object v0, p2, Lt/p;->i:Lt/f;

    goto :goto_2b

    .line 7
    :cond_29
    iget-object v0, p2, Lt/p;->h:Lt/f;

    :goto_2b
    return-object v0
.end method

.method public j()J
    .registers 3

    .line 1
    iget-object v0, p0, Lt/p;->e:Lt/g;

    iget-boolean v1, v0, Lt/f;->j:Z

    if-eqz v1, :cond_a

    .line 2
    iget v0, v0, Lt/f;->g:I

    int-to-long v0, v0

    return-wide v0

    :cond_a
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public k()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lt/p;->g:Z

    return v0
.end method

.method abstract m()Z
.end method

.method protected n(Lt/d;Ls/d;Ls/d;I)V
    .registers 9

    .line 1
    invoke-virtual {p0, p2}, Lt/p;->h(Ls/d;)Lt/f;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p3}, Lt/p;->h(Ls/d;)Lt/f;

    move-result-object v0

    .line 3
    iget-boolean v1, p1, Lt/f;->j:Z

    if-eqz v1, :cond_7d

    iget-boolean v1, v0, Lt/f;->j:Z

    if-nez v1, :cond_11

    goto :goto_7d

    .line 4
    :cond_11
    iget v1, p1, Lt/f;->g:I

    invoke-virtual {p2}, Ls/d;->e()I

    move-result p2

    add-int/2addr v1, p2

    .line 5
    iget p2, v0, Lt/f;->g:I

    invoke-virtual {p3}, Ls/d;->e()I

    move-result p3

    sub-int/2addr p2, p3

    sub-int p3, p2, v1

    .line 6
    iget-object v2, p0, Lt/p;->e:Lt/g;

    iget-boolean v2, v2, Lt/f;->j:Z

    if-nez v2, :cond_30

    iget-object v2, p0, Lt/p;->d:Ls/e$b;

    sget-object v3, Ls/e$b;->q:Ls/e$b;

    if-ne v2, v3, :cond_30

    .line 7
    invoke-direct {p0, p4, p3}, Lt/p;->l(II)V

    .line 8
    :cond_30
    iget-object v2, p0, Lt/p;->e:Lt/g;

    iget-boolean v3, v2, Lt/f;->j:Z

    if-nez v3, :cond_37

    return-void

    .line 9
    :cond_37
    iget v2, v2, Lt/f;->g:I

    if-ne v2, p3, :cond_46

    .line 10
    iget-object p1, p0, Lt/p;->h:Lt/f;

    invoke-virtual {p1, v1}, Lt/f;->d(I)V

    .line 11
    iget-object p1, p0, Lt/p;->i:Lt/f;

    invoke-virtual {p1, p2}, Lt/f;->d(I)V

    return-void

    .line 12
    :cond_46
    iget-object p3, p0, Lt/p;->b:Ls/e;

    if-nez p4, :cond_4f

    invoke-virtual {p3}, Ls/e;->w()F

    move-result p3

    goto :goto_53

    .line 13
    :cond_4f
    invoke-virtual {p3}, Ls/e;->P()F

    move-result p3

    :goto_53
    const/high16 p4, 0x3f000000    # 0.5f

    if-ne p1, v0, :cond_5d

    .line 14
    iget v1, p1, Lt/f;->g:I

    .line 15
    iget p2, v0, Lt/f;->g:I

    const/high16 p3, 0x3f000000    # 0.5f

    :cond_5d
    sub-int/2addr p2, v1

    .line 16
    iget-object p1, p0, Lt/p;->e:Lt/g;

    iget p1, p1, Lt/f;->g:I

    sub-int/2addr p2, p1

    .line 17
    iget-object p1, p0, Lt/p;->h:Lt/f;

    int-to-float v0, v1

    add-float/2addr v0, p4

    int-to-float p2, p2

    mul-float p2, p2, p3

    add-float/2addr v0, p2

    float-to-int p2, v0

    invoke-virtual {p1, p2}, Lt/f;->d(I)V

    .line 18
    iget-object p1, p0, Lt/p;->i:Lt/f;

    iget-object p2, p0, Lt/p;->h:Lt/f;

    iget p2, p2, Lt/f;->g:I

    iget-object p3, p0, Lt/p;->e:Lt/g;

    iget p3, p3, Lt/f;->g:I

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lt/f;->d(I)V

    :cond_7d
    :goto_7d
    return-void
.end method

.method protected o(Lt/d;)V
    .registers 2

    return-void
.end method

.method protected p(Lt/d;)V
    .registers 2

    return-void
.end method

###### Class t.p.a (t.p$a)
.class synthetic Lt/p$a;
.super Ljava/lang/Object;
.source "WidgetRun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt/p;
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
    invoke-static {}, Ls/d$b;->values()[Ls/d$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lt/p$a;->a:[I

    :try_start_9
    sget-object v1, Ls/d$b;->p:Ls/d$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lt/p$a;->a:[I

    sget-object v1, Ls/d$b;->r:Ls/d$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lt/p$a;->a:[I

    sget-object v1, Ls/d$b;->q:Ls/d$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lt/p$a;->a:[I

    sget-object v1, Ls/d$b;->t:Ls/d$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lt/p$a;->a:[I

    sget-object v1, Ls/d$b;->s:Ls/d$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    return-void
.end method

###### Class t.p.b (t.p$b)
.class final enum Lt/p$b;
.super Ljava/lang/Enum;
.source "WidgetRun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lt/p$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Lt/p$b;

.field public static final enum p:Lt/p$b;

.field public static final enum q:Lt/p$b;

.field public static final enum r:Lt/p$b;

.field private static final synthetic s:[Lt/p$b;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, Lt/p$b;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lt/p$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lt/p$b;->o:Lt/p$b;

    new-instance v1, Lt/p$b;

    const-string v3, "START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lt/p$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lt/p$b;->p:Lt/p$b;

    new-instance v3, Lt/p$b;

    const-string v5, "END"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lt/p$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lt/p$b;->q:Lt/p$b;

    new-instance v5, Lt/p$b;

    const-string v7, "CENTER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lt/p$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lt/p$b;->r:Lt/p$b;

    const/4 v7, 0x4

    new-array v7, v7, [Lt/p$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lt/p$b;->s:[Lt/p$b;

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

.method public static valueOf(Ljava/lang/String;)Lt/p$b;
    .registers 2

    .line 1
    const-class v0, Lt/p$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lt/p$b;

    return-object p0
.end method

.method public static values()[Lt/p$b;
    .registers 1

    .line 1
    sget-object v0, Lt/p$b;->s:[Lt/p$b;

    invoke-virtual {v0}, [Lt/p$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lt/p$b;

    return-object v0
.end method
