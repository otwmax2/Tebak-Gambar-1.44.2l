###### Class u.e (u.e)
.class public abstract Lu/e;
.super Lq/f;
.source "ViewTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/e$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lq/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FJLandroid/view/View;Lq/c;)F
    .registers 10

    .line 1
    iget-object p4, p0, Lq/f;->a:Lq/a;

    float-to-double v0, p1

    iget-object p1, p0, Lq/f;->g:[F

    invoke-virtual {p4, v0, v1, p1}, Lq/a;->c(D[F)V

    .line 2
    iget-object p1, p0, Lq/f;->g:[F

    const/4 p4, 0x1

    aget p4, p1, p4

    const/4 p5, 0x0

    cmpl-float p5, p4, p5

    if-nez p5, :cond_19

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lq/f;->h:Z

    const/4 p2, 0x2

    .line 4
    aget p1, p1, p2

    return p1

    .line 5
    :cond_19
    iget p1, p0, Lq/f;->j:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    const/4 p5, 0x0

    if-eqz p1, :cond_23

    .line 6
    throw p5

    .line 7
    :cond_23
    iget-wide v0, p0, Lq/f;->i:J

    sub-long/2addr p2, v0

    .line 8
    iget p1, p0, Lq/f;->j:F

    float-to-double v0, p1

    long-to-double p1, p2

    const-wide v2, 0x3e112e0be826d695L    # 1.0E-9

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v2

    float-to-double p3, p4

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, p3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, p1

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v0, p1

    double-to-float p1, v0

    iput p1, p0, Lq/f;->j:F

    .line 9
    throw p5
.end method

.method public abstract b(Landroid/view/View;FJLq/c;)Z
.end method

###### Class u.e.a (u.e$a)
.class public Lu/e$a;
.super Lu/e;
.source "ViewTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lu/e;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;FJLq/c;)Z
    .registers 6

    .line 1
    iget-boolean p1, p0, Lq/f;->h:Z

    return p1
.end method

.method public c(Landroid/view/View;Lq/c;FJDD)Z
    .registers 16

    move-object v0, p0

    move v1, p3

    move-wide v2, p4

    move-object v4, p1

    move-object v5, p2

    .line 1
    invoke-virtual/range {v0 .. v5}, Lu/e;->a(FJLandroid/view/View;Lq/c;)F

    move-result p2

    invoke-static {p8, p9, p6, p7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p3

    double-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    .line 2
    iget-boolean p1, p0, Lq/f;->h:Z

    return p1
.end method
