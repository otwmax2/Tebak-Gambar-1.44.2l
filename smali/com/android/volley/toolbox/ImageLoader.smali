###### Class com.android.volley.toolbox.ImageLoader (com.android.volley.toolbox.ImageLoader)
.class public Lcom/android/volley/toolbox/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;,
        Lcom/android/volley/toolbox/ImageLoader$ImageContainer;,
        Lcom/android/volley/toolbox/ImageLoader$ImageListener;,
        Lcom/android/volley/toolbox/ImageLoader$ImageCache;
    }
.end annotation


# instance fields
.field private final a:Lcom/android/volley/RequestQueue;

.field private b:I

.field private final c:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/os/Handler;

.field private g:Ljava/lang/Runnable;


# direct methods
.method static synthetic a(Lcom/android/volley/toolbox/ImageLoader;)Ljava/util/HashMap;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/volley/toolbox/ImageLoader;->d:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic b(Lcom/android/volley/toolbox/ImageLoader;)Ljava/util/HashMap;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/volley/toolbox/ImageLoader;->e:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic c(Lcom/android/volley/toolbox/ImageLoader;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader;->g:Ljava/lang/Runnable;

    return-object p1
.end method

.method private d(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lcom/android/volley/toolbox/ImageLoader;->g:Ljava/lang/Runnable;

    if-nez p1, :cond_18

    .line 3
    new-instance p1, Lcom/android/volley/toolbox/ImageLoader$4;

    invoke-direct {p1, p0}, Lcom/android/volley/toolbox/ImageLoader$4;-><init>(Lcom/android/volley/toolbox/ImageLoader;)V

    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader;->g:Ljava/lang/Runnable;

    .line 4
    iget-object p2, p0, Lcom/android/volley/toolbox/ImageLoader;->f:Landroid/os/Handler;

    iget v0, p0, Lcom/android/volley/toolbox/ImageLoader;->b:I

    int-to-long v0, v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_18
    return-void
.end method

.method private static f(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "#W"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "#H"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "#S"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p3}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public e(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;IILandroid/widget/ImageView$ScaleType;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    .registers 21

    move-object v6, p0

    move-object/from16 v7, p2

    .line 1
    invoke-static {}, Lcom/android/volley/toolbox/Threads;->a()V

    move-object/from16 v8, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    .line 2
    invoke-static {v8, v9, v10, v11}, Lcom/android/volley/toolbox/ImageLoader;->f(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v12

    .line 3
    iget-object v0, v6, Lcom/android/volley/toolbox/ImageLoader;->c:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {v0, v12}, Lcom/android/volley/toolbox/ImageLoader$ImageCache;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v13, 0x1

    if-eqz v2, :cond_2a

    .line 4
    new-instance v9, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lcom/android/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)V

    .line 5
    invoke-interface {v7, v9, v13}, Lcom/android/volley/toolbox/ImageLoader$ImageListener;->a(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V

    return-object v9

    .line 6
    :cond_2a
    new-instance v14, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v2, 0x0

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v3, p1

    move-object v4, v12

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lcom/android/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)V

    .line 7
    invoke-interface {v7, v14, v13}, Lcom/android/volley/toolbox/ImageLoader$ImageListener;->a(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V

    .line 8
    iget-object v0, v6, Lcom/android/volley/toolbox/ImageLoader;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;

    if-nez v0, :cond_4c

    .line 9
    iget-object v0, v6, Lcom/android/volley/toolbox/ImageLoader;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;

    :cond_4c
    if-eqz v0, :cond_52

    .line 10
    invoke-virtual {v0, v14}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->d(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)V

    return-object v14

    :cond_52
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object v5, v12

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/android/volley/toolbox/ImageLoader;->g(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/android/volley/Request;

    move-result-object v0

    .line 12
    iget-object v1, v6, Lcom/android/volley/toolbox/ImageLoader;->a:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->a(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 13
    iget-object v1, v6, Lcom/android/volley/toolbox/ImageLoader;->d:Ljava/util/HashMap;

    new-instance v2, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;

    invoke-direct {v2, v0, v14}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;-><init>(Lcom/android/volley/Request;Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)V

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v14
.end method

.method protected g(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/android/volley/Request;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroid/widget/ImageView$ScaleType;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/volley/Request<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/android/volley/toolbox/ImageRequest;

    new-instance v2, Lcom/android/volley/toolbox/ImageLoader$2;

    invoke-direct {v2, p0, p5}, Lcom/android/volley/toolbox/ImageLoader$2;-><init>(Lcom/android/volley/toolbox/ImageLoader;Ljava/lang/String;)V

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v7, Lcom/android/volley/toolbox/ImageLoader$3;

    invoke-direct {v7, p0, p5}, Lcom/android/volley/toolbox/ImageLoader$3;-><init>(Lcom/android/volley/toolbox/ImageLoader;Ljava/lang/String;)V

    move-object v0, v8

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/volley/toolbox/ImageRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V

    return-object v8
.end method

.method protected h(Ljava/lang/String;Lcom/android/volley/VolleyError;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;

    if-eqz v0, :cond_10

    .line 2
    invoke-virtual {v0, p2}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->g(Lcom/android/volley/VolleyError;)V

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/ImageLoader;->d(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;)V

    :cond_10
    return-void
.end method

.method protected i(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader;->c:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {v0, p1, p2}, Lcom/android/volley/toolbox/ImageLoader$ImageCache;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;

    if-eqz v0, :cond_15

    .line 3
    invoke-static {v0, p2}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->b(Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/ImageLoader;->d(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;)V

    :cond_15
    return-void
.end method

###### Class com.android.volley.toolbox.ImageLoader.AnonymousClass1 (com.android.volley.toolbox.ImageLoader$1)
.class Lcom/android/volley/toolbox/ImageLoader$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# instance fields
.field final synthetic o:I

.field final synthetic p:Landroid/widget/ImageView;

.field final synthetic q:I


# virtual methods
.method public a(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->d()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_10

    .line 2
    iget-object p2, p0, Lcom/android/volley/toolbox/ImageLoader$1;->p:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->d()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_19

    .line 3
    :cond_10
    iget p1, p0, Lcom/android/volley/toolbox/ImageLoader$1;->q:I

    if-eqz p1, :cond_19

    .line 4
    iget-object p2, p0, Lcom/android/volley/toolbox/ImageLoader$1;->p:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_19
    :goto_19
    return-void
.end method

.method public c(Lcom/android/volley/VolleyError;)V
    .registers 3

    .line 1
    iget p1, p0, Lcom/android/volley/toolbox/ImageLoader$1;->o:I

    if-eqz p1, :cond_9

    .line 2
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$1;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_9
    return-void
.end method

###### Class com.android.volley.toolbox.ImageLoader.AnonymousClass2 (com.android.volley.toolbox.ImageLoader$2)
.class Lcom/android/volley/toolbox/ImageLoader$2;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/ImageLoader;->g(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/android/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/String;

.field final synthetic p:Lcom/android/volley/toolbox/ImageLoader;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/ImageLoader;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$2;->p:Lcom/android/volley/toolbox/ImageLoader;

    iput-object p2, p0, Lcom/android/volley/toolbox/ImageLoader$2;->o:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$2;->p:Lcom/android/volley/toolbox/ImageLoader;

    iget-object v1, p0, Lcom/android/volley/toolbox/ImageLoader$2;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/volley/toolbox/ImageLoader;->i(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/ImageLoader$2;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

###### Class com.android.volley.toolbox.ImageLoader.AnonymousClass3 (com.android.volley.toolbox.ImageLoader$3)
.class Lcom/android/volley/toolbox/ImageLoader$3;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/ImageLoader;->g(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/android/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/String;

.field final synthetic p:Lcom/android/volley/toolbox/ImageLoader;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/ImageLoader;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$3;->p:Lcom/android/volley/toolbox/ImageLoader;

    iput-object p2, p0, Lcom/android/volley/toolbox/ImageLoader$3;->o:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/android/volley/VolleyError;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$3;->p:Lcom/android/volley/toolbox/ImageLoader;

    iget-object v1, p0, Lcom/android/volley/toolbox/ImageLoader$3;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/volley/toolbox/ImageLoader;->h(Ljava/lang/String;Lcom/android/volley/VolleyError;)V

    return-void
.end method

###### Class com.android.volley.toolbox.ImageLoader.AnonymousClass4 (com.android.volley.toolbox.ImageLoader$4)
.class Lcom/android/volley/toolbox/ImageLoader$4;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/ImageLoader;->d(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/android/volley/toolbox/ImageLoader;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/ImageLoader;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$4;->o:Lcom/android/volley/toolbox/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$4;->o:Lcom/android/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcom/android/volley/toolbox/ImageLoader;->b(Lcom/android/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;

    .line 2
    invoke-static {v1}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->c(Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 3
    invoke-static {v3}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->a(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v4

    if-nez v4, :cond_35

    goto :goto_22

    .line 4
    :cond_35
    invoke-virtual {v1}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->e()Lcom/android/volley/VolleyError;

    move-result-object v4

    if-nez v4, :cond_4b

    .line 5
    invoke-static {v1}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->a(Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->b(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 6
    invoke-static {v3}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->a(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lcom/android/volley/toolbox/ImageLoader$ImageListener;->a(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V

    goto :goto_22

    .line 7
    :cond_4b
    invoke-static {v3}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->a(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->e()Lcom/android/volley/VolleyError;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/volley/Response$ErrorListener;->c(Lcom/android/volley/VolleyError;)V

    goto :goto_22

    .line 8
    :cond_57
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$4;->o:Lcom/android/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcom/android/volley/toolbox/ImageLoader;->b(Lcom/android/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 9
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$4;->o:Lcom/android/volley/toolbox/ImageLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/volley/toolbox/ImageLoader;->c(Lcom/android/volley/toolbox/ImageLoader;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method

###### Class com.android.volley.toolbox.ImageLoader.BatchedImageRequest (com.android.volley.toolbox.ImageLoader$BatchedImageRequest)
.class Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatchedImageRequest"
.end annotation


# instance fields
.field private final a:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation
.end field

.field private b:Landroid/graphics/Bitmap;

.field private c:Lcom/android/volley/VolleyError;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/volley/toolbox/ImageLoader$ImageContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/volley/Request;Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/toolbox/ImageLoader$ImageContainer;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->d:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->a:Lcom/android/volley/Request;

    .line 4
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;)Landroid/graphics/Bitmap;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic b(Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->b:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic c(Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->d:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public d(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e()Lcom/android/volley/VolleyError;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->c:Lcom/android/volley/VolleyError;

    return-object v0
.end method

.method public f(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_14

    .line 3
    iget-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->a:Lcom/android/volley/Request;

    invoke-virtual {p1}, Lcom/android/volley/Request;->f()V

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public g(Lcom/android/volley/VolleyError;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->c:Lcom/android/volley/VolleyError;

    return-void
.end method

###### Class com.android.volley.toolbox.ImageLoader.ImageCache (com.android.volley.toolbox.ImageLoader$ImageCache)
.class public interface abstract Lcom/android/volley/toolbox/ImageLoader$ImageCache;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageCache"
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method public abstract b(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

###### Class com.android.volley.toolbox.ImageLoader.ImageContainer (com.android.volley.toolbox.ImageLoader$ImageContainer)
.class public Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageContainer"
.end annotation


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private final b:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field final synthetic e:Lcom/android/volley/toolbox/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->e:Lcom/android/volley/toolbox/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->a:Landroid/graphics/Bitmap;

    .line 3
    iput-object p3, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->d:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->c:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->b:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    return-void
.end method

.method static synthetic a(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)Lcom/android/volley/toolbox/ImageLoader$ImageListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->b:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    return-object p0
.end method

.method static synthetic b(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->a:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public c()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/volley/toolbox/Threads;->a()V

    .line 2
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->b:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    if-nez v0, :cond_8

    return-void

    .line 3
    :cond_8
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->e:Lcom/android/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcom/android/volley/toolbox/ImageLoader;->a(Lcom/android/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;

    if-eqz v0, :cond_2a

    .line 4
    invoke-virtual {v0, p0}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->f(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 5
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->e:Lcom/android/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcom/android/volley/toolbox/ImageLoader;->a(Lcom/android/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 6
    :cond_2a
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->e:Lcom/android/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcom/android/volley/toolbox/ImageLoader;->b(Lcom/android/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;

    if-eqz v0, :cond_52

    .line 7
    invoke-virtual {v0, p0}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->f(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)Z

    .line 8
    invoke-static {v0}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->c(Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_52

    .line 9
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->e:Lcom/android/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcom/android/volley/toolbox/ImageLoader;->b(Lcom/android/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52
    :goto_52
    return-void
.end method

.method public d()Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->d:Ljava/lang/String;

    return-object v0
.end method

###### Class com.android.volley.toolbox.ImageLoader.ImageListener (com.android.volley.toolbox.ImageLoader$ImageListener)
.class public interface abstract Lcom/android/volley/toolbox/ImageLoader$ImageListener;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageListener"
.end annotation


# virtual methods
.method public abstract a(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
.end method
