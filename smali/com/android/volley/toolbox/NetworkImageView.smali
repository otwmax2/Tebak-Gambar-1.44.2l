###### Class com.android.volley.toolbox.NetworkImageView (com.android.volley.toolbox.NetworkImageView)
.class public Lcom/android/volley/toolbox/NetworkImageView;
.super Landroid/widget/ImageView;
.source "NetworkImageView.java"


# instance fields
.field private o:Ljava/lang/String;

.field private p:I

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Landroid/graphics/Bitmap;

.field private s:I

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:Landroid/graphics/Bitmap;

.field private v:Lcom/android/volley/toolbox/ImageLoader;

.field private w:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;


# direct methods
.method static synthetic a(Lcom/android/volley/toolbox/NetworkImageView;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/volley/toolbox/NetworkImageView;->s:I

    return p0
.end method

.method static synthetic b(Lcom/android/volley/toolbox/NetworkImageView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/volley/toolbox/NetworkImageView;->t:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic c(Lcom/android/volley/toolbox/NetworkImageView;)Landroid/graphics/Bitmap;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/volley/toolbox/NetworkImageView;->u:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic d(Lcom/android/volley/toolbox/NetworkImageView;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/volley/toolbox/NetworkImageView;->p:I

    return p0
.end method

.method static synthetic e(Lcom/android/volley/toolbox/NetworkImageView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/volley/toolbox/NetworkImageView;->q:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic f(Lcom/android/volley/toolbox/NetworkImageView;)Landroid/graphics/Bitmap;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/volley/toolbox/NetworkImageView;->r:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private h()V
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->p:I

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1c

    .line 3
    :cond_8
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1c

    .line 5
    :cond_10
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_18

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1c

    :cond_18
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1c
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method g(Z)V
    .registers 10

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v7

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2a

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x2

    if-ne v2, v5, :cond_1f

    const/4 v2, 0x1

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    .line 6
    :goto_20
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v6, v5, :cond_2b

    const/4 v5, 0x1

    goto :goto_2c

    :cond_2a
    const/4 v2, 0x0

    :cond_2b
    const/4 v5, 0x0

    :goto_2c
    if-eqz v2, :cond_31

    if-eqz v5, :cond_31

    goto :goto_32

    :cond_31
    const/4 v3, 0x0

    :goto_32
    if-nez v0, :cond_39

    if-nez v1, :cond_39

    if-nez v3, :cond_39

    return-void

    .line 7
    :cond_39
    iget-object v3, p0, Lcom/android/volley/toolbox/NetworkImageView;->o:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 8
    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->w:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz p1, :cond_4b

    .line 9
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->c()V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->w:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 11
    :cond_4b
    invoke-direct {p0}, Lcom/android/volley/toolbox/NetworkImageView;->h()V

    return-void

    .line 12
    :cond_4f
    iget-object v3, p0, Lcom/android/volley/toolbox/NetworkImageView;->w:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v3, :cond_70

    invoke-virtual {v3}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->e()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_70

    .line 13
    iget-object v3, p0, Lcom/android/volley/toolbox/NetworkImageView;->w:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v3}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/volley/toolbox/NetworkImageView;->o:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    return-void

    .line 14
    :cond_68
    iget-object v3, p0, Lcom/android/volley/toolbox/NetworkImageView;->w:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v3}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->c()V

    .line 15
    invoke-direct {p0}, Lcom/android/volley/toolbox/NetworkImageView;->h()V

    :cond_70
    if-eqz v2, :cond_73

    const/4 v0, 0x0

    :cond_73
    if-eqz v5, :cond_77

    const/4 v6, 0x0

    goto :goto_78

    :cond_77
    move v6, v1

    .line 16
    :goto_78
    iget-object v2, p0, Lcom/android/volley/toolbox/NetworkImageView;->v:Lcom/android/volley/toolbox/ImageLoader;

    iget-object v3, p0, Lcom/android/volley/toolbox/NetworkImageView;->o:Ljava/lang/String;

    new-instance v4, Lcom/android/volley/toolbox/NetworkImageView$1;

    invoke-direct {v4, p0, p1}, Lcom/android/volley/toolbox/NetworkImageView$1;-><init>(Lcom/android/volley/toolbox/NetworkImageView;Z)V

    move v5, v0

    .line 17
    invoke-virtual/range {v2 .. v7}, Lcom/android/volley/toolbox/ImageLoader;->e(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;IILandroid/widget/ImageView$ScaleType;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->w:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->w:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {v0}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->c()V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4
    iput-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->w:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 5
    :cond_d
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/NetworkImageView;->g(Z)V

    return-void
.end method

.method public setDefaultImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->p:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->q:Landroid/graphics/drawable/Drawable;

    .line 3
    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->r:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setDefaultImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->p:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->r:Landroid/graphics/Bitmap;

    .line 3
    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->q:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDefaultImageResId(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->r:Landroid/graphics/Bitmap;

    .line 2
    iput-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->q:Landroid/graphics/drawable/Drawable;

    .line 3
    iput p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->p:I

    return-void
.end method

.method public setErrorImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->s:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->t:Landroid/graphics/drawable/Drawable;

    .line 3
    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->u:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setErrorImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->s:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->u:Landroid/graphics/Bitmap;

    .line 3
    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->t:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setErrorImageResId(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->u:Landroid/graphics/Bitmap;

    .line 2
    iput-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->t:Landroid/graphics/drawable/Drawable;

    .line 3
    iput p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->s:I

    return-void
.end method

###### Class com.android.volley.toolbox.NetworkImageView.AnonymousClass1 (com.android.volley.toolbox.NetworkImageView$1)
.class Lcom/android/volley/toolbox/NetworkImageView$1;
.super Ljava/lang/Object;
.source "NetworkImageView.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/NetworkImageView;->g(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Z

.field final synthetic p:Lcom/android/volley/toolbox/NetworkImageView;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/NetworkImageView;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->p:Lcom/android/volley/toolbox/NetworkImageView;

    iput-boolean p2, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->o:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .registers 4

    if-eqz p2, :cond_11

    .line 1
    iget-boolean p2, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->o:Z

    if-eqz p2, :cond_11

    .line 2
    iget-object p2, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->p:Lcom/android/volley/toolbox/NetworkImageView;

    new-instance v0, Lcom/android/volley/toolbox/NetworkImageView$1$1;

    invoke-direct {v0, p0, p1}, Lcom/android/volley/toolbox/NetworkImageView$1$1;-><init>(Lcom/android/volley/toolbox/NetworkImageView$1;Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 3
    :cond_11
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->d()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_21

    .line 4
    iget-object p2, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->p:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->d()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_56

    .line 5
    :cond_21
    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->p:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkImageView;->d(Lcom/android/volley/toolbox/NetworkImageView;)I

    move-result p1

    if-eqz p1, :cond_33

    .line 6
    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->p:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkImageView;->d(Lcom/android/volley/toolbox/NetworkImageView;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_56

    .line 7
    :cond_33
    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->p:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkImageView;->e(Lcom/android/volley/toolbox/NetworkImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_45

    .line 8
    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->p:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkImageView;->e(Lcom/android/volley/toolbox/NetworkImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_56

    .line 9
    :cond_45
    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->p:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkImageView;->f(Lcom/android/volley/toolbox/NetworkImageView;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_56

    .line 10
    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->p:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkImageView;->f(Lcom/android/volley/toolbox/NetworkImageView;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_56
    :goto_56
    return-void
.end method

.method public c(Lcom/android/volley/VolleyError;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->p:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkImageView;->a(Lcom/android/volley/toolbox/NetworkImageView;)I

    move-result p1

    if-eqz p1, :cond_12

    .line 2
    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->p:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkImageView;->a(Lcom/android/volley/toolbox/NetworkImageView;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_35

    .line 3
    :cond_12
    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->p:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkImageView;->b(Lcom/android/volley/toolbox/NetworkImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 4
    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->p:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkImageView;->b(Lcom/android/volley/toolbox/NetworkImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_35

    .line 5
    :cond_24
    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->p:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkImageView;->c(Lcom/android/volley/toolbox/NetworkImageView;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 6
    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->p:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkImageView;->c(Lcom/android/volley/toolbox/NetworkImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_35
    :goto_35
    return-void
.end method

###### Class com.android.volley.toolbox.NetworkImageView.AnonymousClass1.RunnableC01031 (com.android.volley.toolbox.NetworkImageView$1$1)
.class Lcom/android/volley/toolbox/NetworkImageView$1$1;
.super Ljava/lang/Object;
.source "NetworkImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/NetworkImageView$1;->a(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

.field final synthetic p:Lcom/android/volley/toolbox/NetworkImageView$1;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/NetworkImageView$1;Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1$1;->p:Lcom/android/volley/toolbox/NetworkImageView$1;

    iput-object p2, p0, Lcom/android/volley/toolbox/NetworkImageView$1$1;->o:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView$1$1;->p:Lcom/android/volley/toolbox/NetworkImageView$1;

    iget-object v1, p0, Lcom/android/volley/toolbox/NetworkImageView$1$1;->o:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/volley/toolbox/NetworkImageView$1;->a(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V

    return-void
.end method
