###### Class v1.d (v1.d)
.class public Lv1/d;
.super Lv1/c;
.source "DrawableTypeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lv1/c<",
        "TModelType;>;"
    }
.end annotation


# instance fields
.field private final R:Lg2/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg2/l<",
            "TModelType;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final S:Lg2/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg2/l<",
            "TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final T:Lv1/j$d;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lg2/l;Lg2/l;Landroid/content/Context;Lv1/g;Lq2/m;Lq2/g;Lv1/j$d;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TModelType;>;",
            "Lg2/l<",
            "TModelType;",
            "Ljava/io/InputStream;",
            ">;",
            "Lg2/l<",
            "TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Landroid/content/Context;",
            "Lv1/g;",
            "Lq2/m;",
            "Lq2/g;",
            "Lv1/j$d;",
            ")V"
        }
    .end annotation

    move-object v7, p0

    .line 1
    const-class v3, Lo2/a;

    const-class v4, Ll2/b;

    const/4 v5, 0x0

    move-object v0, p5

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lv1/d;->Y(Lv1/g;Lg2/l;Lg2/l;Ljava/lang/Class;Ljava/lang/Class;Lp2/c;)Ls2/e;

    move-result-object v3

    move-object v0, p0

    move-object v1, p4

    move-object v2, p1

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lv1/c;-><init>(Landroid/content/Context;Ljava/lang/Class;Ls2/f;Lv1/g;Lq2/m;Lq2/g;)V

    move-object v0, p2

    .line 2
    iput-object v0, v7, Lv1/d;->R:Lg2/l;

    move-object v0, p3

    .line 3
    iput-object v0, v7, Lv1/d;->S:Lg2/l;

    move-object/from16 v0, p8

    .line 4
    iput-object v0, v7, Lv1/d;->T:Lv1/j$d;

    return-void
.end method

.method private static Y(Lv1/g;Lg2/l;Lg2/l;Ljava/lang/Class;Ljava/lang/Class;Lp2/c;)Ls2/e;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "Z:",
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
            "TZ;>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lp2/c<",
            "TZ;TR;>;)",
            "Ls2/e<",
            "TA;",
            "Lg2/g;",
            "TZ;TR;>;"
        }
    .end annotation

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    if-nez p5, :cond_c

    .line 1
    invoke-virtual {p0, p3, p4}, Lv1/g;->f(Ljava/lang/Class;Ljava/lang/Class;)Lp2/c;

    move-result-object p5

    .line 2
    :cond_c
    const-class p4, Lg2/g;

    invoke-virtual {p0, p4, p3}, Lv1/g;->a(Ljava/lang/Class;Ljava/lang/Class;)Ls2/b;

    move-result-object p0

    .line 3
    new-instance p3, Lg2/f;

    invoke-direct {p3, p1, p2}, Lg2/f;-><init>(Lg2/l;Lg2/l;)V

    .line 4
    new-instance p1, Ls2/e;

    invoke-direct {p1, p3, p5, p0}, Ls2/e;-><init>(Lg2/l;Lp2/c;Ls2/b;)V

    return-object p1
.end method

.method private a0()Lv1/f;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv1/f<",
            "TModelType;",
            "Ljava/io/InputStream;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v7, p0, Lv1/d;->T:Lv1/j$d;

    new-instance v8, Lv1/f;

    const-class v1, Ljava/io/File;

    iget-object v3, p0, Lv1/d;->R:Lg2/l;

    const-class v4, Ljava/io/InputStream;

    const-class v5, Ljava/io/File;

    move-object v0, v8

    move-object v2, p0

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lv1/f;-><init>(Ljava/lang/Class;Lv1/e;Lg2/l;Ljava/lang/Class;Ljava/lang/Class;Lv1/j$d;)V

    invoke-virtual {v7, v8}, Lv1/j$d;->a(Lv1/e;)Lv1/e;

    move-result-object v0

    check-cast v0, Lv1/f;

    return-object v0
.end method


# virtual methods
.method public W()Lv1/b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv1/b<",
            "TModelType;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv1/d;->T:Lv1/j$d;

    new-instance v1, Lv1/b;

    iget-object v2, p0, Lv1/d;->R:Lg2/l;

    iget-object v3, p0, Lv1/d;->S:Lg2/l;

    invoke-direct {v1, p0, v2, v3, v0}, Lv1/b;-><init>(Lv1/e;Lg2/l;Lg2/l;Lv1/j$d;)V

    invoke-virtual {v0, v1}, Lv1/j$d;->a(Lv1/e;)Lv1/e;

    move-result-object v0

    check-cast v0, Lv1/b;

    return-object v0
.end method

.method public Z(II)Lt2/a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lt2/a<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lv1/d;->a0()Lv1/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lv1/f;->D(II)Lt2/a;

    move-result-object p1

    return-object p1
.end method
