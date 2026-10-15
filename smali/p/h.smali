###### Class p.h (p.h)
.class public Lp/h;
.super Lp/b;
.source "PriorityGoalRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp/h$b;
    }
.end annotation


# instance fields
.field private g:I

.field private h:[Lp/i;

.field private i:[Lp/i;

.field private j:I

.field k:Lp/h$b;

.field l:Lp/c;


# direct methods
.method public constructor <init>(Lp/c;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lp/b;-><init>(Lp/c;)V

    const/16 v0, 0x80

    .line 2
    iput v0, p0, Lp/h;->g:I

    new-array v1, v0, [Lp/i;

    .line 3
    iput-object v1, p0, Lp/h;->h:[Lp/i;

    new-array v0, v0, [Lp/i;

    .line 4
    iput-object v0, p0, Lp/h;->i:[Lp/i;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lp/h;->j:I

    .line 6
    new-instance v0, Lp/h$b;

    invoke-direct {v0, p0, p0}, Lp/h$b;-><init>(Lp/h;Lp/h;)V

    iput-object v0, p0, Lp/h;->k:Lp/h$b;

    .line 7
    iput-object p1, p0, Lp/h;->l:Lp/c;

    return-void
.end method

.method static synthetic E(Lp/h;Lp/i;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lp/h;->G(Lp/i;)V

    return-void
.end method

.method private final F(Lp/i;)V
    .registers 7

    .line 1
    iget v0, p0, Lp/h;->j:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lp/h;->h:[Lp/i;

    array-length v3, v2

    if-le v0, v3, :cond_1f

    .line 2
    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp/i;

    iput-object v0, p0, Lp/h;->h:[Lp/i;

    .line 3
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp/i;

    iput-object v0, p0, Lp/h;->i:[Lp/i;

    .line 4
    :cond_1f
    iget-object v0, p0, Lp/h;->h:[Lp/i;

    iget v2, p0, Lp/h;->j:I

    aput-object p1, v0, v2

    add-int/2addr v2, v1

    .line 5
    iput v2, p0, Lp/h;->j:I

    if-le v2, v1, :cond_5d

    sub-int/2addr v2, v1

    .line 6
    aget-object v0, v0, v2

    iget v0, v0, Lp/i;->q:I

    iget v2, p1, Lp/i;->q:I

    if-le v0, v2, :cond_5d

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 7
    :goto_35
    iget v3, p0, Lp/h;->j:I

    if-ge v2, v3, :cond_44

    .line 8
    iget-object v3, p0, Lp/h;->i:[Lp/i;

    iget-object v4, p0, Lp/h;->h:[Lp/i;

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 9
    :cond_44
    iget-object v2, p0, Lp/h;->i:[Lp/i;

    new-instance v4, Lp/h$a;

    invoke-direct {v4, p0}, Lp/h$a;-><init>(Lp/h;)V

    invoke-static {v2, v0, v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 10
    :goto_4e
    iget v2, p0, Lp/h;->j:I

    if-ge v0, v2, :cond_5d

    .line 11
    iget-object v2, p0, Lp/h;->h:[Lp/i;

    iget-object v3, p0, Lp/h;->i:[Lp/i;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 12
    :cond_5d
    iput-boolean v1, p1, Lp/i;->o:Z

    .line 13
    invoke-virtual {p1, p0}, Lp/i;->c(Lp/b;)V

    return-void
.end method

.method private final G(Lp/i;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    iget v2, p0, Lp/h;->j:I

    if-ge v1, v2, :cond_26

    .line 2
    iget-object v2, p0, Lp/h;->h:[Lp/i;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_23

    .line 3
    :goto_c
    iget v2, p0, Lp/h;->j:I

    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_1c

    .line 4
    iget-object v2, p0, Lp/h;->h:[Lp/i;

    add-int/lit8 v3, v1, 0x1

    aget-object v4, v2, v3

    aput-object v4, v2, v1

    move v1, v3

    goto :goto_c

    :cond_1c
    add-int/lit8 v2, v2, -0x1

    .line 5
    iput v2, p0, Lp/h;->j:I

    .line 6
    iput-boolean v0, p1, Lp/i;->o:Z

    return-void

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_26
    return-void
.end method


# virtual methods
.method public B(Lp/d;Lp/b;Z)V
    .registers 9

    .line 1
    iget-object p1, p2, Lp/b;->a:Lp/i;

    if-nez p1, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object p3, p2, Lp/b;->e:Lp/b$a;

    .line 3
    invoke-interface {p3}, Lp/b$a;->c()I

    move-result v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_32

    .line 4
    invoke-interface {p3, v1}, Lp/b$a;->d(I)Lp/i;

    move-result-object v2

    .line 5
    invoke-interface {p3, v1}, Lp/b$a;->f(I)F

    move-result v3

    .line 6
    iget-object v4, p0, Lp/h;->k:Lp/h$b;

    invoke-virtual {v4, v2}, Lp/h$b;->b(Lp/i;)V

    .line 7
    iget-object v4, p0, Lp/h;->k:Lp/h$b;

    invoke-virtual {v4, p1, v3}, Lp/h$b;->a(Lp/i;F)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 8
    invoke-direct {p0, v2}, Lp/h;->F(Lp/i;)V

    .line 9
    :cond_26
    iget v2, p0, Lp/b;->b:F

    iget v4, p2, Lp/b;->b:F

    mul-float v4, v4, v3

    add-float/2addr v2, v4

    iput v2, p0, Lp/b;->b:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 10
    :cond_32
    invoke-direct {p0, p1}, Lp/h;->G(Lp/i;)V

    return-void
.end method

.method public a(Lp/i;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lp/h;->k:Lp/h$b;

    invoke-virtual {v0, p1}, Lp/h$b;->b(Lp/i;)V

    .line 2
    iget-object v0, p0, Lp/h;->k:Lp/h$b;

    invoke-virtual {v0}, Lp/h$b;->e()V

    .line 3
    iget-object v0, p1, Lp/i;->w:[F

    iget v1, p1, Lp/i;->s:I

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 4
    invoke-direct {p0, p1}, Lp/h;->F(Lp/i;)V

    return-void
.end method

.method public b(Lp/d;[Z)Lp/i;
    .registers 7

    const/4 p1, -0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 1
    :goto_3
    iget v2, p0, Lp/h;->j:I

    if-ge v0, v2, :cond_32

    .line 2
    iget-object v2, p0, Lp/h;->h:[Lp/i;

    aget-object v2, v2, v0

    .line 3
    iget v3, v2, Lp/i;->q:I

    aget-boolean v3, p2, v3

    if-eqz v3, :cond_12

    goto :goto_2f

    .line 4
    :cond_12
    iget-object v3, p0, Lp/h;->k:Lp/h$b;

    invoke-virtual {v3, v2}, Lp/h$b;->b(Lp/i;)V

    if-ne v1, p1, :cond_22

    .line 5
    iget-object v2, p0, Lp/h;->k:Lp/h$b;

    invoke-virtual {v2}, Lp/h$b;->c()Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_2e

    .line 6
    :cond_22
    iget-object v2, p0, Lp/h;->k:Lp/h$b;

    iget-object v3, p0, Lp/h;->h:[Lp/i;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lp/h$b;->d(Lp/i;)Z

    move-result v2

    if-eqz v2, :cond_2f

    :goto_2e
    move v1, v0

    :cond_2f
    :goto_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_32
    if-ne v1, p1, :cond_36

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_36
    iget-object p1, p0, Lp/h;->h:[Lp/i;

    aget-object p1, p1, v1

    return-object p1
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lp/h;->j:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lp/b;->b:F

    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .line 1
    iget v0, p0, Lp/h;->j:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " goal -> ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lp/b;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ") : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_1e
    iget v2, p0, Lp/h;->j:I

    if-ge v1, v2, :cond_44

    .line 3
    iget-object v2, p0, Lp/h;->h:[Lp/i;

    aget-object v2, v2, v1

    .line 4
    iget-object v3, p0, Lp/h;->k:Lp/h$b;

    invoke-virtual {v3, v2}, Lp/h$b;->b(Lp/i;)V

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lp/h;->k:Lp/h$b;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_44
    return-object v0
.end method

###### Class p.h.a (p.h$a)
.class Lp/h$a;
.super Ljava/lang/Object;
.source "PriorityGoalRow.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp/h;->F(Lp/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lp/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic o:Lp/h;


# direct methods
.method constructor <init>(Lp/h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lp/h$a;->o:Lp/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lp/i;Lp/i;)I
    .registers 3

    .line 1
    iget p1, p1, Lp/i;->q:I

    iget p2, p2, Lp/i;->q:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lp/i;

    check-cast p2, Lp/i;

    invoke-virtual {p0, p1, p2}, Lp/h$a;->a(Lp/i;Lp/i;)I

    move-result p1

    return p1
.end method

###### Class p.h.b (p.h$b)
.class Lp/h$b;
.super Ljava/lang/Object;
.source "PriorityGoalRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Lp/i;

.field b:Lp/h;

.field final synthetic c:Lp/h;


# direct methods
.method public constructor <init>(Lp/h;Lp/h;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lp/h$b;->c:Lp/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lp/h$b;->b:Lp/h;

    return-void
.end method


# virtual methods
.method public a(Lp/i;F)Z
    .registers 12

    .line 1
    iget-object v0, p0, Lp/h$b;->a:Lp/i;

    iget-boolean v0, v0, Lp/i;->o:Z

    const v1, 0x38d1b717    # 1.0E-4f

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_3f

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_35

    .line 2
    iget-object v6, p0, Lp/h$b;->a:Lp/i;

    iget-object v6, v6, Lp/i;->w:[F

    aget v7, v6, v0

    iget-object v8, p1, Lp/i;->w:[F

    aget v8, v8, v0

    mul-float v8, v8, p2

    add-float/2addr v7, v8

    aput v7, v6, v0

    .line 3
    aget v6, v6, v0

    .line 4
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v1

    if-gez v6, :cond_31

    .line 5
    iget-object v6, p0, Lp/h$b;->a:Lp/i;

    iget-object v6, v6, Lp/i;->w:[F

    aput v3, v6, v0

    goto :goto_32

    :cond_31
    const/4 v4, 0x0

    :goto_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_35
    if-eqz v4, :cond_3e

    .line 6
    iget-object p1, p0, Lp/h$b;->c:Lp/h;

    iget-object p2, p0, Lp/h$b;->a:Lp/i;

    invoke-static {p1, p2}, Lp/h;->E(Lp/h;Lp/i;)V

    :cond_3e
    return v5

    :cond_3f
    :goto_3f
    if-ge v5, v2, :cond_64

    .line 7
    iget-object v0, p1, Lp/i;->w:[F

    aget v0, v0, v5

    cmpl-float v6, v0, v3

    if-eqz v6, :cond_5b

    mul-float v0, v0, p2

    .line 8
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v1

    if-gez v6, :cond_54

    const/4 v0, 0x0

    .line 9
    :cond_54
    iget-object v6, p0, Lp/h$b;->a:Lp/i;

    iget-object v6, v6, Lp/i;->w:[F

    aput v0, v6, v5

    goto :goto_61

    .line 10
    :cond_5b
    iget-object v0, p0, Lp/h$b;->a:Lp/i;

    iget-object v0, v0, Lp/i;->w:[F

    aput v3, v0, v5

    :goto_61
    add-int/lit8 v5, v5, 0x1

    goto :goto_3f

    :cond_64
    return v4
.end method

.method public b(Lp/i;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lp/h$b;->a:Lp/i;

    return-void
.end method

.method public final c()Z
    .registers 6

    const/16 v0, 0x8

    :goto_2
    const/4 v1, 0x0

    if-ltz v0, :cond_1a

    .line 1
    iget-object v2, p0, Lp/h$b;->a:Lp/i;

    iget-object v2, v2, Lp/i;->w:[F

    aget v2, v2, v0

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_11

    return v1

    :cond_11
    cmpg-float v1, v2, v3

    if-gez v1, :cond_17

    const/4 v0, 0x1

    return v0

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_1a
    return v1
.end method

.method public final d(Lp/i;)Z
    .registers 7

    const/16 v0, 0x8

    :goto_2
    const/4 v1, 0x0

    if-ltz v0, :cond_1c

    .line 1
    iget-object v2, p1, Lp/i;->w:[F

    aget v2, v2, v0

    .line 2
    iget-object v3, p0, Lp/h$b;->a:Lp/i;

    iget-object v3, v3, Lp/i;->w:[F

    aget v3, v3, v0

    cmpl-float v4, v3, v2

    if-nez v4, :cond_16

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_16
    cmpg-float p1, v3, v2

    if-gez p1, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    return v1
.end method

.method public e()V
    .registers 3

    .line 1
    iget-object v0, p0, Lp/h$b;->a:Lp/i;

    iget-object v0, v0, Lp/i;->w:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lp/h$b;->a:Lp/i;

    const-string v1, "[ "

    if-eqz v0, :cond_28

    const/4 v0, 0x0

    :goto_7
    const/16 v2, 0x9

    if-ge v0, v2, :cond_28

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp/h$b;->a:Lp/i;

    iget-object v1, v1, Lp/i;->w:[F

    aget v1, v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp/h$b;->a:Lp/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
