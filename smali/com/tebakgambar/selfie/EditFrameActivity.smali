###### Class com.tebakgambar.selfie.EditFrameActivity (com.tebakgambar.selfie.EditFrameActivity)
.class public Lcom/tebakgambar/selfie/EditFrameActivity;
.super Lj8/t;
.source "EditFrameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ly8/w$g;


# instance fields
.field private A:Z

.field private B:Lj8/c0;

.field private C:Ly8/w;

.field private D:Landroid/net/Uri;

.field private E:Ljava/lang/Runnable;

.field private F:Lt1/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/i<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private G:Z

.field private y:Lo8/c;

.field private z:Lcom/tebakgambar/selfie/g;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lj8/t;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->A:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->B:Lj8/c0;

    .line 4
    iput-boolean v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->G:Z

    return-void
.end method

.method private static synthetic A1(Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/tebak-gambar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_27

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 6
    :cond_27
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v3, "DD-MM-yyyy"

    invoke-direct {p0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".png"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x1f4

    .line 9
    invoke-static {p1, v0, v0}, Ly8/y;->M(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 10
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x55

    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 11
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 12
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic B1(Lt1/h;)Lt1/h;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const p1, 0x7f1200e5

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj8/t;->O0(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private static synthetic C1(Lt1/h;)Lt1/h;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lt1/h;->r()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->a()Lcom/google/firebase/crashlytics/a;

    move-result-object v0

    invoke-virtual {p0}, Lt1/h;->r()Ljava/lang/Exception;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/firebase/crashlytics/a;->d(Ljava/lang/Throwable;)V

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic D1(Landroid/net/Uri;Lt1/h;)Lt1/h;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object p2, p2, Lo8/c;->X:Lcom/framer/FrameView;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/framer/FrameView;->o(Landroid/net/Uri;Z)V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object p1, p1, Lo8/c;->e0:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object p1, p1, Lo8/c;->i0:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object p1, p1, Lo8/c;->Y:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iput-boolean v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->A:Z

    const/4 p1, 0x0

    return-object p1
.end method

.method private E1()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/selfie/EditFrameActivity;->I1()V

    .line 2
    invoke-static {p0}, Lv1/g;->w(Landroidx/fragment/app/e;)Lv1/j;

    move-result-object v0

    const v1, 0x7f0800ef

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lv1/j;->w(Ljava/lang/Integer;)Lv1/d;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lv1/d;->W()Lv1/b;

    move-result-object v0

    new-instance v1, Lcom/tebakgambar/selfie/EditFrameActivity$c;

    invoke-direct {v1, p0}, Lcom/tebakgambar/selfie/EditFrameActivity$c;-><init>(Lcom/tebakgambar/selfie/EditFrameActivity;)V

    .line 5
    invoke-virtual {v0, v1}, Lv1/e;->q(Lv2/j;)Lv2/j;

    return-void
.end method

.method private F1(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/selfie/EditFrameActivity;->I1()V

    .line 2
    invoke-static {p0}, Lv1/g;->w(Landroidx/fragment/app/e;)Lv1/j;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lv1/j;->x(Ljava/lang/String;)Lv1/d;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lv1/d;->W()Lv1/b;

    move-result-object p1

    const v0, 0x7f08015a

    .line 5
    invoke-virtual {p1, v0}, Lv1/a;->M(I)Lv1/a;

    move-result-object p1

    sget-object v0, Lb2/b;->q:Lb2/b;

    .line 6
    invoke-virtual {p1, v0}, Lv1/a;->G(Lb2/b;)Lv1/a;

    move-result-object p1

    new-instance v0, Lcom/tebakgambar/selfie/EditFrameActivity$e;

    invoke-direct {v0, p0}, Lcom/tebakgambar/selfie/EditFrameActivity$e;-><init>(Lcom/tebakgambar/selfie/EditFrameActivity;)V

    .line 7
    invoke-virtual {p1, v0}, Lv1/a;->J(Lt2/f;)Lv1/a;

    move-result-object p1

    new-instance v0, Lcom/tebakgambar/selfie/EditFrameActivity$d;

    invoke-direct {v0, p0}, Lcom/tebakgambar/selfie/EditFrameActivity$d;-><init>(Lcom/tebakgambar/selfie/EditFrameActivity;)V

    .line 8
    invoke-virtual {p1, v0}, Lv1/e;->q(Lv2/j;)Lv2/j;

    return-void
.end method

.method private G1()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/selfie/EditFrameActivity;->I1()V

    .line 2
    new-instance v0, Lu8/d;

    invoke-direct {v0, p0}, Lu8/d;-><init>(Lcom/tebakgambar/selfie/EditFrameActivity;)V

    invoke-static {v0}, Lt1/h;->d(Ljava/util/concurrent/Callable;)Lt1/h;

    move-result-object v0

    new-instance v1, Lcom/tebakgambar/selfie/EditFrameActivity$b;

    invoke-direct {v1, p0}, Lcom/tebakgambar/selfie/EditFrameActivity$b;-><init>(Lcom/tebakgambar/selfie/EditFrameActivity;)V

    sget-object v2, Lt1/h;->k:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lt1/h;->A(Lt1/f;Ljava/util/concurrent/Executor;)Lt1/h;

    move-result-object v0

    sget-object v1, Lu8/i;->a:Lu8/i;

    .line 3
    invoke-virtual {v0, v1}, Lt1/h;->l(Lt1/f;)Lt1/h;

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object v0, v0, Lo8/c;->Q:Lcom/tebakgambar/component/CustomButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object v0, v0, Lo8/c;->O:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private H1()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object v0, v0, Lo8/c;->P:Lcom/tebakgambar/component/CustomButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->F:Lt1/i;

    invoke-virtual {v0}, Lt1/i;->a()Lt1/h;

    move-result-object v0

    invoke-virtual {v0}, Lt1/h;->v()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->F:Lt1/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lt1/i;->d(Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method private I1()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object v0, v0, Lo8/c;->h0:Lcom/tebakgambar/component/CustomTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object v0, v0, Lo8/c;->X:Lcom/framer/FrameView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object v0, v0, Lo8/c;->i0:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object v0, v0, Lo8/c;->b0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object v0, v0, Lo8/c;->Y:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object v0, v0, Lo8/c;->P:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private J1()V
    .registers 3

    .line 1
    new-instance v0, Lj8/y;

    const v1, 0x7f1300ec

    invoke-direct {v0, p0, v1}, Lj8/y;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance v1, Lcom/tebakgambar/selfie/EditFrameActivity$g;

    invoke-direct {v1, p0, v0}, Lcom/tebakgambar/selfie/EditFrameActivity$g;-><init>(Lcom/tebakgambar/selfie/EditFrameActivity;Lj8/y;)V

    invoke-virtual {v0, v1}, Lj8/y;->b(Lj8/y$a;)V

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private K1()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object v0, v0, Lo8/c;->X:Lcom/framer/FrameView;

    invoke-virtual {v0}, Lcom/framer/FrameView;->getPictureBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tebakgambar.com_frame_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->z:Lcom/tebakgambar/selfie/g;

    iget v2, v2, Lcom/tebakgambar/selfie/g;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-direct {p0}, Lcom/tebakgambar/selfie/EditFrameActivity;->N1()V

    .line 4
    new-instance v2, Lu8/e;

    invoke-direct {v2, v1, v0}, Lu8/e;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {v2}, Lt1/h;->d(Ljava/util/concurrent/Callable;)Lt1/h;

    move-result-object v0

    new-instance v1, Lu8/f;

    invoke-direct {v1, p0}, Lu8/f;-><init>(Lcom/tebakgambar/selfie/EditFrameActivity;)V

    sget-object v2, Lt1/h;->k:Ljava/util/concurrent/Executor;

    .line 5
    invoke-virtual {v0, v1, v2}, Lt1/h;->A(Lt1/f;Ljava/util/concurrent/Executor;)Lt1/h;

    move-result-object v0

    sget-object v1, Lu8/h;->a:Lu8/h;

    .line 6
    invoke-virtual {v0, v1}, Lt1/h;->l(Lt1/f;)Lt1/h;

    return-void
.end method

.method private L1(Landroid/net/Uri;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->F:Lt1/i;

    invoke-virtual {v0}, Lt1/i;->a()Lt1/h;

    move-result-object v0

    new-instance v1, Lu8/g;

    invoke-direct {v1, p0, p1}, Lu8/g;-><init>(Lcom/tebakgambar/selfie/EditFrameActivity;Landroid/net/Uri;)V

    sget-object p1, Lt1/h;->k:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p1}, Lt1/h;->A(Lt1/f;Ljava/util/concurrent/Executor;)Lt1/h;

    return-void
.end method

.method private M1(Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "regular_frame - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->z:Lcom/tebakgambar/selfie/g;

    iget v1, v1, Lcom/tebakgambar/selfie/g;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "clickOnEditPhoto"

    const-string v1, "edit selfie frame"

    const-string v2, "click on edit photo"

    invoke-static {v0, v1, v2, p1}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private N1()V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "regular_frame - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->z:Lcom/tebakgambar/selfie/g;

    iget v1, v1, Lcom/tebakgambar/selfie/g;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clickOnSavePhoto"

    const-string v2, "edit selfie frame"

    const-string v3, "click on save photo"

    invoke-static {v1, v2, v3, v0}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private O1(Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "regular_frame - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->z:Lcom/tebakgambar/selfie/g;

    iget v1, v1, Lcom/tebakgambar/selfie/g;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "clickOnSharePhoto"

    const-string v1, "edit selfie frame"

    const-string v2, "click on share photo"

    invoke-static {v0, v1, v2, p1}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic U0(Lt1/h;)Lt1/h;
    .registers 1

    invoke-static {p0}, Lcom/tebakgambar/selfie/EditFrameActivity;->C1(Lt1/h;)Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic V0(Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->A1(Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic W0(Lcom/tebakgambar/selfie/EditFrameActivity;)Lcom/tebakgambar/model/Level;
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/selfie/EditFrameActivity;->v1()Lcom/tebakgambar/model/Level;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic X0(Lcom/tebakgambar/selfie/EditFrameActivity;Landroid/net/Uri;Lt1/h;)Lt1/h;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/tebakgambar/selfie/EditFrameActivity;->D1(Landroid/net/Uri;Lt1/h;)Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Y0(Lcom/tebakgambar/selfie/EditFrameActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->z1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic Z0(Lcom/tebakgambar/selfie/EditFrameActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->x1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a1(Lcom/tebakgambar/selfie/EditFrameActivity;Lt1/h;)Lt1/h;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->B1(Lt1/h;)Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b1(Lt1/h;)Lt1/h;
    .registers 1

    invoke-static {p0}, Lcom/tebakgambar/selfie/EditFrameActivity;->w1(Lt1/h;)Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c1(Lcom/tebakgambar/selfie/EditFrameActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->y1(Landroid/view/View;)V

    return-void
.end method

.method static synthetic d1(Lcom/tebakgambar/selfie/EditFrameActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/selfie/EditFrameActivity;->E1()V

    return-void
.end method

.method static synthetic e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    return-object p0
.end method

.method static synthetic f1(Lcom/tebakgambar/selfie/EditFrameActivity;[Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lj8/t;->B0([Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic g1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lj8/c0;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->B:Lj8/c0;

    return-object p0
.end method

.method static synthetic h1(Lcom/tebakgambar/selfie/EditFrameActivity;Lj8/c0;)Lj8/c0;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->B:Lj8/c0;

    return-object p1
.end method

.method static synthetic i1(Lcom/tebakgambar/selfie/EditFrameActivity;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->A:Z

    return p0
.end method

.method static synthetic j1(Lcom/tebakgambar/selfie/EditFrameActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/selfie/EditFrameActivity;->H1()V

    return-void
.end method

.method static synthetic k1(Lcom/tebakgambar/selfie/EditFrameActivity;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->G:Z

    return p0
.end method

.method static synthetic l1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lcom/tebakgambar/selfie/g;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->z:Lcom/tebakgambar/selfie/g;

    return-object p0
.end method

.method static synthetic m1(Lcom/tebakgambar/selfie/EditFrameActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/selfie/EditFrameActivity;->s1()V

    return-void
.end method

.method static synthetic n1(Lcom/tebakgambar/selfie/EditFrameActivity;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->M1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic o1(Lcom/tebakgambar/selfie/EditFrameActivity;[Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lj8/t;->B0([Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic p1(Lcom/tebakgambar/selfie/EditFrameActivity;)Landroid/net/Uri;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->D:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic q1(Lcom/tebakgambar/selfie/EditFrameActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->D:Landroid/net/Uri;

    return-object p1
.end method

.method private r1(Landroid/net/Uri;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800f0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-static {p1}, Lcom/theartofdev/edmodo/cropper/d;->a(Landroid/net/Uri;)Lcom/theartofdev/edmodo/cropper/d$b;

    move-result-object p1

    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$c;->o:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    .line 3
    invoke-virtual {p1, v1}, Lcom/theartofdev/edmodo/cropper/d$b;->e(Lcom/theartofdev/edmodo/cropper/CropImageView$c;)Lcom/theartofdev/edmodo/cropper/d$b;

    move-result-object p1

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v1, v1}, Lcom/theartofdev/edmodo/cropper/d$b;->c(II)Lcom/theartofdev/edmodo/cropper/d$b;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v1}, Lcom/theartofdev/edmodo/cropper/d$b;->d(Z)Lcom/theartofdev/edmodo/cropper/d$b;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v1}, Lcom/theartofdev/edmodo/cropper/d$b;->f(Z)Lcom/theartofdev/edmodo/cropper/d$b;

    move-result-object p1

    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$j;->s:Lcom/theartofdev/edmodo/cropper/CropImageView$j;

    .line 7
    invoke-virtual {p1, v0, v0, v1}, Lcom/theartofdev/edmodo/cropper/d$b;->h(IILcom/theartofdev/edmodo/cropper/CropImageView$j;)Lcom/theartofdev/edmodo/cropper/d$b;

    move-result-object p1

    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$d;->q:Lcom/theartofdev/edmodo/cropper/CropImageView$d;

    .line 8
    invoke-virtual {p1, v0}, Lcom/theartofdev/edmodo/cropper/d$b;->g(Lcom/theartofdev/edmodo/cropper/CropImageView$d;)Lcom/theartofdev/edmodo/cropper/d$b;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p0}, Lcom/theartofdev/edmodo/cropper/d$b;->i(Landroid/app/Activity;)V

    return-void
.end method

.method private s1()V
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/Henson$b;->e()Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x24000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private u1()V
    .registers 3

    .line 1
    new-instance v0, Lcom/tebakgambar/selfie/EditFrameActivity$f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/tebakgambar/selfie/EditFrameActivity$f;-><init>(Lcom/tebakgambar/selfie/EditFrameActivity;Z)V

    .line 2
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/activity/OnBackPressedDispatcher;->b(Landroidx/activity/g;)V

    return-void
.end method

.method private synthetic v1()Lcom/tebakgambar/model/Level;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->z:Lcom/tebakgambar/selfie/g;

    iget v0, v0, Lcom/tebakgambar/selfie/g;->s:I

    invoke-static {v0}, Lcom/tebakgambar/model/Level;->fromId(I)Lcom/tebakgambar/model/Level;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic w1(Lt1/h;)Lt1/h;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lt1/h;->r()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->a()Lcom/google/firebase/crashlytics/a;

    move-result-object v0

    invoke-virtual {p0}, Lt1/h;->r()Ljava/lang/Exception;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/firebase/crashlytics/a;->d(Ljava/lang/Throwable;)V

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic x1(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->onClick(Landroid/view/View;)V

    return-void
.end method

.method private synthetic y1(Landroid/view/View;)V
    .registers 3

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->z:Lcom/tebakgambar/selfie/g;

    iget-object v0, v0, Lcom/tebakgambar/selfie/g;->r:Lcom/tebakgambar/model/BaseEvent;

    iget-object v0, v0, Lcom/tebakgambar/model/BaseEvent;->ads_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic z1(Ljava/lang/String;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->B:Lj8/c0;

    if-nez v0, :cond_36

    .line 2
    new-instance v0, Lj8/c0;

    const v3, 0x7f1300ec

    const/4 v4, 0x0

    const v1, 0x7f12005d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lj8/c0;-><init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->B:Lj8/c0;

    .line 3
    invoke-virtual {v0, p1}, Lj8/c0;->e(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->B:Lj8/c0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lj8/c0;->r(Z)V

    .line 5
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->B:Lj8/c0;

    new-instance v0, Lcom/tebakgambar/selfie/EditFrameActivity$h;

    invoke-direct {v0, p0}, Lcom/tebakgambar/selfie/EditFrameActivity$h;-><init>(Lcom/tebakgambar/selfie/EditFrameActivity;)V

    invoke-virtual {p1, v0}, Lj8/c0;->o(Lj8/c0$i;)V

    .line 6
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->B:Lj8/c0;

    invoke-virtual {p1}, Lj8/c0;->show()V

    :cond_36
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;ILandroid/net/Uri;)V
    .registers 4

    .line 1
    new-instance p2, Lu8/c;

    invoke-direct {p2, p0, p1}, Lu8/c;-><init>(Lcom/tebakgambar/selfie/EditFrameActivity;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    .line 1
    invoke-super {p0, p1, p2, p3}, Lj8/t;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->C:Ly8/w;

    invoke-virtual {v0, p1, p2, p3}, Ly8/w;->o(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eq p1, v0, :cond_44

    if-eq p1, v2, :cond_29

    const/16 v0, 0xcb

    if-eq p1, v0, :cond_14

    goto :goto_60

    :cond_14
    if-ne p2, v1, :cond_28

    .line 3
    invoke-static {p3}, Lcom/theartofdev/edmodo/cropper/d;->b(Landroid/content/Intent;)Lcom/theartofdev/edmodo/cropper/d$c;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->z()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_60

    .line 5
    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropImageView$b;->z()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->L1(Landroid/net/Uri;)V

    goto :goto_60

    :cond_28
    return-void

    :cond_29
    if-eq p2, v1, :cond_2c

    return-void

    .line 6
    :cond_2c
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object p2, p2, Lo8/c;->X:Lcom/framer/FrameView;

    invoke-virtual {p2}, Lcom/framer/FrameView;->getMode()I

    move-result p2

    if-ne p2, v2, :cond_3e

    .line 8
    invoke-direct {p0, p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->r1(Landroid/net/Uri;)V

    goto :goto_60

    :cond_3e
    if-eqz p1, :cond_60

    .line 9
    invoke-direct {p0, p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->L1(Landroid/net/Uri;)V

    goto :goto_60

    :cond_44
    if-eq p2, v1, :cond_47

    return-void

    :cond_47
    :try_start_47
    const-string p1, "tmp_tg.jpg"

    .line 10
    invoke-static {p0, p1}, Ly8/h;->k(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_4d
    .catch Ly8/n; {:try_start_47 .. :try_end_4d} :catch_61

    .line 11
    iget-object p2, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object p2, p2, Lo8/c;->X:Lcom/framer/FrameView;

    invoke-virtual {p2}, Lcom/framer/FrameView;->getMode()I

    move-result p2

    if-ne p2, v2, :cond_5b

    .line 12
    invoke-direct {p0, p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->r1(Landroid/net/Uri;)V

    goto :goto_60

    :cond_5b
    if-eqz p1, :cond_60

    .line 13
    invoke-direct {p0, p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->L1(Landroid/net/Uri;)V

    :cond_60
    :goto_60
    return-void

    :catch_61
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object v1, v0, Lo8/c;->U:Lcom/tebakgambar/component/CustomButton;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_14

    .line 2
    new-instance p1, Lj8/c0;

    const v0, 0x7f1300ec

    invoke-direct {p1, p0, v0, v2}, Lj8/c0;-><init>(Landroid/content/Context;IZ)V

    .line 3
    invoke-virtual {p1}, Lj8/c0;->show()V

    goto/16 :goto_13a

    .line 4
    :cond_14
    iget-object v1, v0, Lo8/c;->P:Lcom/tebakgambar/component/CustomButton;

    if-eq p1, v1, :cond_137

    iget-object v1, v0, Lo8/c;->i0:Landroid/view/View;

    if-eq p1, v1, :cond_137

    iget-object v1, v0, Lo8/c;->e0:Landroid/widget/RelativeLayout;

    if-ne p1, v1, :cond_22

    goto/16 :goto_137

    .line 5
    :cond_22
    iget-object v1, v0, Lo8/c;->Q:Lcom/tebakgambar/component/CustomButton;

    if-ne p1, v1, :cond_c4

    .line 6
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->z:Lcom/tebakgambar/selfie/g;

    iget-object p1, p1, Lcom/tebakgambar/selfie/g;->r:Lcom/tebakgambar/model/BaseEvent;

    const-string v0, "isMainLagi"

    if-eqz p1, :cond_77

    instance-of v1, p1, Lcom/tebakgambar/model/ResultEvents;

    if-eqz v1, :cond_77

    .line 7
    iget-object p1, p1, Lcom/tebakgambar/model/BaseEvent;->id:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {p0, p1, v1}, Ly8/y;->x0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->z:Lcom/tebakgambar/selfie/g;

    iget-object p1, p1, Lcom/tebakgambar/selfie/g;->r:Lcom/tebakgambar/model/BaseEvent;

    invoke-virtual {p1}, Lcom/tebakgambar/model/BaseEvent;->isAdBannerAvailable()Z

    move-result p1

    const-string v1, "event_data"

    if-eqz p1, :cond_60

    .line 9
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/tebakgambar/AdsActivity;

    invoke-direct {p1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->z:Lcom/tebakgambar/selfie/g;

    iget-object v3, v3, Lcom/tebakgambar/selfie/g;->r:Lcom/tebakgambar/model/BaseEvent;

    .line 10
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_bf

    .line 13
    :cond_60
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->z:Lcom/tebakgambar/selfie/g;

    iget-object v0, v0, Lcom/tebakgambar/selfie/g;->r:Lcom/tebakgambar/model/BaseEvent;

    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_bf

    :cond_77
    if-eqz p1, :cond_bf

    .line 16
    instance-of v1, p1, Lcom/tebakgambar/model/ResultEventClue;

    if-eqz v1, :cond_bf

    .line 17
    iget-object p1, p1, Lcom/tebakgambar/model/BaseEvent;->id:Ljava/lang/String;

    invoke-static {p0, p1}, Ly8/y;->e0(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->z:Lcom/tebakgambar/selfie/g;

    iget-object p1, p1, Lcom/tebakgambar/selfie/g;->r:Lcom/tebakgambar/model/BaseEvent;

    invoke-virtual {p1}, Lcom/tebakgambar/model/BaseEvent;->isAdBannerAvailable()Z

    move-result p1

    const-string v1, "event_clue"

    if-eqz p1, :cond_a9

    .line 19
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/tebakgambar/AdsActivity;

    invoke-direct {p1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->z:Lcom/tebakgambar/selfie/g;

    iget-object v3, v3, Lcom/tebakgambar/selfie/g;->r:Lcom/tebakgambar/model/BaseEvent;

    .line 20
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 21
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_bf

    .line 23
    :cond_a9
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->z:Lcom/tebakgambar/selfie/g;

    iget-object v0, v0, Lcom/tebakgambar/selfie/g;->r:Lcom/tebakgambar/model/BaseEvent;

    .line 24
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 26
    :cond_bf
    :goto_bf
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_13a

    .line 27
    :cond_c4
    iget-object v0, v0, Lo8/c;->O:Lcom/tebakgambar/component/CustomButton;

    if-ne p1, v0, :cond_ca

    goto/16 :goto_13a

    .line 28
    :cond_ca
    iget-boolean v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->A:Z

    if-eqz v0, :cond_12c

    :try_start_ce
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 29
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ly8/o;->a(Landroid/content/Context;[Ljava/lang/String;)V
    :try_end_d9
    .catch Ly8/n; {:try_start_ce .. :try_end_d9} :catch_112

    .line 30
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object v1, v0, Lo8/c;->S:Lcom/tebakgambar/component/CustomButton;

    if-ne p1, v1, :cond_e3

    .line 31
    invoke-direct {p0}, Lcom/tebakgambar/selfie/EditFrameActivity;->K1()V

    goto :goto_13a

    .line 32
    :cond_e3
    iget-object v0, v0, Lo8/c;->R:Lcom/tebakgambar/component/CustomButton;

    if-ne p1, v0, :cond_13a

    .line 33
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->C:Ly8/w;

    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->z:Lcom/tebakgambar/selfie/g;

    invoke-virtual {v0}, Lcom/tebakgambar/selfie/g;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ly8/w;->v(Ljava/lang/String;)V

    .line 34
    :try_start_f2
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->C:Ly8/w;

    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object v0, v0, Lo8/c;->X:Lcom/framer/FrameView;

    invoke-virtual {v0}, Lcom/framer/FrameView;->getPictureBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0, v0}, Ly8/h;->t(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Ly8/w;->w(Landroid/net/Uri;)V
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_103} :catch_106
    .catch Ly8/n; {:try_start_f2 .. :try_end_103} :catch_104

    goto :goto_13a

    :catch_104
    move-exception p1

    goto :goto_107

    :catch_106
    move-exception p1

    .line 35
    :goto_107
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 36
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->a()Lcom/google/firebase/crashlytics/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/a;->d(Ljava/lang/Throwable;)V

    goto :goto_13a

    :catch_112
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    new-instance v1, Lu8/b;

    invoke-direct {v1, p0, p1}, Lu8/b;-><init>(Lcom/tebakgambar/selfie/EditFrameActivity;Landroid/view/View;)V

    iput-object v1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->E:Ljava/lang/Runnable;

    .line 39
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_12b

    .line 40
    invoke-virtual {v0}, Ly8/n;->a()[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_12b
    return-void

    :cond_12c
    const p1, 0x7f1201be

    .line 41
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj8/t;->O0(Ljava/lang/String;)V

    goto :goto_13a

    .line 42
    :cond_137
    :goto_137
    invoke-direct {p0}, Lcom/tebakgambar/selfie/EditFrameActivity;->J1()V

    :cond_13a
    :goto_13a
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/e;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/k0;->b(Landroidx/fragment/app/e;)Landroidx/lifecycle/h0;

    move-result-object p1

    const-class v0, Lcom/tebakgambar/selfie/g;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/h0;->a(Ljava/lang/Class;)Landroidx/lifecycle/g0;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/selfie/g;

    iput-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->z:Lcom/tebakgambar/selfie/g;

    const p1, 0x7f0d001e

    .line 3
    invoke-static {p0, p1}, Landroidx/databinding/g;->j(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lo8/c;

    iput-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    .line 4
    new-instance p1, Lt1/i;

    invoke-direct {p1}, Lt1/i;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->F:Lt1/i;

    .line 5
    new-instance p1, Ly8/w;

    invoke-direct {p1, p0}, Ly8/w;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->C:Ly8/w;

    .line 6
    invoke-virtual {p1, p0}, Ly8/w;->u(Ly8/w$g;)V

    const p1, 0x7f0a0120

    .line 7
    invoke-virtual {p0, p1}, Lj8/t;->D0(I)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "event_clue"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/model/ResultEventClue;

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "event_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/ResultEvents;

    if-eqz p1, :cond_52

    .line 10
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->z:Lcom/tebakgambar/selfie/g;

    iput-object p1, v0, Lcom/tebakgambar/selfie/g;->r:Lcom/tebakgambar/model/BaseEvent;

    goto :goto_58

    :cond_52
    if-eqz v0, :cond_58

    .line 11
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->z:Lcom/tebakgambar/selfie/g;

    iput-object v0, p1, Lcom/tebakgambar/selfie/g;->r:Lcom/tebakgambar/model/BaseEvent;

    .line 12
    :cond_58
    :goto_58
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->z:Lcom/tebakgambar/selfie/g;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "questionGlobalIndex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/tebakgambar/selfie/g;->t:I

    .line 13
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->z:Lcom/tebakgambar/selfie/g;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "frameLevel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/tebakgambar/selfie/g;->s:I

    .line 14
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object p1, p1, Lo8/c;->b0:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object p1, p1, Lo8/c;->h0:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object p1, p1, Lo8/c;->e0:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object p1, p1, Lo8/c;->Q:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {p1, p0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object p1, p1, Lo8/c;->O:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {p1, p0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object p1, p1, Lo8/c;->i0:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object p1, p1, Lo8/c;->U:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {p1, p0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object p1, p1, Lo8/c;->P:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {p1, p0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object p1, p1, Lo8/c;->S:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {p1, p0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object p1, p1, Lo8/c;->R:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {p1, p0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->z:Lcom/tebakgambar/selfie/g;

    iget v1, p1, Lcom/tebakgambar/selfie/g;->s:I

    if-eqz v1, :cond_c7

    .line 25
    invoke-direct {p0}, Lcom/tebakgambar/selfie/EditFrameActivity;->G1()V

    goto :goto_124

    .line 26
    :cond_c7
    iget-object p1, p1, Lcom/tebakgambar/selfie/g;->r:Lcom/tebakgambar/model/BaseEvent;

    if-eqz p1, :cond_121

    .line 27
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object p1, p1, Lo8/c;->X:Lcom/framer/FrameView;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/framer/FrameView;->setMode(I)V

    .line 28
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object p1, p1, Lo8/c;->U:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 29
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object p1, p1, Lo8/c;->Q:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 30
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object p1, p1, Lo8/c;->O:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 31
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object p1, p1, Lo8/c;->Q:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {p1, p0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object p1, p1, Lo8/c;->O:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {p1, p0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->z:Lcom/tebakgambar/selfie/g;

    iget-object p1, p1, Lcom/tebakgambar/selfie/g;->r:Lcom/tebakgambar/model/BaseEvent;

    iget-object p1, p1, Lcom/tebakgambar/model/BaseEvent;->mascot_image_url:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->F1(Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->z:Lcom/tebakgambar/selfie/g;

    iget-object p1, p1, Lcom/tebakgambar/selfie/g;->r:Lcom/tebakgambar/model/BaseEvent;

    invoke-virtual {p1}, Lcom/tebakgambar/model/BaseEvent;->isAdBannerAvailable()Z

    move-result p1

    if-eqz p1, :cond_124

    .line 35
    invoke-virtual {p0}, Lj8/t;->h0()Lj8/k0;

    move-result-object p1

    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->z:Lcom/tebakgambar/selfie/g;

    iget-object v0, v0, Lcom/tebakgambar/selfie/g;->r:Lcom/tebakgambar/model/BaseEvent;

    iget-object v0, v0, Lcom/tebakgambar/model/BaseEvent;->ads_banner:Ljava/lang/String;

    new-instance v1, Lcom/tebakgambar/selfie/EditFrameActivity$a;

    invoke-direct {v1, p0}, Lcom/tebakgambar/selfie/EditFrameActivity$a;-><init>(Lcom/tebakgambar/selfie/EditFrameActivity;)V

    new-instance v2, Lu8/a;

    invoke-direct {v2, p0}, Lu8/a;-><init>(Lcom/tebakgambar/selfie/EditFrameActivity;)V

    invoke-virtual {p1, v0, v1, v2}, Lj8/k0;->U(Ljava/lang/String;Lt2/f;Landroid/view/View$OnClickListener;)V

    goto :goto_124

    .line 36
    :cond_121
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 37
    :cond_124
    :goto_124
    invoke-direct {p0}, Lcom/tebakgambar/selfie/EditFrameActivity;->u1()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lj8/t;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->C:Ly8/w;

    invoke-virtual {v0}, Ly8/w;->p()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lj8/t;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    invoke-static {p3}, Ly8/o;->b([I)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->E:Ljava/lang/Runnable;

    if-eqz p1, :cond_10

    .line 4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_10
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->E:Ljava/lang/Runnable;

    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 1
    invoke-super {p0}, Lj8/t;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object v0, v0, Lo8/c;->X:Lcom/framer/FrameView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->y:Lo8/c;

    iget-object p1, p1, Lo8/c;->X:Lcom/framer/FrameView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public y(ILandroid/net/Uri;)V
    .registers 5

    .line 1
    iget-object p2, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->C:Ly8/w;

    invoke-virtual {p2}, Ly8/w;->n()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/tebakgambar/selfie/EditFrameActivity;->O1(Ljava/lang/String;)V

    const/4 p2, -0x1

    const v0, 0x7f1201bf

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1e

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj8/t;->O0(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity;->G:Z

    goto :goto_2b

    .line 5
    :cond_1e
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj8/t;->O0(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_2b
    return-void
.end method

###### Class com.tebakgambar.selfie.EditFrameActivity.a (com.tebakgambar.selfie.EditFrameActivity$a)
.class Lcom/tebakgambar/selfie/EditFrameActivity$a;
.super Ljava/lang/Object;
.source "EditFrameActivity.java"

# interfaces
.implements Lt2/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/selfie/EditFrameActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt2/f<",
        "Ljava/lang/String;",
        "Ll2/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/selfie/EditFrameActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/selfie/EditFrameActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$a;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lv2/j;ZZ)Z
    .registers 6

    .line 1
    check-cast p1, Ll2/b;

    check-cast p2, Ljava/lang/String;

    invoke-virtual/range {p0 .. p5}, Lcom/tebakgambar/selfie/EditFrameActivity$a;->d(Ll2/b;Ljava/lang/String;Lv2/j;ZZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Exception;Ljava/lang/Object;Lv2/j;Z)Z
    .registers 5

    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tebakgambar/selfie/EditFrameActivity$a;->c(Ljava/lang/Exception;Ljava/lang/String;Lv2/j;Z)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/Exception;Ljava/lang/String;Lv2/j;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Lv2/j<",
            "Ll2/b;",
            ">;Z)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public d(Ll2/b;Ljava/lang/String;Lv2/j;ZZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll2/b;",
            "Ljava/lang/String;",
            "Lv2/j<",
            "Ll2/b;",
            ">;ZZ)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

###### Class com.tebakgambar.selfie.EditFrameActivity.b (com.tebakgambar.selfie.EditFrameActivity$b)
.class Lcom/tebakgambar/selfie/EditFrameActivity$b;
.super Ljava/lang/Object;
.source "EditFrameActivity.java"

# interfaces
.implements Lt1/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/selfie/EditFrameActivity;->G1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt1/f<",
        "Lcom/tebakgambar/model/Level;",
        "Lt1/h<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/selfie/EditFrameActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/selfie/EditFrameActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lt1/h;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/selfie/EditFrameActivity$b;->b(Lt1/h;)Lt1/h;

    move-result-object p1

    return-object p1
.end method

.method public b(Lt1/h;)Lt1/h;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/h<",
            "Lcom/tebakgambar/model/Level;",
            ">;)",
            "Lt1/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lt1/h;->s()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/model/Level;

    .line 2
    iget v0, p1, Lcom/tebakgambar/model/Level;->id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_35

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lv1/g;->w(Landroidx/fragment/app/e;)Lv1/j;

    move-result-object v0

    iget-object v1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    .line 4
    invoke-virtual {p1, v1}, Lcom/tebakgambar/model/Level;->getFrameResource(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lv1/j;->w(Ljava/lang/Integer;)Lv1/d;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lv1/d;->W()Lv1/b;

    move-result-object p1

    new-instance v0, Lcom/tebakgambar/selfie/EditFrameActivity$b$b;

    invoke-direct {v0, p0}, Lcom/tebakgambar/selfie/EditFrameActivity$b$b;-><init>(Lcom/tebakgambar/selfie/EditFrameActivity$b;)V

    .line 6
    invoke-virtual {p1, v0}, Lv1/a;->J(Lt2/f;)Lv1/a;

    move-result-object p1

    new-instance v0, Lcom/tebakgambar/selfie/EditFrameActivity$b$a;

    invoke-direct {v0, p0}, Lcom/tebakgambar/selfie/EditFrameActivity$b$a;-><init>(Lcom/tebakgambar/selfie/EditFrameActivity$b;)V

    .line 7
    invoke-virtual {p1, v0}, Lv1/e;->q(Lv2/j;)Lv2/j;

    goto :goto_5c

    .line 8
    :cond_35
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lv1/g;->w(Landroidx/fragment/app/e;)Lv1/j;

    move-result-object v0

    iget-object p1, p1, Lcom/tebakgambar/model/Level;->frameUrl:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, p1}, Lv1/j;->x(Ljava/lang/String;)Lv1/d;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lv1/d;->W()Lv1/b;

    move-result-object p1

    sget-object v0, Lb2/b;->q:Lb2/b;

    .line 11
    invoke-virtual {p1, v0}, Lv1/a;->G(Lb2/b;)Lv1/a;

    move-result-object p1

    new-instance v0, Lcom/tebakgambar/selfie/EditFrameActivity$b$d;

    invoke-direct {v0, p0}, Lcom/tebakgambar/selfie/EditFrameActivity$b$d;-><init>(Lcom/tebakgambar/selfie/EditFrameActivity$b;)V

    .line 12
    invoke-virtual {p1, v0}, Lv1/a;->J(Lt2/f;)Lv1/a;

    move-result-object p1

    new-instance v0, Lcom/tebakgambar/selfie/EditFrameActivity$b$c;

    invoke-direct {v0, p0}, Lcom/tebakgambar/selfie/EditFrameActivity$b$c;-><init>(Lcom/tebakgambar/selfie/EditFrameActivity$b;)V

    .line 13
    invoke-virtual {p1, v0}, Lv1/e;->q(Lv2/j;)Lv2/j;

    :goto_5c
    const/4 p1, 0x0

    return-object p1
.end method

###### Class com.tebakgambar.selfie.EditFrameActivity.b.a (com.tebakgambar.selfie.EditFrameActivity$b$a)
.class Lcom/tebakgambar/selfie/EditFrameActivity$b$a;
.super Lv2/g;
.source "EditFrameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/selfie/EditFrameActivity$b;->b(Lt1/h;)Lt1/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv2/g<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic r:Lcom/tebakgambar/selfie/EditFrameActivity$b;


# direct methods
.method constructor <init>(Lcom/tebakgambar/selfie/EditFrameActivity$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$a;->r:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    invoke-direct {p0}, Lv2/g;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;Lu2/c;)V
    .registers 3

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/tebakgambar/selfie/EditFrameActivity$b$a;->f(Landroid/graphics/Bitmap;Lu2/c;)V

    return-void
.end method

.method public f(Landroid/graphics/Bitmap;Lu2/c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lu2/c<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

###### Class com.tebakgambar.selfie.EditFrameActivity.b.C0133b (com.tebakgambar.selfie.EditFrameActivity$b$b)
.class Lcom/tebakgambar/selfie/EditFrameActivity$b$b;
.super Ljava/lang/Object;
.source "EditFrameActivity.java"

# interfaces
.implements Lt2/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/selfie/EditFrameActivity$b;->b(Lt1/h;)Lt1/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt2/f<",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/selfie/EditFrameActivity$b;


# direct methods
.method constructor <init>(Lcom/tebakgambar/selfie/EditFrameActivity$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/tebakgambar/selfie/EditFrameActivity$b$b;)V
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/selfie/EditFrameActivity$b$b;->d()V

    return-void
.end method

.method private synthetic d()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object v0, v0, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v0

    iget-object v0, v0, Lo8/c;->h0:Lcom/tebakgambar/component/CustomTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object v0, v0, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v0

    iget-object v0, v0, Lo8/c;->X:Lcom/framer/FrameView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3
    iget-object v2, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object v2, v2, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v2}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v2

    iget-object v2, v2, Lo8/c;->g0:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 4
    iget-object v2, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object v2, v2, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v2}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v2

    iget-object v2, v2, Lo8/c;->g0:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 5
    iget-object v2, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object v2, v2, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v2}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v2

    iget-object v2, v2, Lo8/c;->X:Lcom/framer/FrameView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object v2, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object v2, v2, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v2}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v2

    iget-object v2, v2, Lo8/c;->i0:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object v0, v0, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v0

    iget-object v0, v0, Lo8/c;->i0:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object v0, v0, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v0

    iget-object v0, v0, Lo8/c;->X:Lcom/framer/FrameView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object v0, v0, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v0

    iget-object v0, v0, Lo8/c;->h0:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object v0, v0, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v0

    iget-object v0, v0, Lo8/c;->Y:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object v3, v3, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v3}, Lcom/tebakgambar/selfie/EditFrameActivity;->i1(Lcom/tebakgambar/selfie/EditFrameActivity;)Z

    move-result v3

    if-eqz v3, :cond_96

    goto :goto_97

    :cond_96
    const/4 v1, 0x0

    :goto_97
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object v0, v0, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->j1(Lcom/tebakgambar/selfie/EditFrameActivity;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lv2/j;ZZ)Z
    .registers 6

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p5}, Lcom/tebakgambar/selfie/EditFrameActivity$b$b;->f(Landroid/graphics/Bitmap;Ljava/lang/Integer;Lv2/j;ZZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Exception;Ljava/lang/Object;Lv2/j;Z)Z
    .registers 5

    .line 1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tebakgambar/selfie/EditFrameActivity$b$b;->e(Ljava/lang/Exception;Ljava/lang/Integer;Lv2/j;Z)Z

    move-result p1

    return p1
.end method

.method public e(Ljava/lang/Exception;Ljava/lang/Integer;Lv2/j;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/Integer;",
            "Lv2/j<",
            "Landroid/graphics/Bitmap;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object p1, p1, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->d1(Lcom/tebakgambar/selfie/EditFrameActivity;)V

    const/4 p1, 0x1

    return p1
.end method

.method public f(Landroid/graphics/Bitmap;Ljava/lang/Integer;Lv2/j;ZZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Integer;",
            "Lv2/j<",
            "Landroid/graphics/Bitmap;",
            ">;ZZ)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p2

    const/4 p3, 0x0

    const/high16 p4, 0x1000000

    if-le p2, p4, :cond_11

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object p1, p1, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->d1(Lcom/tebakgambar/selfie/EditFrameActivity;)V

    return p3

    .line 3
    :cond_11
    iget-object p2, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object p2, p2, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {p2}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object p2

    iget-object p2, p2, Lo8/c;->X:Lcom/framer/FrameView;

    const/4 p4, 0x1

    invoke-virtual {p2, p4}, Lcom/framer/FrameView;->setMode(I)V

    .line 4
    iget-object p2, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object p2, p2, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {p2}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object p2

    iget-object p2, p2, Lo8/c;->X:Lcom/framer/FrameView;

    invoke-virtual {p2, p1}, Lcom/framer/FrameView;->setFrameBitmap(Landroid/graphics/Bitmap;)V

    .line 5
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object p1, p1, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object p1

    iget-object p1, p1, Lo8/c;->X:Lcom/framer/FrameView;

    iget-object p2, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object p2, p2, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/c;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f08015a

    invoke-static {p2, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4}, Lcom/framer/FrameView;->n(Landroid/graphics/Bitmap;F)V

    .line 6
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object p1, p1, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object p1

    iget-object p1, p1, Lo8/c;->X:Lcom/framer/FrameView;

    const-string p2, "#00AAA1"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/framer/FrameView;->setOuterColor(I)V

    .line 7
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object p1, p1, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object p1

    iget-object p1, p1, Lo8/c;->g0:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/tebakgambar/selfie/a;

    invoke-direct {p2, p0}, Lcom/tebakgambar/selfie/a;-><init>(Lcom/tebakgambar/selfie/EditFrameActivity$b$b;)V

    const-wide/16 p4, 0xc8

    invoke-virtual {p1, p2, p4, p5}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return p3
.end method

###### Class com.tebakgambar.selfie.a (com.tebakgambar.selfie.a)
.class public final synthetic Lcom/tebakgambar/selfie/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/selfie/EditFrameActivity$b$b;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/selfie/EditFrameActivity$b$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/selfie/a;->o:Lcom/tebakgambar/selfie/EditFrameActivity$b$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/tebakgambar/selfie/a;->o:Lcom/tebakgambar/selfie/EditFrameActivity$b$b;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity$b$b;->c(Lcom/tebakgambar/selfie/EditFrameActivity$b$b;)V

    return-void
.end method

###### Class com.tebakgambar.selfie.EditFrameActivity.b.c (com.tebakgambar.selfie.EditFrameActivity$b$c)
.class Lcom/tebakgambar/selfie/EditFrameActivity$b$c;
.super Lv2/g;
.source "EditFrameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/selfie/EditFrameActivity$b;->b(Lt1/h;)Lt1/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv2/g<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic r:Lcom/tebakgambar/selfie/EditFrameActivity$b;


# direct methods
.method constructor <init>(Lcom/tebakgambar/selfie/EditFrameActivity$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$c;->r:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    invoke-direct {p0}, Lv2/g;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;Lu2/c;)V
    .registers 3

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/tebakgambar/selfie/EditFrameActivity$b$c;->f(Landroid/graphics/Bitmap;Lu2/c;)V

    return-void
.end method

.method public f(Landroid/graphics/Bitmap;Lu2/c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lu2/c<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

###### Class com.tebakgambar.selfie.EditFrameActivity.b.d (com.tebakgambar.selfie.EditFrameActivity$b$d)
.class Lcom/tebakgambar/selfie/EditFrameActivity$b$d;
.super Ljava/lang/Object;
.source "EditFrameActivity.java"

# interfaces
.implements Lt2/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/selfie/EditFrameActivity$b;->b(Lt1/h;)Lt1/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt2/f<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/selfie/EditFrameActivity$b;


# direct methods
.method constructor <init>(Lcom/tebakgambar/selfie/EditFrameActivity$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$d;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/tebakgambar/selfie/EditFrameActivity$b$d;)V
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/selfie/EditFrameActivity$b$d;->d()V

    return-void
.end method

.method private synthetic d()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$d;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object v0, v0, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v0

    iget-object v0, v0, Lo8/c;->h0:Lcom/tebakgambar/component/CustomTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$d;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object v0, v0, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v0

    iget-object v0, v0, Lo8/c;->X:Lcom/framer/FrameView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3
    iget-object v2, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$d;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object v2, v2, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v2}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v2

    iget-object v2, v2, Lo8/c;->g0:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 4
    iget-object v2, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$d;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object v2, v2, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v2}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v2

    iget-object v2, v2, Lo8/c;->g0:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 5
    iget-object v2, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$d;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object v2, v2, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v2}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v2

    iget-object v2, v2, Lo8/c;->X:Lcom/framer/FrameView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object v2, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$d;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object v2, v2, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v2}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v2

    iget-object v2, v2, Lo8/c;->i0:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$d;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object v0, v0, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v0

    iget-object v0, v0, Lo8/c;->i0:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$d;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object v0, v0, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v0

    iget-object v0, v0, Lo8/c;->X:Lcom/framer/FrameView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$d;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object v0, v0, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v0

    iget-object v0, v0, Lo8/c;->h0:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$d;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object v0, v0, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v0

    iget-object v0, v0, Lo8/c;->Y:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$d;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object v3, v3, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v3}, Lcom/tebakgambar/selfie/EditFrameActivity;->i1(Lcom/tebakgambar/selfie/EditFrameActivity;)Z

    move-result v3

    if-eqz v3, :cond_96

    goto :goto_97

    :cond_96
    const/4 v1, 0x0

    :goto_97
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$d;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object v0, v0, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->j1(Lcom/tebakgambar/selfie/EditFrameActivity;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lv2/j;ZZ)Z
    .registers 6

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    check-cast p2, Ljava/lang/String;

    invoke-virtual/range {p0 .. p5}, Lcom/tebakgambar/selfie/EditFrameActivity$b$d;->f(Landroid/graphics/Bitmap;Ljava/lang/String;Lv2/j;ZZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Exception;Ljava/lang/Object;Lv2/j;Z)Z
    .registers 5

    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tebakgambar/selfie/EditFrameActivity$b$d;->e(Ljava/lang/Exception;Ljava/lang/String;Lv2/j;Z)Z

    move-result p1

    return p1
.end method

.method public e(Ljava/lang/Exception;Ljava/lang/String;Lv2/j;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Lv2/j<",
            "Landroid/graphics/Bitmap;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$d;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object p1, p1, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->d1(Lcom/tebakgambar/selfie/EditFrameActivity;)V

    const/4 p1, 0x1

    return p1
.end method

.method public f(Landroid/graphics/Bitmap;Ljava/lang/String;Lv2/j;ZZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            "Lv2/j<",
            "Landroid/graphics/Bitmap;",
            ">;ZZ)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p2

    const/4 p3, 0x0

    const/high16 p4, 0x1000000

    if-le p2, p4, :cond_11

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$d;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object p1, p1, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->d1(Lcom/tebakgambar/selfie/EditFrameActivity;)V

    return p3

    .line 3
    :cond_11
    iget-object p2, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$d;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object p2, p2, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {p2}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object p2

    iget-object p2, p2, Lo8/c;->X:Lcom/framer/FrameView;

    const/4 p4, 0x1

    invoke-virtual {p2, p4}, Lcom/framer/FrameView;->setMode(I)V

    .line 4
    iget-object p2, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$d;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object p2, p2, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {p2}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object p2

    iget-object p2, p2, Lo8/c;->X:Lcom/framer/FrameView;

    invoke-virtual {p2, p1}, Lcom/framer/FrameView;->setFrameBitmap(Landroid/graphics/Bitmap;)V

    .line 5
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$d;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object p1, p1, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object p1

    iget-object p1, p1, Lo8/c;->X:Lcom/framer/FrameView;

    iget-object p2, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$d;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object p2, p2, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/c;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f08015a

    invoke-static {p2, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4}, Lcom/framer/FrameView;->n(Landroid/graphics/Bitmap;F)V

    .line 6
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$d;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object p1, p1, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object p1

    iget-object p1, p1, Lo8/c;->X:Lcom/framer/FrameView;

    const-string p2, "#00AAA1"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/framer/FrameView;->setOuterColor(I)V

    .line 7
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$b$d;->a:Lcom/tebakgambar/selfie/EditFrameActivity$b;

    iget-object p1, p1, Lcom/tebakgambar/selfie/EditFrameActivity$b;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object p1

    iget-object p1, p1, Lo8/c;->g0:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/tebakgambar/selfie/b;

    invoke-direct {p2, p0}, Lcom/tebakgambar/selfie/b;-><init>(Lcom/tebakgambar/selfie/EditFrameActivity$b$d;)V

    const-wide/16 p4, 0xc8

    invoke-virtual {p1, p2, p4, p5}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return p3
.end method

###### Class com.tebakgambar.selfie.b (com.tebakgambar.selfie.b)
.class public final synthetic Lcom/tebakgambar/selfie/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/selfie/EditFrameActivity$b$d;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/selfie/EditFrameActivity$b$d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/selfie/b;->o:Lcom/tebakgambar/selfie/EditFrameActivity$b$d;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/tebakgambar/selfie/b;->o:Lcom/tebakgambar/selfie/EditFrameActivity$b$d;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity$b$d;->c(Lcom/tebakgambar/selfie/EditFrameActivity$b$d;)V

    return-void
.end method

###### Class com.tebakgambar.selfie.EditFrameActivity.c (com.tebakgambar.selfie.EditFrameActivity$c)
.class Lcom/tebakgambar/selfie/EditFrameActivity$c;
.super Lv2/g;
.source "EditFrameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/selfie/EditFrameActivity;->E1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv2/g<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic r:Lcom/tebakgambar/selfie/EditFrameActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/selfie/EditFrameActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$c;->r:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-direct {p0}, Lv2/g;-><init>()V

    return-void
.end method

.method public static synthetic f(Lcom/tebakgambar/selfie/EditFrameActivity$c;)V
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/selfie/EditFrameActivity$c;->n()V

    return-void
.end method

.method private synthetic n()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$c;->r:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v0

    iget-object v0, v0, Lo8/c;->X:Lcom/framer/FrameView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    iget-object v1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$c;->r:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v1}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v1

    iget-object v1, v1, Lo8/c;->g0:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 3
    iget-object v1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$c;->r:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v1}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v1

    iget-object v1, v1, Lo8/c;->g0:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 4
    iget-object v1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$c;->r:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v1}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v1

    iget-object v1, v1, Lo8/c;->X:Lcom/framer/FrameView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object v1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$c;->r:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v1}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v1

    iget-object v1, v1, Lo8/c;->e0:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$c;->r:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v0

    iget-object v0, v0, Lo8/c;->h0:Lcom/tebakgambar/component/CustomTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$c;->r:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v0

    iget-object v0, v0, Lo8/c;->X:Lcom/framer/FrameView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$c;->r:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v0

    iget-object v0, v0, Lo8/c;->e0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$c;->r:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v0

    iget-object v0, v0, Lo8/c;->i0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$c;->r:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v0

    iget-object v0, v0, Lo8/c;->b0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$c;->r:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v0

    iget-object v0, v0, Lo8/c;->Y:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/tebakgambar/selfie/EditFrameActivity$c;->r:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v3}, Lcom/tebakgambar/selfie/EditFrameActivity;->i1(Lcom/tebakgambar/selfie/EditFrameActivity;)Z

    move-result v3

    if-eqz v3, :cond_8b

    goto :goto_8c

    :cond_8b
    const/4 v1, 0x0

    :goto_8c
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$c;->r:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->j1(Lcom/tebakgambar/selfie/EditFrameActivity;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;Lu2/c;)V
    .registers 3

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/tebakgambar/selfie/EditFrameActivity$c;->o(Landroid/graphics/Bitmap;Lu2/c;)V

    return-void
.end method

.method public j(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lv2/a;->j(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public o(Landroid/graphics/Bitmap;Lu2/c;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lu2/c<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/tebakgambar/selfie/EditFrameActivity$c;->r:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {p2}, Lv1/g;->w(Landroidx/fragment/app/e;)Lv1/j;

    move-result-object p2

    const v0, 0x7f0800ef

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lv1/j;->w(Ljava/lang/Integer;)Lv1/d;

    move-result-object p2

    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$c;->r:Lcom/tebakgambar/selfie/EditFrameActivity;

    .line 3
    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v0

    iget-object v0, v0, Lo8/c;->Z:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Lv1/c;->p(Landroid/widget/ImageView;)Lv2/j;

    .line 4
    iget-object p2, p0, Lcom/tebakgambar/selfie/EditFrameActivity$c;->r:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {p2}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object p2

    iget-object p2, p2, Lo8/c;->X:Lcom/framer/FrameView;

    invoke-virtual {p2, p1}, Lcom/framer/FrameView;->setFrameBitmap(Landroid/graphics/Bitmap;)V

    .line 5
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$c;->r:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object p1

    iget-object p1, p1, Lo8/c;->X:Lcom/framer/FrameView;

    iget-object p2, p0, Lcom/tebakgambar/selfie/EditFrameActivity$c;->r:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/c;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f08015a

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/framer/FrameView;->n(Landroid/graphics/Bitmap;F)V

    .line 6
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$c;->r:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object p1

    iget-object p1, p1, Lo8/c;->X:Lcom/framer/FrameView;

    const-string p2, "#00AAA1"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/framer/FrameView;->setOuterColor(I)V

    .line 7
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$c;->r:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object p1

    iget-object p1, p1, Lo8/c;->g0:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/tebakgambar/selfie/c;

    invoke-direct {p2, p0}, Lcom/tebakgambar/selfie/c;-><init>(Lcom/tebakgambar/selfie/EditFrameActivity$c;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

###### Class com.tebakgambar.selfie.c (com.tebakgambar.selfie.c)
.class public final synthetic Lcom/tebakgambar/selfie/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/selfie/EditFrameActivity$c;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/selfie/EditFrameActivity$c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/selfie/c;->o:Lcom/tebakgambar/selfie/EditFrameActivity$c;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/tebakgambar/selfie/c;->o:Lcom/tebakgambar/selfie/EditFrameActivity$c;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity$c;->f(Lcom/tebakgambar/selfie/EditFrameActivity$c;)V

    return-void
.end method

###### Class com.tebakgambar.selfie.EditFrameActivity.d (com.tebakgambar.selfie.EditFrameActivity$d)
.class Lcom/tebakgambar/selfie/EditFrameActivity$d;
.super Lv2/g;
.source "EditFrameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/selfie/EditFrameActivity;->F1(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv2/g<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic r:Lcom/tebakgambar/selfie/EditFrameActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/selfie/EditFrameActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$d;->r:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-direct {p0}, Lv2/g;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;Lu2/c;)V
    .registers 3

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/tebakgambar/selfie/EditFrameActivity$d;->f(Landroid/graphics/Bitmap;Lu2/c;)V

    return-void
.end method

.method public f(Landroid/graphics/Bitmap;Lu2/c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lu2/c<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

###### Class com.tebakgambar.selfie.EditFrameActivity.e (com.tebakgambar.selfie.EditFrameActivity$e)
.class Lcom/tebakgambar/selfie/EditFrameActivity$e;
.super Ljava/lang/Object;
.source "EditFrameActivity.java"

# interfaces
.implements Lt2/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/selfie/EditFrameActivity;->F1(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt2/f<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/selfie/EditFrameActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/selfie/EditFrameActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$e;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/tebakgambar/selfie/EditFrameActivity$e;)V
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/selfie/EditFrameActivity$e;->d()V

    return-void
.end method

.method private synthetic d()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$e;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v0

    iget-object v0, v0, Lo8/c;->X:Lcom/framer/FrameView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    iget-object v1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$e;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v1}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v1

    iget-object v1, v1, Lo8/c;->g0:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 3
    iget-object v1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$e;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v1}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v1

    iget-object v1, v1, Lo8/c;->g0:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 4
    iget-object v1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$e;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v1}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v1

    iget-object v1, v1, Lo8/c;->X:Lcom/framer/FrameView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object v1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$e;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v1}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v1

    iget-object v1, v1, Lo8/c;->e0:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$e;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v0

    iget-object v0, v0, Lo8/c;->h0:Lcom/tebakgambar/component/CustomTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$e;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v0

    iget-object v0, v0, Lo8/c;->X:Lcom/framer/FrameView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$e;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v0

    iget-object v0, v0, Lo8/c;->e0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$e;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v0

    iget-object v0, v0, Lo8/c;->i0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$e;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v0

    iget-object v0, v0, Lo8/c;->b0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$e;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object v0

    iget-object v0, v0, Lo8/c;->Y:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/tebakgambar/selfie/EditFrameActivity$e;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v3}, Lcom/tebakgambar/selfie/EditFrameActivity;->i1(Lcom/tebakgambar/selfie/EditFrameActivity;)Z

    move-result v3

    if-eqz v3, :cond_8b

    goto :goto_8c

    :cond_8b
    const/4 v1, 0x0

    :goto_8c
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$e;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->j1(Lcom/tebakgambar/selfie/EditFrameActivity;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lv2/j;ZZ)Z
    .registers 6

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    check-cast p2, Ljava/lang/String;

    invoke-virtual/range {p0 .. p5}, Lcom/tebakgambar/selfie/EditFrameActivity$e;->f(Landroid/graphics/Bitmap;Ljava/lang/String;Lv2/j;ZZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Exception;Ljava/lang/Object;Lv2/j;Z)Z
    .registers 5

    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tebakgambar/selfie/EditFrameActivity$e;->e(Ljava/lang/Exception;Ljava/lang/String;Lv2/j;Z)Z

    move-result p1

    return p1
.end method

.method public e(Ljava/lang/Exception;Ljava/lang/String;Lv2/j;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Lv2/j<",
            "Landroid/graphics/Bitmap;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$e;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->d1(Lcom/tebakgambar/selfie/EditFrameActivity;)V

    const/4 p1, 0x1

    return p1
.end method

.method public f(Landroid/graphics/Bitmap;Ljava/lang/String;Lv2/j;ZZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            "Lv2/j<",
            "Landroid/graphics/Bitmap;",
            ">;ZZ)Z"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/tebakgambar/selfie/EditFrameActivity$e;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {p2}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object p2

    iget-object p2, p2, Lo8/c;->Z:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2
    iget-object p2, p0, Lcom/tebakgambar/selfie/EditFrameActivity$e;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {p2}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object p2

    iget-object p2, p2, Lo8/c;->X:Lcom/framer/FrameView;

    invoke-virtual {p2, p1}, Lcom/framer/FrameView;->setFrameBitmap(Landroid/graphics/Bitmap;)V

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$e;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object p1

    iget-object p1, p1, Lo8/c;->X:Lcom/framer/FrameView;

    iget-object p2, p0, Lcom/tebakgambar/selfie/EditFrameActivity$e;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/c;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f08015a

    invoke-static {p2, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/framer/FrameView;->n(Landroid/graphics/Bitmap;F)V

    .line 4
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$e;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object p1

    iget-object p1, p1, Lo8/c;->X:Lcom/framer/FrameView;

    const-string p2, "#00AAA1"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/framer/FrameView;->setOuterColor(I)V

    .line 5
    iget-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$e;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->e1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lo8/c;

    move-result-object p1

    iget-object p1, p1, Lo8/c;->g0:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/tebakgambar/selfie/d;

    invoke-direct {p2, p0}, Lcom/tebakgambar/selfie/d;-><init>(Lcom/tebakgambar/selfie/EditFrameActivity$e;)V

    const-wide/16 p3, 0xc8

    invoke-virtual {p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x0

    return p1
.end method

###### Class com.tebakgambar.selfie.d (com.tebakgambar.selfie.d)
.class public final synthetic Lcom/tebakgambar/selfie/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/selfie/EditFrameActivity$e;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/selfie/EditFrameActivity$e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/selfie/d;->o:Lcom/tebakgambar/selfie/EditFrameActivity$e;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/tebakgambar/selfie/d;->o:Lcom/tebakgambar/selfie/EditFrameActivity$e;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity$e;->c(Lcom/tebakgambar/selfie/EditFrameActivity$e;)V

    return-void
.end method

###### Class com.tebakgambar.selfie.EditFrameActivity.f (com.tebakgambar.selfie.EditFrameActivity$f)
.class Lcom/tebakgambar/selfie/EditFrameActivity$f;
.super Landroidx/activity/g;
.source "EditFrameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/selfie/EditFrameActivity;->u1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/tebakgambar/selfie/EditFrameActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/selfie/EditFrameActivity;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$f;->d:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-direct {p0, p2}, Landroidx/activity/g;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$f;->d:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->k1(Lcom/tebakgambar/selfie/EditFrameActivity;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$f;->d:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_95

    .line 3
    :cond_f
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$f;->d:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->l1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lcom/tebakgambar/selfie/g;

    move-result-object v0

    iget v0, v0, Lcom/tebakgambar/selfie/g;->t:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$f;->d:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_95

    .line 5
    :cond_20
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$f;->d:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->l1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lcom/tebakgambar/selfie/g;

    move-result-object v0

    iget-object v0, v0, Lcom/tebakgambar/selfie/g;->r:Lcom/tebakgambar/model/BaseEvent;

    if-eqz v0, :cond_8b

    .line 6
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$f;->d:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->l1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lcom/tebakgambar/selfie/g;

    move-result-object v0

    iget-object v0, v0, Lcom/tebakgambar/selfie/g;->r:Lcom/tebakgambar/model/BaseEvent;

    instance-of v0, v0, Lcom/tebakgambar/model/ResultEvents;

    if-eqz v0, :cond_57

    .line 7
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$f;->d:Lcom/tebakgambar/selfie/EditFrameActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tebakgambar/selfie/EditFrameActivity$f;->d:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/tebakgambar/AdsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/tebakgambar/selfie/EditFrameActivity$f;->d:Lcom/tebakgambar/selfie/EditFrameActivity;

    .line 8
    invoke-static {v2}, Lcom/tebakgambar/selfie/EditFrameActivity;->l1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lcom/tebakgambar/selfie/g;

    move-result-object v2

    iget-object v2, v2, Lcom/tebakgambar/selfie/g;->r:Lcom/tebakgambar/model/BaseEvent;

    const-string v3, "event_data"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_90

    .line 10
    :cond_57
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$f;->d:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->l1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lcom/tebakgambar/selfie/g;

    move-result-object v0

    iget-object v0, v0, Lcom/tebakgambar/selfie/g;->r:Lcom/tebakgambar/model/BaseEvent;

    instance-of v0, v0, Lcom/tebakgambar/model/ResultEventClue;

    if-eqz v0, :cond_90

    .line 11
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$f;->d:Lcom/tebakgambar/selfie/EditFrameActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tebakgambar/selfie/EditFrameActivity$f;->d:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/tebakgambar/AdsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/tebakgambar/selfie/EditFrameActivity$f;->d:Lcom/tebakgambar/selfie/EditFrameActivity;

    .line 12
    invoke-static {v2}, Lcom/tebakgambar/selfie/EditFrameActivity;->l1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lcom/tebakgambar/selfie/g;

    move-result-object v2

    iget-object v2, v2, Lcom/tebakgambar/selfie/g;->r:Lcom/tebakgambar/model/BaseEvent;

    const-string v3, "event_clue"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "isMainLagi"

    .line 13
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_90

    .line 15
    :cond_8b
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$f;->d:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->m1(Lcom/tebakgambar/selfie/EditFrameActivity;)V

    .line 16
    :cond_90
    :goto_90
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$f;->d:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_95
    return-void
.end method

###### Class com.tebakgambar.selfie.EditFrameActivity.g (com.tebakgambar.selfie.EditFrameActivity$g)
.class Lcom/tebakgambar/selfie/EditFrameActivity$g;
.super Ljava/lang/Object;
.source "EditFrameActivity.java"

# interfaces
.implements Lj8/y$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/selfie/EditFrameActivity;->J1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lj8/y;

.field final synthetic b:Lcom/tebakgambar/selfie/EditFrameActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/selfie/EditFrameActivity;Lj8/y;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$g;->b:Lcom/tebakgambar/selfie/EditFrameActivity;

    iput-object p2, p0, Lcom/tebakgambar/selfie/EditFrameActivity$g;->a:Lj8/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$g;->b:Lcom/tebakgambar/selfie/EditFrameActivity;

    const-string v1, "camera"

    invoke-static {v0, v1}, Lcom/tebakgambar/selfie/EditFrameActivity;->n1(Lcom/tebakgambar/selfie/EditFrameActivity;Ljava/lang/String;)V

    .line 2
    :try_start_7
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$g;->b:Lcom/tebakgambar/selfie/EditFrameActivity;

    const-string v1, "tmp_tg.jpg"

    invoke-static {v0, v1}, Ly8/h;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tebakgambar/selfie/EditFrameActivity;->q1(Lcom/tebakgambar/selfie/EditFrameActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$g;->b:Lcom/tebakgambar/selfie/EditFrameActivity;

    const/4 v1, 0x1

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->p1(Lcom/tebakgambar/selfie/EditFrameActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ly8/a;->g(Landroid/app/Activity;ILandroid/net/Uri;)V
    :try_end_1c
    .catch Ly8/n; {:try_start_7 .. :try_end_1c} :catch_22
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1c} :catch_1d

    goto :goto_34

    :catch_1d
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    :catch_22
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    iget-object v1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$g;->b:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-virtual {v0}, Ly8/n;->a()[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/tebakgambar/selfie/e;

    invoke-direct {v2, p0}, Lcom/tebakgambar/selfie/e;-><init>(Lcom/tebakgambar/selfie/EditFrameActivity$g;)V

    invoke-static {v1, v0, v2}, Lcom/tebakgambar/selfie/EditFrameActivity;->f1(Lcom/tebakgambar/selfie/EditFrameActivity;[Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 7
    :goto_34
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$g;->a:Lj8/y;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public b()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$g;->b:Lcom/tebakgambar/selfie/EditFrameActivity;

    const-string v1, "file_manager"

    invoke-static {v0, v1}, Lcom/tebakgambar/selfie/EditFrameActivity;->n1(Lcom/tebakgambar/selfie/EditFrameActivity;Ljava/lang/String;)V

    .line 2
    :try_start_7
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$g;->b:Lcom/tebakgambar/selfie/EditFrameActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ly8/a;->h(Landroid/app/Activity;I)V
    :try_end_d
    .catch Ly8/n; {:try_start_7 .. :try_end_d} :catch_e

    goto :goto_20

    :catch_e
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    iget-object v1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$g;->b:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-virtual {v0}, Ly8/n;->a()[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/tebakgambar/selfie/f;

    invoke-direct {v2, p0}, Lcom/tebakgambar/selfie/f;-><init>(Lcom/tebakgambar/selfie/EditFrameActivity$g;)V

    invoke-static {v1, v0, v2}, Lcom/tebakgambar/selfie/EditFrameActivity;->o1(Lcom/tebakgambar/selfie/EditFrameActivity;[Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 5
    :goto_20
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$g;->a:Lj8/y;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method

###### Class com.tebakgambar.selfie.e (com.tebakgambar.selfie.e)
.class public final synthetic Lcom/tebakgambar/selfie/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/selfie/EditFrameActivity$g;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/selfie/EditFrameActivity$g;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/selfie/e;->o:Lcom/tebakgambar/selfie/EditFrameActivity$g;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/tebakgambar/selfie/e;->o:Lcom/tebakgambar/selfie/EditFrameActivity$g;

    invoke-virtual {v0}, Lcom/tebakgambar/selfie/EditFrameActivity$g;->a()V

    return-void
.end method

###### Class com.tebakgambar.selfie.f (com.tebakgambar.selfie.f)
.class public final synthetic Lcom/tebakgambar/selfie/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/selfie/EditFrameActivity$g;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/selfie/EditFrameActivity$g;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/selfie/f;->o:Lcom/tebakgambar/selfie/EditFrameActivity$g;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/tebakgambar/selfie/f;->o:Lcom/tebakgambar/selfie/EditFrameActivity$g;

    invoke-virtual {v0}, Lcom/tebakgambar/selfie/EditFrameActivity$g;->b()V

    return-void
.end method

###### Class com.tebakgambar.selfie.EditFrameActivity.h (com.tebakgambar.selfie.EditFrameActivity$h)
.class Lcom/tebakgambar/selfie/EditFrameActivity$h;
.super Ljava/lang/Object;
.source "EditFrameActivity.java"

# interfaces
.implements Lj8/c0$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/selfie/EditFrameActivity;->z1(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/selfie/EditFrameActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/selfie/EditFrameActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/selfie/EditFrameActivity$h;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$h;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->g1(Lcom/tebakgambar/selfie/EditFrameActivity;)Lj8/c0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/selfie/EditFrameActivity$h;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tebakgambar/selfie/EditFrameActivity;->h1(Lcom/tebakgambar/selfie/EditFrameActivity;Lj8/c0;)Lj8/c0;

    return-void
.end method

###### Class u8.a (u8.a)
.class public final synthetic Lu8/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/selfie/EditFrameActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/selfie/EditFrameActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu8/a;->o:Lcom/tebakgambar/selfie/EditFrameActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lu8/a;->o:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->c1(Lcom/tebakgambar/selfie/EditFrameActivity;Landroid/view/View;)V

    return-void
.end method

###### Class u8.b (u8.b)
.class public final synthetic Lu8/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/selfie/EditFrameActivity;

.field public final synthetic p:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/selfie/EditFrameActivity;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu8/b;->o:Lcom/tebakgambar/selfie/EditFrameActivity;

    iput-object p2, p0, Lu8/b;->p:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lu8/b;->o:Lcom/tebakgambar/selfie/EditFrameActivity;

    iget-object v1, p0, Lu8/b;->p:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/tebakgambar/selfie/EditFrameActivity;->Z0(Lcom/tebakgambar/selfie/EditFrameActivity;Landroid/view/View;)V

    return-void
.end method

###### Class u8.c (u8.c)
.class public final synthetic Lu8/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/selfie/EditFrameActivity;

.field public final synthetic p:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/selfie/EditFrameActivity;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu8/c;->o:Lcom/tebakgambar/selfie/EditFrameActivity;

    iput-object p2, p0, Lu8/c;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lu8/c;->o:Lcom/tebakgambar/selfie/EditFrameActivity;

    iget-object v1, p0, Lu8/c;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tebakgambar/selfie/EditFrameActivity;->Y0(Lcom/tebakgambar/selfie/EditFrameActivity;Ljava/lang/String;)V

    return-void
.end method

###### Class u8.d (u8.d)
.class public final synthetic Lu8/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/selfie/EditFrameActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/selfie/EditFrameActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu8/d;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lu8/d;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0}, Lcom/tebakgambar/selfie/EditFrameActivity;->W0(Lcom/tebakgambar/selfie/EditFrameActivity;)Lcom/tebakgambar/model/Level;

    move-result-object v0

    return-object v0
.end method

###### Class u8.e (u8.e)
.class public final synthetic Lu8/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu8/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lu8/e;->b:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lu8/e;->a:Ljava/lang/String;

    iget-object v1, p0, Lu8/e;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/tebakgambar/selfie/EditFrameActivity;->V0(Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class u8.f (u8.f)
.class public final synthetic Lu8/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt1/f;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/selfie/EditFrameActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/selfie/EditFrameActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu8/f;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    return-void
.end method


# virtual methods
.method public final a(Lt1/h;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lu8/f;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->a1(Lcom/tebakgambar/selfie/EditFrameActivity;Lt1/h;)Lt1/h;

    move-result-object p1

    return-object p1
.end method

###### Class u8.g (u8.g)
.class public final synthetic Lu8/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt1/f;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/selfie/EditFrameActivity;

.field public final synthetic b:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/selfie/EditFrameActivity;Landroid/net/Uri;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu8/g;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    iput-object p2, p0, Lu8/g;->b:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final a(Lt1/h;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lu8/g;->a:Lcom/tebakgambar/selfie/EditFrameActivity;

    iget-object v1, p0, Lu8/g;->b:Landroid/net/Uri;

    invoke-static {v0, v1, p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->X0(Lcom/tebakgambar/selfie/EditFrameActivity;Landroid/net/Uri;Lt1/h;)Lt1/h;

    move-result-object p1

    return-object p1
.end method

###### Class u8.h (u8.h)
.class public final synthetic Lu8/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt1/f;


# static fields
.field public static final synthetic a:Lu8/h;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lu8/h;

    invoke-direct {v0}, Lu8/h;-><init>()V

    sput-object v0, Lu8/h;->a:Lu8/h;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lt1/h;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->U0(Lt1/h;)Lt1/h;

    move-result-object p1

    return-object p1
.end method

###### Class u8.i (u8.i)
.class public final synthetic Lu8/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt1/f;


# static fields
.field public static final synthetic a:Lu8/i;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lu8/i;

    invoke-direct {v0}, Lu8/i;-><init>()V

    sput-object v0, Lu8/i;->a:Lu8/i;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lt1/h;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/tebakgambar/selfie/EditFrameActivity;->b1(Lt1/h;)Lt1/h;

    move-result-object p1

    return-object p1
.end method
