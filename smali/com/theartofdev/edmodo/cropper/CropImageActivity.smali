###### Class com.theartofdev.edmodo.cropper.CropImageActivity (com.theartofdev.edmodo.cropper.CropImageActivity)
.class public Lcom/theartofdev/edmodo/cropper/CropImageActivity;
.super Landroidx/appcompat/app/c;
.source "CropImageActivity.java"

# interfaces
.implements Lcom/theartofdev/edmodo/cropper/CropImageView$i;
.implements Lcom/theartofdev/edmodo/cropper/CropImageView$e;


# instance fields
.field private q:Lcom/theartofdev/edmodo/cropper/CropImageView;

.field private r:Landroid/net/Uri;

.field private s:Lcom/theartofdev/edmodo/cropper/f;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/c;-><init>()V

    return-void
.end method

.method private U(Landroid/view/Menu;II)V
    .registers 5

    .line 1
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 2
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_20

    .line 3
    :try_start_c
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 4
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p3, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 5
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_17} :catch_18

    goto :goto_20

    :catch_18
    move-exception p1

    const-string p2, "AIC"

    const-string p3, "Failed to update menu item color"

    .line 6
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_20
    :goto_20
    return-void
.end method


# virtual methods
.method protected O()V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->s:Lcom/theartofdev/edmodo/cropper/f;

    iget-boolean v0, v0, Lcom/theartofdev/edmodo/cropper/f;->Z:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, v1, v0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->S(Landroid/net/Uri;Ljava/lang/Exception;I)V

    goto :goto_21

    .line 3
    :cond_c
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->P()Landroid/net/Uri;

    move-result-object v3

    .line 4
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->q:Lcom/theartofdev/edmodo/cropper/CropImageView;

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->s:Lcom/theartofdev/edmodo/cropper/f;

    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/f;->U:Landroid/graphics/Bitmap$CompressFormat;

    iget v5, v0, Lcom/theartofdev/edmodo/cropper/f;->V:I

    iget v6, v0, Lcom/theartofdev/edmodo/cropper/f;->W:I

    iget v7, v0, Lcom/theartofdev/edmodo/cropper/f;->X:I

    iget-object v8, v0, Lcom/theartofdev/edmodo/cropper/f;->Y:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    invoke-virtual/range {v2 .. v8}, Lcom/theartofdev/edmodo/cropper/CropImageView;->p(Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;IIILcom/theartofdev/edmodo/cropper/CropImageView$j;)V

    :goto_21
    return-void
.end method

.method protected P()Landroid/net/Uri;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->s:Lcom/theartofdev/edmodo/cropper/f;

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/f;->T:Landroid/net/Uri;

    if-eqz v0, :cond_e

    .line 2
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 3
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->s:Lcom/theartofdev/edmodo/cropper/f;

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/f;->U:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v0, v1, :cond_19

    const-string v0, ".jpg"

    goto :goto_22

    :cond_19
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v0, v1, :cond_20

    const-string v0, ".png"

    goto :goto_22

    :cond_20
    const-string v0, ".webp"

    :goto_22
    const-string v1, "cropped"

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_30} :catch_31

    :cond_30
    return-object v0

    :catch_31
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create temp file for output image"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected Q(Landroid/net/Uri;Ljava/lang/Exception;I)Landroid/content/Intent;
    .registers 14

    .line 1
    new-instance v9, Lcom/theartofdev/edmodo/cropper/d$c;

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->q:Lcom/theartofdev/edmodo/cropper/CropImageView;

    .line 2
    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getImageUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->q:Lcom/theartofdev/edmodo/cropper/CropImageView;

    .line 3
    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropPoints()[F

    move-result-object v4

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->q:Lcom/theartofdev/edmodo/cropper/CropImageView;

    .line 4
    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->q:Lcom/theartofdev/edmodo/cropper/CropImageView;

    .line 5
    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getRotatedDegrees()I

    move-result v6

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->q:Lcom/theartofdev/edmodo/cropper/CropImageView;

    .line 6
    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWholeImageRect()Landroid/graphics/Rect;

    move-result-object v7

    move-object v0, v9

    move-object v2, p1

    move-object v3, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/theartofdev/edmodo/cropper/d$c;-><init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;ILandroid/graphics/Rect;I)V

    .line 7
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const-string p2, "CROP_IMAGE_EXTRA_RESULT"

    .line 9
    invoke-virtual {p1, p2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p1
.end method

.method protected R(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->q:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->o(I)V

    return-void
.end method

.method protected S(Landroid/net/Uri;Ljava/lang/Exception;I)V
    .registers 5

    if-nez p2, :cond_4

    const/4 v0, -0x1

    goto :goto_6

    :cond_4
    const/16 v0, 0xcc

    .line 1
    :goto_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->Q(Landroid/net/Uri;Ljava/lang/Exception;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected T()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_2b

    if-nez p2, :cond_9

    .line 1
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->T()V

    :cond_9
    const/4 p1, -0x1

    if-ne p2, p1, :cond_2b

    .line 2
    invoke-static {p0, p3}, Lcom/theartofdev/edmodo/cropper/d;->h(Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->r:Landroid/net/Uri;

    .line 3
    invoke-static {p0, p1}, Lcom/theartofdev/edmodo/cropper/d;->k(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_24

    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 4
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xc9

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_2b

    .line 5
    :cond_24
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->q:Lcom/theartofdev/edmodo/cropper/CropImageView;

    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->r:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->T()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/e;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget v0, Lz8/b;->a:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/c;->setContentView(I)V

    .line 3
    sget v0, Lz8/a;->d:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/theartofdev/edmodo/cropper/CropImageView;

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->q:Lcom/theartofdev/edmodo/cropper/CropImageView;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CROP_IMAGE_EXTRA_BUNDLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CROP_IMAGE_EXTRA_SOURCE"

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->r:Landroid/net/Uri;

    const-string v1, "CROP_IMAGE_EXTRA_OPTIONS"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/theartofdev/edmodo/cropper/f;

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->s:Lcom/theartofdev/edmodo/cropper/f;

    if-nez p1, :cond_70

    .line 7
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->r:Landroid/net/Uri;

    if-eqz p1, :cond_5b

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    goto :goto_5b

    .line 8
    :cond_3f
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->r:Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/theartofdev/edmodo/cropper/d;->k(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_53

    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 9
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xc9

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_70

    .line 10
    :cond_53
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->q:Lcom/theartofdev/edmodo/cropper/CropImageView;

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->r:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    goto :goto_70

    .line 11
    :cond_5b
    :goto_5b
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/d;->j(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6d

    const-string p1, "android.permission.CAMERA"

    .line 12
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x7db

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_70

    .line 13
    :cond_6d
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/d;->m(Landroid/app/Activity;)V

    .line 14
    :cond_70
    :goto_70
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->D()Landroidx/appcompat/app/a;

    move-result-object p1

    if-eqz p1, :cond_9a

    .line 15
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->s:Lcom/theartofdev/edmodo/cropper/f;

    if-eqz v0, :cond_89

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/f;->R:Ljava/lang/CharSequence;

    if-eqz v0, :cond_89

    .line 16
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_89

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->s:Lcom/theartofdev/edmodo/cropper/f;

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/f;->R:Ljava/lang/CharSequence;

    goto :goto_93

    .line 17
    :cond_89
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lz8/d;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 18
    :goto_93
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->t(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 19
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->r(Z)V

    :cond_9a
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lz8/c;->a:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->s:Lcom/theartofdev/edmodo/cropper/f;

    iget-boolean v1, v0, Lcom/theartofdev/edmodo/cropper/f;->c0:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1b

    .line 3
    sget v0, Lz8/a;->i:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 4
    sget v0, Lz8/a;->j:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_28

    .line 5
    :cond_1b
    iget-boolean v0, v0, Lcom/theartofdev/edmodo/cropper/f;->e0:Z

    if-eqz v0, :cond_28

    .line 6
    sget v0, Lz8/a;->i:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 7
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->s:Lcom/theartofdev/edmodo/cropper/f;

    iget-boolean v0, v0, Lcom/theartofdev/edmodo/cropper/f;->d0:Z

    if-nez v0, :cond_33

    .line 8
    sget v0, Lz8/a;->f:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 9
    :cond_33
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->s:Lcom/theartofdev/edmodo/cropper/f;

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/f;->i0:Ljava/lang/CharSequence;

    if-eqz v0, :cond_46

    .line 10
    sget v0, Lz8/a;->e:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->s:Lcom/theartofdev/edmodo/cropper/f;

    iget-object v1, v1, Lcom/theartofdev/edmodo/cropper/f;->i0:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_46
    const/4 v0, 0x0

    .line 11
    :try_start_47
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->s:Lcom/theartofdev/edmodo/cropper/f;

    iget v1, v1, Lcom/theartofdev/edmodo/cropper/f;->j0:I

    if-eqz v1, :cond_63

    .line 12
    invoke-static {p0, v1}, Landroidx/core/content/a;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 13
    sget v1, Lz8/a;->e:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_5a} :catch_5b

    goto :goto_63

    :catch_5b
    move-exception v1

    const-string v3, "AIC"

    const-string v4, "Failed to read menu crop drawable"

    .line 14
    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    :cond_63
    :goto_63
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->s:Lcom/theartofdev/edmodo/cropper/f;

    iget v1, v1, Lcom/theartofdev/edmodo/cropper/f;->S:I

    if-eqz v1, :cond_8b

    .line 16
    sget v3, Lz8/a;->i:I

    invoke-direct {p0, p1, v3, v1}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->U(Landroid/view/Menu;II)V

    .line 17
    sget v1, Lz8/a;->j:I

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->s:Lcom/theartofdev/edmodo/cropper/f;

    iget v3, v3, Lcom/theartofdev/edmodo/cropper/f;->S:I

    invoke-direct {p0, p1, v1, v3}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->U(Landroid/view/Menu;II)V

    .line 18
    sget v1, Lz8/a;->f:I

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->s:Lcom/theartofdev/edmodo/cropper/f;

    iget v3, v3, Lcom/theartofdev/edmodo/cropper/f;->S:I

    invoke-direct {p0, p1, v1, v3}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->U(Landroid/view/Menu;II)V

    if-eqz v0, :cond_8b

    .line 19
    sget v0, Lz8/a;->e:I

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->s:Lcom/theartofdev/edmodo/cropper/f;

    iget v1, v1, Lcom/theartofdev/edmodo/cropper/f;->S:I

    invoke-direct {p0, p1, v0, v1}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->U(Landroid/view/Menu;II)V

    :cond_8b
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lz8/a;->e:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_d

    .line 2
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->O()V

    return v2

    .line 3
    :cond_d
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lz8/a;->i:I

    if-ne v0, v1, :cond_1e

    .line 4
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->s:Lcom/theartofdev/edmodo/cropper/f;

    iget p1, p1, Lcom/theartofdev/edmodo/cropper/f;->f0:I

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->R(I)V

    return v2

    .line 5
    :cond_1e
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lz8/a;->j:I

    if-ne v0, v1, :cond_2e

    .line 6
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->s:Lcom/theartofdev/edmodo/cropper/f;

    iget p1, p1, Lcom/theartofdev/edmodo/cropper/f;->f0:I

    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->R(I)V

    return v2

    .line 7
    :cond_2e
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lz8/a;->g:I

    if-ne v0, v1, :cond_3c

    .line 8
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->q:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->f()V

    return v2

    .line 9
    :cond_3c
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lz8/a;->h:I

    if-ne v0, v1, :cond_4a

    .line 10
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->q:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->g()V

    return v2

    .line 11
    :cond_4a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_57

    .line 12
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->T()V

    return v2

    .line 13
    :cond_57
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    const/16 p2, 0xc9

    if-ne p1, p2, :cond_23

    .line 1
    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->r:Landroid/net/Uri;

    if-eqz p2, :cond_16

    array-length v0, p3

    if-lez v0, :cond_16

    const/4 v0, 0x0

    aget p3, p3, v0

    if-nez p3, :cond_16

    .line 2
    iget-object p3, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->q:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {p3, p2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    goto :goto_23

    .line 3
    :cond_16
    sget p2, Lz8/d;->a:I

    const/4 p3, 0x1

    invoke-static {p0, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 4
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->T()V

    :cond_23
    :goto_23
    const/16 p2, 0x7db

    if-ne p1, p2, :cond_2a

    .line 5
    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/d;->m(Landroid/app/Activity;)V

    :cond_2a
    return-void
.end method

.method protected onStart()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/c;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->q:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {v0, p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setOnSetImageUriCompleteListener(Lcom/theartofdev/edmodo/cropper/CropImageView$i;)V

    .line 3
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->q:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {v0, p0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setOnCropImageCompleteListener(Lcom/theartofdev/edmodo/cropper/CropImageView$e;)V

    return-void
.end method

.method protected onStop()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/c;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->q:Lcom/theartofdev/edmodo/cropper/CropImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setOnSetImageUriCompleteListener(Lcom/theartofdev/edmodo/cropper/CropImageView$i;)V

    .line 3
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->q:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setOnCropImageCompleteListener(Lcom/theartofdev/edmodo/cropper/CropImageView$e;)V

    return-void
.end method

.method public w(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/net/Uri;Ljava/lang/Exception;)V
    .registers 4

    if-nez p3, :cond_1a

    .line 1
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->s:Lcom/theartofdev/edmodo/cropper/f;

    iget-object p1, p1, Lcom/theartofdev/edmodo/cropper/f;->a0:Landroid/graphics/Rect;

    if-eqz p1, :cond_d

    .line 2
    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->q:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {p2, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setCropRect(Landroid/graphics/Rect;)V

    .line 3
    :cond_d
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->s:Lcom/theartofdev/edmodo/cropper/f;

    iget p1, p1, Lcom/theartofdev/edmodo/cropper/f;->b0:I

    const/4 p2, -0x1

    if-le p1, p2, :cond_1f

    .line 4
    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->q:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {p2, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setRotatedDegrees(I)V

    goto :goto_1f

    :cond_1a
    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p0, p1, p3, p2}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->S(Landroid/net/Uri;Ljava/lang/Exception;I)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public x(Lcom/theartofdev/edmodo/cropper/CropImageView;Lcom/theartofdev/edmodo/cropper/CropImageView$b;)V
    .registers 4

    .line 1
    invoke-virtual {p2}, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->z()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2}, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->v()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p2}, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->y()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/theartofdev/edmodo/cropper/CropImageActivity;->S(Landroid/net/Uri;Ljava/lang/Exception;I)V

    return-void
.end method
