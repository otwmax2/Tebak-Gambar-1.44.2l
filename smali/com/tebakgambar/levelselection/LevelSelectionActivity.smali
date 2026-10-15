###### Class com.tebakgambar.levelselection.LevelSelectionActivity (com.tebakgambar.levelselection.LevelSelectionActivity)
.class public Lcom/tebakgambar/levelselection/LevelSelectionActivity;
.super Lj8/t;
.source "LevelSelectionActivity.java"

# interfaces
.implements Lcom/tebakgambar/levelselection/r$c;


# instance fields
.field private A:Lcom/tebakgambar/levelselection/r;

.field private B:Landroidx/recyclerview/widget/RecyclerView$v;

.field public eventId:I

.field public failedLevel:I

.field public homeEvent:Lcom/tebakgambar/model/BaseEvent;

.field public isLevelNotEligible:Z

.field private y:Lo8/k;

.field private z:Lcom/tebakgambar/levelselection/z;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lj8/t;-><init>()V

    .line 2
    new-instance v0, Lcom/tebakgambar/levelselection/r;

    invoke-direct {v0}, Lcom/tebakgambar/levelselection/r;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->A:Lcom/tebakgambar/levelselection/r;

    .line 3
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$v;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$v;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->B:Landroidx/recyclerview/widget/RecyclerView$v;

    return-void
.end method

.method public static synthetic U0(Lcom/tebakgambar/levelselection/LevelSelectionActivity;ILandroid/content/DialogInterface;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->l1(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic V0(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->k1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic W0(Lcom/tebakgambar/levelselection/LevelSelectionActivity;Lt1/h;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->g1(Lt1/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic X0(Lcom/tebakgambar/levelselection/LevelSelectionActivity;Lcom/tebakgambar/model/BaseEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->f1(Lcom/tebakgambar/model/BaseEvent;)V

    return-void
.end method

.method public static synthetic Y0(Lcom/tebakgambar/levelselection/LevelSelectionActivity;Lcom/tebakgambar/model/DialogModel;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->n1(Lcom/tebakgambar/model/DialogModel;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic Z0(Lcom/tebakgambar/levelselection/LevelSelectionActivity;Lcom/tebakgambar/model/Level;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->j1(Lcom/tebakgambar/model/Level;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic a1(Lcom/tebakgambar/levelselection/LevelSelectionActivity;Lcom/tebakgambar/model/CustomBanner;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->h1(Lcom/tebakgambar/model/CustomBanner;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b1(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->i1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c1(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->m1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d1(Lcom/tebakgambar/levelselection/LevelSelectionActivity;Lcom/tebakgambar/model/CustomBanner;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->e1(Lcom/tebakgambar/model/CustomBanner;)V

    return-void
.end method

.method private e1(Lcom/tebakgambar/model/CustomBanner;)V
    .registers 6

    if-eqz p1, :cond_16

    .line 1
    invoke-virtual {p0}, Lj8/t;->h0()Lj8/k0;

    move-result-object v0

    iget-object v1, p1, Lcom/tebakgambar/model/CustomBanner;->imageUrl:Ljava/lang/String;

    new-instance v2, Lcom/tebakgambar/levelselection/LevelSelectionActivity$a;

    invoke-direct {v2, p0}, Lcom/tebakgambar/levelselection/LevelSelectionActivity$a;-><init>(Lcom/tebakgambar/levelselection/LevelSelectionActivity;)V

    new-instance v3, Lcom/tebakgambar/levelselection/m;

    invoke-direct {v3, p0, p1}, Lcom/tebakgambar/levelselection/m;-><init>(Lcom/tebakgambar/levelselection/LevelSelectionActivity;Lcom/tebakgambar/model/CustomBanner;)V

    invoke-virtual {v0, v1, v2, v3}, Lj8/k0;->U(Ljava/lang/String;Lt2/f;Landroid/view/View$OnClickListener;)V

    goto :goto_1d

    .line 2
    :cond_16
    invoke-virtual {p0}, Lj8/t;->h0()Lj8/k0;

    move-result-object p1

    invoke-virtual {p1}, Lj8/k0;->R()V

    :goto_1d
    return-void
.end method

.method private f1(Lcom/tebakgambar/model/BaseEvent;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->o(Lcom/tebakgambar/model/BaseEvent;)V

    return-void
.end method

.method private synthetic g1(Lt1/h;)Ljava/lang/Object;
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

.method private synthetic h1(Lcom/tebakgambar/model/CustomBanner;Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p1, Lcom/tebakgambar/model/CustomBanner;->webUrl:Ljava/lang/String;

    invoke-static {p0, p1}, Ly8/f;->k(Landroid/content/Context;Ljava/lang/String;)Lt1/h;

    move-result-object p1

    new-instance p2, Lcom/tebakgambar/levelselection/p;

    invoke-direct {p2, p0}, Lcom/tebakgambar/levelselection/p;-><init>(Lcom/tebakgambar/levelselection/LevelSelectionActivity;)V

    invoke-virtual {p1, p2}, Lt1/h;->x(Lt1/f;)Lt1/h;

    return-void
.end method

.method private static synthetic i1(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 1
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic j1(Lcom/tebakgambar/model/Level;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tebakgambar/Henson$b;->d()Lcom/tebakgambar/levelselection/LevelLoadingActivity$$IntentBuilder;

    move-result-object p2

    iget p1, p1, Lcom/tebakgambar/model/Level;->id:I

    invoke-virtual {p2, p1}, Lcom/tebakgambar/levelselection/LevelLoadingActivity$$IntentBuilder;->level(I)Lcom/tebakgambar/levelselection/LevelLoadingActivity$$IntentBuilder$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/levelselection/LevelLoadingActivity$$IntentBuilder$a;->a()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic k1(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 1
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic l1(ILandroid/content/DialogInterface;I)V
    .registers 4

    .line 1
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tebakgambar/Henson$b;->d()Lcom/tebakgambar/levelselection/LevelLoadingActivity$$IntentBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tebakgambar/levelselection/LevelLoadingActivity$$IntentBuilder;->level(I)Lcom/tebakgambar/levelselection/LevelLoadingActivity$$IntentBuilder$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/levelselection/LevelLoadingActivity$$IntentBuilder$a;->a()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic m1(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 1
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic n1(Lcom/tebakgambar/model/DialogModel;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    iget-object p1, p1, Lcom/tebakgambar/model/DialogModel;->url:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Ly8/a;->f(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method private o1(Lcom/tebakgambar/model/ResultEvents;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lcom/tebakgambar/model/BaseEvent;->isDone()Z

    move-result v0

    const-string v1, "event_data"

    if-eqz v0, :cond_1d

    .line 2
    invoke-virtual {p1}, Lcom/tebakgambar/model/BaseEvent;->isMessageExists()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tebakgambar/QuotesActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_55

    .line 6
    :cond_1d
    invoke-virtual {p1}, Lcom/tebakgambar/model/BaseEvent;->isNew()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 7
    invoke-virtual {p1}, Lcom/tebakgambar/model/BaseEvent;->isMessageExists()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 8
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tebakgambar/QuotesActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_55

    .line 11
    :cond_38
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_55

    .line 14
    :cond_47
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 17
    :cond_55
    :goto_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/tebakgambar/model/BaseEvent;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "clickLevelPage"

    const-string v1, "level page"

    const-string v2, "click on level"

    invoke-static {v0, v1, v2, p1}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private p1(Lcom/tebakgambar/model/ResultEventClue;)V
    .registers 4

    .line 1
    iget-object v0, p1, Lcom/tebakgambar/model/BaseEvent;->id:Ljava/lang/String;

    invoke-static {p0, v0}, Ly8/y;->V(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2
    iget-object v0, p1, Lcom/tebakgambar/model/BaseEvent;->id:Ljava/lang/String;

    invoke-static {p0, v0}, Ly8/y;->f0(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/Henson$b;->a()Lcom/tebakgambar/tutorial/ClueEventTutorialActivity$$IntentBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity$$IntentBuilder;->clueEvent(Lcom/tebakgambar/model/ResultEventClue;)Lcom/tebakgambar/tutorial/ClueEventTutorialActivity$$IntentBuilder$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity$$IntentBuilder$a;->a()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_31

    .line 4
    :cond_21
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "event_clue"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_31
    return-void
.end method

.method private q1(Lcom/tebakgambar/model/Level;)V
    .registers 5

    .line 1
    new-instance v0, Lj8/i1;

    invoke-direct {v0, p0}, Lj8/i1;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120098

    .line 2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj8/i1;->h(Ljava/lang/CharSequence;)Lj8/i1;

    move-result-object v0

    const v1, 0x7f12018f

    .line 3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tebakgambar/levelselection/k;->o:Lcom/tebakgambar/levelselection/k;

    invoke-virtual {v0, v1, v2}, Lj8/i1;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/i1;

    move-result-object v0

    const v1, 0x7f1201e6

    .line 4
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tebakgambar/levelselection/i;

    invoke-direct {v2, p0, p1}, Lcom/tebakgambar/levelselection/i;-><init>(Lcom/tebakgambar/levelselection/LevelSelectionActivity;Lcom/tebakgambar/model/Level;)V

    invoke-virtual {v0, v1, v2}, Lj8/i1;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/i1;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private r1()V
    .registers 5

    .line 1
    iget v0, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->failedLevel:I

    if-eqz v0, :cond_37

    .line 2
    new-instance v1, Lj8/i1;

    invoke-direct {v1, p0}, Lj8/i1;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120149

    .line 3
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj8/i1;->h(Ljava/lang/CharSequence;)Lj8/i1;

    move-result-object v1

    const v2, 0x7f120140

    .line 4
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/tebakgambar/levelselection/j;->o:Lcom/tebakgambar/levelselection/j;

    invoke-virtual {v1, v2, v3}, Lj8/i1;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/i1;

    move-result-object v1

    const v2, 0x7f120097

    .line 5
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tebakgambar/levelselection/g;

    invoke-direct {v3, p0, v0}, Lcom/tebakgambar/levelselection/g;-><init>(Lcom/tebakgambar/levelselection/LevelSelectionActivity;I)V

    invoke-virtual {v1, v2, v3}, Lj8/i1;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/i1;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->failedLevel:I

    :cond_37
    return-void
.end method

.method private s1(Lcom/tebakgambar/model/BaseEvent;)V
    .registers 11

    .line 1
    new-instance v8, Lj8/c0;

    iget-object v4, p1, Lcom/tebakgambar/model/BaseEvent;->message_login:Ljava/lang/String;

    iget-object v5, p1, Lcom/tebakgambar/model/BaseEvent;->title_login:Ljava/lang/String;

    .line 2
    iget-object v0, p1, Lcom/tebakgambar/model/BaseEvent;->positive_login:Ljava/lang/String;

    if-nez v0, :cond_11

    const v0, 0x7f12014b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_11
    move-object v6, v0

    .line 3
    iget-object p1, p1, Lcom/tebakgambar/model/BaseEvent;->negative_login:Ljava/lang/String;

    if-nez p1, :cond_1d

    const p1, 0x7f12005d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1d
    move-object v7, p1

    const v2, 0x7f1300ec

    const/4 v3, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lj8/c0;-><init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v8}, Lj8/c0;->q()V

    .line 5
    new-instance p1, Lcom/tebakgambar/levelselection/LevelSelectionActivity$b;

    invoke-direct {p1, p0, v8}, Lcom/tebakgambar/levelselection/LevelSelectionActivity$b;-><init>(Lcom/tebakgambar/levelselection/LevelSelectionActivity;Lj8/c0;)V

    invoke-virtual {v8, p1}, Lj8/c0;->o(Lj8/c0$i;)V

    .line 6
    invoke-virtual {v8}, Lj8/c0;->show()V

    return-void
.end method

.method private u1()V
    .registers 2

    const v0, 0x7f120163

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj8/t;->H0(Ljava/lang/String;)V

    return-void
.end method

.method private v1(Lcom/tebakgambar/model/Level;)V
    .registers 5

    .line 1
    iget-object p1, p1, Lcom/tebakgambar/model/Level;->comingSoon:Lcom/tebakgambar/model/ComingSoon;

    if-nez p1, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object p1, p1, Lcom/tebakgambar/model/ComingSoon;->pending:Lcom/tebakgambar/model/DialogModel;

    .line 3
    new-instance v0, Lj8/i1;

    invoke-direct {v0, p0}, Lj8/i1;-><init>(Landroid/content/Context;)V

    iget-object v1, p1, Lcom/tebakgambar/model/DialogModel;->titleMessage:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Lj8/i1;->i(Ljava/lang/CharSequence;)Lj8/i1;

    move-result-object v0

    iget-object v1, p1, Lcom/tebakgambar/model/DialogModel;->message:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Lj8/i1;->h(Ljava/lang/CharSequence;)Lj8/i1;

    move-result-object v0

    iget-object v1, p1, Lcom/tebakgambar/model/DialogModel;->buttonNegative:Ljava/lang/String;

    sget-object v2, Lcom/tebakgambar/levelselection/l;->o:Lcom/tebakgambar/levelselection/l;

    .line 6
    invoke-virtual {v0, v1, v2}, Lj8/i1;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/i1;

    move-result-object v0

    iget-object v1, p1, Lcom/tebakgambar/model/DialogModel;->buttonPositive:Ljava/lang/String;

    new-instance v2, Lcom/tebakgambar/levelselection/h;

    invoke-direct {v2, p0, p1}, Lcom/tebakgambar/levelselection/h;-><init>(Lcom/tebakgambar/levelselection/LevelSelectionActivity;Lcom/tebakgambar/model/DialogModel;)V

    .line 7
    invoke-virtual {v0, v1, v2}, Lj8/i1;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/i1;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const v0, 0x7f110005

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Ly8/y;->Z(Landroid/content/Context;Ljava/lang/Integer;)V

    const v0, 0x7f120148

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public b(Lcom/tebakgambar/model/Level;)V
    .registers 6

    const v0, 0x7f110005

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Ly8/y;->Z(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REGULAR-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/tebakgambar/model/Level;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clickLevelPage"

    const-string v2, "level page"

    const-string v3, "click on level"

    invoke-static {v1, v2, v3, v0}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/tebakgambar/model/Level;->isLocked()Z

    move-result v0

    if-nez v0, :cond_6c

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->z:Lcom/tebakgambar/levelselection/z;

    invoke-virtual {v0, p1}, Lcom/tebakgambar/levelselection/z;->U(Lcom/tebakgambar/model/Level;)V

    .line 5
    invoke-virtual {p1}, Lcom/tebakgambar/model/Level;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 6
    invoke-virtual {p1}, Lcom/tebakgambar/model/Level;->shouldShowSlider()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 7
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/Henson$b;->k()Lcom/tebakgambar/levelselection/SliderActivity$$IntentBuilder;

    move-result-object v0

    iget p1, p1, Lcom/tebakgambar/model/Level;->id:I

    invoke-virtual {v0, p1}, Lcom/tebakgambar/levelselection/SliderActivity$$IntentBuilder;->levelId(I)Lcom/tebakgambar/levelselection/SliderActivity$$IntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/levelselection/SliderActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_6c

    .line 8
    :cond_53
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/Henson$b;->g()Lcom/tebakgambar/levelselection/QuestionSelectionActivity$$IntentBuilder;

    move-result-object v0

    iget p1, p1, Lcom/tebakgambar/model/Level;->id:I

    invoke-virtual {v0, p1}, Lcom/tebakgambar/levelselection/QuestionSelectionActivity$$IntentBuilder;->level(I)Lcom/tebakgambar/levelselection/QuestionSelectionActivity$$IntentBuilder$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/levelselection/QuestionSelectionActivity$$IntentBuilder$a;->a()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_6c

    .line 9
    :cond_69
    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->q1(Lcom/tebakgambar/model/Level;)V

    :cond_6c
    :goto_6c
    return-void
.end method

.method public o(Lcom/tebakgambar/model/BaseEvent;)V
    .registers 3

    const v0, 0x7f110005

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Ly8/y;->Z(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->z:Lcom/tebakgambar/levelselection/z;

    invoke-virtual {v0, p1}, Lcom/tebakgambar/levelselection/z;->V(Lcom/tebakgambar/model/BaseEvent;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3
    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->s1(Lcom/tebakgambar/model/BaseEvent;)V

    return-void

    .line 4
    :cond_16
    instance-of v0, p1, Lcom/tebakgambar/model/ResultEvents;

    if-eqz v0, :cond_20

    .line 5
    check-cast p1, Lcom/tebakgambar/model/ResultEvents;

    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->o1(Lcom/tebakgambar/model/ResultEvents;)V

    goto :goto_29

    .line 6
    :cond_20
    instance-of v0, p1, Lcom/tebakgambar/model/ResultEventClue;

    if-eqz v0, :cond_29

    .line 7
    check-cast p1, Lcom/tebakgambar/model/ResultEventClue;

    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->p1(Lcom/tebakgambar/model/ResultEventClue;)V

    :cond_29
    :goto_29
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/e;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/k0;->b(Landroidx/fragment/app/e;)Landroidx/lifecycle/h0;

    move-result-object p1

    const-class v0, Lcom/tebakgambar/levelselection/z;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/h0;->a(Ljava/lang/Class;)Landroidx/lifecycle/g0;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/levelselection/z;

    iput-object p1, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->z:Lcom/tebakgambar/levelselection/z;

    const p1, 0x7f0d0023

    .line 3
    invoke-static {p0, p1}, Landroidx/databinding/g;->j(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lo8/k;

    iput-object p1, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->y:Lo8/k;

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->z:Lcom/tebakgambar/levelselection/z;

    invoke-virtual {p1, v0}, Lo8/k;->u0(Lcom/tebakgambar/levelselection/z;)V

    .line 5
    iget-object p1, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->z:Lcom/tebakgambar/levelselection/z;

    invoke-virtual {p0, p1}, Lj8/t;->C0(Lj8/x;)V

    .line 6
    invoke-static {p0}, Ly2/a;->b(Landroid/app/Activity;)V

    .line 7
    iget-object p1, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->z:Lcom/tebakgambar/levelselection/z;

    iget-object p1, p1, Lcom/tebakgambar/levelselection/z;->D:Landroidx/lifecycle/t;

    new-instance v0, Lcom/tebakgambar/levelselection/o;

    invoke-direct {v0, p0}, Lcom/tebakgambar/levelselection/o;-><init>(Lcom/tebakgambar/levelselection/LevelSelectionActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 8
    iget-object p1, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->z:Lcom/tebakgambar/levelselection/z;

    iget-object p1, p1, Lcom/tebakgambar/levelselection/z;->E:Ly8/u;

    new-instance v0, Lcom/tebakgambar/levelselection/n;

    invoke-direct {v0, p0}, Lcom/tebakgambar/levelselection/n;-><init>(Lcom/tebakgambar/levelselection/LevelSelectionActivity;)V

    invoke-virtual {p1, p0, v0}, Ly8/u;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 9
    iget-object p1, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->z:Lcom/tebakgambar/levelselection/z;

    invoke-virtual {p1}, Lcom/tebakgambar/levelselection/z;->f0()V

    .line 10
    iget-object p1, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->z:Lcom/tebakgambar/levelselection/z;

    invoke-virtual {p1}, Lcom/tebakgambar/levelselection/z;->R()V

    .line 11
    iget-object p1, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->z:Lcom/tebakgambar/levelselection/z;

    invoke-virtual {p1}, Lcom/tebakgambar/levelselection/z;->S()V

    .line 12
    iget-object p1, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->z:Lcom/tebakgambar/levelselection/z;

    iget v0, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->eventId:I

    iput v0, p1, Lcom/tebakgambar/levelselection/z;->G:I

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->eventId:I

    .line 14
    invoke-direct {p0}, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->r1()V

    .line 15
    iget-object v0, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->y:Lo8/k;

    iget-object v0, v0, Lo8/k;->Q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->B:Landroidx/recyclerview/widget/RecyclerView$v;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$v;)V

    .line 16
    iget-object v0, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->y:Lo8/k;

    iget-object v0, v0, Lo8/k;->Q:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$p;)V

    .line 17
    iget-object v0, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->A:Lcom/tebakgambar/levelselection/r;

    iget-object v1, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->z:Lcom/tebakgambar/levelselection/z;

    iget-object v1, v1, Lcom/tebakgambar/levelselection/z;->C:Lcom/tebakgambar/levelselection/r$j;

    invoke-virtual {v0, v1}, Lcom/tebakgambar/levelselection/r;->A(Lcom/tebakgambar/levelselection/r$j;)V

    .line 18
    iget-object v0, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->A:Lcom/tebakgambar/levelselection/r;

    invoke-virtual {v0, p0}, Lcom/tebakgambar/levelselection/r;->z(Lcom/tebakgambar/levelselection/r$c;)V

    .line 19
    iget-object v0, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->y:Lo8/k;

    iget-object v0, v0, Lo8/k;->Q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->A:Lcom/tebakgambar/levelselection/r;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 20
    iget-object v0, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->z:Lcom/tebakgambar/levelselection/z;

    invoke-virtual {v0}, Lcom/tebakgambar/levelselection/z;->T()V

    const v0, 0x7f0a0120

    .line 21
    invoke-virtual {p0, v0}, Lj8/t;->D0(I)V

    .line 22
    iget-boolean v0, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->isLevelNotEligible:Z

    if-eqz v0, :cond_9d

    .line 23
    iput-boolean p1, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->isLevelNotEligible:Z

    .line 24
    invoke-direct {p0}, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->u1()V

    goto :goto_a7

    .line 25
    :cond_9d
    iget-object p1, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->homeEvent:Lcom/tebakgambar/model/BaseEvent;

    if-eqz p1, :cond_a7

    .line 26
    invoke-virtual {p0, p1}, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->o(Lcom/tebakgambar/model/BaseEvent;)V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->homeEvent:Lcom/tebakgambar/model/BaseEvent;

    :cond_a7
    :goto_a7
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->A:Lcom/tebakgambar/levelselection/r;

    invoke-virtual {v0}, Lcom/tebakgambar/levelselection/r;->x()V

    .line 2
    invoke-super {p0}, Lj8/t;->onDestroy()V

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
    iget-object p1, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->z:Lcom/tebakgambar/levelselection/z;

    invoke-virtual {p1}, Lcom/tebakgambar/levelselection/z;->f0()V

    .line 4
    iget-object p1, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->z:Lcom/tebakgambar/levelselection/z;

    invoke-virtual {p1}, Lcom/tebakgambar/levelselection/z;->R()V

    .line 5
    iget-object p1, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->z:Lcom/tebakgambar/levelselection/z;

    invoke-virtual {p1}, Lcom/tebakgambar/levelselection/z;->S()V

    .line 6
    invoke-direct {p0}, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->r1()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 1
    invoke-super {p0}, Lj8/t;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->A:Lcom/tebakgambar/levelselection/r;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->i()V

    return-void
.end method

.method public p(Lcom/tebakgambar/model/Level;)V
    .registers 3

    const v0, 0x7f110005

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Ly8/y;->Z(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->v1(Lcom/tebakgambar/model/Level;)V

    return-void
.end method

.method public u()V
    .registers 1

    .line 1
    invoke-static {p0}, Ly8/a;->l(Landroid/content/Context;)V

    return-void
.end method

###### Class com.tebakgambar.levelselection.LevelSelectionActivity.a (com.tebakgambar.levelselection.LevelSelectionActivity$a)
.class Lcom/tebakgambar/levelselection/LevelSelectionActivity$a;
.super Ljava/lang/Object;
.source "LevelSelectionActivity.java"

# interfaces
.implements Lt2/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/levelselection/LevelSelectionActivity;->e1(Lcom/tebakgambar/model/CustomBanner;)V
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
.field final synthetic a:Lcom/tebakgambar/levelselection/LevelSelectionActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/levelselection/LevelSelectionActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity$a;->a:Lcom/tebakgambar/levelselection/LevelSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lv2/j;ZZ)Z
    .registers 6

    .line 1
    check-cast p1, Ll2/b;

    check-cast p2, Ljava/lang/String;

    invoke-virtual/range {p0 .. p5}, Lcom/tebakgambar/levelselection/LevelSelectionActivity$a;->d(Ll2/b;Ljava/lang/String;Lv2/j;ZZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Exception;Ljava/lang/Object;Lv2/j;Z)Z
    .registers 5

    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tebakgambar/levelselection/LevelSelectionActivity$a;->c(Ljava/lang/Exception;Ljava/lang/String;Lv2/j;Z)Z

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

###### Class com.tebakgambar.levelselection.LevelSelectionActivity.b (com.tebakgambar.levelselection.LevelSelectionActivity$b)
.class Lcom/tebakgambar/levelselection/LevelSelectionActivity$b;
.super Ljava/lang/Object;
.source "LevelSelectionActivity.java"

# interfaces
.implements Lj8/c0$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/levelselection/LevelSelectionActivity;->s1(Lcom/tebakgambar/model/BaseEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lj8/c0;

.field final synthetic b:Lcom/tebakgambar/levelselection/LevelSelectionActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/levelselection/LevelSelectionActivity;Lj8/c0;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity$b;->b:Lcom/tebakgambar/levelselection/LevelSelectionActivity;

    iput-object p2, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity$b;->a:Lj8/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity$b;->a:Lj8/c0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity$b;->b:Lcom/tebakgambar/levelselection/LevelSelectionActivity;

    invoke-static {v0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/tebakgambar/Henson$b;->b()Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;->showLoginImmediately(Z)Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x24000000

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7
    iget-object v1, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity$b;->b:Lcom/tebakgambar/levelselection/LevelSelectionActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/levelselection/LevelSelectionActivity$b;->a:Lj8/c0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

###### Class com.tebakgambar.levelselection.g (com.tebakgambar.levelselection.g)
.class public final synthetic Lcom/tebakgambar/levelselection/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/levelselection/LevelSelectionActivity;

.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/levelselection/LevelSelectionActivity;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/g;->o:Lcom/tebakgambar/levelselection/LevelSelectionActivity;

    iput p2, p0, Lcom/tebakgambar/levelselection/g;->p:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/tebakgambar/levelselection/g;->o:Lcom/tebakgambar/levelselection/LevelSelectionActivity;

    iget v1, p0, Lcom/tebakgambar/levelselection/g;->p:I

    invoke-static {v0, v1, p1, p2}, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->U0(Lcom/tebakgambar/levelselection/LevelSelectionActivity;ILandroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.tebakgambar.levelselection.h (com.tebakgambar.levelselection.h)
.class public final synthetic Lcom/tebakgambar/levelselection/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/levelselection/LevelSelectionActivity;

.field public final synthetic p:Lcom/tebakgambar/model/DialogModel;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/levelselection/LevelSelectionActivity;Lcom/tebakgambar/model/DialogModel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/h;->o:Lcom/tebakgambar/levelselection/LevelSelectionActivity;

    iput-object p2, p0, Lcom/tebakgambar/levelselection/h;->p:Lcom/tebakgambar/model/DialogModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/tebakgambar/levelselection/h;->o:Lcom/tebakgambar/levelselection/LevelSelectionActivity;

    iget-object v1, p0, Lcom/tebakgambar/levelselection/h;->p:Lcom/tebakgambar/model/DialogModel;

    invoke-static {v0, v1, p1, p2}, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->Y0(Lcom/tebakgambar/levelselection/LevelSelectionActivity;Lcom/tebakgambar/model/DialogModel;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.tebakgambar.levelselection.i (com.tebakgambar.levelselection.i)
.class public final synthetic Lcom/tebakgambar/levelselection/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/levelselection/LevelSelectionActivity;

.field public final synthetic p:Lcom/tebakgambar/model/Level;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/levelselection/LevelSelectionActivity;Lcom/tebakgambar/model/Level;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/i;->o:Lcom/tebakgambar/levelselection/LevelSelectionActivity;

    iput-object p2, p0, Lcom/tebakgambar/levelselection/i;->p:Lcom/tebakgambar/model/Level;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/tebakgambar/levelselection/i;->o:Lcom/tebakgambar/levelselection/LevelSelectionActivity;

    iget-object v1, p0, Lcom/tebakgambar/levelselection/i;->p:Lcom/tebakgambar/model/Level;

    invoke-static {v0, v1, p1, p2}, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->Z0(Lcom/tebakgambar/levelselection/LevelSelectionActivity;Lcom/tebakgambar/model/Level;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.tebakgambar.levelselection.j (com.tebakgambar.levelselection.j)
.class public final synthetic Lcom/tebakgambar/levelselection/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final synthetic o:Lcom/tebakgambar/levelselection/j;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tebakgambar/levelselection/j;

    invoke-direct {v0}, Lcom/tebakgambar/levelselection/j;-><init>()V

    sput-object v0, Lcom/tebakgambar/levelselection/j;->o:Lcom/tebakgambar/levelselection/j;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-static {p1, p2}, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->V0(Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.tebakgambar.levelselection.k (com.tebakgambar.levelselection.k)
.class public final synthetic Lcom/tebakgambar/levelselection/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final synthetic o:Lcom/tebakgambar/levelselection/k;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tebakgambar/levelselection/k;

    invoke-direct {v0}, Lcom/tebakgambar/levelselection/k;-><init>()V

    sput-object v0, Lcom/tebakgambar/levelselection/k;->o:Lcom/tebakgambar/levelselection/k;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-static {p1, p2}, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->b1(Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.tebakgambar.levelselection.l (com.tebakgambar.levelselection.l)
.class public final synthetic Lcom/tebakgambar/levelselection/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final synthetic o:Lcom/tebakgambar/levelselection/l;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tebakgambar/levelselection/l;

    invoke-direct {v0}, Lcom/tebakgambar/levelselection/l;-><init>()V

    sput-object v0, Lcom/tebakgambar/levelselection/l;->o:Lcom/tebakgambar/levelselection/l;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-static {p1, p2}, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->c1(Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.tebakgambar.levelselection.m (com.tebakgambar.levelselection.m)
.class public final synthetic Lcom/tebakgambar/levelselection/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/levelselection/LevelSelectionActivity;

.field public final synthetic p:Lcom/tebakgambar/model/CustomBanner;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/levelselection/LevelSelectionActivity;Lcom/tebakgambar/model/CustomBanner;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/m;->o:Lcom/tebakgambar/levelselection/LevelSelectionActivity;

    iput-object p2, p0, Lcom/tebakgambar/levelselection/m;->p:Lcom/tebakgambar/model/CustomBanner;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/tebakgambar/levelselection/m;->o:Lcom/tebakgambar/levelselection/LevelSelectionActivity;

    iget-object v1, p0, Lcom/tebakgambar/levelselection/m;->p:Lcom/tebakgambar/model/CustomBanner;

    invoke-static {v0, v1, p1}, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->a1(Lcom/tebakgambar/levelselection/LevelSelectionActivity;Lcom/tebakgambar/model/CustomBanner;Landroid/view/View;)V

    return-void
.end method

###### Class com.tebakgambar.levelselection.n (com.tebakgambar.levelselection.n)
.class public final synthetic Lcom/tebakgambar/levelselection/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/levelselection/LevelSelectionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/levelselection/LevelSelectionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/n;->a:Lcom/tebakgambar/levelselection/LevelSelectionActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/levelselection/n;->a:Lcom/tebakgambar/levelselection/LevelSelectionActivity;

    check-cast p1, Lcom/tebakgambar/model/BaseEvent;

    invoke-static {v0, p1}, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->X0(Lcom/tebakgambar/levelselection/LevelSelectionActivity;Lcom/tebakgambar/model/BaseEvent;)V

    return-void
.end method

###### Class com.tebakgambar.levelselection.o (com.tebakgambar.levelselection.o)
.class public final synthetic Lcom/tebakgambar/levelselection/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/levelselection/LevelSelectionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/levelselection/LevelSelectionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/o;->a:Lcom/tebakgambar/levelselection/LevelSelectionActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/levelselection/o;->a:Lcom/tebakgambar/levelselection/LevelSelectionActivity;

    check-cast p1, Lcom/tebakgambar/model/CustomBanner;

    invoke-static {v0, p1}, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->d1(Lcom/tebakgambar/levelselection/LevelSelectionActivity;Lcom/tebakgambar/model/CustomBanner;)V

    return-void
.end method

###### Class com.tebakgambar.levelselection.p (com.tebakgambar.levelselection.p)
.class public final synthetic Lcom/tebakgambar/levelselection/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt1/f;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/levelselection/LevelSelectionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/levelselection/LevelSelectionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/p;->a:Lcom/tebakgambar/levelselection/LevelSelectionActivity;

    return-void
.end method


# virtual methods
.method public final a(Lt1/h;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/levelselection/p;->a:Lcom/tebakgambar/levelselection/LevelSelectionActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/levelselection/LevelSelectionActivity;->W0(Lcom/tebakgambar/levelselection/LevelSelectionActivity;Lt1/h;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
