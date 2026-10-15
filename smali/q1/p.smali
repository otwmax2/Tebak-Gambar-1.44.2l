###### Class q1.p (q1.p)
.class public final Lq1/p;
.super Ljava/lang/Object;
.source "WorkSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq1/p$c;,
        Lq1/p$b;
    }
.end annotation


# static fields
.field private static final s:Ljava/lang/String;

.field public static final t:Ll/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/a<",
            "Ljava/util/List<",
            "Lq1/p$c;",
            ">;",
            "Ljava/util/List<",
            "Li1/s;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Li1/s$a;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Landroidx/work/b;

.field public f:Landroidx/work/b;

.field public g:J

.field public h:J

.field public i:J

.field public j:Li1/b;

.field public k:I

.field public l:Li1/a;

.field public m:J

.field public n:J

.field public o:J

.field public p:J

.field public q:Z

.field public r:Li1/n;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "WorkSpec"

    .line 1
    invoke-static {v0}, Li1/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lq1/p;->s:Ljava/lang/String;

    .line 2
    new-instance v0, Lq1/p$a;

    invoke-direct {v0}, Lq1/p$a;-><init>()V

    sput-object v0, Lq1/p;->t:Ll/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Li1/s$a;->o:Li1/s$a;

    iput-object v0, p0, Lq1/p;->b:Li1/s$a;

    .line 3
    sget-object v0, Landroidx/work/b;->c:Landroidx/work/b;

    iput-object v0, p0, Lq1/p;->e:Landroidx/work/b;

    .line 4
    iput-object v0, p0, Lq1/p;->f:Landroidx/work/b;

    .line 5
    sget-object v0, Li1/b;->i:Li1/b;

    iput-object v0, p0, Lq1/p;->j:Li1/b;

    .line 6
    sget-object v0, Li1/a;->o:Li1/a;

    iput-object v0, p0, Lq1/p;->l:Li1/a;

    const-wide/16 v0, 0x7530

    .line 7
    iput-wide v0, p0, Lq1/p;->m:J

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lq1/p;->p:J

    .line 9
    sget-object v0, Li1/n;->o:Li1/n;

    iput-object v0, p0, Lq1/p;->r:Li1/n;

    .line 10
    iput-object p1, p0, Lq1/p;->a:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lq1/p;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lq1/p;)V
    .registers 4

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Li1/s$a;->o:Li1/s$a;

    iput-object v0, p0, Lq1/p;->b:Li1/s$a;

    .line 14
    sget-object v0, Landroidx/work/b;->c:Landroidx/work/b;

    iput-object v0, p0, Lq1/p;->e:Landroidx/work/b;

    .line 15
    iput-object v0, p0, Lq1/p;->f:Landroidx/work/b;

    .line 16
    sget-object v0, Li1/b;->i:Li1/b;

    iput-object v0, p0, Lq1/p;->j:Li1/b;

    .line 17
    sget-object v0, Li1/a;->o:Li1/a;

    iput-object v0, p0, Lq1/p;->l:Li1/a;

    const-wide/16 v0, 0x7530

    .line 18
    iput-wide v0, p0, Lq1/p;->m:J

    const-wide/16 v0, -0x1

    .line 19
    iput-wide v0, p0, Lq1/p;->p:J

    .line 20
    sget-object v0, Li1/n;->o:Li1/n;

    iput-object v0, p0, Lq1/p;->r:Li1/n;

    .line 21
    iget-object v0, p1, Lq1/p;->a:Ljava/lang/String;

    iput-object v0, p0, Lq1/p;->a:Ljava/lang/String;

    .line 22
    iget-object v0, p1, Lq1/p;->c:Ljava/lang/String;

    iput-object v0, p0, Lq1/p;->c:Ljava/lang/String;

    .line 23
    iget-object v0, p1, Lq1/p;->b:Li1/s$a;

    iput-object v0, p0, Lq1/p;->b:Li1/s$a;

    .line 24
    iget-object v0, p1, Lq1/p;->d:Ljava/lang/String;

    iput-object v0, p0, Lq1/p;->d:Ljava/lang/String;

    .line 25
    new-instance v0, Landroidx/work/b;

    iget-object v1, p1, Lq1/p;->e:Landroidx/work/b;

    invoke-direct {v0, v1}, Landroidx/work/b;-><init>(Landroidx/work/b;)V

    iput-object v0, p0, Lq1/p;->e:Landroidx/work/b;

    .line 26
    new-instance v0, Landroidx/work/b;

    iget-object v1, p1, Lq1/p;->f:Landroidx/work/b;

    invoke-direct {v0, v1}, Landroidx/work/b;-><init>(Landroidx/work/b;)V

    iput-object v0, p0, Lq1/p;->f:Landroidx/work/b;

    .line 27
    iget-wide v0, p1, Lq1/p;->g:J

    iput-wide v0, p0, Lq1/p;->g:J

    .line 28
    iget-wide v0, p1, Lq1/p;->h:J

    iput-wide v0, p0, Lq1/p;->h:J

    .line 29
    iget-wide v0, p1, Lq1/p;->i:J

    iput-wide v0, p0, Lq1/p;->i:J

    .line 30
    new-instance v0, Li1/b;

    iget-object v1, p1, Lq1/p;->j:Li1/b;

    invoke-direct {v0, v1}, Li1/b;-><init>(Li1/b;)V

    iput-object v0, p0, Lq1/p;->j:Li1/b;

    .line 31
    iget v0, p1, Lq1/p;->k:I

    iput v0, p0, Lq1/p;->k:I

    .line 32
    iget-object v0, p1, Lq1/p;->l:Li1/a;

    iput-object v0, p0, Lq1/p;->l:Li1/a;

    .line 33
    iget-wide v0, p1, Lq1/p;->m:J

    iput-wide v0, p0, Lq1/p;->m:J

    .line 34
    iget-wide v0, p1, Lq1/p;->n:J

    iput-wide v0, p0, Lq1/p;->n:J

    .line 35
    iget-wide v0, p1, Lq1/p;->o:J

    iput-wide v0, p0, Lq1/p;->o:J

    .line 36
    iget-wide v0, p1, Lq1/p;->p:J

    iput-wide v0, p0, Lq1/p;->p:J

    .line 37
    iget-boolean v0, p1, Lq1/p;->q:Z

    iput-boolean v0, p0, Lq1/p;->q:Z

    .line 38
    iget-object p1, p1, Lq1/p;->r:Li1/n;

    iput-object p1, p0, Lq1/p;->r:Li1/n;

    return-void
.end method


# virtual methods
.method public a()J
    .registers 14

    .line 1
    invoke-virtual {p0}, Lq1/p;->c()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2f

    .line 2
    iget-object v0, p0, Lq1/p;->l:Li1/a;

    sget-object v3, Li1/a;->p:Li1/a;

    if-ne v0, v3, :cond_f

    const/4 v1, 0x1

    :cond_f
    if-eqz v1, :cond_19

    .line 3
    iget-wide v0, p0, Lq1/p;->m:J

    iget v2, p0, Lq1/p;->k:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    goto :goto_24

    .line 4
    :cond_19
    iget-wide v0, p0, Lq1/p;->m:J

    long-to-float v0, v0

    iget v1, p0, Lq1/p;->k:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    float-to-long v0, v0

    .line 5
    :goto_24
    iget-wide v2, p0, Lq1/p;->n:J

    const-wide/32 v4, 0x112a880

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-long/2addr v2, v0

    return-wide v2

    .line 6
    :cond_2f
    invoke-virtual {p0}, Lq1/p;->d()Z

    move-result v0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_64

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 8
    iget-wide v7, p0, Lq1/p;->n:J

    cmp-long v0, v7, v3

    if-nez v0, :cond_45

    iget-wide v9, p0, Lq1/p;->g:J

    add-long/2addr v5, v9

    goto :goto_46

    :cond_45
    move-wide v5, v7

    .line 9
    :goto_46
    iget-wide v9, p0, Lq1/p;->i:J

    iget-wide v11, p0, Lq1/p;->h:J

    cmp-long v0, v9, v11

    if-eqz v0, :cond_4f

    const/4 v1, 0x1

    :cond_4f
    if-eqz v1, :cond_5c

    cmp-long v0, v7, v3

    if-nez v0, :cond_59

    const-wide/16 v0, -0x1

    mul-long v3, v9, v0

    :cond_59
    add-long/2addr v5, v11

    add-long/2addr v5, v3

    return-wide v5

    :cond_5c
    cmp-long v0, v7, v3

    if-nez v0, :cond_61

    goto :goto_62

    :cond_61
    move-wide v3, v11

    :goto_62
    add-long/2addr v5, v3

    return-wide v5

    .line 10
    :cond_64
    iget-wide v0, p0, Lq1/p;->n:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_6e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 11
    :cond_6e
    iget-wide v2, p0, Lq1/p;->g:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public b()Z
    .registers 3

    .line 1
    sget-object v0, Li1/b;->i:Li1/b;

    iget-object v1, p0, Lq1/p;->j:Li1/b;

    invoke-virtual {v0, v1}, Li1/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public c()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lq1/p;->b:Li1/s$a;

    sget-object v1, Li1/s$a;->o:Li1/s$a;

    if-ne v0, v1, :cond_c

    iget v0, p0, Lq1/p;->k:I

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public d()Z
    .registers 6

    .line 1
    iget-wide v0, p0, Lq1/p;->h:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_c0

    .line 1
    const-class v2, Lq1/p;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_11

    goto/16 :goto_c0

    .line 2
    :cond_11
    check-cast p1, Lq1/p;

    .line 3
    iget-wide v2, p0, Lq1/p;->g:J

    iget-wide v4, p1, Lq1/p;->g:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1c

    return v1

    .line 4
    :cond_1c
    iget-wide v2, p0, Lq1/p;->h:J

    iget-wide v4, p1, Lq1/p;->h:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_25

    return v1

    .line 5
    :cond_25
    iget-wide v2, p0, Lq1/p;->i:J

    iget-wide v4, p1, Lq1/p;->i:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2e

    return v1

    .line 6
    :cond_2e
    iget v2, p0, Lq1/p;->k:I

    iget v3, p1, Lq1/p;->k:I

    if-eq v2, v3, :cond_35

    return v1

    .line 7
    :cond_35
    iget-wide v2, p0, Lq1/p;->m:J

    iget-wide v4, p1, Lq1/p;->m:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3e

    return v1

    .line 8
    :cond_3e
    iget-wide v2, p0, Lq1/p;->n:J

    iget-wide v4, p1, Lq1/p;->n:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_47

    return v1

    .line 9
    :cond_47
    iget-wide v2, p0, Lq1/p;->o:J

    iget-wide v4, p1, Lq1/p;->o:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_50

    return v1

    .line 10
    :cond_50
    iget-wide v2, p0, Lq1/p;->p:J

    iget-wide v4, p1, Lq1/p;->p:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_59

    return v1

    .line 11
    :cond_59
    iget-boolean v2, p0, Lq1/p;->q:Z

    iget-boolean v3, p1, Lq1/p;->q:Z

    if-eq v2, v3, :cond_60

    return v1

    .line 12
    :cond_60
    iget-object v2, p0, Lq1/p;->a:Ljava/lang/String;

    iget-object v3, p1, Lq1/p;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6b

    return v1

    .line 13
    :cond_6b
    iget-object v2, p0, Lq1/p;->b:Li1/s$a;

    iget-object v3, p1, Lq1/p;->b:Li1/s$a;

    if-eq v2, v3, :cond_72

    return v1

    .line 14
    :cond_72
    iget-object v2, p0, Lq1/p;->c:Ljava/lang/String;

    iget-object v3, p1, Lq1/p;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7d

    return v1

    .line 15
    :cond_7d
    iget-object v2, p0, Lq1/p;->d:Ljava/lang/String;

    if-eqz v2, :cond_8a

    iget-object v3, p1, Lq1/p;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8f

    goto :goto_8e

    :cond_8a
    iget-object v2, p1, Lq1/p;->d:Ljava/lang/String;

    if-eqz v2, :cond_8f

    :goto_8e
    return v1

    .line 16
    :cond_8f
    iget-object v2, p0, Lq1/p;->e:Landroidx/work/b;

    iget-object v3, p1, Lq1/p;->e:Landroidx/work/b;

    invoke-virtual {v2, v3}, Landroidx/work/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9a

    return v1

    .line 17
    :cond_9a
    iget-object v2, p0, Lq1/p;->f:Landroidx/work/b;

    iget-object v3, p1, Lq1/p;->f:Landroidx/work/b;

    invoke-virtual {v2, v3}, Landroidx/work/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a5

    return v1

    .line 18
    :cond_a5
    iget-object v2, p0, Lq1/p;->j:Li1/b;

    iget-object v3, p1, Lq1/p;->j:Li1/b;

    invoke-virtual {v2, v3}, Li1/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b0

    return v1

    .line 19
    :cond_b0
    iget-object v2, p0, Lq1/p;->l:Li1/a;

    iget-object v3, p1, Lq1/p;->l:Li1/a;

    if-eq v2, v3, :cond_b7

    return v1

    .line 20
    :cond_b7
    iget-object v2, p0, Lq1/p;->r:Li1/n;

    iget-object p1, p1, Lq1/p;->r:Li1/n;

    if-ne v2, p1, :cond_be

    goto :goto_bf

    :cond_be
    const/4 v0, 0x0

    :goto_bf
    return v0

    :cond_c0
    :goto_c0
    return v1
.end method

.method public hashCode()I
    .registers 7

    .line 1
    iget-object v0, p0, Lq1/p;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lq1/p;->b:Li1/s$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lq1/p;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lq1/p;->d:Ljava/lang/String;

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lq1/p;->e:Landroidx/work/b;

    invoke-virtual {v1}, Landroidx/work/b;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Lq1/p;->f:Landroidx/work/b;

    invoke-virtual {v1}, Landroidx/work/b;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-wide v1, p0, Lq1/p;->g:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-wide v1, p0, Lq1/p;->h:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-wide v1, p0, Lq1/p;->i:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-object v1, p0, Lq1/p;->j:Li1/b;

    invoke-virtual {v1}, Li1/b;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget v1, p0, Lq1/p;->k:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget-object v1, p0, Lq1/p;->l:Li1/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget-wide v1, p0, Lq1/p;->m:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget-wide v1, p0, Lq1/p;->n:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 15
    iget-wide v1, p0, Lq1/p;->o:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 16
    iget-wide v1, p0, Lq1/p;->p:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 17
    iget-boolean v1, p0, Lq1/p;->q:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 18
    iget-object v1, p0, Lq1/p;->r:Li1/n;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{WorkSpec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lq1/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class q1.p.a (q1.p$a)
.class Lq1/p$a;
.super Ljava/lang/Object;
.source "WorkSpec.java"

# interfaces
.implements Ll/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq1/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll/a<",
        "Ljava/util/List<",
        "Lq1/p$c;",
        ">;",
        "Ljava/util/List<",
        "Li1/s;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lq1/p$a;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lq1/p$c;",
            ">;)",
            "Ljava/util/List<",
            "Li1/s;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq1/p$c;

    .line 3
    invoke-virtual {v1}, Lq1/p$c;->a()Li1/s;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_25
    return-object v0
.end method

###### Class q1.p.b (q1.p$b)
.class public Lq1/p$b;
.super Ljava/lang/Object;
.source "WorkSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq1/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Li1/s$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_4
    instance-of v0, p1, Lq1/p$b;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 2
    :cond_a
    check-cast p1, Lq1/p$b;

    .line 3
    iget-object v0, p0, Lq1/p$b;->b:Li1/s$a;

    iget-object v2, p1, Lq1/p$b;->b:Li1/s$a;

    if-eq v0, v2, :cond_13

    return v1

    .line 4
    :cond_13
    iget-object v0, p0, Lq1/p$b;->a:Ljava/lang/String;

    iget-object p1, p1, Lq1/p$b;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lq1/p$b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lq1/p$b;->b:Li1/s$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

###### Class q1.p.c (q1.p$c)
.class public Lq1/p$c;
.super Ljava/lang/Object;
.source "WorkSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq1/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Li1/s$a;

.field public c:Landroidx/work/b;

.field public d:I

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/work/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Li1/s;
    .registers 9

    .line 1
    iget-object v0, p0, Lq1/p$c;->f:Ljava/util/List;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 2
    iget-object v0, p0, Lq1/p$c;->f:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/b;

    goto :goto_16

    .line 3
    :cond_14
    sget-object v0, Landroidx/work/b;->c:Landroidx/work/b;

    :goto_16
    move-object v6, v0

    .line 4
    new-instance v0, Li1/s;

    iget-object v1, p0, Lq1/p$c;->a:Ljava/lang/String;

    .line 5
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lq1/p$c;->b:Li1/s$a;

    iget-object v4, p0, Lq1/p$c;->c:Landroidx/work/b;

    iget-object v5, p0, Lq1/p$c;->e:Ljava/util/List;

    iget v7, p0, Lq1/p$c;->d:I

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Li1/s;-><init>(Ljava/util/UUID;Li1/s$a;Landroidx/work/b;Ljava/util/List;Landroidx/work/b;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lq1/p$c;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2
    :cond_a
    check-cast p1, Lq1/p$c;

    .line 3
    iget v1, p0, Lq1/p$c;->d:I

    iget v3, p1, Lq1/p$c;->d:I

    if-eq v1, v3, :cond_13

    return v2

    .line 4
    :cond_13
    iget-object v1, p0, Lq1/p$c;->a:Ljava/lang/String;

    if-eqz v1, :cond_20

    iget-object v3, p1, Lq1/p$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_24

    :cond_20
    iget-object v1, p1, Lq1/p$c;->a:Ljava/lang/String;

    if-eqz v1, :cond_25

    :goto_24
    return v2

    .line 5
    :cond_25
    iget-object v1, p0, Lq1/p$c;->b:Li1/s$a;

    iget-object v3, p1, Lq1/p$c;->b:Li1/s$a;

    if-eq v1, v3, :cond_2c

    return v2

    .line 6
    :cond_2c
    iget-object v1, p0, Lq1/p$c;->c:Landroidx/work/b;

    if-eqz v1, :cond_39

    iget-object v3, p1, Lq1/p$c;->c:Landroidx/work/b;

    invoke-virtual {v1, v3}, Landroidx/work/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    goto :goto_3d

    :cond_39
    iget-object v1, p1, Lq1/p$c;->c:Landroidx/work/b;

    if-eqz v1, :cond_3e

    :goto_3d
    return v2

    .line 7
    :cond_3e
    iget-object v1, p0, Lq1/p$c;->e:Ljava/util/List;

    if-eqz v1, :cond_4b

    iget-object v3, p1, Lq1/p$c;->e:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    goto :goto_4f

    :cond_4b
    iget-object v1, p1, Lq1/p$c;->e:Ljava/util/List;

    if-eqz v1, :cond_50

    :goto_4f
    return v2

    .line 8
    :cond_50
    iget-object v1, p0, Lq1/p$c;->f:Ljava/util/List;

    iget-object p1, p1, Lq1/p$c;->f:Ljava/util/List;

    if-eqz v1, :cond_5b

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5f

    :cond_5b
    if-nez p1, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 v0, 0x0

    :goto_5f
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lq1/p$c;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lq1/p$c;->b:Li1/s$a;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Lq1/p$c;->c:Landroidx/work/b;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Landroidx/work/b;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget v2, p0, Lq1/p$c;->d:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v2, p0, Lq1/p$c;->e:Ljava/util/List;

    if-eqz v2, :cond_35

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    :goto_36
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v2, p0, Lq1/p$c;->f:Ljava/util/List;

    if-eqz v2, :cond_41

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_41
    add-int/2addr v0, v1

    return v0
.end method
