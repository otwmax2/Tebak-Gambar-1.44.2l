###### Class k2.i (k2.i)
.class public Lk2/i;
.super Lk2/d;
.source "FitCenter.java"


# direct methods
.method public constructor <init>(Lc2/c;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lk2/d;-><init>(Lc2/c;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "FitCenter.com.bumptech.glide.load.resource.bitmap"

    return-object v0
.end method

.method protected c(Lc2/c;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 5

    .line 1
    invoke-static {p2, p1, p3, p4}, Lk2/r;->b(Landroid/graphics/Bitmap;Lc2/c;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
