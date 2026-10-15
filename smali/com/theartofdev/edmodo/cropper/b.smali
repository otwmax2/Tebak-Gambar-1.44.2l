###### Class com.theartofdev.edmodo.cropper.b (com.theartofdev.edmodo.cropper.b)
.class final Lcom/theartofdev/edmodo/cropper/b;
.super Landroid/os/AsyncTask;
.source "BitmapLoadingWorkerTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/theartofdev/edmodo/cropper/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/theartofdev/edmodo/cropper/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/theartofdev/edmodo/cropper/CropImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/net/Uri;

.field private final c:Landroid/content/Context;

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/net/Uri;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/b;->b:Landroid/net/Uri;

    .line 3
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/b;->a:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/b;->c:Landroid/content/Context;

    .line 5
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 6
    iget p2, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v0

    if-lez v1, :cond_25

    div-float/2addr v0, p2

    float-to-double v0, v0

    goto :goto_27

    :cond_25
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 7
    :goto_27
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    double-to-int p2, v2

    iput p2, p0, Lcom/theartofdev/edmodo/cropper/b;->d:I

    .line 8
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v0

    double-to-int p1, p1

    iput p1, p0, Lcom/theartofdev/edmodo/cropper/b;->e:I

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/theartofdev/edmodo/cropper/b$a;
    .registers 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_30

    .line 2
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/b;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/b;->b:Landroid/net/Uri;

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/b;->d:I

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/b;->e:I

    .line 3
    invoke-static {p1, v0, v1, v2}, Lcom/theartofdev/edmodo/cropper/c;->l(Landroid/content/Context;Landroid/net/Uri;II)Lcom/theartofdev/edmodo/cropper/c$a;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_30

    .line 5
    iget-object v0, p1, Lcom/theartofdev/edmodo/cropper/c$a;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/b;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/b;->b:Landroid/net/Uri;

    .line 6
    invoke-static {v0, v1, v2}, Lcom/theartofdev/edmodo/cropper/c;->A(Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/net/Uri;)Lcom/theartofdev/edmodo/cropper/c$b;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/theartofdev/edmodo/cropper/b$a;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/b;->b:Landroid/net/Uri;

    iget-object v3, v0, Lcom/theartofdev/edmodo/cropper/c$b;->a:Landroid/graphics/Bitmap;

    iget p1, p1, Lcom/theartofdev/edmodo/cropper/c$a;->b:I

    iget v0, v0, Lcom/theartofdev/edmodo/cropper/c$b;->b:I

    invoke-direct {v1, v2, v3, p1, v0}, Lcom/theartofdev/edmodo/cropper/b$a;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;II)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_32

    return-object v1

    :cond_30
    const/4 p1, 0x0

    return-object p1

    :catch_32
    move-exception p1

    .line 8
    new-instance v0, Lcom/theartofdev/edmodo/cropper/b$a;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/b;->b:Landroid/net/Uri;

    invoke-direct {v0, v1, p1}, Lcom/theartofdev/edmodo/cropper/b$a;-><init>(Landroid/net/Uri;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public b()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/b;->b:Landroid/net/Uri;

    return-object v0
.end method

.method protected c(Lcom/theartofdev/edmodo/cropper/b$a;)V
    .registers 4

    if-eqz p1, :cond_20

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_17

    .line 2
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/theartofdev/edmodo/cropper/CropImageView;

    if-eqz v1, :cond_17

    const/4 v0, 0x1

    .line 3
    invoke-virtual {v1, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->n(Lcom/theartofdev/edmodo/cropper/b$a;)V

    :cond_17
    if-nez v0, :cond_20

    .line 4
    iget-object p1, p1, Lcom/theartofdev/edmodo/cropper/b$a;->b:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_20

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_20
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/b;->a([Ljava/lang/Void;)Lcom/theartofdev/edmodo/cropper/b$a;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/theartofdev/edmodo/cropper/b$a;

    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/b;->c(Lcom/theartofdev/edmodo/cropper/b$a;)V

    return-void
.end method

###### Class com.theartofdev.edmodo.cropper.b.a (com.theartofdev.edmodo.cropper.b$a)
.class public final Lcom/theartofdev/edmodo/cropper/b$a;
.super Ljava/lang/Object;
.source "BitmapLoadingWorkerTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Landroid/graphics/Bitmap;

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Landroid/net/Uri;Landroid/graphics/Bitmap;II)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/b$a;->a:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/b$a;->b:Landroid/graphics/Bitmap;

    .line 4
    iput p3, p0, Lcom/theartofdev/edmodo/cropper/b$a;->c:I

    .line 5
    iput p4, p0, Lcom/theartofdev/edmodo/cropper/b$a;->d:I

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/b$a;->e:Ljava/lang/Exception;

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;Ljava/lang/Exception;)V
    .registers 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/b$a;->a:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/b$a;->b:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/b$a;->c:I

    .line 11
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/b$a;->d:I

    .line 12
    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/b$a;->e:Ljava/lang/Exception;

    return-void
.end method
