###### Class com.tebakgambar.home.HomeActivity (com.tebakgambar.home.HomeActivity)
.class public Lcom/tebakgambar/home/HomeActivity;
.super Lj8/t;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tebakgambar/home/HomeActivity$i;
    }
.end annotation


# instance fields
.field private A:Lj8/b0;

.field private B:Z

.field private C:Lcom/google/firebase/remoteconfig/a;

.field customBanner:Lcom/tebakgambar/model/CustomBanner;

.field remoteMessage:Lcom/tebakgambar/model/request/TGRemoteMessage;

.field showLoginImmediately:Z

.field private y:Lo8/e;

.field private z:Lcom/tebakgambar/home/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lj8/t;-><init>()V

    return-void
.end method

.method private synthetic A1(Lt1/h;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lt1/h;->s()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic B1(Landroid/content/DialogInterface;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity;->A:Lj8/b0;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity;->A:Lj8/b0;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_f
    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/tebakgambar/home/HomeActivity;->A:Lj8/b0;

    return-void
.end method

.method private synthetic C1(Lcom/tebakgambar/model/ForceUpdate;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1
    iget-object p1, p1, Lcom/tebakgambar/model/ForceUpdate;->url:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Ly8/a;->f(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method private D1()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lj8/t;->i0()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lv1/g;->v(Landroid/content/Context;)Lv1/j;

    move-result-object v0

    const v1, 0x7f08006b

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lv1/j;->w(Ljava/lang/Integer;)Lv1/d;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lv1/d;->W()Lv1/b;

    move-result-object v0

    sget-object v1, Lb2/b;->q:Lb2/b;

    .line 4
    invoke-virtual {v0, v1}, Lv1/a;->G(Lb2/b;)Lv1/a;

    move-result-object v0

    new-instance v1, Lcom/tebakgambar/home/HomeActivity$c;

    invoke-direct {v1, p0}, Lcom/tebakgambar/home/HomeActivity$c;-><init>(Lcom/tebakgambar/home/HomeActivity;)V

    .line 5
    invoke-virtual {v0, v1}, Lv1/e;->q(Lv2/j;)Lv2/j;

    return-void
.end method

.method private E1(Lcom/tebakgambar/model/response/StickerCampaignResult;)V
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/Henson$b;->m()Lcom/tebakgambar/sticker/StickerCampaignListActivity$$IntentBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/tebakgambar/sticker/StickerCampaignListActivity$$IntentBuilder;->stickerCampaignResult(Lcom/tebakgambar/model/response/StickerCampaignResult;)Lcom/tebakgambar/sticker/StickerCampaignListActivity$$IntentBuilder;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/tebakgambar/sticker/StickerCampaignListActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private F1(Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {p0}, Ly8/a;->c(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "android.intent.action.VIEW"

    if-eqz v0, :cond_29

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fb://page/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_46

    .line 6
    :cond_29
    new-instance v0, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://facebook.com/profile.php?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_46
    return-void
.end method

.method private G1(Lcom/tebakgambar/model/Homes$HomeData;)V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity;->y:Lo8/e;

    iget-object v0, v0, Lo8/e;->j0:Landroid/widget/RelativeLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/tebakgambar/model/Homes$HomeData;->color:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_2b

    :catch_1f
    move-exception v0

    .line 2
    iget-object v1, p0, Lcom/tebakgambar/home/HomeActivity;->y:Lo8/e;

    iget-object v1, v1, Lo8/e;->j0:Landroid/widget/RelativeLayout;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :goto_2b
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 5
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 7
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 8
    iget-object p1, p1, Lcom/tebakgambar/model/Homes$HomeData;->background:Ljava/lang/String;

    const/16 v1, 0x258

    const-string v2, ".png"

    if-gt v0, v1, :cond_4c

    const-string v0, "-150.png"

    .line 9
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_56

    :cond_4c
    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_56

    const-string v0, "-450.png"

    .line 10
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 11
    :cond_56
    :goto_56
    :try_start_56
    invoke-static {p0}, Lv1/g;->w(Landroidx/fragment/app/e;)Lv1/j;

    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lv1/j;->x(Ljava/lang/String;)Lv1/d;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lv1/d;->W()Lv1/b;

    move-result-object p1

    sget-object v0, Lb2/b;->q:Lb2/b;

    .line 14
    invoke-virtual {p1, v0}, Lv1/a;->G(Lb2/b;)Lv1/a;

    move-result-object p1

    new-instance v0, Lcom/tebakgambar/home/HomeActivity$f;

    invoke-direct {v0, p0}, Lcom/tebakgambar/home/HomeActivity$f;-><init>(Lcom/tebakgambar/home/HomeActivity;)V

    .line 15
    invoke-virtual {p1, v0}, Lv1/e;->q(Lv2/j;)Lv2/j;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_70} :catch_71

    goto :goto_79

    :catch_71
    move-exception p1

    .line 16
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->a()Lcom/google/firebase/crashlytics/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/a;->d(Ljava/lang/Throwable;)V

    :goto_79
    return-void
.end method

.method private H1(Lcom/tebakgambar/model/Homes;)V
    .registers 5

    if-nez p1, :cond_6

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/home/HomeActivity;->D1()V

    return-void

    .line 2
    :cond_6
    iget-object v0, p1, Lcom/tebakgambar/model/Homes;->home:Lcom/tebakgambar/model/Homes$HomeData;

    if-eqz v0, :cond_60

    .line 3
    invoke-static {p0}, Lv1/g;->w(Landroidx/fragment/app/e;)Lv1/j;

    move-result-object v0

    iget-object v1, p1, Lcom/tebakgambar/model/Homes;->home:Lcom/tebakgambar/model/Homes$HomeData;

    iget-object v1, v1, Lcom/tebakgambar/model/Homes$HomeData;->icon:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Lv1/j;->x(Ljava/lang/String;)Lv1/d;

    move-result-object v0

    sget-object v1, Lb2/b;->q:Lb2/b;

    .line 5
    invoke-virtual {v0, v1}, Lv1/c;->H(Lb2/b;)Lv1/c;

    move-result-object v0

    const v1, 0x7f080136

    .line 6
    invoke-virtual {v0, v1}, Lv1/c;->J(I)Lv1/c;

    move-result-object v0

    iget-object v1, p0, Lcom/tebakgambar/home/HomeActivity;->y:Lo8/e;

    iget-object v1, v1, Lo8/e;->a0:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {v0, v1}, Lv1/c;->p(Landroid/widget/ImageView;)Lv2/j;

    .line 8
    iget-object v0, p1, Lcom/tebakgambar/model/Homes;->home:Lcom/tebakgambar/model/Homes$HomeData;

    invoke-direct {p0, v0}, Lcom/tebakgambar/home/HomeActivity;->G1(Lcom/tebakgambar/model/Homes$HomeData;)V

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_63

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 12
    :try_start_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/tebakgambar/model/Homes;->home:Lcom/tebakgambar/model/Homes$HomeData;

    iget-object v2, v2, Lcom/tebakgambar/model/Homes$HomeData;->color:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_5a} :catch_5b

    goto :goto_63

    :catch_5b
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_63

    .line 14
    :cond_60
    invoke-direct {p0}, Lcom/tebakgambar/home/HomeActivity;->D1()V

    .line 15
    :cond_63
    :goto_63
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity;->z:Lcom/tebakgambar/home/a;

    invoke-virtual {v0}, Lcom/tebakgambar/home/a;->S()Z

    move-result v0

    if-eqz v0, :cond_9f

    iget-object v0, p1, Lcom/tebakgambar/model/Homes;->floating:Lcom/tebakgambar/model/Homes$Floating;

    if-eqz v0, :cond_9f

    .line 16
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity;->y:Lo8/e;

    iget-object v0, v0, Lo8/e;->c0:Lcom/tebakgambar/component/ClickableImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity;->y:Lo8/e;

    iget-object v0, v0, Lo8/e;->b0:Lcom/tebakgambar/component/ClickableImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    invoke-static {p0}, Lv1/g;->w(Landroidx/fragment/app/e;)Lv1/j;

    move-result-object v0

    iget-object p1, p1, Lcom/tebakgambar/model/Homes;->floating:Lcom/tebakgambar/model/Homes$Floating;

    iget-object p1, p1, Lcom/tebakgambar/model/Homes$Floating;->icon_url:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, p1}, Lv1/j;->x(Ljava/lang/String;)Lv1/d;

    move-result-object p1

    sget-object v0, Lb2/b;->q:Lb2/b;

    .line 20
    invoke-virtual {p1, v0}, Lv1/c;->H(Lb2/b;)Lv1/c;

    move-result-object p1

    const v0, 0x7f08010a

    .line 21
    invoke-virtual {p1, v0}, Lv1/c;->J(I)Lv1/c;

    move-result-object p1

    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity;->y:Lo8/e;

    iget-object v0, v0, Lo8/e;->b0:Lcom/tebakgambar/component/ClickableImageView;

    .line 22
    invoke-virtual {p1, v0}, Lv1/c;->p(Landroid/widget/ImageView;)Lv2/j;

    goto :goto_af

    .line 23
    :cond_9f
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity;->y:Lo8/e;

    iget-object p1, p1, Lo8/e;->b0:Lcom/tebakgambar/component/ClickableImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity;->y:Lo8/e;

    iget-object p1, p1, Lo8/e;->c0:Lcom/tebakgambar/component/ClickableImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_af
    return-void
.end method

.method private I1()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lj8/t;->l0()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2
    invoke-virtual {p0}, Lj8/t;->R0()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/tebakgambar/home/HomeActivity;->B:Z

    goto :goto_10

    .line 4
    :cond_d
    invoke-virtual {p0}, Lj8/t;->Q0()V

    :goto_10
    return-void
.end method

.method private J1()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity;->z:Lcom/tebakgambar/home/a;

    invoke-virtual {v0}, Lcom/tebakgambar/home/a;->K()Lcom/tebakgambar/model/Homes$ExitPopUp;

    move-result-object v0

    .line 2
    new-instance v1, Lj8/b0;

    const v2, 0x7f1300ec

    invoke-direct {v1, p0, v2}, Lj8/b0;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/tebakgambar/home/HomeActivity;->A:Lj8/b0;

    .line 3
    iget-object v1, v1, Lj8/b0;->q:Lcom/tebakgambar/component/CustomButton;

    iget-object v2, v0, Lcom/tebakgambar/model/Homes$ExitPopUp;->positive:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, p0, Lcom/tebakgambar/home/HomeActivity;->A:Lj8/b0;

    iget-object v1, v1, Lj8/b0;->p:Lcom/tebakgambar/component/CustomButton;

    iget-object v2, v0, Lcom/tebakgambar/model/Homes$ExitPopUp;->negative:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-static {p0}, Lv1/g;->w(Landroidx/fragment/app/e;)Lv1/j;

    move-result-object v1

    iget-object v2, v0, Lcom/tebakgambar/model/Homes$ExitPopUp;->image:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v2}, Lv1/j;->x(Ljava/lang/String;)Lv1/d;

    move-result-object v1

    const v2, 0x7f08005a

    .line 7
    invoke-virtual {v1, v2}, Lv1/c;->Q(I)Lv1/c;

    move-result-object v1

    .line 8
    invoke-virtual {v1, v2}, Lv1/c;->J(I)Lv1/c;

    move-result-object v1

    sget-object v2, Lb2/b;->r:Lb2/b;

    .line 9
    invoke-virtual {v1, v2}, Lv1/c;->H(Lb2/b;)Lv1/c;

    move-result-object v1

    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, v2}, Lv1/c;->U(Z)Lv1/c;

    move-result-object v1

    iget-object v2, p0, Lcom/tebakgambar/home/HomeActivity;->A:Lj8/b0;

    iget-object v2, v2, Lj8/b0;->o:Lcom/tebakgambar/component/CustomImageView;

    .line 11
    invoke-virtual {v1, v2}, Lv1/c;->p(Landroid/widget/ImageView;)Lv2/j;

    .line 12
    iget-object v1, p0, Lcom/tebakgambar/home/HomeActivity;->A:Lj8/b0;

    new-instance v2, Lq8/a;

    invoke-direct {v2, p0}, Lq8/a;-><init>(Lcom/tebakgambar/home/HomeActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 13
    iget-object v1, p0, Lcom/tebakgambar/home/HomeActivity;->A:Lj8/b0;

    new-instance v2, Lcom/tebakgambar/home/HomeActivity$e;

    invoke-direct {v2, p0, v0}, Lcom/tebakgambar/home/HomeActivity$e;-><init>(Lcom/tebakgambar/home/HomeActivity;Lcom/tebakgambar/model/Homes$ExitPopUp;)V

    invoke-virtual {v1, v2}, Lj8/b0;->a(Lj8/b0$a;)V

    .line 14
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity;->A:Lj8/b0;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private K1(Lcom/tebakgambar/model/ForceUpdate;)V
    .registers 5

    .line 1
    new-instance v0, Lj8/b1;

    invoke-direct {v0, p0}, Lj8/b1;-><init>(Landroid/content/Context;)V

    iget-object v1, p1, Lcom/tebakgambar/model/ForceUpdate;->description:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Lj8/b1;->g(Ljava/lang/CharSequence;)Lj8/b1;

    move-result-object v0

    iget-object v1, p1, Lcom/tebakgambar/model/ForceUpdate;->buttonTitle:Ljava/lang/String;

    new-instance v2, Lq8/b;

    invoke-direct {v2, p0, p1}, Lq8/b;-><init>(Lcom/tebakgambar/home/HomeActivity;Lcom/tebakgambar/model/ForceUpdate;)V

    .line 3
    invoke-virtual {v0, v1, v2}, Lj8/b1;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/b1;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private L1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 1
    new-instance v8, Lj8/c0;

    const-string v0, "1"

    .line 2
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x7f120143

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_11
    move-object v6, v0

    goto :goto_52

    :cond_13
    const-string v0, "2"

    .line 3
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const v0, 0x7f120198

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_23
    const-string v0, "3"

    .line 4
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "twitter"

    goto :goto_11

    :cond_2e
    const-string v0, "4"

    .line 5
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const v0, 0x7f1201df

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_3e
    const-string v0, "5"

    .line 6
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const v0, 0x7f1201b9

    goto :goto_4d

    :cond_4a
    const v0, 0x7f120144

    :goto_4d
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :goto_52
    const v0, 0x7f12005d

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v2, 0x7f1300ec

    const/4 v3, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lj8/c0;-><init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v8}, Lj8/c0;->q()V

    .line 9
    new-instance p1, Lcom/tebakgambar/home/HomeActivity$g;

    invoke-direct {p1, p0, v8, p3, p4}, Lcom/tebakgambar/home/HomeActivity$g;-><init>(Lcom/tebakgambar/home/HomeActivity;Lj8/c0;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Lj8/c0;->o(Lj8/c0$i;)V

    .line 10
    invoke-virtual {v8}, Lj8/c0;->show()V

    return-void
.end method

.method public static synthetic U0(Lcom/tebakgambar/home/HomeActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/home/HomeActivity;->q1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic V0(Lcom/tebakgambar/home/HomeActivity;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/home/HomeActivity;->B1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic W0(Lcom/tebakgambar/home/HomeActivity;Lt1/h;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/home/HomeActivity;->A1(Lt1/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic X0(Lcom/tebakgambar/home/HomeActivity;Lcom/tebakgambar/model/Homes;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/home/HomeActivity;->H1(Lcom/tebakgambar/model/Homes;)V

    return-void
.end method

.method public static synthetic Y0(Lcom/tebakgambar/home/HomeActivity;Lcom/tebakgambar/model/ForceUpdate;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/tebakgambar/home/HomeActivity;->C1(Lcom/tebakgambar/model/ForceUpdate;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic Z0(Lcom/tebakgambar/home/HomeActivity;Lg5/s;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/home/HomeActivity;->r1(Lg5/s;)V

    return-void
.end method

.method public static synthetic a1(Lcom/tebakgambar/home/HomeActivity;Lcom/tebakgambar/model/response/StickerCampaignResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/home/HomeActivity;->E1(Lcom/tebakgambar/model/response/StickerCampaignResult;)V

    return-void
.end method

.method public static synthetic b1(Lcom/tebakgambar/home/HomeActivity;Lt1/h;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/home/HomeActivity;->z1(Lt1/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c1(Lcom/tebakgambar/home/HomeActivity;Lcom/tebakgambar/model/ForceUpdate;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/home/HomeActivity;->K1(Lcom/tebakgambar/model/ForceUpdate;)V

    return-void
.end method

.method public static synthetic d1(Lcom/tebakgambar/home/HomeActivity;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/home/HomeActivity;->y1(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e1(Lcom/tebakgambar/home/HomeActivity;)Lcom/tebakgambar/home/a;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/home/HomeActivity;->z:Lcom/tebakgambar/home/a;

    return-object p0
.end method

.method static synthetic f1(Lcom/tebakgambar/home/HomeActivity;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tebakgambar/home/HomeActivity;->x1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g1(Lcom/tebakgambar/home/HomeActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/home/HomeActivity;->D1()V

    return-void
.end method

.method static synthetic h1(Lcom/tebakgambar/home/HomeActivity;)Lcom/google/firebase/remoteconfig/a;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/home/HomeActivity;->C:Lcom/google/firebase/remoteconfig/a;

    return-object p0
.end method

.method static synthetic i1(Lcom/tebakgambar/home/HomeActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/home/HomeActivity;->I1()V

    return-void
.end method

.method static synthetic j1(Lcom/tebakgambar/home/HomeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tebakgambar/home/HomeActivity;->L1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k1(Lcom/tebakgambar/home/HomeActivity;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tebakgambar/home/HomeActivity;->F1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic l1(Lcom/tebakgambar/home/HomeActivity;)Lo8/e;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/home/HomeActivity;->y:Lo8/e;

    return-object p0
.end method

.method static synthetic m1(Lcom/tebakgambar/home/HomeActivity;Landroid/graphics/Bitmap;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tebakgambar/home/HomeActivity;->s1(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic n1(Lcom/tebakgambar/home/HomeActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/home/HomeActivity;->J1()V

    return-void
.end method

.method static synthetic o1(Lcom/tebakgambar/home/HomeActivity;)Lj8/b0;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/home/HomeActivity;->A:Lj8/b0;

    return-object p0
.end method

.method static synthetic p1(Lcom/tebakgambar/home/HomeActivity;Lj8/b0;)Lj8/b0;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/home/HomeActivity;->A:Lj8/b0;

    return-object p1
.end method

.method private q1(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-static {p0}, Lv1/g;->w(Landroidx/fragment/app/e;)Lv1/j;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lv1/j;->x(Ljava/lang/String;)Lv1/d;

    move-result-object p1

    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity;->y:Lo8/e;

    iget-object v0, v0, Lo8/e;->e0:Lcom/tebakgambar/component/ClickableImageView;

    .line 3
    invoke-virtual {p1, v0}, Lv1/c;->p(Landroid/widget/ImageView;)Lv2/j;

    return-void
.end method

.method private r1(Lg5/s;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity;->z:Lcom/tebakgambar/home/a;

    invoke-virtual {v0}, Lj8/x;->q()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2
    invoke-static {p0}, Lv1/g;->w(Landroidx/fragment/app/e;)Lv1/j;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lg5/s;->Z3()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lv1/j;->v(Landroid/net/Uri;)Lv1/d;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lv1/d;->W()Lv1/b;

    move-result-object p1

    const v0, 0x7f08011c

    .line 5
    invoke-virtual {p1, v0}, Lv1/a;->M(I)Lv1/a;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v0}, Lv1/a;->H(I)Lv1/a;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lv1/a;->D()Lv1/a;

    move-result-object p1

    new-instance v0, Lcom/tebakgambar/home/HomeActivity$b;

    iget-object v1, p0, Lcom/tebakgambar/home/HomeActivity;->y:Lo8/e;

    iget-object v1, v1, Lo8/e;->U:Lcom/tebakgambar/component/ClickableImageView;

    invoke-direct {v0, p0, v1}, Lcom/tebakgambar/home/HomeActivity$b;-><init>(Lcom/tebakgambar/home/HomeActivity;Landroid/widget/ImageView;)V

    .line 8
    invoke-virtual {p1, v0}, Lv1/e;->q(Lv2/j;)Lv2/j;

    goto :goto_3e

    .line 9
    :cond_34
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity;->y:Lo8/e;

    iget-object p1, p1, Lo8/e;->U:Lcom/tebakgambar/component/ClickableImageView;

    const v0, 0x7f080124

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :goto_3e
    return-void
.end method

.method private s1(Landroid/graphics/Bitmap;)V
    .registers 5

    .line 1
    new-instance v0, Lt1/e;

    invoke-direct {v0}, Lt1/e;-><init>()V

    .line 2
    new-instance v1, Lq8/h;

    invoke-direct {v1, p0, p1}, Lq8/h;-><init>(Lcom/tebakgambar/home/HomeActivity;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lt1/h;->d(Ljava/util/concurrent/Callable;)Lt1/h;

    move-result-object p1

    new-instance v1, Lq8/j;

    invoke-direct {v1, p0}, Lq8/j;-><init>(Lcom/tebakgambar/home/HomeActivity;)V

    sget-object v2, Lt1/h;->k:Ljava/util/concurrent/Executor;

    .line 3
    invoke-virtual {v0}, Lt1/e;->d()Lt1/c;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v1, v2, v0}, Lt1/h;->j(Lt1/f;Ljava/util/concurrent/Executor;Lt1/c;)Lt1/h;

    return-void
.end method

.method private u1()V
    .registers 5

    .line 1
    invoke-static {}, Lcom/google/firebase/remoteconfig/a;->i()Lcom/google/firebase/remoteconfig/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/home/HomeActivity;->C:Lcom/google/firebase/remoteconfig/a;

    .line 2
    new-instance v0, Lu6/j$b;

    invoke-direct {v0}, Lu6/j$b;-><init>()V

    const-wide/16 v1, 0xe10

    .line 3
    invoke-virtual {v0, v1, v2}, Lu6/j$b;->d(J)Lu6/j$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lu6/j$b;->c()Lu6/j;

    move-result-object v0

    .line 5
    iget-object v3, p0, Lcom/tebakgambar/home/HomeActivity;->C:Lcom/google/firebase/remoteconfig/a;

    invoke-virtual {v3, v0}, Lcom/google/firebase/remoteconfig/a;->s(Lu6/j;)Lcom/google/android/gms/tasks/Task;

    .line 6
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity;->C:Lcom/google/firebase/remoteconfig/a;

    const v3, 0x7f150004

    invoke-virtual {v0, v3}, Lcom/google/firebase/remoteconfig/a;->t(I)Lcom/google/android/gms/tasks/Task;

    .line 7
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity;->C:Lcom/google/firebase/remoteconfig/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/remoteconfig/a;->g(J)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/tebakgambar/home/HomeActivity$h;

    invoke-direct {v1, p0}, Lcom/tebakgambar/home/HomeActivity$h;-><init>(Lcom/tebakgambar/home/HomeActivity;)V

    .line 8
    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/tasks/Task;->b(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private v1()V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity;->remoteMessage:Lcom/tebakgambar/model/request/TGRemoteMessage;

    if-eqz v0, :cond_35

    iget-object v0, v0, Lcom/tebakgambar/model/request/TGRemoteMessage;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 2
    new-instance v0, Lj8/c0;

    const v3, 0x7f1300ec

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/tebakgambar/home/HomeActivity;->remoteMessage:Lcom/tebakgambar/model/request/TGRemoteMessage;

    iget-object v5, v1, Lcom/tebakgambar/model/request/TGRemoteMessage;->message:Ljava/lang/String;

    iget-object v6, v1, Lcom/tebakgambar/model/request/TGRemoteMessage;->ticker:Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Lcom/tebakgambar/model/request/TGRemoteMessage;->buttonPositiveText()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/tebakgambar/home/HomeActivity;->remoteMessage:Lcom/tebakgambar/model/request/TGRemoteMessage;

    .line 4
    invoke-virtual {v1}, Lcom/tebakgambar/model/request/TGRemoteMessage;->buttonNegativeText()Ljava/lang/String;

    move-result-object v8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lj8/c0;-><init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lj8/c0;->q()V

    .line 6
    new-instance v1, Lcom/tebakgambar/home/HomeActivity$a;

    invoke-direct {v1, p0, v0}, Lcom/tebakgambar/home/HomeActivity$a;-><init>(Lcom/tebakgambar/home/HomeActivity;Lj8/c0;)V

    invoke-virtual {v0, v1}, Lj8/c0;->o(Lj8/c0$i;)V

    .line 7
    invoke-virtual {v0}, Lj8/c0;->show()V

    :cond_35
    return-void
.end method

.method private w1()V
    .registers 3

    .line 1
    new-instance v0, Lcom/tebakgambar/home/HomeActivity$d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/tebakgambar/home/HomeActivity$d;-><init>(Lcom/tebakgambar/home/HomeActivity;Z)V

    .line 2
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/activity/OnBackPressedDispatcher;->b(Landroidx/activity/g;)V

    return-void
.end method

.method private x1(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p0, p1}, Ly8/f;->k(Landroid/content/Context;Ljava/lang/String;)Lt1/h;

    move-result-object p1

    new-instance v0, Lq8/i;

    invoke-direct {v0, p0}, Lq8/i;-><init>(Lcom/tebakgambar/home/HomeActivity;)V

    invoke-virtual {p1, v0}, Lt1/h;->x(Lt1/f;)Lt1/h;

    return-void
.end method

.method private synthetic y1(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_4
    invoke-static {p0, p1}, Ly8/y;->H(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    return-object p1
.end method

.method private synthetic z1(Lt1/h;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lt1/h;->s()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity;->y:Lo8/e;

    iget-object v0, v0, Lo8/e;->h0:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Lt1/h;->s()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1e

    .line 3
    :cond_14
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity;->y:Lo8/e;

    iget-object p1, p1, Lo8/e;->h0:Landroid/widget/RelativeLayout;

    const v0, 0x7f08006d

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_1e
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected k0()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/e;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/tebakgambar/home/HomeActivity;->u1()V

    .line 3
    invoke-static {p0}, Landroidx/lifecycle/k0;->b(Landroidx/fragment/app/e;)Landroidx/lifecycle/h0;

    move-result-object p1

    const-class v0, Lcom/tebakgambar/home/a;

    const-string v1, "activityViewModel"

    invoke-virtual {p1, v1, v0}, Landroidx/lifecycle/h0;->b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/g0;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/home/a;

    iput-object p1, p0, Lcom/tebakgambar/home/HomeActivity;->z:Lcom/tebakgambar/home/a;

    const p1, 0x7f0d0020

    .line 4
    invoke-static {p0, p1}, Landroidx/databinding/g;->j(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lo8/e;

    iput-object p1, p0, Lcom/tebakgambar/home/HomeActivity;->y:Lo8/e;

    .line 5
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity;->z:Lcom/tebakgambar/home/a;

    invoke-virtual {p1, v0}, Lo8/e;->w0(Lcom/tebakgambar/home/a;)V

    .line 6
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity;->y:Lo8/e;

    new-instance v0, Lcom/tebakgambar/home/HomeActivity$i;

    invoke-direct {v0, p0}, Lcom/tebakgambar/home/HomeActivity$i;-><init>(Lcom/tebakgambar/home/HomeActivity;)V

    invoke-virtual {p1, v0}, Lo8/e;->u0(Lcom/tebakgambar/home/HomeActivity$i;)V

    .line 7
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity;->z:Lcom/tebakgambar/home/a;

    invoke-virtual {p0, p1}, Lj8/t;->C0(Lj8/x;)V

    .line 8
    invoke-static {p0}, Ly2/a;->b(Landroid/app/Activity;)V

    .line 9
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity;->z:Lcom/tebakgambar/home/a;

    iget-object p1, p1, Lcom/tebakgambar/home/a;->E:Landroidx/lifecycle/t;

    new-instance v0, Lq8/e;

    invoke-direct {v0, p0}, Lq8/e;-><init>(Lcom/tebakgambar/home/HomeActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 10
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity;->z:Lcom/tebakgambar/home/a;

    iget-object p1, p1, Lcom/tebakgambar/home/a;->F:Landroidx/lifecycle/t;

    new-instance v0, Lq8/c;

    invoke-direct {v0, p0}, Lq8/c;-><init>(Lcom/tebakgambar/home/HomeActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 11
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity;->z:Lcom/tebakgambar/home/a;

    iget-object p1, p1, Lcom/tebakgambar/home/a;->G:Landroidx/lifecycle/t;

    new-instance v0, Lq8/g;

    invoke-direct {v0, p0}, Lq8/g;-><init>(Lcom/tebakgambar/home/HomeActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 12
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity;->z:Lcom/tebakgambar/home/a;

    iget-object p1, p1, Lcom/tebakgambar/home/a;->H:Ly8/u;

    new-instance v0, Lq8/f;

    invoke-direct {v0, p0}, Lq8/f;-><init>(Lcom/tebakgambar/home/HomeActivity;)V

    invoke-virtual {p1, p0, v0}, Ly8/u;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 13
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity;->z:Lcom/tebakgambar/home/a;

    iget-object p1, p1, Lcom/tebakgambar/home/a;->I:Ly8/u;

    new-instance v0, Lq8/d;

    invoke-direct {v0, p0}, Lq8/d;-><init>(Lcom/tebakgambar/home/HomeActivity;)V

    invoke-virtual {p1, p0, v0}, Ly8/u;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 14
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity;->z:Lcom/tebakgambar/home/a;

    invoke-virtual {p1}, Lcom/tebakgambar/home/a;->O()V

    .line 15
    invoke-direct {p0}, Lcom/tebakgambar/home/HomeActivity;->v1()V

    .line 16
    invoke-direct {p0}, Lcom/tebakgambar/home/HomeActivity;->w1()V

    .line 17
    iget-boolean p1, p0, Lcom/tebakgambar/home/HomeActivity;->showLoginImmediately:Z

    if-eqz p1, :cond_88

    .line 18
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity;->z:Lcom/tebakgambar/home/a;

    invoke-virtual {p1}, Lcom/tebakgambar/home/a;->P()V

    :cond_88
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/e;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Ly2/a;->c(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity;->customBanner:Lcom/tebakgambar/model/CustomBanner;

    if-eqz p1, :cond_11

    .line 4
    invoke-virtual {p0, p1}, Lj8/t;->M0(Lcom/tebakgambar/model/CustomBanner;)V

    :cond_11
    return-void
.end method

.method protected onStart()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/c;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity;->z:Lcom/tebakgambar/home/a;

    invoke-virtual {v0}, Lcom/tebakgambar/home/a;->Q()V

    return-void
.end method

.method protected y0(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lj8/t;->y0(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/tebakgambar/home/HomeActivity;->B:Z

    return-void
.end method

.method protected z0()V
    .registers 3

    .line 1
    invoke-super {p0}, Lj8/t;->z0()V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity;->y:Lo8/e;

    iget-object v0, v0, Lo8/e;->O:Lcom/tebakgambar/component/ClickableImageView;

    const v1, 0x7f080081

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 3
    iget-boolean v0, p0, Lcom/tebakgambar/home/HomeActivity;->B:Z

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/tebakgambar/home/HomeActivity;->B:Z

    .line 5
    invoke-direct {p0}, Lcom/tebakgambar/home/HomeActivity;->I1()V

    :cond_17
    return-void
.end method

###### Class com.tebakgambar.home.HomeActivity.a (com.tebakgambar.home.HomeActivity$a)
.class Lcom/tebakgambar/home/HomeActivity$a;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lj8/c0$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/home/HomeActivity;->v1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lj8/c0;

.field final synthetic b:Lcom/tebakgambar/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/home/HomeActivity;Lj8/c0;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/home/HomeActivity$a;->b:Lcom/tebakgambar/home/HomeActivity;

    iput-object p2, p0, Lcom/tebakgambar/home/HomeActivity$a;->a:Lj8/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$a;->b:Lcom/tebakgambar/home/HomeActivity;

    iget-object v0, v0, Lcom/tebakgambar/home/HomeActivity;->remoteMessage:Lcom/tebakgambar/model/request/TGRemoteMessage;

    iget-object v0, v0, Lcom/tebakgambar/model/request/TGRemoteMessage;->pushActionId:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    packed-switch v1, :pswitch_data_9c

    goto :goto_53

    :pswitch_12
    const-string v1, "6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_53

    :cond_1b
    const/4 v2, 0x5

    goto :goto_53

    :pswitch_1d
    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_53

    :cond_26
    const/4 v2, 0x4

    goto :goto_53

    :pswitch_28
    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto :goto_53

    :cond_31
    const/4 v2, 0x3

    goto :goto_53

    :pswitch_33
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto :goto_53

    :cond_3c
    const/4 v2, 0x2

    goto :goto_53

    :pswitch_3e
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto :goto_53

    :cond_47
    const/4 v2, 0x1

    goto :goto_53

    :pswitch_49
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto :goto_53

    :cond_52
    const/4 v2, 0x0

    :goto_53
    packed-switch v2, :pswitch_data_ac

    goto :goto_8b

    .line 3
    :pswitch_57
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$a;->b:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {v0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tebakgambar/Henson$b;->i()Lcom/tebakgambar/selfie/SelfieFrameChooserActivity$$IntentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tebakgambar/selfie/SelfieFrameChooserActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_8b

    .line 4
    :pswitch_69
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$a;->b:Lcom/tebakgambar/home/HomeActivity;

    iget-object v1, v0, Lcom/tebakgambar/home/HomeActivity;->remoteMessage:Lcom/tebakgambar/model/request/TGRemoteMessage;

    iget-object v1, v1, Lcom/tebakgambar/model/request/TGRemoteMessage;->messageUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tebakgambar/home/HomeActivity;->f1(Lcom/tebakgambar/home/HomeActivity;Ljava/lang/String;)V

    goto :goto_8b

    .line 5
    :pswitch_73
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$a;->b:Lcom/tebakgambar/home/HomeActivity;

    iget-object v1, v0, Lcom/tebakgambar/home/HomeActivity;->remoteMessage:Lcom/tebakgambar/model/request/TGRemoteMessage;

    iget-object v1, v1, Lcom/tebakgambar/model/request/TGRemoteMessage;->messageUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tebakgambar/home/HomeActivity;->k1(Lcom/tebakgambar/home/HomeActivity;Ljava/lang/String;)V

    goto :goto_8b

    .line 6
    :pswitch_7d
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$a;->b:Lcom/tebakgambar/home/HomeActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tebakgambar/home/HomeActivity$a;->b:Lcom/tebakgambar/home/HomeActivity;

    const-class v3, Lcom/tebakgambar/levelselection/LevelSelectionActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 7
    :goto_8b
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$a;->a:Lj8/c0;

    if-eqz v0, :cond_9a

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 8
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$a;->a:Lj8/c0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_9a
    return-void

    nop

    :pswitch_data_9c
    .packed-switch 0x31
        :pswitch_49
        :pswitch_3e
        :pswitch_33
        :pswitch_28
        :pswitch_1d
        :pswitch_12
    .end packed-switch

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_73
        :pswitch_69
        :pswitch_69
        :pswitch_69
        :pswitch_57
    .end packed-switch
.end method

.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$a;->a:Lj8/c0;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$a;->a:Lj8/c0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_f
    return-void
.end method

###### Class com.tebakgambar.home.HomeActivity.b (com.tebakgambar.home.HomeActivity$b)
.class Lcom/tebakgambar/home/HomeActivity$b;
.super Lv2/b;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/home/HomeActivity;->r1(Lg5/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic t:Lcom/tebakgambar/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/home/HomeActivity;Landroid/widget/ImageView;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/home/HomeActivity$b;->t:Lcom/tebakgambar/home/HomeActivity;

    invoke-direct {p0, p2}, Lv2/b;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic o(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/tebakgambar/home/HomeActivity$b;->p(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected p(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$b;->t:Lcom/tebakgambar/home/HomeActivity;

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/app/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/d;->a(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/c;

    move-result-object p1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroidx/core/graphics/drawable/c;->e(Z)V

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$b;->t:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {v0}, Lcom/tebakgambar/home/HomeActivity;->l1(Lcom/tebakgambar/home/HomeActivity;)Lo8/e;

    move-result-object v0

    iget-object v0, v0, Lo8/e;->U:Lcom/tebakgambar/component/ClickableImageView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

###### Class com.tebakgambar.home.HomeActivity.c (com.tebakgambar.home.HomeActivity$c)
.class Lcom/tebakgambar/home/HomeActivity$c;
.super Lv2/g;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/home/HomeActivity;->D1()V
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
.field final synthetic r:Lcom/tebakgambar/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/home/HomeActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/home/HomeActivity$c;->r:Lcom/tebakgambar/home/HomeActivity;

    invoke-direct {p0}, Lv2/g;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;Lu2/c;)V
    .registers 3

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/tebakgambar/home/HomeActivity$c;->f(Landroid/graphics/Bitmap;Lu2/c;)V

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

    .line 1
    iget-object p2, p0, Lcom/tebakgambar/home/HomeActivity$c;->r:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {p2, p1}, Lcom/tebakgambar/home/HomeActivity;->m1(Lcom/tebakgambar/home/HomeActivity;Landroid/graphics/Bitmap;)V

    return-void
.end method

###### Class com.tebakgambar.home.HomeActivity.d (com.tebakgambar.home.HomeActivity$d)
.class Lcom/tebakgambar/home/HomeActivity$d;
.super Landroidx/activity/g;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/home/HomeActivity;->w1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/tebakgambar/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/home/HomeActivity;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/home/HomeActivity$d;->d:Lcom/tebakgambar/home/HomeActivity;

    invoke-direct {p0, p2}, Landroidx/activity/g;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$d;->d:Lcom/tebakgambar/home/HomeActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$d;->d:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {v0}, Lcom/tebakgambar/home/HomeActivity;->n1(Lcom/tebakgambar/home/HomeActivity;)V

    :cond_d
    return-void
.end method

###### Class com.tebakgambar.home.HomeActivity.e (com.tebakgambar.home.HomeActivity$e)
.class Lcom/tebakgambar/home/HomeActivity$e;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lj8/b0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/home/HomeActivity;->J1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/model/Homes$ExitPopUp;

.field final synthetic b:Lcom/tebakgambar/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/home/HomeActivity;Lcom/tebakgambar/model/Homes$ExitPopUp;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/home/HomeActivity$e;->b:Lcom/tebakgambar/home/HomeActivity;

    iput-object p2, p0, Lcom/tebakgambar/home/HomeActivity$e;->a:Lcom/tebakgambar/model/Homes$ExitPopUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$e;->b:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {v0}, Lcom/tebakgambar/home/HomeActivity;->o1(Lcom/tebakgambar/home/HomeActivity;)Lj8/b0;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$e;->b:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {v0}, Lcom/tebakgambar/home/HomeActivity;->o1(Lcom/tebakgambar/home/HomeActivity;)Lj8/b0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$e;->b:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {v0}, Lcom/tebakgambar/home/HomeActivity;->o1(Lcom/tebakgambar/home/HomeActivity;)Lj8/b0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_1d
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$e;->b:Lcom/tebakgambar/home/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tebakgambar/home/HomeActivity;->p1(Lcom/tebakgambar/home/HomeActivity;Lj8/b0;)Lj8/b0;

    return-void
.end method

.method public b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$e;->b:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {v0}, Lcom/tebakgambar/home/HomeActivity;->o1(Lcom/tebakgambar/home/HomeActivity;)Lj8/b0;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$e;->b:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {v0}, Lcom/tebakgambar/home/HomeActivity;->o1(Lcom/tebakgambar/home/HomeActivity;)Lj8/b0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$e;->b:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {v0}, Lcom/tebakgambar/home/HomeActivity;->o1(Lcom/tebakgambar/home/HomeActivity;)Lj8/b0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_1d
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$e;->b:Lcom/tebakgambar/home/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tebakgambar/home/HomeActivity;->p1(Lcom/tebakgambar/home/HomeActivity;Lj8/b0;)Lj8/b0;

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$e;->b:Lcom/tebakgambar/home/HomeActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$e;->b:Lcom/tebakgambar/home/HomeActivity;

    iget-object v1, p0, Lcom/tebakgambar/home/HomeActivity$e;->a:Lcom/tebakgambar/model/Homes$ExitPopUp;

    iget-object v1, v1, Lcom/tebakgambar/model/Homes$ExitPopUp;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tebakgambar/home/HomeActivity;->f1(Lcom/tebakgambar/home/HomeActivity;Ljava/lang/String;)V

    return-void
.end method

###### Class com.tebakgambar.home.HomeActivity.f (com.tebakgambar.home.HomeActivity$f)
.class Lcom/tebakgambar/home/HomeActivity$f;
.super Lv2/g;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/home/HomeActivity;->G1(Lcom/tebakgambar/model/Homes$HomeData;)V
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
.field final synthetic r:Lcom/tebakgambar/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/home/HomeActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/home/HomeActivity$f;->r:Lcom/tebakgambar/home/HomeActivity;

    invoke-direct {p0}, Lv2/g;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;Lu2/c;)V
    .registers 3

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/tebakgambar/home/HomeActivity$f;->f(Landroid/graphics/Bitmap;Lu2/c;)V

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

    .line 1
    iget-object p2, p0, Lcom/tebakgambar/home/HomeActivity$f;->r:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {p2, p1}, Lcom/tebakgambar/home/HomeActivity;->m1(Lcom/tebakgambar/home/HomeActivity;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public g(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lv2/a;->g(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity$f;->r:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {p1}, Lcom/tebakgambar/home/HomeActivity;->g1(Lcom/tebakgambar/home/HomeActivity;)V

    return-void
.end method

.method public j(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lv2/a;->j(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

###### Class com.tebakgambar.home.HomeActivity.g (com.tebakgambar.home.HomeActivity$g)
.class Lcom/tebakgambar/home/HomeActivity$g;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lj8/c0$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/home/HomeActivity;->L1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lj8/c0;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/tebakgambar/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/home/HomeActivity;Lj8/c0;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/home/HomeActivity$g;->d:Lcom/tebakgambar/home/HomeActivity;

    iput-object p2, p0, Lcom/tebakgambar/home/HomeActivity$g;->a:Lj8/c0;

    iput-object p3, p0, Lcom/tebakgambar/home/HomeActivity$g;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tebakgambar/home/HomeActivity$g;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$g;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    packed-switch v1, :pswitch_data_98

    goto :goto_4f

    :pswitch_e
    const-string v1, "6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_4f

    :cond_17
    const/4 v2, 0x5

    goto :goto_4f

    :pswitch_19
    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_4f

    :cond_22
    const/4 v2, 0x4

    goto :goto_4f

    :pswitch_24
    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_4f

    :cond_2d
    const/4 v2, 0x3

    goto :goto_4f

    :pswitch_2f
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_4f

    :cond_38
    const/4 v2, 0x2

    goto :goto_4f

    :pswitch_3a
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto :goto_4f

    :cond_43
    const/4 v2, 0x1

    goto :goto_4f

    :pswitch_45
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto :goto_4f

    :cond_4e
    const/4 v2, 0x0

    :goto_4f
    packed-switch v2, :pswitch_data_a8

    goto :goto_91

    .line 2
    :pswitch_53
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$g;->d:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {v0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tebakgambar/Henson$b;->i()Lcom/tebakgambar/selfie/SelfieFrameChooserActivity$$IntentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tebakgambar/selfie/SelfieFrameChooserActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_91

    .line 3
    :pswitch_65
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$g;->d:Lcom/tebakgambar/home/HomeActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tebakgambar/home/HomeActivity$g;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_91

    .line 4
    :pswitch_78
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$g;->d:Lcom/tebakgambar/home/HomeActivity;

    iget-object v1, p0, Lcom/tebakgambar/home/HomeActivity$g;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tebakgambar/home/HomeActivity;->k1(Lcom/tebakgambar/home/HomeActivity;Ljava/lang/String;)V

    goto :goto_91

    .line 5
    :pswitch_80
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$g;->d:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {v0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tebakgambar/Henson$b;->e()Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 6
    :goto_91
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$g;->a:Lj8/c0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void

    nop

    :pswitch_data_98
    .packed-switch 0x31
        :pswitch_45
        :pswitch_3a
        :pswitch_2f
        :pswitch_24
        :pswitch_19
        :pswitch_e
    .end packed-switch

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_80
        :pswitch_78
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_53
    .end packed-switch
.end method

.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$g;->a:Lj8/c0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

###### Class com.tebakgambar.home.HomeActivity.h (com.tebakgambar.home.HomeActivity$h)
.class Lcom/tebakgambar/home/HomeActivity$h;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/home/HomeActivity;->u1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/home/HomeActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/home/HomeActivity$h;->a:Lcom/tebakgambar/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tasks/Task;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->t()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity$h;->a:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {p1}, Lcom/tebakgambar/home/HomeActivity;->h1(Lcom/tebakgambar/home/HomeActivity;)Lcom/google/firebase/remoteconfig/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/a;->f()Lcom/google/android/gms/tasks/Task;

    :cond_f
    return-void
.end method

###### Class com.tebakgambar.home.HomeActivity.i (com.tebakgambar.home.HomeActivity$i)
.class public Lcom/tebakgambar/home/HomeActivity$i;
.super Ljava/lang/Object;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/home/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/home/HomeActivity;


# direct methods
.method public constructor <init>(Lcom/tebakgambar/home/HomeActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/home/HomeActivity$i;->a:Lcom/tebakgambar/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity$i;->a:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {p1}, Lcom/tebakgambar/home/HomeActivity;->i1(Lcom/tebakgambar/home/HomeActivity;)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity$i;->a:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {p1}, Lcom/tebakgambar/home/HomeActivity;->e1(Lcom/tebakgambar/home/HomeActivity;)Lcom/tebakgambar/home/a;

    move-result-object p1

    iget-object p1, p1, Lcom/tebakgambar/home/a;->E:Landroidx/lifecycle/t;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/model/Homes;

    if-eqz p1, :cond_1d

    .line 2
    iget-object p1, p1, Lcom/tebakgambar/model/Homes;->home:Lcom/tebakgambar/model/Homes$HomeData;

    if-eqz p1, :cond_1d

    .line 3
    iget-object p1, p1, Lcom/tebakgambar/model/Homes$HomeData;->deeplink:Ljava/lang/String;

    if-eqz p1, :cond_1d

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$i;->a:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/home/HomeActivity;->f1(Lcom/tebakgambar/home/HomeActivity;Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public c(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity$i;->a:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {p1}, Lcom/tebakgambar/home/HomeActivity;->e1(Lcom/tebakgambar/home/HomeActivity;)Lcom/tebakgambar/home/a;

    move-result-object p1

    iget-object p1, p1, Lcom/tebakgambar/home/a;->E:Landroidx/lifecycle/t;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/model/Homes;

    if-eqz p1, :cond_1d

    .line 2
    iget-object p1, p1, Lcom/tebakgambar/model/Homes;->floating:Lcom/tebakgambar/model/Homes$Floating;

    if-eqz p1, :cond_1d

    iget-object p1, p1, Lcom/tebakgambar/model/Homes$Floating;->url:Ljava/lang/String;

    if-eqz p1, :cond_1d

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$i;->a:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/home/HomeActivity;->f1(Lcom/tebakgambar/home/HomeActivity;Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public d(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity$i;->a:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {p1}, Lcom/tebakgambar/home/HomeActivity;->e1(Lcom/tebakgambar/home/HomeActivity;)Lcom/tebakgambar/home/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/home/a;->H()V

    return-void
.end method

.method public e(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity$i;->a:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {p1}, Ly8/a;->i(Landroid/content/Context;)Z

    return-void
.end method

.method public f(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity$i;->a:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {p1}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/Henson$b;->c()Lcom/tebakgambar/howtoplay/HowToPlayActivity$$IntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/howtoplay/HowToPlayActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public g(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity$i;->a:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {p1}, Ly8/a;->j(Landroid/content/Context;)V

    return-void
.end method

.method public h(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity$i;->a:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {p1}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/Henson$b;->j()Lcom/tebakgambar/sendquestion/SendQuestionActivity$$IntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/sendquestion/SendQuestionActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public i(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity$i;->a:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {p1}, Ly8/a;->k(Landroid/content/Context;)V

    return-void
.end method

.method public j(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity$i;->a:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {p1}, Lcom/tebakgambar/home/HomeActivity;->e1(Lcom/tebakgambar/home/HomeActivity;)Lcom/tebakgambar/home/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/home/a;->P()V

    return-void
.end method

.method public k(Landroid/view/View;)V
    .registers 6

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity$i;->a:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {p1}, Lcom/tebakgambar/home/HomeActivity;->e1(Lcom/tebakgambar/home/HomeActivity;)Lcom/tebakgambar/home/a;

    move-result-object p1

    iget-object p1, p1, Lcom/tebakgambar/home/a;->E:Landroidx/lifecycle/t;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/model/Homes;

    if-eqz p1, :cond_2a

    .line 2
    iget-object p1, p1, Lcom/tebakgambar/model/Homes;->message:Lcom/tebakgambar/model/Homes$Messages;

    if-eqz p1, :cond_2a

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/home/HomeActivity$i;->a:Lcom/tebakgambar/home/HomeActivity;

    iget-object v1, p1, Lcom/tebakgambar/model/Homes$Messages;->title:Ljava/lang/String;

    iget-object v2, p1, Lcom/tebakgambar/model/Homes$Messages;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/tebakgambar/model/Homes$Messages;->type:Ljava/lang/String;

    iget-object p1, p1, Lcom/tebakgambar/model/Homes$Messages;->url:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/tebakgambar/home/HomeActivity;->j1(Lcom/tebakgambar/home/HomeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_2a

    :catch_22
    move-exception p1

    .line 4
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->a()Lcom/google/firebase/crashlytics/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/a;->d(Ljava/lang/Throwable;)V

    .line 5
    :cond_2a
    :goto_2a
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity$i;->a:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {p1}, Lcom/tebakgambar/home/HomeActivity;->e1(Lcom/tebakgambar/home/HomeActivity;)Lcom/tebakgambar/home/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/home/a;->R()V

    return-void
.end method

.method public l(Landroid/view/View;)V
    .registers 5

    const-string p1, "clickHomePage"

    const-string v0, "home page"

    const-string v1, "click on play"

    const-string v2, ""

    .line 1
    invoke-static {p1, v0, v1, v2}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity$i;->a:Lcom/tebakgambar/home/HomeActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tebakgambar/home/HomeActivity$i;->a:Lcom/tebakgambar/home/HomeActivity;

    const-class v2, Lcom/tebakgambar/levelselection/LevelSelectionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public m(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity$i;->a:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {p1}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/Henson$b;->i()Lcom/tebakgambar/selfie/SelfieFrameChooserActivity$$IntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/selfie/SelfieFrameChooserActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public n(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity$i;->a:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {p1}, Lcom/tebakgambar/home/HomeActivity;->e1(Lcom/tebakgambar/home/HomeActivity;)Lcom/tebakgambar/home/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/home/a;->V()V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity$i;->a:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {p1}, Lcom/tebakgambar/home/HomeActivity;->e1(Lcom/tebakgambar/home/HomeActivity;)Lcom/tebakgambar/home/a;

    move-result-object p1

    iget-object p1, p1, Lcom/tebakgambar/home/a;->D:Landroidx/databinding/l;

    invoke-virtual {p1}, Landroidx/databinding/l;->y()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity$i;->a:Lcom/tebakgambar/home/HomeActivity;

    const v0, 0x7f110005

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Ly8/y;->Z(Landroid/content/Context;Ljava/lang/Integer;)V

    :cond_23
    return-void
.end method

.method public o(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity$i;->a:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {p1}, Lcom/tebakgambar/home/HomeActivity;->e1(Lcom/tebakgambar/home/HomeActivity;)Lcom/tebakgambar/home/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/home/a;->U()V

    return-void
.end method

.method public p(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/home/HomeActivity$i;->a:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {p1}, Ly8/a;->m(Landroid/content/Context;)V

    return-void
.end method

###### Class q8.a (q8.a)
.class public final synthetic Lq8/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/home/HomeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/home/HomeActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq8/a;->o:Lcom/tebakgambar/home/HomeActivity;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lq8/a;->o:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/home/HomeActivity;->V0(Lcom/tebakgambar/home/HomeActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

###### Class q8.b (q8.b)
.class public final synthetic Lq8/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/home/HomeActivity;

.field public final synthetic p:Lcom/tebakgambar/model/ForceUpdate;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/home/HomeActivity;Lcom/tebakgambar/model/ForceUpdate;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq8/b;->o:Lcom/tebakgambar/home/HomeActivity;

    iput-object p2, p0, Lq8/b;->p:Lcom/tebakgambar/model/ForceUpdate;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lq8/b;->o:Lcom/tebakgambar/home/HomeActivity;

    iget-object v1, p0, Lq8/b;->p:Lcom/tebakgambar/model/ForceUpdate;

    invoke-static {v0, v1, p1, p2}, Lcom/tebakgambar/home/HomeActivity;->Y0(Lcom/tebakgambar/home/HomeActivity;Lcom/tebakgambar/model/ForceUpdate;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class q8.c (q8.c)
.class public final synthetic Lq8/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/home/HomeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/home/HomeActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq8/c;->a:Lcom/tebakgambar/home/HomeActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lq8/c;->a:Lcom/tebakgambar/home/HomeActivity;

    check-cast p1, Lg5/s;

    invoke-static {v0, p1}, Lcom/tebakgambar/home/HomeActivity;->Z0(Lcom/tebakgambar/home/HomeActivity;Lg5/s;)V

    return-void
.end method

###### Class q8.d (q8.d)
.class public final synthetic Lq8/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/home/HomeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/home/HomeActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq8/d;->a:Lcom/tebakgambar/home/HomeActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lq8/d;->a:Lcom/tebakgambar/home/HomeActivity;

    check-cast p1, Lcom/tebakgambar/model/ForceUpdate;

    invoke-static {v0, p1}, Lcom/tebakgambar/home/HomeActivity;->c1(Lcom/tebakgambar/home/HomeActivity;Lcom/tebakgambar/model/ForceUpdate;)V

    return-void
.end method

###### Class q8.e (q8.e)
.class public final synthetic Lq8/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/home/HomeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/home/HomeActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq8/e;->a:Lcom/tebakgambar/home/HomeActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lq8/e;->a:Lcom/tebakgambar/home/HomeActivity;

    check-cast p1, Lcom/tebakgambar/model/Homes;

    invoke-static {v0, p1}, Lcom/tebakgambar/home/HomeActivity;->X0(Lcom/tebakgambar/home/HomeActivity;Lcom/tebakgambar/model/Homes;)V

    return-void
.end method

###### Class q8.f (q8.f)
.class public final synthetic Lq8/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/home/HomeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/home/HomeActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq8/f;->a:Lcom/tebakgambar/home/HomeActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lq8/f;->a:Lcom/tebakgambar/home/HomeActivity;

    check-cast p1, Lcom/tebakgambar/model/response/StickerCampaignResult;

    invoke-static {v0, p1}, Lcom/tebakgambar/home/HomeActivity;->a1(Lcom/tebakgambar/home/HomeActivity;Lcom/tebakgambar/model/response/StickerCampaignResult;)V

    return-void
.end method

###### Class q8.g (q8.g)
.class public final synthetic Lq8/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/home/HomeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/home/HomeActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq8/g;->a:Lcom/tebakgambar/home/HomeActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lq8/g;->a:Lcom/tebakgambar/home/HomeActivity;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tebakgambar/home/HomeActivity;->U0(Lcom/tebakgambar/home/HomeActivity;Ljava/lang/String;)V

    return-void
.end method

###### Class q8.h (q8.h)
.class public final synthetic Lq8/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/home/HomeActivity;

.field public final synthetic b:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/home/HomeActivity;Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq8/h;->a:Lcom/tebakgambar/home/HomeActivity;

    iput-object p2, p0, Lq8/h;->b:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lq8/h;->a:Lcom/tebakgambar/home/HomeActivity;

    iget-object v1, p0, Lq8/h;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/tebakgambar/home/HomeActivity;->d1(Lcom/tebakgambar/home/HomeActivity;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

###### Class q8.i (q8.i)
.class public final synthetic Lq8/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt1/f;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/home/HomeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/home/HomeActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq8/i;->a:Lcom/tebakgambar/home/HomeActivity;

    return-void
.end method


# virtual methods
.method public final a(Lt1/h;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lq8/i;->a:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/home/HomeActivity;->W0(Lcom/tebakgambar/home/HomeActivity;Lt1/h;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class q8.j (q8.j)
.class public final synthetic Lq8/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt1/f;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/home/HomeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/home/HomeActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq8/j;->a:Lcom/tebakgambar/home/HomeActivity;

    return-void
.end method


# virtual methods
.method public final a(Lt1/h;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lq8/j;->a:Lcom/tebakgambar/home/HomeActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/home/HomeActivity;->b1(Lcom/tebakgambar/home/HomeActivity;Lt1/h;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
