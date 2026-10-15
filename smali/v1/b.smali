###### Class v1.b (v1.b)
.class public Lv1/b;
.super Lv1/a;
.source "BitmapTypeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lv1/a<",
        "TModelType;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final W:Lg2/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg2/l<",
            "TModelType;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final X:Lg2/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg2/l<",
            "TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final Y:Lv1/g;

.field private final Z:Lv1/j$d;


# direct methods
.method constructor <init>(Lv1/e;Lg2/l;Lg2/l;Lv1/j$d;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv1/e<",
            "TModelType;***>;",
            "Lg2/l<",
            "TModelType;",
            "Ljava/io/InputStream;",
            ">;",
            "Lg2/l<",
            "TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lv1/j$d;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lv1/e;->q:Lv1/g;

    const-class v1, Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {v0, p2, p3, v1, v2}, Lv1/b;->S(Lv1/g;Lg2/l;Lg2/l;Ljava/lang/Class;Lp2/c;)Ls2/e;

    move-result-object v0

    const-class v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1, p1}, Lv1/a;-><init>(Ls2/f;Ljava/lang/Class;Lv1/e;)V

    .line 2
    iput-object p2, p0, Lv1/b;->W:Lg2/l;

    .line 3
    iput-object p3, p0, Lv1/b;->X:Lg2/l;

    .line 4
    iget-object p1, p1, Lv1/e;->q:Lv1/g;

    iput-object p1, p0, Lv1/b;->Y:Lv1/g;

    .line 5
    iput-object p4, p0, Lv1/b;->Z:Lv1/j$d;

    return-void
.end method

.method private static S(Lv1/g;Lg2/l;Lg2/l;Ljava/lang/Class;Lp2/c;)Ls2/e;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lv1/g;",
            "Lg2/l<",
            "TA;",
            "Ljava/io/InputStream;",
            ">;",
            "Lg2/l<",
            "TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lp2/c<",
            "Landroid/graphics/Bitmap;",
            "TR;>;)",
            "Ls2/e<",
            "TA;",
            "Lg2/g;",
            "Landroid/graphics/Bitmap;",
            "TR;>;"
        }
    .end annotation

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    if-nez p4, :cond_e

    .line 1
    const-class p4, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p4, p3}, Lv1/g;->f(Ljava/lang/Class;Ljava/lang/Class;)Lp2/c;

    move-result-object p4

    .line 2
    :cond_e
    const-class p3, Lg2/g;

    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p3, v0}, Lv1/g;->a(Ljava/lang/Class;Ljava/lang/Class;)Ls2/b;

    move-result-object p0

    .line 3
    new-instance p3, Lg2/f;

    invoke-direct {p3, p1, p2}, Lg2/f;-><init>(Lg2/l;Lg2/l;)V

    .line 4
    new-instance p1, Ls2/e;

    invoke-direct {p1, p3, p4, p0}, Ls2/e;-><init>(Lg2/l;Lp2/c;Ls2/b;)V

    return-object p1
.end method
