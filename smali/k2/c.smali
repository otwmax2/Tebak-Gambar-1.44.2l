###### Class k2.c (k2.c)
.class public Lk2/c;
.super Ljava/lang/Object;
.source "BitmapResource.java"

# interfaces
.implements Lb2/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb2/l<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Lc2/c;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lc2/c;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Bitmap must not be null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "BitmapPool must not be null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lk2/c;->a:Landroid/graphics/Bitmap;

    .line 5
    iput-object p2, p0, Lk2/c;->b:Lc2/c;

    return-void
.end method

.method public static d(Landroid/graphics/Bitmap;Lc2/c;)Lk2/c;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    new-instance v0, Lk2/c;

    invoke-direct {v0, p0, p1}, Lk2/c;-><init>(Landroid/graphics/Bitmap;Lc2/c;)V

    return-object v0
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    iget-object v0, p0, Lk2/c;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lk2/c;->b:Lc2/c;

    iget-object v1, p0, Lk2/c;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lc2/c;->a(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2
    iget-object v0, p0, Lk2/c;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_f
    return-void
.end method

.method public c()I
    .registers 2

    .line 1
    iget-object v0, p0, Lk2/c;->a:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lx2/h;->f(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lk2/c;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
