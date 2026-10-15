###### Class o4.d (o4.d)
.class public Lo4/d;
.super Ljava/lang/Object;
.source "CornerTreatment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo4/m;FFF)V
    .registers 5

    const/4 p0, 0x0

    throw p0
.end method

.method public b(Lo4/m;FFLandroid/graphics/RectF;Lo4/c;)V
    .registers 6

    .line 1
    invoke-interface {p5, p4}, Lo4/c;->a(Landroid/graphics/RectF;)F

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lo4/d;->a(Lo4/m;FFF)V

    return-void
.end method
