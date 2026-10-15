###### Class p2.b (p2.b)
.class public Lp2/b;
.super Ljava/lang/Object;
.source "GlideBitmapDrawableTranscoder.java"

# interfaces
.implements Lp2/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp2/c<",
        "Landroid/graphics/Bitmap;",
        "Lk2/j;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:Lc2/c;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lc2/c;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp2/b;->a:Landroid/content/res/Resources;

    .line 3
    iput-object p2, p0, Lp2/b;->b:Lc2/c;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "GlideBitmapDrawableTranscoder.com.bumptech.glide.load.resource.transcode"

    return-object v0
.end method

.method public b(Lb2/l;)Lb2/l;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb2/l<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lb2/l<",
            "Lk2/j;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lk2/j;

    iget-object v1, p0, Lp2/b;->a:Landroid/content/res/Resources;

    invoke-interface {p1}, Lb2/l;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, p1}, Lk2/j;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2
    new-instance p1, Lk2/k;

    iget-object v1, p0, Lp2/b;->b:Lc2/c;

    invoke-direct {p1, v0, v1}, Lk2/k;-><init>(Lk2/j;Lc2/c;)V

    return-object p1
.end method
