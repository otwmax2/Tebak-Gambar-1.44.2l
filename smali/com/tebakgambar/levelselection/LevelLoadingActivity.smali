###### Class com.tebakgambar.levelselection.LevelLoadingActivity (com.tebakgambar.levelselection.LevelLoadingActivity)
.class public Lcom/tebakgambar/levelselection/LevelLoadingActivity;
.super Lj8/t;
.source "LevelLoadingActivity.java"


# instance fields
.field private A:Lcom/tebakgambar/levelselection/f;

.field level:I

.field private y:Ljava/util/Timer;

.field private z:Lo8/i;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lj8/t;-><init>()V

    return-void
.end method

.method public static synthetic U0(Lcom/tebakgambar/levelselection/LevelLoadingActivity;Li8/a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/LevelLoadingActivity;->X0(Li8/a;)V

    return-void
.end method

.method public static synthetic V0(Lcom/tebakgambar/levelselection/LevelLoadingActivity;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/LevelLoadingActivity;->Y0(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic W0(Lcom/tebakgambar/levelselection/LevelLoadingActivity;)Lcom/tebakgambar/levelselection/f;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/levelselection/LevelLoadingActivity;->A:Lcom/tebakgambar/levelselection/f;

    return-object p0
.end method

.method private X0(Li8/a;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-virtual {p1}, Li8/a;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    invoke-virtual {p1}, Li8/a;->e()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/LevelLoadingActivity;->Z0(Z)V

    :cond_10
    return-void
.end method

.method private Y0(Ljava/lang/Boolean;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/LevelLoadingActivity;->Z0(Z)V

    return-void
.end method

.method private Z0(Z)V
    .registers 3

    if-eqz p1, :cond_43

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/levelselection/LevelLoadingActivity;->A:Lcom/tebakgambar/levelselection/f;

    iget-object p1, p1, Lcom/tebakgambar/levelselection/f;->w:Landroidx/databinding/m;

    invoke-virtual {p1}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/model/Level;

    if-eqz p1, :cond_2a

    .line 2
    invoke-virtual {p1}, Lcom/tebakgambar/model/Level;->shouldShowSlider()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 3
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

    goto :goto_3f

    .line 4
    :cond_2a
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/Henson$b;->g()Lcom/tebakgambar/levelselection/QuestionSelectionActivity$$IntentBuilder;

    move-result-object p1

    iget v0, p0, Lcom/tebakgambar/levelselection/LevelLoadingActivity;->level:I

    invoke-virtual {p1, v0}, Lcom/tebakgambar/levelselection/QuestionSelectionActivity$$IntentBuilder;->level(I)Lcom/tebakgambar/levelselection/QuestionSelectionActivity$$IntentBuilder$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/levelselection/QuestionSelectionActivity$$IntentBuilder$a;->a()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 5
    :goto_3f
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_63

    .line 6
    :cond_43
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/Henson$b;->e()Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/tebakgambar/levelselection/LevelLoadingActivity;->A:Lcom/tebakgambar/levelselection/f;

    iget v0, v0, Lcom/tebakgambar/levelselection/f;->y:I

    .line 7
    invoke-virtual {p1, v0}, Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;->failedLevel(I)Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x24000000

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_63
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/e;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/k0;->b(Landroidx/fragment/app/e;)Landroidx/lifecycle/h0;

    move-result-object p1

    const-class v0, Lcom/tebakgambar/levelselection/f;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/h0;->a(Ljava/lang/Class;)Landroidx/lifecycle/g0;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/levelselection/f;

    iput-object p1, p0, Lcom/tebakgambar/levelselection/LevelLoadingActivity;->A:Lcom/tebakgambar/levelselection/f;

    const p1, 0x7f0d0022

    .line 3
    invoke-static {p0, p1}, Landroidx/databinding/g;->j(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lo8/i;

    iput-object p1, p0, Lcom/tebakgambar/levelselection/LevelLoadingActivity;->z:Lo8/i;

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/levelselection/LevelLoadingActivity;->A:Lcom/tebakgambar/levelselection/f;

    invoke-virtual {p1, v0}, Lo8/i;->u0(Lcom/tebakgambar/levelselection/f;)V

    .line 5
    invoke-static {p0}, Ly2/a;->b(Landroid/app/Activity;)V

    .line 6
    iget-object p1, p0, Lcom/tebakgambar/levelselection/LevelLoadingActivity;->A:Lcom/tebakgambar/levelselection/f;

    iget-object p1, p1, Lcom/tebakgambar/levelselection/f;->u:Landroidx/lifecycle/t;

    new-instance v0, Lcom/tebakgambar/levelselection/a;

    invoke-direct {v0, p0}, Lcom/tebakgambar/levelselection/a;-><init>(Lcom/tebakgambar/levelselection/LevelLoadingActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 7
    iget-object p1, p0, Lcom/tebakgambar/levelselection/LevelLoadingActivity;->A:Lcom/tebakgambar/levelselection/f;

    iget-object p1, p1, Lcom/tebakgambar/levelselection/f;->v:Landroidx/lifecycle/t;

    new-instance v0, Lcom/tebakgambar/levelselection/b;

    invoke-direct {v0, p0}, Lcom/tebakgambar/levelselection/b;-><init>(Lcom/tebakgambar/levelselection/LevelLoadingActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 8
    iget-object p1, p0, Lcom/tebakgambar/levelselection/LevelLoadingActivity;->A:Lcom/tebakgambar/levelselection/f;

    iget v0, p0, Lcom/tebakgambar/levelselection/LevelLoadingActivity;->level:I

    invoke-virtual {p1, v0}, Lcom/tebakgambar/levelselection/f;->s(I)V

    const p1, 0x7f0a0120

    .line 9
    invoke-virtual {p0, p1}, Lj8/t;->D0(I)V

    return-void
.end method

.method protected onPause()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/e;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/levelselection/LevelLoadingActivity;->y:Ljava/util/Timer;

    if-eqz v0, :cond_d

    .line 3
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tebakgambar/levelselection/LevelLoadingActivity;->y:Ljava/util/Timer;

    .line 5
    :cond_d
    iget-object v0, p0, Lcom/tebakgambar/levelselection/LevelLoadingActivity;->A:Lcom/tebakgambar/levelselection/f;

    iget-object v0, v0, Lcom/tebakgambar/levelselection/f;->x:Lcom/tebakgambar/levelselection/f$b;

    if-eqz v0, :cond_22

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lu0/a;->b(Landroid/content/Context;)Lu0/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tebakgambar/levelselection/LevelLoadingActivity;->A:Lcom/tebakgambar/levelselection/f;

    iget-object v1, v1, Lcom/tebakgambar/levelselection/f;->x:Lcom/tebakgambar/levelselection/f$b;

    invoke-virtual {v0, v1}, Lu0/a;->e(Landroid/content/BroadcastReceiver;)V

    :cond_22
    return-void
.end method

.method protected onResume()V
    .registers 8

    .line 1
    invoke-super {p0}, Lj8/t;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/levelselection/LevelLoadingActivity;->y:Ljava/util/Timer;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 4
    :cond_a
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/tebakgambar/levelselection/LevelLoadingActivity;->y:Ljava/util/Timer;

    .line 5
    new-instance v2, Lcom/tebakgambar/levelselection/LevelLoadingActivity$a;

    invoke-direct {v2, p0}, Lcom/tebakgambar/levelselection/LevelLoadingActivity$a;-><init>(Lcom/tebakgambar/levelselection/LevelLoadingActivity;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lu0/a;->b(Landroid/content/Context;)Lu0/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tebakgambar/levelselection/LevelLoadingActivity;->A:Lcom/tebakgambar/levelselection/f;

    iget-object v2, v1, Lcom/tebakgambar/levelselection/f;->x:Lcom/tebakgambar/levelselection/f$b;

    iget v1, v1, Lcom/tebakgambar/levelselection/f;->y:I

    .line 7
    invoke-static {v1}, Li8/a;->c(I)Landroid/content/IntentFilter;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v2, v1}, Lu0/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 9
    iget-object v0, p0, Lcom/tebakgambar/levelselection/LevelLoadingActivity;->A:Lcom/tebakgambar/levelselection/f;

    invoke-virtual {v0}, Lcom/tebakgambar/levelselection/f;->n()V

    return-void
.end method

###### Class com.tebakgambar.levelselection.LevelLoadingActivity.a (com.tebakgambar.levelselection.LevelLoadingActivity$a)
.class Lcom/tebakgambar/levelselection/LevelLoadingActivity$a;
.super Ljava/util/TimerTask;
.source "LevelLoadingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/levelselection/LevelLoadingActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/tebakgambar/levelselection/LevelLoadingActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/levelselection/LevelLoadingActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/levelselection/LevelLoadingActivity$a;->o:Lcom/tebakgambar/levelselection/LevelLoadingActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/levelselection/LevelLoadingActivity$a;->o:Lcom/tebakgambar/levelselection/LevelLoadingActivity;

    invoke-static {v0}, Lcom/tebakgambar/levelselection/LevelLoadingActivity;->W0(Lcom/tebakgambar/levelselection/LevelLoadingActivity;)Lcom/tebakgambar/levelselection/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/levelselection/f;->r()V

    return-void
.end method

###### Class com.tebakgambar.levelselection.a (com.tebakgambar.levelselection.a)
.class public final synthetic Lcom/tebakgambar/levelselection/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/levelselection/LevelLoadingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/levelselection/LevelLoadingActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/a;->a:Lcom/tebakgambar/levelselection/LevelLoadingActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/levelselection/a;->a:Lcom/tebakgambar/levelselection/LevelLoadingActivity;

    check-cast p1, Li8/a;

    invoke-static {v0, p1}, Lcom/tebakgambar/levelselection/LevelLoadingActivity;->U0(Lcom/tebakgambar/levelselection/LevelLoadingActivity;Li8/a;)V

    return-void
.end method

###### Class com.tebakgambar.levelselection.b (com.tebakgambar.levelselection.b)
.class public final synthetic Lcom/tebakgambar/levelselection/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/levelselection/LevelLoadingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/levelselection/LevelLoadingActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/b;->a:Lcom/tebakgambar/levelselection/LevelLoadingActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/levelselection/b;->a:Lcom/tebakgambar/levelselection/LevelLoadingActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/tebakgambar/levelselection/LevelLoadingActivity;->V0(Lcom/tebakgambar/levelselection/LevelLoadingActivity;Ljava/lang/Boolean;)V

    return-void
.end method
