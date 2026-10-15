###### Class com.tebakgambar.sticker.StickerCampaignActivity (com.tebakgambar.sticker.StickerCampaignActivity)
.class public Lcom/tebakgambar/sticker/StickerCampaignActivity;
.super Lj8/t;
.source "StickerCampaignActivity.java"

# interfaces
.implements Ly8/w$g;


# instance fields
.field private A:Ly8/w;

.field campaignDetailId:Ljava/lang/Integer;

.field private y:Lo8/w;

.field private z:Lcom/tebakgambar/sticker/n;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lj8/t;-><init>()V

    return-void
.end method

.method public static synthetic U0(Lcom/tebakgambar/sticker/StickerCampaignActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/sticker/StickerCampaignActivity;->e1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic V0(Lcom/tebakgambar/sticker/StickerCampaignActivity;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/sticker/StickerCampaignActivity;->b1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic W0(Lcom/tebakgambar/sticker/StickerCampaignActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/sticker/StickerCampaignActivity;->d1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic X0(Lcom/tebakgambar/sticker/StickerCampaignActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/sticker/StickerCampaignActivity;->f1()V

    return-void
.end method

.method public static synthetic Y0(Lcom/tebakgambar/sticker/StickerCampaignActivity;Lj8/c0;Ljava/lang/String;Ljava/lang/String;Lt1/h;)Lt1/h;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tebakgambar/sticker/StickerCampaignActivity;->c1(Lj8/c0;Ljava/lang/String;Ljava/lang/String;Lt1/h;)Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method private Z0()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity;->z:Lcom/tebakgambar/sticker/n;

    invoke-virtual {v0}, Lcom/tebakgambar/sticker/n;->M()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity;->z:Lcom/tebakgambar/sticker/n;

    invoke-virtual {v1}, Lcom/tebakgambar/sticker/n;->N()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lj8/t;->I0()Lj8/c0;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity;->z:Lcom/tebakgambar/sticker/n;

    invoke-virtual {v3}, Lcom/tebakgambar/sticker/n;->J()Lt1/h;

    move-result-object v3

    new-instance v4, Lcom/tebakgambar/sticker/e;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/tebakgambar/sticker/e;-><init>(Lcom/tebakgambar/sticker/StickerCampaignActivity;Lj8/c0;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lt1/h;->k:Ljava/util/concurrent/Executor;

    invoke-virtual {v3, v4, v0}, Lt1/h;->m(Lt1/f;Ljava/util/concurrent/Executor;)Lt1/h;

    return-void
.end method

.method private a1(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.whatsapp.intent.action.ENABLE_STICKER_PACK"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sticker_pack_id"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "sticker_pack_authority"

    const-string v1, "com.tebakgambar.stickercontentprovider"

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "sticker_pack_name"

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private b1(Ljava/lang/Boolean;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic c1(Lj8/c0;Ljava/lang/String;Ljava/lang/String;Lt1/h;)Lt1/h;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    const v1, 0x7f12001f

    const/4 v2, 0x0

    .line 1
    :try_start_5
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    invoke-virtual {p4}, Lt1/h;->w()Z

    move-result p1

    if-eqz p1, :cond_19

    const p1, 0x7f120099

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj8/t;->O0(Ljava/lang/String;)V

    return-object v2

    .line 4
    :cond_19
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {p1}, Lcom/tebakgambar/sticker/o;->d(Landroid/content/pm/PackageManager;)Z

    move-result p1

    if-nez p1, :cond_39

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {p1}, Lcom/tebakgambar/sticker/o;->e(Landroid/content/pm/PackageManager;)Z

    move-result p1

    if-nez p1, :cond_39

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-object v2

    .line 6
    :cond_39
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/tebakgambar/sticker/o;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p4

    invoke-static {p4, p2}, Lcom/tebakgambar/sticker/o;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p4

    if-nez p1, :cond_51

    if-nez p4, :cond_51

    .line 8
    invoke-direct {p0, p2, p3}, Lcom/tebakgambar/sticker/StickerCampaignActivity;->g1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    :cond_51
    if-nez p1, :cond_59

    const-string p1, "com.whatsapp"

    .line 9
    invoke-direct {p0, p2, p3, p1}, Lcom/tebakgambar/sticker/StickerCampaignActivity;->h1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    :cond_59
    if-nez p4, :cond_61

    const-string p1, "com.whatsapp.w4b"

    .line 10
    invoke-direct {p0, p2, p3, p1}, Lcom/tebakgambar/sticker/StickerCampaignActivity;->h1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    :cond_61
    const p1, 0x7f12001d

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj8/t;->O0(Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_6b} :catch_6c

    goto :goto_77

    .line 12
    :catch_6c
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_77
    return-object v2
.end method

.method private synthetic d1(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity;->z:Lcom/tebakgambar/sticker/n;

    invoke-virtual {p1}, Lcom/tebakgambar/sticker/n;->V()V

    .line 2
    invoke-direct {p0}, Lcom/tebakgambar/sticker/StickerCampaignActivity;->k1()V

    return-void
.end method

.method private synthetic e1(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity;->z:Lcom/tebakgambar/sticker/n;

    invoke-virtual {p1}, Lcom/tebakgambar/sticker/n;->T()V

    .line 2
    invoke-direct {p0}, Lcom/tebakgambar/sticker/StickerCampaignActivity;->Z0()V

    return-void
.end method

.method private synthetic f1()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity;->y:Lo8/w;

    iget-object v0, v0, Lo8/w;->Q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    return-void
.end method

.method private g1(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tebakgambar/sticker/StickerCampaignActivity;->a1(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const p2, 0x7f120020

    .line 2
    :try_start_7
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0xc8

    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_14
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_14} :catch_15

    goto :goto_20

    :catch_15
    const p1, 0x7f12001f

    const/4 p2, 0x1

    .line 3
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_20
    return-void
.end method

.method private h1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tebakgambar/sticker/StickerCampaignActivity;->a1(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0xc8

    .line 3
    :try_start_9
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_18

    :catch_d
    const p1, 0x7f12001f

    const/4 p2, 0x1

    .line 4
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_18
    return-void
.end method

.method private i1(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private j1()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity;->y:Lo8/w;

    iget-object v0, v0, Lo8/w;->Q:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/tebakgambar/sticker/b;

    invoke-direct {v1, p0}, Lcom/tebakgambar/sticker/b;-><init>(Lcom/tebakgambar/sticker/StickerCampaignActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity;->y:Lo8/w;

    iget-object v0, v0, Lo8/w;->O:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/tebakgambar/sticker/a;

    invoke-direct {v1, p0}, Lcom/tebakgambar/sticker/a;-><init>(Lcom/tebakgambar/sticker/StickerCampaignActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private k1()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity;->A:Ly8/w;

    iget-object v1, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity;->z:Lcom/tebakgambar/sticker/n;

    invoke-virtual {v1}, Lcom/tebakgambar/sticker/n;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly8/w;->v(Ljava/lang/String;)V

    .line 2
    :try_start_b
    iget-object v0, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity;->y:Lo8/w;

    iget-object v0, v0, Lo8/w;->U:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-lez v0, :cond_32

    iget-object v0, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity;->y:Lo8/w;

    iget-object v0, v0, Lo8/w;->U:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    if-gtz v0, :cond_20

    goto :goto_32

    .line 3
    :cond_20
    iget-object v0, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity;->A:Ly8/w;

    iget-object v1, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity;->y:Lo8/w;

    iget-object v1, v1, Lo8/w;->U:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/tebakgambar/sticker/StickerCampaignActivity;->i1(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {p0, v1}, Ly8/h;->t(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly8/w;->w(Landroid/net/Uri;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_31} :catch_44
    .catch Ly8/n; {:try_start_b .. :try_end_31} :catch_33

    goto :goto_4f

    :cond_32
    :goto_32
    return-void

    :catch_33
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    invoke-virtual {v0}, Ly8/n;->a()[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tebakgambar/sticker/d;

    invoke-direct {v1, p0}, Lcom/tebakgambar/sticker/d;-><init>(Lcom/tebakgambar/sticker/StickerCampaignActivity;)V

    invoke-virtual {p0, v0, v1}, Lj8/t;->B0([Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_4f

    :catch_44
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 7
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->a()Lcom/google/firebase/crashlytics/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/a;->d(Ljava/lang/Throwable;)V

    :goto_4f
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;ILandroid/net/Uri;)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lj8/t;->O0(Ljava/lang/String;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Lj8/t;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity;->A:Ly8/w;

    invoke-virtual {v0, p1, p2, p3}, Ly8/w;->o(IILandroid/content/Intent;)V

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_20

    if-nez p2, :cond_20

    if-eqz p3, :cond_16

    const-string p1, "validation_error"

    .line 3
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_20

    :cond_16
    const p1, 0x7f12001e

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj8/t;->O0(Ljava/lang/String;)V

    :cond_20
    :goto_20
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/e;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/k0;->b(Landroidx/fragment/app/e;)Landroidx/lifecycle/h0;

    move-result-object p1

    const-class v0, Lcom/tebakgambar/sticker/n;

    const-string v1, "activityViewModel"

    invoke-virtual {p1, v1, v0}, Landroidx/lifecycle/h0;->b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/g0;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/sticker/n;

    iput-object p1, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity;->z:Lcom/tebakgambar/sticker/n;

    const p1, 0x7f0d002d

    .line 3
    invoke-static {p0, p1}, Landroidx/databinding/g;->j(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lo8/w;

    iput-object p1, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity;->y:Lo8/w;

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity;->z:Lcom/tebakgambar/sticker/n;

    invoke-virtual {p1, v0}, Lo8/w;->u0(Lcom/tebakgambar/sticker/n;)V

    .line 5
    iget-object p1, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity;->z:Lcom/tebakgambar/sticker/n;

    invoke-virtual {p0, p1}, Lj8/t;->C0(Lj8/x;)V

    .line 6
    iget-object p1, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity;->z:Lcom/tebakgambar/sticker/n;

    iget-object p1, p1, Lcom/tebakgambar/sticker/n;->Q:Ly8/u;

    new-instance v0, Lcom/tebakgambar/sticker/c;

    invoke-direct {v0, p0}, Lcom/tebakgambar/sticker/c;-><init>(Lcom/tebakgambar/sticker/StickerCampaignActivity;)V

    invoke-virtual {p1, p0, v0}, Ly8/u;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 7
    invoke-static {p0}, Ly2/a;->b(Landroid/app/Activity;)V

    .line 8
    new-instance p1, Ly8/w;

    invoke-direct {p1, p0}, Ly8/w;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity;->A:Ly8/w;

    .line 9
    invoke-virtual {p1, p0}, Ly8/w;->u(Ly8/w$g;)V

    .line 10
    iget-object p1, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity;->A:Ly8/w;

    const/4 v0, 0x1

    iput-boolean v0, p1, Ly8/w;->k:Z

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p1, Ly8/w;->j:Z

    .line 12
    invoke-direct {p0}, Lcom/tebakgambar/sticker/StickerCampaignActivity;->j1()V

    .line 13
    iget-object p1, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity;->z:Lcom/tebakgambar/sticker/n;

    iget-object v0, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity;->campaignDetailId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tebakgambar/sticker/n;->Y(I)V

    .line 14
    iget-object p1, p0, Lcom/tebakgambar/sticker/StickerCampaignActivity;->z:Lcom/tebakgambar/sticker/n;

    invoke-virtual {p1}, Lcom/tebakgambar/sticker/n;->U()V

    return-void
.end method

.method public y(ILandroid/net/Uri;)V
    .registers 3

    const p1, 0x7f1201bf

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj8/t;->O0(Ljava/lang/String;)V

    return-void
.end method

###### Class com.tebakgambar.sticker.a (com.tebakgambar.sticker.a)
.class public final synthetic Lcom/tebakgambar/sticker/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/sticker/StickerCampaignActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/sticker/StickerCampaignActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/sticker/a;->o:Lcom/tebakgambar/sticker/StickerCampaignActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/sticker/a;->o:Lcom/tebakgambar/sticker/StickerCampaignActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/sticker/StickerCampaignActivity;->U0(Lcom/tebakgambar/sticker/StickerCampaignActivity;Landroid/view/View;)V

    return-void
.end method

###### Class com.tebakgambar.sticker.b (com.tebakgambar.sticker.b)
.class public final synthetic Lcom/tebakgambar/sticker/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/sticker/StickerCampaignActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/sticker/StickerCampaignActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/sticker/b;->o:Lcom/tebakgambar/sticker/StickerCampaignActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/sticker/b;->o:Lcom/tebakgambar/sticker/StickerCampaignActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/sticker/StickerCampaignActivity;->W0(Lcom/tebakgambar/sticker/StickerCampaignActivity;Landroid/view/View;)V

    return-void
.end method

###### Class com.tebakgambar.sticker.c (com.tebakgambar.sticker.c)
.class public final synthetic Lcom/tebakgambar/sticker/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/sticker/StickerCampaignActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/sticker/StickerCampaignActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/sticker/c;->a:Lcom/tebakgambar/sticker/StickerCampaignActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/sticker/c;->a:Lcom/tebakgambar/sticker/StickerCampaignActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/tebakgambar/sticker/StickerCampaignActivity;->V0(Lcom/tebakgambar/sticker/StickerCampaignActivity;Ljava/lang/Boolean;)V

    return-void
.end method

###### Class com.tebakgambar.sticker.d (com.tebakgambar.sticker.d)
.class public final synthetic Lcom/tebakgambar/sticker/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/sticker/StickerCampaignActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/sticker/StickerCampaignActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/sticker/d;->o:Lcom/tebakgambar/sticker/StickerCampaignActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/tebakgambar/sticker/d;->o:Lcom/tebakgambar/sticker/StickerCampaignActivity;

    invoke-static {v0}, Lcom/tebakgambar/sticker/StickerCampaignActivity;->X0(Lcom/tebakgambar/sticker/StickerCampaignActivity;)V

    return-void
.end method

###### Class com.tebakgambar.sticker.e (com.tebakgambar.sticker.e)
.class public final synthetic Lcom/tebakgambar/sticker/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt1/f;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/sticker/StickerCampaignActivity;

.field public final synthetic b:Lj8/c0;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/sticker/StickerCampaignActivity;Lj8/c0;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/sticker/e;->a:Lcom/tebakgambar/sticker/StickerCampaignActivity;

    iput-object p2, p0, Lcom/tebakgambar/sticker/e;->b:Lj8/c0;

    iput-object p3, p0, Lcom/tebakgambar/sticker/e;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/tebakgambar/sticker/e;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lt1/h;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/tebakgambar/sticker/e;->a:Lcom/tebakgambar/sticker/StickerCampaignActivity;

    iget-object v1, p0, Lcom/tebakgambar/sticker/e;->b:Lj8/c0;

    iget-object v2, p0, Lcom/tebakgambar/sticker/e;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/tebakgambar/sticker/e;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/tebakgambar/sticker/StickerCampaignActivity;->Y0(Lcom/tebakgambar/sticker/StickerCampaignActivity;Lj8/c0;Ljava/lang/String;Ljava/lang/String;Lt1/h;)Lt1/h;

    move-result-object p1

    return-object p1
.end method
