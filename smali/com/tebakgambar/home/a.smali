###### Class com.tebakgambar.home.a (com.tebakgambar.home.a)
.class public Lcom/tebakgambar/home/a;
.super Lj8/x;
.source "HomeViewModel.java"


# instance fields
.field public C:Landroidx/databinding/l;

.field public D:Landroidx/databinding/l;

.field E:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t<",
            "Lcom/tebakgambar/model/Homes;",
            ">;"
        }
    .end annotation
.end field

.field F:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t<",
            "Lg5/s;",
            ">;"
        }
    .end annotation
.end field

.field G:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field H:Ly8/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly8/u<",
            "Lcom/tebakgambar/model/response/StickerCampaignResult;",
            ">;"
        }
    .end annotation
.end field

.field I:Ly8/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly8/u<",
            "Lcom/tebakgambar/model/ForceUpdate;",
            ">;"
        }
    .end annotation
.end field

.field private J:Lcom/tebakgambar/model/response/StickerCampaignResult;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lj8/x;-><init>(Landroid/app/Application;)V

    .line 2
    new-instance v0, Landroidx/databinding/l;

    invoke-direct {v0}, Landroidx/databinding/l;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/home/a;->C:Landroidx/databinding/l;

    .line 3
    new-instance v0, Landroidx/databinding/l;

    invoke-direct {v0}, Landroidx/databinding/l;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/home/a;->D:Landroidx/databinding/l;

    .line 4
    new-instance v0, Landroidx/lifecycle/t;

    invoke-direct {v0}, Landroidx/lifecycle/t;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/home/a;->E:Landroidx/lifecycle/t;

    .line 5
    new-instance v0, Landroidx/lifecycle/t;

    invoke-direct {v0}, Landroidx/lifecycle/t;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/home/a;->F:Landroidx/lifecycle/t;

    .line 6
    new-instance v0, Landroidx/lifecycle/t;

    invoke-direct {v0}, Landroidx/lifecycle/t;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/home/a;->G:Landroidx/lifecycle/t;

    .line 7
    new-instance v0, Ly8/u;

    invoke-direct {v0}, Ly8/u;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/home/a;->H:Ly8/u;

    .line 8
    new-instance v0, Ly8/u;

    invoke-direct {v0}, Ly8/u;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/home/a;->I:Ly8/u;

    .line 9
    iget-object v0, p0, Lcom/tebakgambar/home/a;->E:Landroidx/lifecycle/t;

    invoke-static {p1}, Ly8/y;->B(Landroid/content/Context;)Lcom/tebakgambar/model/Homes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/tebakgambar/home/a;->D:Landroidx/databinding/l;

    invoke-static {p1}, Ly8/y;->R(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/databinding/l;->z(Z)V

    .line 11
    invoke-direct {p0}, Lcom/tebakgambar/home/a;->I()V

    .line 12
    invoke-direct {p0}, Lcom/tebakgambar/home/a;->J()V

    return-void
.end method

.method public static synthetic E(Lcom/tebakgambar/home/a;)Ljava/lang/Object;
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/home/a;->M()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F(Lcom/tebakgambar/home/a;)Ljava/lang/Object;
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/home/a;->N()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic G(Lcom/tebakgambar/home/a;Lcom/tebakgambar/model/response/StickerCampaignResult;)Lcom/tebakgambar/model/response/StickerCampaignResult;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/home/a;->J:Lcom/tebakgambar/model/response/StickerCampaignResult;

    return-object p1
.end method

.method private I()V
    .registers 2

    .line 1
    new-instance v0, Lq8/k;

    invoke-direct {v0, p0}, Lq8/k;-><init>(Lcom/tebakgambar/home/a;)V

    invoke-static {v0}, Lt1/h;->d(Ljava/util/concurrent/Callable;)Lt1/h;

    return-void
.end method

.method private J()V
    .registers 3

    const-string v0, "=info"

    const-string v1, "fetchStickerCampaign"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lg5/s;

    move-result-object v0

    if-nez v0, :cond_12

    return-void

    .line 3
    :cond_12
    new-instance v0, Lq8/l;

    invoke-direct {v0, p0}, Lq8/l;-><init>(Lcom/tebakgambar/home/a;)V

    invoke-static {v0}, Lt1/h;->d(Ljava/util/concurrent/Callable;)Lt1/h;

    return-void
.end method

.method private L(I)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ly8/y;->N(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ly8/y;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private synthetic M()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tebakgambar/network/TebakGambarApi;->c()Lcom/tebakgambar/network/TebakGambarApi$InterfaceOld;

    move-result-object v0

    const-string v1, "1.44.2l"

    invoke-interface {v0, v1}, Lcom/tebakgambar/network/TebakGambarApi$InterfaceOld;->getHome(Ljava/lang/String;)Lwa/b;

    move-result-object v0

    new-instance v1, Lcom/tebakgambar/home/a$a;

    invoke-direct {v1, p0}, Lcom/tebakgambar/home/a$a;-><init>(Lcom/tebakgambar/home/a;)V

    .line 2
    invoke-interface {v0, v1}, Lwa/b;->v3(Lwa/d;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic N()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tebakgambar/network/TebakGambarApi;->b()Lcom/tebakgambar/network/TebakGambarApi$Interface;

    move-result-object v0

    invoke-interface {v0}, Lcom/tebakgambar/network/TebakGambarApi$Interface;->getCampaign()Lwa/b;

    move-result-object v0

    new-instance v1, Lcom/tebakgambar/home/a$b;

    invoke-direct {v1, p0}, Lcom/tebakgambar/home/a$b;-><init>(Lcom/tebakgambar/home/a;)V

    .line 2
    invoke-interface {v0, v1}, Lwa/b;->v3(Lwa/d;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private T()Z
    .registers 9

    .line 1
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lg5/s;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lm8/a;->f()Lm8/a;

    move-result-object v3

    invoke-virtual {v3}, Lm8/a;->c()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide v5, 0x9a7ec800L

    cmp-long v7, v1, v5

    if-lez v7, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    .line 3
    :goto_23
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tebakgambar/TGApplication;->f()Z

    move-result v2

    if-eqz v0, :cond_33

    .line 4
    invoke-virtual {v0}, Lg5/s;->c4()Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_33
    if-eqz v1, :cond_38

    if-nez v2, :cond_38

    goto :goto_39

    :cond_38
    const/4 v3, 0x0

    :goto_39
    return v3
.end method


# virtual methods
.method public B()V
    .registers 3

    .line 1
    invoke-super {p0}, Lj8/x;->B()V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/home/a;->F:Landroidx/lifecycle/t;

    invoke-virtual {p0}, Lj8/x;->p()Lg5/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0}, Lcom/tebakgambar/home/a;->J()V

    return-void
.end method

.method H()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/home/a;->E:Landroidx/lifecycle/t;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/Homes;

    if-eqz v0, :cond_37

    .line 2
    iget-object v1, v0, Lcom/tebakgambar/model/Homes;->floating:Lcom/tebakgambar/model/Homes$Floating;

    if-eqz v1, :cond_37

    .line 3
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ly8/y;->N(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ly8/y;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/tebakgambar/model/Homes;->floating:Lcom/tebakgambar/model/Homes$Floating;

    iget v3, v3, Lcom/tebakgambar/model/Homes$Floating;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 5
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7
    :cond_37
    iget-object v1, p0, Lcom/tebakgambar/home/a;->E:Landroidx/lifecycle/t;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public K()Lcom/tebakgambar/model/Homes$ExitPopUp;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/home/a;->E:Landroidx/lifecycle/t;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/tebakgambar/home/a;->E:Landroidx/lifecycle/t;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/Homes;

    iget-object v0, v0, Lcom/tebakgambar/model/Homes;->exitPopUp:Lcom/tebakgambar/model/Homes$ExitPopUp;

    if-eqz v0, :cond_1f

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/home/a;->E:Landroidx/lifecycle/t;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/Homes;

    iget-object v0, v0, Lcom/tebakgambar/model/Homes;->exitPopUp:Lcom/tebakgambar/model/Homes$ExitPopUp;

    return-object v0

    .line 3
    :cond_1f
    new-instance v0, Lcom/tebakgambar/model/Homes$ExitPopUp;

    invoke-direct {v0}, Lcom/tebakgambar/model/Homes$ExitPopUp;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v1

    const v2, 0x7f1201ae

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tebakgambar/model/Homes$ExitPopUp;->positive:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v1

    const v2, 0x7f120111

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tebakgambar/model/Homes$ExitPopUp;->negative:Ljava/lang/String;

    const-string v1, "http://tebakgambar.com/redirect/download/exit/exit-image.png"

    .line 6
    iput-object v1, v0, Lcom/tebakgambar/model/Homes$ExitPopUp;->image:Ljava/lang/String;

    const-string v1, "http://j.mp/exitads"

    .line 7
    iput-object v1, v0, Lcom/tebakgambar/model/Homes$ExitPopUp;->url:Ljava/lang/String;

    return-object v0
.end method

.method O()V
    .registers 4

    const-string v0, "viewHomePage"

    const-string v1, "home page"

    const-string v2, "view on home page"

    .line 1
    invoke-static {v0, v1, v2}, Lm8/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/tebakgambar/service/TGDownloadService;->M(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    invoke-virtual {v0}, Lj8/b;->y()V

    return-void
.end method

.method P()V
    .registers 5

    const-string v0, "clickHomePage"

    const-string v1, "home page"

    const-string v2, "click on profile icon"

    const-string v3, ""

    .line 1
    invoke-static {v0, v1, v2, v3}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lj8/x;->q()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3
    iget-object v0, p0, Lj8/x;->x:Ly8/u;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ly8/u;->n(Ljava/lang/Object;)V

    goto :goto_24

    :cond_19
    const-string v0, "profile icon"

    .line 4
    iput-object v0, p0, Lj8/x;->A:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lj8/x;->w:Ly8/u;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ly8/u;->n(Ljava/lang/Object;)V

    :goto_24
    return-void
.end method

.method Q()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/home/a;->F:Landroidx/lifecycle/t;

    iget-object v1, p0, Lj8/x;->y:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lg5/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lcom/tebakgambar/home/a;->T()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 3
    invoke-static {}, Lm8/a;->f()Lm8/a;

    move-result-object v0

    invoke-virtual {v0}, Lm8/a;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_24

    const-string v0, "homepage_first_open"

    .line 4
    iput-object v0, p0, Lj8/x;->A:Ljava/lang/String;

    goto :goto_28

    :cond_24
    const-string v0, "homepage_next_open"

    .line 5
    iput-object v0, p0, Lj8/x;->A:Ljava/lang/String;

    .line 6
    :goto_28
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tebakgambar/TGApplication;->i(Z)V

    .line 7
    iget-object v0, p0, Lj8/x;->w:Ly8/u;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ly8/u;->n(Ljava/lang/Object;)V

    goto :goto_3b

    .line 8
    :cond_38
    invoke-virtual {p0}, Lj8/x;->C()V

    :goto_3b
    return-void
.end method

.method R()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Ly8/y;->v0(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/home/a;->C:Landroidx/databinding/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/databinding/l;->z(Z)V

    return-void
.end method

.method S()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/home/a;->E:Landroidx/lifecycle/t;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/Homes;

    if-eqz v0, :cond_1c

    .line 2
    iget-object v0, v0, Lcom/tebakgambar/model/Homes;->floating:Lcom/tebakgambar/model/Homes$Floating;

    if-eqz v0, :cond_1c

    iget-object v1, v0, Lcom/tebakgambar/model/Homes$Floating;->icon_url:Ljava/lang/String;

    if-eqz v1, :cond_1c

    iget v0, v0, Lcom/tebakgambar/model/Homes$Floating;->id:I

    invoke-direct {p0, v0}, Lcom/tebakgambar/home/a;->L(I)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method U()V
    .registers 4

    const-string v0, "clickHomePage"

    const-string v1, "home page"

    const-string v2, "click on footer banner"

    .line 1
    invoke-static {v0, v1, v2}, Lm8/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/home/a;->J:Lcom/tebakgambar/model/response/StickerCampaignResult;

    if-eqz v0, :cond_12

    .line 3
    iget-object v1, p0, Lcom/tebakgambar/home/a;->H:Ly8/u;

    invoke-virtual {v1, v0}, Ly8/u;->n(Ljava/lang/Object;)V

    :cond_12
    return-void
.end method

.method V()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ly8/y;->R(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ly8/y;->A0(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/tebakgambar/home/a;->D:Landroidx/databinding/l;

    invoke-virtual {v1, v0}, Landroidx/databinding/l;->z(Z)V

    return-void
.end method

.method public a(Lg5/s;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lj8/x;->a(Lg5/s;)V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/home/a;->F:Landroidx/lifecycle/t;

    invoke-virtual {p0}, Lj8/x;->p()Lg5/s;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.tebakgambar.home.a.C0131a (com.tebakgambar.home.a$a)
.class Lcom/tebakgambar/home/a$a;
.super Ljava/lang/Object;
.source "HomeViewModel.java"

# interfaces
.implements Lwa/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/home/a;->M()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lwa/d<",
        "Lcom/tebakgambar/model/Homes;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/home/a;


# direct methods
.method constructor <init>(Lcom/tebakgambar/home/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/home/a$a;->a:Lcom/tebakgambar/home/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lwa/b;Lwa/l;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "Lcom/tebakgambar/model/Homes;",
            ">;",
            "Lwa/l<",
            "Lcom/tebakgambar/model/Homes;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lwa/l;->f()Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 2
    invoke-virtual {p2}, Lwa/l;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/model/Homes;

    .line 3
    iget-object p2, p0, Lcom/tebakgambar/home/a$a;->a:Lcom/tebakgambar/home/a;

    iget-object p2, p2, Lcom/tebakgambar/home/a;->E:Landroidx/lifecycle/t;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    if-eqz p1, :cond_4c

    .line 4
    new-instance p2, Lcom/google/gson/f;

    invoke-direct {p2}, Lcom/google/gson/f;-><init>()V

    .line 5
    invoke-virtual {p2, p1}, Lcom/google/gson/f;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_41

    .line 6
    iget-object v0, p0, Lcom/tebakgambar/home/a$a;->a:Lcom/tebakgambar/home/a;

    invoke-virtual {v0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ly8/y;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 7
    iget-object v0, p0, Lcom/tebakgambar/home/a$a;->a:Lcom/tebakgambar/home/a;

    invoke-virtual {v0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p2}, Ly8/y;->l0(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/tebakgambar/home/a$a;->a:Lcom/tebakgambar/home/a;

    iget-object p2, p2, Lcom/tebakgambar/home/a;->C:Landroidx/databinding/l;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/databinding/l;->z(Z)V

    .line 9
    :cond_41
    iget-object p1, p1, Lcom/tebakgambar/model/Homes;->forceUpdate:Lcom/tebakgambar/model/ForceUpdate;

    if-eqz p1, :cond_4c

    .line 10
    iget-object p2, p0, Lcom/tebakgambar/home/a$a;->a:Lcom/tebakgambar/home/a;

    iget-object p2, p2, Lcom/tebakgambar/home/a;->I:Ly8/u;

    invoke-virtual {p2, p1}, Ly8/u;->n(Ljava/lang/Object;)V

    :cond_4c
    return-void
.end method

.method public b(Lwa/b;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "Lcom/tebakgambar/model/Homes;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

###### Class com.tebakgambar.home.a.b (com.tebakgambar.home.a$b)
.class Lcom/tebakgambar/home/a$b;
.super Ljava/lang/Object;
.source "HomeViewModel.java"

# interfaces
.implements Lwa/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/home/a;->N()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lwa/d<",
        "Lcom/tebakgambar/model/response/ApiResponse3<",
        "Lcom/tebakgambar/model/response/StickerCampaignResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/home/a;


# direct methods
.method constructor <init>(Lcom/tebakgambar/home/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/home/a$b;->a:Lcom/tebakgambar/home/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lwa/b;Lwa/l;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/response/StickerCampaignResult;",
            ">;>;",
            "Lwa/l<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/response/StickerCampaignResult;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lwa/l;->f()Z

    move-result p1

    if-eqz p1, :cond_26

    invoke-virtual {p2}, Lwa/l;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 2
    invoke-virtual {p2}, Lwa/l;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/model/response/ApiResponse3;

    iget-object p1, p1, Lcom/tebakgambar/model/response/ApiResponse3;->data:Ljava/lang/Object;

    check-cast p1, Lcom/tebakgambar/model/response/StickerCampaignResult;

    .line 3
    iget-object p2, p0, Lcom/tebakgambar/home/a$b;->a:Lcom/tebakgambar/home/a;

    invoke-static {p2, p1}, Lcom/tebakgambar/home/a;->G(Lcom/tebakgambar/home/a;Lcom/tebakgambar/model/response/StickerCampaignResult;)Lcom/tebakgambar/model/response/StickerCampaignResult;

    .line 4
    iget-object p1, p1, Lcom/tebakgambar/model/response/StickerCampaignResult;->buttonImageUrl:Ljava/lang/String;

    if-eqz p1, :cond_26

    .line 5
    iget-object p2, p0, Lcom/tebakgambar/home/a$b;->a:Lcom/tebakgambar/home/a;

    iget-object p2, p2, Lcom/tebakgambar/home/a;->G:Landroidx/lifecycle/t;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    :cond_26
    return-void
.end method

.method public b(Lwa/b;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/response/StickerCampaignResult;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

###### Class q8.k (q8.k)
.class public final synthetic Lq8/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/home/a;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/home/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq8/k;->a:Lcom/tebakgambar/home/a;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lq8/k;->a:Lcom/tebakgambar/home/a;

    invoke-static {v0}, Lcom/tebakgambar/home/a;->E(Lcom/tebakgambar/home/a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class q8.l (q8.l)
.class public final synthetic Lq8/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/home/a;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/home/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq8/l;->a:Lcom/tebakgambar/home/a;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lq8/l;->a:Lcom/tebakgambar/home/a;

    invoke-static {v0}, Lcom/tebakgambar/home/a;->F(Lcom/tebakgambar/home/a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
