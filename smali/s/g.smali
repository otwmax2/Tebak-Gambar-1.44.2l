###### Class s.g (s.g)
.class public Ls/g;
.super Ls/e;
.source "Guideline.java"


# instance fields
.field protected K0:F

.field protected L0:I

.field protected M0:I

.field protected N0:Z

.field private O0:Ls/d;

.field private P0:I

.field private Q0:I

.field private R0:Z


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 1
    invoke-direct {p0}, Ls/e;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Ls/g;->K0:F

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Ls/g;->L0:I

    .line 4
    iput v0, p0, Ls/g;->M0:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Ls/g;->N0:Z

    .line 6
    iget-object v0, p0, Ls/e;->P:Ls/d;

    iput-object v0, p0, Ls/g;->O0:Ls/d;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Ls/g;->P0:I

    .line 8
    iput v0, p0, Ls/g;->Q0:I

    .line 9
    iget-object v1, p0, Ls/e;->X:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 10
    iget-object v1, p0, Ls/e;->X:Ljava/util/ArrayList;

    iget-object v2, p0, Ls/g;->O0:Ls/d;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v1, p0, Ls/e;->W:[Ls/d;

    array-length v1, v1

    :goto_27
    if-ge v0, v1, :cond_32

    .line 12
    iget-object v2, p0, Ls/e;->W:[Ls/d;

    iget-object v3, p0, Ls/g;->O0:Ls/d;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_32
    return-void
.end method


# virtual methods
.method public g(Lp/d;Z)V
    .registers 10

    .line 1
    invoke-virtual {p0}, Ls/e;->I()Ls/e;

    move-result-object p2

    check-cast p2, Ls/f;

    if-nez p2, :cond_9

    return-void

    .line 2
    :cond_9
    sget-object v0, Ls/d$b;->p:Ls/d$b;

    invoke-virtual {p2, v0}, Ls/e;->m(Ls/d$b;)Ls/d;

    move-result-object v0

    .line 3
    sget-object v1, Ls/d$b;->r:Ls/d$b;

    invoke-virtual {p2, v1}, Ls/e;->m(Ls/d$b;)Ls/d;

    move-result-object v1

    .line 4
    iget-object v2, p0, Ls/e;->a0:Ls/e;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_25

    iget-object v2, v2, Ls/e;->Z:[Ls/e$b;

    aget-object v2, v2, v4

    sget-object v5, Ls/e$b;->p:Ls/e$b;

    if-ne v2, v5, :cond_25

    const/4 v2, 0x1

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    .line 5
    :goto_26
    iget v5, p0, Ls/g;->P0:I

    if-nez v5, :cond_45

    .line 6
    sget-object v0, Ls/d$b;->q:Ls/d$b;

    invoke-virtual {p2, v0}, Ls/e;->m(Ls/d$b;)Ls/d;

    move-result-object v0

    .line 7
    sget-object v1, Ls/d$b;->s:Ls/d$b;

    invoke-virtual {p2, v1}, Ls/e;->m(Ls/d$b;)Ls/d;

    move-result-object v1

    .line 8
    iget-object p2, p0, Ls/e;->a0:Ls/e;

    if-eqz p2, :cond_43

    iget-object p2, p2, Ls/e;->Z:[Ls/e$b;

    aget-object p2, p2, v3

    sget-object v2, Ls/e$b;->p:Ls/e$b;

    if-ne p2, v2, :cond_43

    goto :goto_44

    :cond_43
    const/4 v3, 0x0

    :goto_44
    move v2, v3

    .line 9
    :cond_45
    iget-boolean p2, p0, Ls/g;->R0:Z

    const/4 v3, -0x1

    const/4 v5, 0x5

    if-eqz p2, :cond_87

    iget-object p2, p0, Ls/g;->O0:Ls/d;

    invoke-virtual {p2}, Ls/d;->m()Z

    move-result p2

    if-eqz p2, :cond_87

    .line 10
    iget-object p2, p0, Ls/g;->O0:Ls/d;

    invoke-virtual {p1, p2}, Lp/d;->q(Ljava/lang/Object;)Lp/i;

    move-result-object p2

    .line 11
    iget-object v6, p0, Ls/g;->O0:Ls/d;

    invoke-virtual {v6}, Ls/d;->d()I

    move-result v6

    invoke-virtual {p1, p2, v6}, Lp/d;->f(Lp/i;I)V

    .line 12
    iget v6, p0, Ls/g;->L0:I

    if-eq v6, v3, :cond_70

    if-eqz v2, :cond_84

    .line 13
    invoke-virtual {p1, v1}, Lp/d;->q(Ljava/lang/Object;)Lp/i;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v4, v5}, Lp/d;->h(Lp/i;Lp/i;II)V

    goto :goto_84

    .line 14
    :cond_70
    iget v6, p0, Ls/g;->M0:I

    if-eq v6, v3, :cond_84

    if-eqz v2, :cond_84

    .line 15
    invoke-virtual {p1, v1}, Lp/d;->q(Ljava/lang/Object;)Lp/i;

    move-result-object v1

    .line 16
    invoke-virtual {p1, v0}, Lp/d;->q(Ljava/lang/Object;)Lp/i;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4, v5}, Lp/d;->h(Lp/i;Lp/i;II)V

    .line 17
    invoke-virtual {p1, v1, p2, v4, v5}, Lp/d;->h(Lp/i;Lp/i;II)V

    .line 18
    :cond_84
    :goto_84
    iput-boolean v4, p0, Ls/g;->R0:Z

    return-void

    .line 19
    :cond_87
    iget p2, p0, Ls/g;->L0:I

    const/16 v6, 0x8

    if-eq p2, v3, :cond_a6

    .line 20
    iget-object p2, p0, Ls/g;->O0:Ls/d;

    invoke-virtual {p1, p2}, Lp/d;->q(Ljava/lang/Object;)Lp/i;

    move-result-object p2

    .line 21
    invoke-virtual {p1, v0}, Lp/d;->q(Ljava/lang/Object;)Lp/i;

    move-result-object v0

    .line 22
    iget v3, p0, Ls/g;->L0:I

    invoke-virtual {p1, p2, v0, v3, v6}, Lp/d;->e(Lp/i;Lp/i;II)Lp/b;

    if-eqz v2, :cond_e2

    .line 23
    invoke-virtual {p1, v1}, Lp/d;->q(Ljava/lang/Object;)Lp/i;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v4, v5}, Lp/d;->h(Lp/i;Lp/i;II)V

    goto :goto_e2

    .line 24
    :cond_a6
    iget p2, p0, Ls/g;->M0:I

    if-eq p2, v3, :cond_c7

    .line 25
    iget-object p2, p0, Ls/g;->O0:Ls/d;

    invoke-virtual {p1, p2}, Lp/d;->q(Ljava/lang/Object;)Lp/i;

    move-result-object p2

    .line 26
    invoke-virtual {p1, v1}, Lp/d;->q(Ljava/lang/Object;)Lp/i;

    move-result-object v1

    .line 27
    iget v3, p0, Ls/g;->M0:I

    neg-int v3, v3

    invoke-virtual {p1, p2, v1, v3, v6}, Lp/d;->e(Lp/i;Lp/i;II)Lp/b;

    if-eqz v2, :cond_e2

    .line 28
    invoke-virtual {p1, v0}, Lp/d;->q(Ljava/lang/Object;)Lp/i;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4, v5}, Lp/d;->h(Lp/i;Lp/i;II)V

    .line 29
    invoke-virtual {p1, v1, p2, v4, v5}, Lp/d;->h(Lp/i;Lp/i;II)V

    goto :goto_e2

    .line 30
    :cond_c7
    iget p2, p0, Ls/g;->K0:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_e2

    .line 31
    iget-object p2, p0, Ls/g;->O0:Ls/d;

    invoke-virtual {p1, p2}, Lp/d;->q(Ljava/lang/Object;)Lp/i;

    move-result-object p2

    .line 32
    invoke-virtual {p1, v1}, Lp/d;->q(Ljava/lang/Object;)Lp/i;

    move-result-object v0

    .line 33
    iget v1, p0, Ls/g;->K0:F

    .line 34
    invoke-static {p1, p2, v0, v1}, Lp/d;->s(Lp/d;Lp/i;Lp/i;F)Lp/b;

    move-result-object p2

    .line 35
    invoke-virtual {p1, p2}, Lp/d;->d(Lp/b;)V

    :cond_e2
    :goto_e2
    return-void
.end method

.method public h()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public l0()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Ls/g;->R0:Z

    return v0
.end method

.method public m(Ls/d$b;)Ls/d;
    .registers 4

    .line 1
    sget-object v0, Ls/g$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1c

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1c

    const/4 v0, 0x3

    if-eq p1, v0, :cond_15

    const/4 v0, 0x4

    if-eq p1, v0, :cond_15

    goto :goto_23

    .line 2
    :cond_15
    iget p1, p0, Ls/g;->P0:I

    if-nez p1, :cond_23

    .line 3
    iget-object p1, p0, Ls/g;->O0:Ls/d;

    return-object p1

    .line 4
    :cond_1c
    iget p1, p0, Ls/g;->P0:I

    if-ne p1, v0, :cond_23

    .line 5
    iget-object p1, p0, Ls/g;->O0:Ls/d;

    return-object p1

    :cond_23
    :goto_23
    const/4 p1, 0x0

    return-object p1
.end method

.method public m0()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Ls/g;->R0:Z

    return v0
.end method

.method public n1(Lp/d;Z)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Ls/e;->I()Ls/e;

    move-result-object p2

    if-nez p2, :cond_7

    return-void

    .line 2
    :cond_7
    iget-object p2, p0, Ls/g;->O0:Ls/d;

    invoke-virtual {p1, p2}, Lp/d;->x(Ljava/lang/Object;)I

    move-result p1

    .line 3
    iget p2, p0, Ls/g;->P0:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_28

    .line 4
    invoke-virtual {p0, p1}, Ls/e;->j1(I)V

    .line 5
    invoke-virtual {p0, v1}, Ls/e;->k1(I)V

    .line 6
    invoke-virtual {p0}, Ls/e;->I()Ls/e;

    move-result-object p1

    invoke-virtual {p1}, Ls/e;->v()I

    move-result p1

    invoke-virtual {p0, p1}, Ls/e;->I0(I)V

    .line 7
    invoke-virtual {p0, v1}, Ls/e;->h1(I)V

    goto :goto_3c

    .line 8
    :cond_28
    invoke-virtual {p0, v1}, Ls/e;->j1(I)V

    .line 9
    invoke-virtual {p0, p1}, Ls/e;->k1(I)V

    .line 10
    invoke-virtual {p0}, Ls/e;->I()Ls/e;

    move-result-object p1

    invoke-virtual {p1}, Ls/e;->U()I

    move-result p1

    invoke-virtual {p0, p1}, Ls/e;->h1(I)V

    .line 11
    invoke-virtual {p0, v1}, Ls/e;->I0(I)V

    :goto_3c
    return-void
.end method

.method public o1()Ls/d;
    .registers 2

    .line 1
    iget-object v0, p0, Ls/g;->O0:Ls/d;

    return-object v0
.end method

.method public p1()I
    .registers 2

    .line 1
    iget v0, p0, Ls/g;->P0:I

    return v0
.end method

.method public q1()I
    .registers 2

    .line 1
    iget v0, p0, Ls/g;->L0:I

    return v0
.end method

.method public r1()I
    .registers 2

    .line 1
    iget v0, p0, Ls/g;->M0:I

    return v0
.end method

.method public s1()F
    .registers 2

    .line 1
    iget v0, p0, Ls/g;->K0:F

    return v0
.end method

.method public t1(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Ls/g;->O0:Ls/d;

    invoke-virtual {v0, p1}, Ls/d;->s(I)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Ls/g;->R0:Z

    return-void
.end method

.method public u1(I)V
    .registers 4

    const/4 v0, -0x1

    if-le p1, v0, :cond_b

    const/high16 v1, -0x40800000    # -1.0f

    .line 1
    iput v1, p0, Ls/g;->K0:F

    .line 2
    iput p1, p0, Ls/g;->L0:I

    .line 3
    iput v0, p0, Ls/g;->M0:I

    :cond_b
    return-void
.end method

.method public v1(I)V
    .registers 4

    const/4 v0, -0x1

    if-le p1, v0, :cond_b

    const/high16 v1, -0x40800000    # -1.0f

    .line 1
    iput v1, p0, Ls/g;->K0:F

    .line 2
    iput v0, p0, Ls/g;->L0:I

    .line 3
    iput p1, p0, Ls/g;->M0:I

    :cond_b
    return-void
.end method

.method public w1(F)V
    .registers 3

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_d

    .line 1
    iput p1, p0, Ls/g;->K0:F

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Ls/g;->L0:I

    .line 3
    iput p1, p0, Ls/g;->M0:I

    :cond_d
    return-void
.end method

.method public x1(I)V
    .registers 5

    .line 1
    iget v0, p0, Ls/g;->P0:I

    if-ne v0, p1, :cond_5

    return-void

    .line 2
    :cond_5
    iput p1, p0, Ls/g;->P0:I

    .line 3
    iget-object p1, p0, Ls/e;->X:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget p1, p0, Ls/g;->P0:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    .line 5
    iget-object p1, p0, Ls/e;->O:Ls/d;

    iput-object p1, p0, Ls/g;->O0:Ls/d;

    goto :goto_1a

    .line 6
    :cond_16
    iget-object p1, p0, Ls/e;->P:Ls/d;

    iput-object p1, p0, Ls/g;->O0:Ls/d;

    .line 7
    :goto_1a
    iget-object p1, p0, Ls/e;->X:Ljava/util/ArrayList;

    iget-object v0, p0, Ls/g;->O0:Ls/d;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Ls/e;->W:[Ls/d;

    array-length p1, p1

    const/4 v0, 0x0

    :goto_25
    if-ge v0, p1, :cond_30

    .line 9
    iget-object v1, p0, Ls/e;->W:[Ls/d;

    iget-object v2, p0, Ls/g;->O0:Ls/d;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_30
    return-void
.end method

###### Class s.g.a (s.g$a)
.class synthetic Ls/g$a;
.super Ljava/lang/Object;
.source "Guideline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls/g;
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

    sput-object v0, Ls/g$a;->a:[I

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
    sget-object v0, Ls/g$a;->a:[I

    sget-object v1, Ls/d$b;->r:Ls/d$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Ls/g$a;->a:[I

    sget-object v1, Ls/d$b;->q:Ls/d$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Ls/g$a;->a:[I

    sget-object v1, Ls/d$b;->s:Ls/d$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Ls/g$a;->a:[I

    sget-object v1, Ls/d$b;->t:Ls/d$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Ls/g$a;->a:[I

    sget-object v1, Ls/d$b;->u:Ls/d$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Ls/g$a;->a:[I

    sget-object v1, Ls/d$b;->v:Ls/d$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Ls/g$a;->a:[I

    sget-object v1, Ls/d$b;->w:Ls/d$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Ls/g$a;->a:[I

    sget-object v1, Ls/d$b;->o:Ls/d$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    return-void
.end method
